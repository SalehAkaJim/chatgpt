-- Generated audio link import for de-DE C2
-- Source manifest: audio/manifests/de/C2-batch-2.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_modal_commitment_precision_03:4 -> audio/generated/de-DE/dialogues/026898722a6c64f38c2ace1028b35b10f97e9d4fc94c53f29e875626082efce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e829f37c-af35-53c7-a332-6b319c7e36d8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0aa59c6c743be633047046624dd255a17afc677ed5dcbdda267c84594b67910'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4343068b-5063-5f71-8eae-63f7f0cbe17e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e829f37c-af35-53c7-a332-6b319c7e36d8', 1), 'a0aa59c6c743be633047046624dd255a17afc677ed5dcbdda267c84594b67910',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/026898722a6c64f38c2ace1028b35b10f97e9d4fc94c53f29e875626082efce7.mp3', 3239, '2026-09-13 11:31:25.722742', '3ba43766e64527848ea959cea8740bfed289785d732e078c979461c4d548bb18', 'validated', '{"audio_key":"026898722a6c64f38c2ace1028b35b10f97e9d4fc94c53f29e875626082efce7","entity_key":"d_modal_commitment_precision_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3ba43766e64527848ea959cea8740bfed289785d732e078c979461c4d548bb18","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/026898722a6c64f38c2ace1028b35b10f97e9d4fc94c53f29e875626082efce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_02:4 -> audio/generated/de-DE/dialogues/039df583551ccbc817298c8f598d8bc3f2dd1ee14940e09eb3167f4c284c5e56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a8a4e1a-408d-5a23-892d-966ee9cea263', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d0cea28bd7b908482691ba6a5514cdec6c5c5c5d532168aa5eda5bc9f762d74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c57694a8-3b92-5fb7-a7f0-6d4f750f1871', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a8a4e1a-408d-5a23-892d-966ee9cea263', 1), '8d0cea28bd7b908482691ba6a5514cdec6c5c5c5d532168aa5eda5bc9f762d74',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/039df583551ccbc817298c8f598d8bc3f2dd1ee14940e09eb3167f4c284c5e56.mp3', 4858, '2026-09-13 11:31:25.898517', 'ab7aff5d974e7bc79dee07c59330712879504e0a5516f1bd3f76ff24bbf5340e', 'validated', '{"audio_key":"039df583551ccbc817298c8f598d8bc3f2dd1ee14940e09eb3167f4c284c5e56","entity_key":"d_semantic_scope_ambiguity_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ab7aff5d974e7bc79dee07c59330712879504e0a5516f1bd3f76ff24bbf5340e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/039df583551ccbc817298c8f598d8bc3f2dd1ee14940e09eb3167f4c284c5e56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_03:2 -> audio/generated/de-DE/dialogues/04a4f9716c9408ca337df4dfaf9c04259f78ecff6faa32a5a3efb12b75987e6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('319981f4-243e-55ab-9b89-7eff7e950e6f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28018e7760f54f60b5a333b0300eb0a0a91ff077d10e7edcaa9bf720612ae6d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5955a46-86f3-5f4c-a952-6d5782a1b2d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('319981f4-243e-55ab-9b89-7eff7e950e6f', 1), '28018e7760f54f60b5a333b0300eb0a0a91ff077d10e7edcaa9bf720612ae6d8',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/04a4f9716c9408ca337df4dfaf9c04259f78ecff6faa32a5a3efb12b75987e6f.mp3', 4728, '2026-09-13 11:31:27.164352', '437fe9bf7450f580ea672ee6175defc4d3962afe6a82ff7df4086f9ab849494b', 'validated', '{"audio_key":"04a4f9716c9408ca337df4dfaf9c04259f78ecff6faa32a5a3efb12b75987e6f","entity_key":"d_evidentiality_epistemic_calibration_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"437fe9bf7450f580ea672ee6175defc4d3962afe6a82ff7df4086f9ab849494b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/04a4f9716c9408ca337df4dfaf9c04259f78ecff6faa32a5a3efb12b75987e6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_02:4 -> audio/generated/de-DE/dialogues/04b962f07c1caed28b23f396b0ecc3327d48faee364fe7e5cf2afcd4ff3fe8f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('495b7d7c-5b20-580c-9284-02f05a189cc9', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99a62025cbddbd79cc471557d55351fdc53abe4dc81b1a4043fb3fc6269dd05d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a6c5cfd-967f-5ce0-83e6-01d5aa7a2b03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('495b7d7c-5b20-580c-9284-02f05a189cc9', 1), '99a62025cbddbd79cc471557d55351fdc53abe4dc81b1a4043fb3fc6269dd05d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/04b962f07c1caed28b23f396b0ecc3327d48faee364fe7e5cf2afcd4ff3fe8f3.mp3', 3369, '2026-09-13 11:31:27.078916', '465fe3dbc54068e25950050affdaa17f57b988929ff5f008415e4a470596af58', 'validated', '{"audio_key":"04b962f07c1caed28b23f396b0ecc3327d48faee364fe7e5cf2afcd4ff3fe8f3","entity_key":"d_modal_commitment_precision_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"465fe3dbc54068e25950050affdaa17f57b988929ff5f008415e4a470596af58","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/04b962f07c1caed28b23f396b0ecc3327d48faee364fe7e5cf2afcd4ff3fe8f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_02:4 -> audio/generated/de-DE/dialogues/087417d67bc547374597b3a69f0102c97e898a3c707f7fc57be1d996b469ff69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84a13b6b-b93d-54da-8ace-48b7ef6b684c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ae42feb4497ee3beaca4893cf4bd3dfca52fff05df3ab11c90b2f6c45e24907'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b89f95d0-8691-5239-b0bd-0ea0c1e7ecb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84a13b6b-b93d-54da-8ace-48b7ef6b684c', 1), '5ae42feb4497ee3beaca4893cf4bd3dfca52fff05df3ab11c90b2f6c45e24907',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/087417d67bc547374597b3a69f0102c97e898a3c707f7fc57be1d996b469ff69.mp3', 5250, '2026-09-13 11:31:28.590736', '709d8123703bb77515f1650a2cd8d00ee0394f30db551780bf7a5aa918194ed1', 'validated', '{"audio_key":"087417d67bc547374597b3a69f0102c97e898a3c707f7fc57be1d996b469ff69","entity_key":"d_expert_public_precision_capstone_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"709d8123703bb77515f1650a2cd8d00ee0394f30db551780bf7a5aa918194ed1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/087417d67bc547374597b3a69f0102c97e898a3c707f7fc57be1d996b469ff69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_03:4 -> audio/generated/de-DE/dialogues/0c4c980dd121821e9e6e3ac5cdcc8c8b3ad56d8a577ceb09505f8a7042e4ee45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4e5348d-b7b0-5eb6-b35e-d4b71ff05ec2', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bceb663c332a6182bcc7e7bf32c86b08fc1a364381d567a4d0664ee9b9cc587'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('873649e7-b8b4-56d8-8749-f9de9cf76dca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4e5348d-b7b0-5eb6-b35e-d4b71ff05ec2', 1), '5bceb663c332a6182bcc7e7bf32c86b08fc1a364381d567a4d0664ee9b9cc587',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c4c980dd121821e9e6e3ac5cdcc8c8b3ad56d8a577ceb09505f8a7042e4ee45.mp3', 6765, '2026-09-13 11:31:28.784303', '65f4048cea460713710db11e45fc51cdb0898062c6a0470c525399ee979f8d5b', 'validated', '{"audio_key":"0c4c980dd121821e9e6e3ac5cdcc8c8b3ad56d8a577ceb09505f8a7042e4ee45","entity_key":"d_semantic_scope_ambiguity_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"65f4048cea460713710db11e45fc51cdb0898062c6a0470c525399ee979f8d5b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0c4c980dd121821e9e6e3ac5cdcc8c8b3ad56d8a577ceb09505f8a7042e4ee45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_01:1 -> audio/generated/de-DE/dialogues/0d3f1fa837f447bd20dc1cfa45d14a96784f00e1fa07d9567d3855c7c8db3169.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d006b343-924d-50c9-95d2-6c67e72207f6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbdf224813a892ecea6c0b25b9eb6349ba9560fdcf1a4558edba84ae48af4088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd45a49a-18ef-5844-bea1-a6b0f13dd854', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d006b343-924d-50c9-95d2-6c67e72207f6', 1), 'cbdf224813a892ecea6c0b25b9eb6349ba9560fdcf1a4558edba84ae48af4088',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0d3f1fa837f447bd20dc1cfa45d14a96784f00e1fa07d9567d3855c7c8db3169.mp3', 4780, '2026-09-13 11:31:29.987568', '8bd80c2aa0637f386378b247cbb555985494d64c1587f99ed7dd3f8c9bbee2bb', 'validated', '{"audio_key":"0d3f1fa837f447bd20dc1cfa45d14a96784f00e1fa07d9567d3855c7c8db3169","entity_key":"d_metacommunication_misunderstanding_repair_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8bd80c2aa0637f386378b247cbb555985494d64c1587f99ed7dd3f8c9bbee2bb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0d3f1fa837f447bd20dc1cfa45d14a96784f00e1fa07d9567d3855c7c8db3169.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_02:3 -> audio/generated/de-DE/dialogues/0df53b5ee27ba2746ce2c7e18025229e8c67caea20610e8982af7ea61259f24d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f91afc9a-eef3-50f1-a1d5-2bc2ff0f6167', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfdc9598cadd410bdb144bbe80f1b7d0b5dd1fa6347e2ef8d11f5a1918a5840c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45d4375c-ccf7-5163-8b68-9a96ab7c25f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f91afc9a-eef3-50f1-a1d5-2bc2ff0f6167', 1), 'cfdc9598cadd410bdb144bbe80f1b7d0b5dd1fa6347e2ef8d11f5a1918a5840c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0df53b5ee27ba2746ce2c7e18025229e8c67caea20610e8982af7ea61259f24d.mp3', 3840, '2026-09-13 11:31:30.040224', '986eacf0f4bad99cd56699d896e078f75fa18b1999c464f399abffa5939fc2d5', 'validated', '{"audio_key":"0df53b5ee27ba2746ce2c7e18025229e8c67caea20610e8982af7ea61259f24d","entity_key":"d_terminology_negotiation_concept_boundaries_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"986eacf0f4bad99cd56699d896e078f75fa18b1999c464f399abffa5939fc2d5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0df53b5ee27ba2746ce2c7e18025229e8c67caea20610e8982af7ea61259f24d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_03:1 -> audio/generated/de-DE/dialogues/0e0857cb25ed3161c9df2929fe5fe135316ba4bc9350acb5ae7d8071ecc0c8f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f4be8bf-31de-525a-a2b3-75d3c82027c3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e89706d7650560e7d5a4340a3ace3406dd98b6cdda87d0d7181cec3eb441cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c64306d0-2f1e-58ae-887b-10f34c800d57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f4be8bf-31de-525a-a2b3-75d3c82027c3', 1), '89e89706d7650560e7d5a4340a3ace3406dd98b6cdda87d0d7181cec3eb441cd',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e0857cb25ed3161c9df2929fe5fe135316ba4bc9350acb5ae7d8071ecc0c8f8.mp3', 4780, '2026-09-13 11:31:31.384324', 'bf97c0568eb82a64040967a90987d30bf3bcdf6fd73d2fc0d09fb843275554ed', 'validated', '{"audio_key":"0e0857cb25ed3161c9df2929fe5fe135316ba4bc9350acb5ae7d8071ecc0c8f8","entity_key":"d_metacommunication_misunderstanding_repair_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bf97c0568eb82a64040967a90987d30bf3bcdf6fd73d2fc0d09fb843275554ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0e0857cb25ed3161c9df2929fe5fe135316ba4bc9350acb5ae7d8071ecc0c8f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_03:1 -> audio/generated/de-DE/dialogues/0e8d2c6891264893ca73dbe2378189a22e41509ff240f6f44879705f6270cfbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bcb7748-88fd-5d33-a875-8824036bc189', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab1c2933665f1a047de99d40e7acccbf87e800e37abc09d2d70526364a869343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8465223-61bb-56e0-8db5-a9e8fe0ad4c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bcb7748-88fd-5d33-a875-8824036bc189', 1), 'ab1c2933665f1a047de99d40e7acccbf87e800e37abc09d2d70526364a869343',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e8d2c6891264893ca73dbe2378189a22e41509ff240f6f44879705f6270cfbf.mp3', 3840, '2026-09-13 11:31:31.328695', '71126be1db46c1c003d4aa56c408297660a34e8a8819b8771f5e18410bdbcfcb', 'validated', '{"audio_key":"0e8d2c6891264893ca73dbe2378189a22e41509ff240f6f44879705f6270cfbf","entity_key":"d_live_debate_interruption_reframing_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"71126be1db46c1c003d4aa56c408297660a34e8a8819b8771f5e18410bdbcfcb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0e8d2c6891264893ca73dbe2378189a22e41509ff240f6f44879705f6270cfbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_03:4 -> audio/generated/de-DE/dialogues/0eb0524bbac44309acbfa4d07999179b309c0238669f65378b54050f347e4228.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61228bca-7981-5c46-9556-80997dfe7860', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10029486c75095af2dc5d4fe408c76c3be52df385139fc9d977369cf97f9e1a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8921c902-8ac7-5b9b-845d-b5bdf6561132', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61228bca-7981-5c46-9556-80997dfe7860', 1), '10029486c75095af2dc5d4fe408c76c3be52df385139fc9d977369cf97f9e1a6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0eb0524bbac44309acbfa4d07999179b309c0238669f65378b54050f347e4228.mp3', 4728, '2026-09-13 11:31:32.684203', '1d547792792cfdab92f486023a975da6b7e1581a708719ce9af294e3ecf5ad18', 'validated', '{"audio_key":"0eb0524bbac44309acbfa4d07999179b309c0238669f65378b54050f347e4228","entity_key":"d_cohesion_reference_dense_texts_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1d547792792cfdab92f486023a975da6b7e1581a708719ce9af294e3ecf5ad18","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0eb0524bbac44309acbfa4d07999179b309c0238669f65378b54050f347e4228.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_01:4 -> audio/generated/de-DE/dialogues/0faefd14d02a71374b73b82c9e2cbac72dd71d6f1e1e4d30e8373f5dbecc96dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('723d22fa-b091-54ec-a912-28cd73f0be33', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6868dd4d45f564f8f9dc1edad385a66fc953c7f3e1f31b3b3b3ce6c8d91dd062'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1c47b04-2af6-5b3f-9058-9ba75dc77d3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('723d22fa-b091-54ec-a912-28cd73f0be33', 1), '6868dd4d45f564f8f9dc1edad385a66fc953c7f3e1f31b3b3b3ce6c8d91dd062',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0faefd14d02a71374b73b82c9e2cbac72dd71d6f1e1e4d30e8373f5dbecc96dc.mp3', 3787, '2026-09-13 11:31:32.632351', 'b1ff156a419893b4ace98940b3b80d4ce7ac8ba0ebafff06972f1cc64f016f09', 'validated', '{"audio_key":"0faefd14d02a71374b73b82c9e2cbac72dd71d6f1e1e4d30e8373f5dbecc96dc","entity_key":"d_modal_commitment_precision_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b1ff156a419893b4ace98940b3b80d4ce7ac8ba0ebafff06972f1cc64f016f09","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0faefd14d02a71374b73b82c9e2cbac72dd71d6f1e1e4d30e8373f5dbecc96dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_02:3 -> audio/generated/de-DE/dialogues/136e95dd47b1ced90118e8f6efd7011c4b2947565aaca4f910c0880192f7f9f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dae786c6-eaa2-5ea9-90c8-6ef9d78ca055', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ecbd183323383efee26836bd771b8a70a8836551a86a85eb862ef68d28b3fec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9999aec0-aee6-51de-8b3b-428e5b287423', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dae786c6-eaa2-5ea9-90c8-6ef9d78ca055', 1), '2ecbd183323383efee26836bd771b8a70a8836551a86a85eb862ef68d28b3fec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/136e95dd47b1ced90118e8f6efd7011c4b2947565aaca4f910c0880192f7f9f8.mp3', 4127, '2026-09-13 11:31:33.901695', 'ac4a3b9b57196b2b2c67fcfe88e41db311a5c667407d85492ecfdf12865fc8e1', 'validated', '{"audio_key":"136e95dd47b1ced90118e8f6efd7011c4b2947565aaca4f910c0880192f7f9f8","entity_key":"d_audience_reformulation_technical_public_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac4a3b9b57196b2b2c67fcfe88e41db311a5c667407d85492ecfdf12865fc8e1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/136e95dd47b1ced90118e8f6efd7011c4b2947565aaca4f910c0880192f7f9f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_01:3 -> audio/generated/de-DE/dialogues/13e9cbe2eb71cfeb52745f851faf1c81f7794658ca1d3da0e08c77708849eea7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1dff9eed-4828-5155-818c-e470f987877a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '291eb3f8dc08cce3a9394e55c3ec5d6befcdea98ce363d2dd9e2b55b149526d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee673718-e755-5a38-9be6-57c45929e738', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1dff9eed-4828-5155-818c-e470f987877a', 1), '291eb3f8dc08cce3a9394e55c3ec5d6befcdea98ce363d2dd9e2b55b149526d9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/13e9cbe2eb71cfeb52745f851faf1c81f7794658ca1d3da0e08c77708849eea7.mp3', 7105, '2026-09-13 11:31:34.262141', '3d7b390e2919a51b34a60039f27f519c745728e44da982c2f1d788ff392ae949', 'validated', '{"audio_key":"13e9cbe2eb71cfeb52745f851faf1c81f7794658ca1d3da0e08c77708849eea7","entity_key":"d_live_debate_interruption_reframing_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3d7b390e2919a51b34a60039f27f519c745728e44da982c2f1d788ff392ae949","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/13e9cbe2eb71cfeb52745f851faf1c81f7794658ca1d3da0e08c77708849eea7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_01:4 -> audio/generated/de-DE/dialogues/168033ddd7e3712d905800c970c46fe59d41e47feca51a887d7cfe0030fa4819.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7c0780b-2e53-5bea-bdc9-c3043bd763bd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae8548c90ab7983877206ea3813b1a3af394c0f0bb0719bf67b8380e68f5577b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f341dfb-3a9a-5998-a196-dc8e439c85a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7c0780b-2e53-5bea-bdc9-c3043bd763bd', 1), 'ae8548c90ab7983877206ea3813b1a3af394c0f0bb0719bf67b8380e68f5577b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/168033ddd7e3712d905800c970c46fe59d41e47feca51a887d7cfe0030fa4819.mp3', 5799, '2026-09-13 11:31:35.440337', '1600a5a54e2ceda4273661442854a3a9bb113cb12528aa3620e88715c489a939', 'validated', '{"audio_key":"168033ddd7e3712d905800c970c46fe59d41e47feca51a887d7cfe0030fa4819","entity_key":"d_metacommunication_misunderstanding_repair_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"1600a5a54e2ceda4273661442854a3a9bb113cb12528aa3620e88715c489a939","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/168033ddd7e3712d905800c970c46fe59d41e47feca51a887d7cfe0030fa4819.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_02:2 -> audio/generated/de-DE/dialogues/18e34efb9071e29adf07f861288e1d99a3cedb61003f8c3e7849fa360d842602.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc8ae632-1759-5fd7-bb7a-0ec39d0ffafa', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b3e733be1bdf36013c1152faebc957241a67bb4340addae82e370b9a19aecb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68d570cc-5a6c-5877-973d-b4e3621fefc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc8ae632-1759-5fd7-bb7a-0ec39d0ffafa', 1), '7b3e733be1bdf36013c1152faebc957241a67bb4340addae82e370b9a19aecb4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/18e34efb9071e29adf07f861288e1d99a3cedb61003f8c3e7849fa360d842602.mp3', 5328, '2026-09-13 11:31:35.708327', 'd462a8addbeab96ea13c84223bc2d4b98da7e7055ad710f2fcfa72d5ec83f82c', 'validated', '{"audio_key":"18e34efb9071e29adf07f861288e1d99a3cedb61003f8c3e7849fa360d842602","entity_key":"d_modal_commitment_precision_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d462a8addbeab96ea13c84223bc2d4b98da7e7055ad710f2fcfa72d5ec83f82c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/18e34efb9071e29adf07f861288e1d99a3cedb61003f8c3e7849fa360d842602.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_01:3 -> audio/generated/de-DE/dialogues/1aefe14f5b4b8611c227cdf74046e0defbc87dea7adde9ab318672c0d5c8f3c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d6ea613-20b2-5f9a-a903-8b69da9e8a67', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffb0b7d11124530a90af9581e3f8c02c558d662fc30966510e309329420c086c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3094028-7e13-51a2-bcfa-da7ee52ffed4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d6ea613-20b2-5f9a-a903-8b69da9e8a67', 1), 'ffb0b7d11124530a90af9581e3f8c02c558d662fc30966510e309329420c086c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1aefe14f5b4b8611c227cdf74046e0defbc87dea7adde9ab318672c0d5c8f3c5.mp3', 4545, '2026-09-13 11:31:36.921442', 'f3d1e4b2afe5fb82e2d7f1ba7de9d99ceb15b472321713c8a905f46b35fccd6e', 'validated', '{"audio_key":"1aefe14f5b4b8611c227cdf74046e0defbc87dea7adde9ab318672c0d5c8f3c5","entity_key":"d_cohesion_reference_dense_texts_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f3d1e4b2afe5fb82e2d7f1ba7de9d99ceb15b472321713c8a905f46b35fccd6e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1aefe14f5b4b8611c227cdf74046e0defbc87dea7adde9ab318672c0d5c8f3c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_02:1 -> audio/generated/de-DE/dialogues/1dd8567710cafc9ce45dd118a9a3130e7d38a93b43086ba205d0e51c2c7d14f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19872a82-e72f-569f-a210-b867b390b92c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cac743e22569683c6f2bda7461fa1b2f2433cb4622755c4c9a11059e29b9f272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23985156-68d8-51a5-a438-ea1bd53cc8d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19872a82-e72f-569f-a210-b867b390b92c', 1), 'cac743e22569683c6f2bda7461fa1b2f2433cb4622755c4c9a11059e29b9f272',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1dd8567710cafc9ce45dd118a9a3130e7d38a93b43086ba205d0e51c2c7d14f3.mp3', 3160, '2026-09-13 11:31:36.917083', '605f51d15abb6761973294e39fe9780c3b4ddabf245a7e8c2b1d8037bb88680d', 'validated', '{"audio_key":"1dd8567710cafc9ce45dd118a9a3130e7d38a93b43086ba205d0e51c2c7d14f3","entity_key":"d_modal_commitment_precision_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"605f51d15abb6761973294e39fe9780c3b4ddabf245a7e8c2b1d8037bb88680d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1dd8567710cafc9ce45dd118a9a3130e7d38a93b43086ba205d0e51c2c7d14f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_01:2 -> audio/generated/de-DE/dialogues/20485e86dc857191a225702ea40fd02c1b9425eac66605ee5a16911b8ab2195f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ea10e23-4dcd-5543-b233-d136a13cbdf2', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7237c327f24235e498f0a444789941f131b7c6d75c64d5b2c8642967e04b67ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e16cde4-16d9-56e2-b7f4-ae66180850b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ea10e23-4dcd-5543-b233-d136a13cbdf2', 1), '7237c327f24235e498f0a444789941f131b7c6d75c64d5b2c8642967e04b67ce',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/20485e86dc857191a225702ea40fd02c1b9425eac66605ee5a16911b8ab2195f.mp3', 6713, '2026-09-13 11:31:38.465868', 'abf8765d0b5aabff3d9fa673fc9a5772d7acafa87b2dd88e4a85615dec5f1621', 'validated', '{"audio_key":"20485e86dc857191a225702ea40fd02c1b9425eac66605ee5a16911b8ab2195f","entity_key":"d_audience_reformulation_technical_public_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"abf8765d0b5aabff3d9fa673fc9a5772d7acafa87b2dd88e4a85615dec5f1621","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/20485e86dc857191a225702ea40fd02c1b9425eac66605ee5a16911b8ab2195f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_01:4 -> audio/generated/de-DE/dialogues/210cf70621e358c2b98d5e8390c8f8739ced641a24431d89c02bc32b54de5d4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12ba6d32-c05a-5c88-a77b-539e9e853444', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0c43dc2363788df35481f2ef8e88539c64fb52ef2633d1d95212fb795ae8498'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('583ebe82-92d7-5287-90f3-89587b97144f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12ba6d32-c05a-5c88-a77b-539e9e853444', 1), 'a0c43dc2363788df35481f2ef8e88539c64fb52ef2633d1d95212fb795ae8498',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/210cf70621e358c2b98d5e8390c8f8739ced641a24431d89c02bc32b54de5d4a.mp3', 6504, '2026-09-13 11:31:38.520801', 'd7f0fbdbb2d0c46d1d795f816d81dd0fc6bef1d2823c309db082f6042cc872b9', 'validated', '{"audio_key":"210cf70621e358c2b98d5e8390c8f8739ced641a24431d89c02bc32b54de5d4a","entity_key":"d_expert_public_precision_capstone_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d7f0fbdbb2d0c46d1d795f816d81dd0fc6bef1d2823c309db082f6042cc872b9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/210cf70621e358c2b98d5e8390c8f8739ced641a24431d89c02bc32b54de5d4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_03:3 -> audio/generated/de-DE/dialogues/230619c663fbceb56ece42e5d132063933dccba273f156d55e1e33dde132fc04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c4f82cd-8388-57b1-b610-19876eb20427', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f04da9d46f916cfdd65b377fb9cd9829de7f2fa04261cbc4c13520e9c108553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0028815-8312-54f7-8b26-3ffc87f4e0e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c4f82cd-8388-57b1-b610-19876eb20427', 1), '1f04da9d46f916cfdd65b377fb9cd9829de7f2fa04261cbc4c13520e9c108553',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/230619c663fbceb56ece42e5d132063933dccba273f156d55e1e33dde132fc04.mp3', 2115, '2026-09-13 11:31:39.534722', 'a9c7b3c32f1a2921ca0889c395033e0d86005533a48dd65169f8b0dfd2f8039a', 'validated', '{"audio_key":"230619c663fbceb56ece42e5d132063933dccba273f156d55e1e33dde132fc04","entity_key":"d_metacommunication_misunderstanding_repair_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a9c7b3c32f1a2921ca0889c395033e0d86005533a48dd65169f8b0dfd2f8039a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/230619c663fbceb56ece42e5d132063933dccba273f156d55e1e33dde132fc04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_02:1 -> audio/generated/de-DE/dialogues/24989226bdbdd36c4555730ea78f2f5d62c21000c347d0c1843262e05f36adbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dba86470-06ba-5e9a-9be1-5eb3593690aa', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d47951efc29251f8aebf7d8e1c021963b6692924b294bb121d06dd66e371995'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89af67a8-926d-5b3c-8ee8-edca00a98a1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dba86470-06ba-5e9a-9be1-5eb3593690aa', 1), '6d47951efc29251f8aebf7d8e1c021963b6692924b294bb121d06dd66e371995',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/24989226bdbdd36c4555730ea78f2f5d62c21000c347d0c1843262e05f36adbf.mp3', 3892, '2026-09-13 11:31:39.878386', '03638c74e1c19e557e0e56b7c4add6be8b761bab96c9d7182d36f2190cf8f2b2', 'validated', '{"audio_key":"24989226bdbdd36c4555730ea78f2f5d62c21000c347d0c1843262e05f36adbf","entity_key":"d_semantic_scope_ambiguity_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"03638c74e1c19e557e0e56b7c4add6be8b761bab96c9d7182d36f2190cf8f2b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/24989226bdbdd36c4555730ea78f2f5d62c21000c347d0c1843262e05f36adbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_02:1 -> audio/generated/de-DE/dialogues/25bbff9c40ac9045d5b0911214b69f7371a171ee2cd61ab8cc663979cd4c16f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('714bd365-69ea-5f9b-a6a3-8772951bedae', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '573c2cfda102c11c4bb3aec2d438523b0982f903244e427aa319f1bc8ebded18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bff58aa-82a4-566f-9cbb-92e96a6db211', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('714bd365-69ea-5f9b-a6a3-8772951bedae', 1), '573c2cfda102c11c4bb3aec2d438523b0982f903244e427aa319f1bc8ebded18',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/25bbff9c40ac9045d5b0911214b69f7371a171ee2cd61ab8cc663979cd4c16f7.mp3', 3343, '2026-09-13 11:31:40.712365', 'ffc664b87c8ff8b082b3f015961501478e1bc5847e0163eef0f26487a8f070ea', 'validated', '{"audio_key":"25bbff9c40ac9045d5b0911214b69f7371a171ee2cd61ab8cc663979cd4c16f7","entity_key":"d_cohesion_reference_dense_texts_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ffc664b87c8ff8b082b3f015961501478e1bc5847e0163eef0f26487a8f070ea","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/25bbff9c40ac9045d5b0911214b69f7371a171ee2cd61ab8cc663979cd4c16f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_03:3 -> audio/generated/de-DE/dialogues/2ba751b8ef95adbcdf35de35aeb09511babdfc5bdfb87a96acaaad6838cba062.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17e5544b-8423-5784-8c54-ed02fd557724', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '525bca833783c1a9bd2cf6662a0b22828195a3d37c7c2bb30ad4e5cf1e01b985'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('814fa777-056e-5566-b5bd-eb78780795f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17e5544b-8423-5784-8c54-ed02fd557724', 1), '525bca833783c1a9bd2cf6662a0b22828195a3d37c7c2bb30ad4e5cf1e01b985',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ba751b8ef95adbcdf35de35aeb09511babdfc5bdfb87a96acaaad6838cba062.mp3', 4257, '2026-09-13 11:31:41.213561', '5f189c564e4d6f5c08c32d65acef9081137f714c80e6ff6f060a44f0ac9bb58f', 'validated', '{"audio_key":"2ba751b8ef95adbcdf35de35aeb09511babdfc5bdfb87a96acaaad6838cba062","entity_key":"d_audience_reformulation_technical_public_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5f189c564e4d6f5c08c32d65acef9081137f714c80e6ff6f060a44f0ac9bb58f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2ba751b8ef95adbcdf35de35aeb09511babdfc5bdfb87a96acaaad6838cba062.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_01:2 -> audio/generated/de-DE/dialogues/2c6301c59467a707f084536c181e7d7db2742bbd6c9af69a855eb88362476ae4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26642978-498c-5d44-8371-1937c77ba671', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef53f69306503880279f20015cc0a5e0c2ac8a19e66f080881c78094967d0d2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fda23ffd-ed84-5264-974a-8b0d3cb198dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26642978-498c-5d44-8371-1937c77ba671', 1), 'ef53f69306503880279f20015cc0a5e0c2ac8a19e66f080881c78094967d0d2b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c6301c59467a707f084536c181e7d7db2742bbd6c9af69a855eb88362476ae4.mp3', 6635, '2026-09-13 11:31:42.326989', '115795cbd4d08b178af4b33dcee978d4971415f0e06b430cec53fa91f32103aa', 'validated', '{"audio_key":"2c6301c59467a707f084536c181e7d7db2742bbd6c9af69a855eb88362476ae4","entity_key":"d_lossless_compression_summarization_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"115795cbd4d08b178af4b33dcee978d4971415f0e06b430cec53fa91f32103aa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c6301c59467a707f084536c181e7d7db2742bbd6c9af69a855eb88362476ae4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_02:4 -> audio/generated/de-DE/dialogues/2cb048d57b9bb90fefc8854a0dae2931bfc87378a7f79e941d1950a438807cd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e3bf421-eced-5a9f-aa9b-4191dbc7fb96', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f27385ae475e2619cfc985c347541d889bf65ce4751289939361b17d2c1a9c1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('925cfbfd-b3d9-588e-8a87-267e977ee96e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e3bf421-eced-5a9f-aa9b-4191dbc7fb96', 1), 'f27385ae475e2619cfc985c347541d889bf65ce4751289939361b17d2c1a9c1d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cb048d57b9bb90fefc8854a0dae2931bfc87378a7f79e941d1950a438807cd5.mp3', 3578, '2026-09-13 11:31:42.737459', 'a63567aef9f49cce8fdd0164539cb1e67b5e74efc2bb6aa94da09462fde58266', 'validated', '{"audio_key":"2cb048d57b9bb90fefc8854a0dae2931bfc87378a7f79e941d1950a438807cd5","entity_key":"d_live_debate_interruption_reframing_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a63567aef9f49cce8fdd0164539cb1e67b5e74efc2bb6aa94da09462fde58266","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2cb048d57b9bb90fefc8854a0dae2931bfc87378a7f79e941d1950a438807cd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_03:4 -> audio/generated/de-DE/dialogues/2e9847ac9ed8653c756a00e288e91e9ce166964c42d6d81a92dbb6f5688e3db3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc94f5c6-047f-5845-827c-03eb9fd8b3ad', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '117f0c5bb15411630f712660241b3f19f41abadcf12b06a5af87c7af7e76252c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6810dae5-cd30-5ba0-a53a-aaf5a5d52cef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc94f5c6-047f-5845-827c-03eb9fd8b3ad', 1), '117f0c5bb15411630f712660241b3f19f41abadcf12b06a5af87c7af7e76252c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e9847ac9ed8653c756a00e288e91e9ce166964c42d6d81a92dbb6f5688e3db3.mp3', 6582, '2026-09-13 11:31:43.940689', 'bee7a0e091323bbfc0259298c0e7717198b0effa0387290e507acd26fac7c2c8', 'validated', '{"audio_key":"2e9847ac9ed8653c756a00e288e91e9ce166964c42d6d81a92dbb6f5688e3db3","entity_key":"d_terminology_negotiation_concept_boundaries_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bee7a0e091323bbfc0259298c0e7717198b0effa0387290e507acd26fac7c2c8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2e9847ac9ed8653c756a00e288e91e9ce166964c42d6d81a92dbb6f5688e3db3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_02:2 -> audio/generated/de-DE/dialogues/3355a27c1bf558de2bf4269619a8733e8602ed9f0f72216b70a6a30547fdfae3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb6bd36a-e2f0-5fae-b98f-64ee475bee75', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be30c803c4d685e154819fe0e17b706b150f959437496bc2552864aa7393f8fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cee7ff0-5858-59a6-8311-5ea6c8f531c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb6bd36a-e2f0-5fae-b98f-64ee475bee75', 1), 'be30c803c4d685e154819fe0e17b706b150f959437496bc2552864aa7393f8fb',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3355a27c1bf558de2bf4269619a8733e8602ed9f0f72216b70a6a30547fdfae3.mp3', 3422, '2026-09-13 11:31:44.350462', '34d5598d80a8d37c747bf49c34df9394800bd0d57adbb0c9003e4da5877c1a4a', 'validated', '{"audio_key":"3355a27c1bf558de2bf4269619a8733e8602ed9f0f72216b70a6a30547fdfae3","entity_key":"d_live_debate_interruption_reframing_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"34d5598d80a8d37c747bf49c34df9394800bd0d57adbb0c9003e4da5877c1a4a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3355a27c1bf558de2bf4269619a8733e8602ed9f0f72216b70a6a30547fdfae3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_02:4 -> audio/generated/de-DE/dialogues/3362943d2baa38e792a71a78aac317d4da5c20070445f52deb08519c848bbd47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ce50553-d0a0-5aea-815f-ff5b1e28c6ff', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '887f5746fe89ae0e9a8a81118bcdad6fefaef75943608114fbc78068ca329121'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cefe652c-7d62-5096-8ac3-d29d0eea58b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ce50553-d0a0-5aea-815f-ff5b1e28c6ff', 1), '887f5746fe89ae0e9a8a81118bcdad6fefaef75943608114fbc78068ca329121',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3362943d2baa38e792a71a78aac317d4da5c20070445f52deb08519c848bbd47.mp3', 3422, '2026-09-13 11:31:45.168947', '6efaa2675320cff0c09109c776cae6550f4964458def0fca054906d2f5a5937f', 'validated', '{"audio_key":"3362943d2baa38e792a71a78aac317d4da5c20070445f52deb08519c848bbd47","entity_key":"d_evidentiality_epistemic_calibration_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6efaa2675320cff0c09109c776cae6550f4964458def0fca054906d2f5a5937f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3362943d2baa38e792a71a78aac317d4da5c20070445f52deb08519c848bbd47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_01:2 -> audio/generated/de-DE/dialogues/33dca5caa039c60aa5653c774f01a8ffbef6c0a526046e733aa40d09d04aa87d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('428d7eca-c7f1-51e6-9ee1-db95b8312476', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8312318ea08eccf5f122e74e8285365a643a4d002066861d29b4e90c5c2d46b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e5a46cd-554c-59f4-9436-ee065f36903f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('428d7eca-c7f1-51e6-9ee1-db95b8312476', 1), '8312318ea08eccf5f122e74e8285365a643a4d002066861d29b4e90c5c2d46b3',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/33dca5caa039c60aa5653c774f01a8ffbef6c0a526046e733aa40d09d04aa87d.mp3', 6817, '2026-09-13 11:31:45.987558', 'eaebc42860a310741ec5a825273fd3fe11e40da1cc35dd77e3d4639d9111ea4d', 'validated', '{"audio_key":"33dca5caa039c60aa5653c774f01a8ffbef6c0a526046e733aa40d09d04aa87d","entity_key":"d_metacommunication_misunderstanding_repair_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"eaebc42860a310741ec5a825273fd3fe11e40da1cc35dd77e3d4639d9111ea4d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/33dca5caa039c60aa5653c774f01a8ffbef6c0a526046e733aa40d09d04aa87d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_03:2 -> audio/generated/de-DE/dialogues/35df42b51b57c8213feb9aa4958e0512d787e9dc58bcbe35e8973280998fba42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eeb39cb1-e59b-5464-99f0-747cf5447793', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bae5312a25ad9b71cbe98fcb03603fc08c5871b8e03f629a1941677759ef7c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae65bde3-358c-5144-8f45-8f06d59ab762', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eeb39cb1-e59b-5464-99f0-747cf5447793', 1), 'bae5312a25ad9b71cbe98fcb03603fc08c5871b8e03f629a1941677759ef7c6b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35df42b51b57c8213feb9aa4958e0512d787e9dc58bcbe35e8973280998fba42.mp3', 4257, '2026-09-13 11:31:46.458423', '985a904d3e171bf9ae1ef60bc49146a0644d295f1266701ad84795058bac4094', 'validated', '{"audio_key":"35df42b51b57c8213feb9aa4958e0512d787e9dc58bcbe35e8973280998fba42","entity_key":"d_semantic_scope_ambiguity_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"985a904d3e171bf9ae1ef60bc49146a0644d295f1266701ad84795058bac4094","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/35df42b51b57c8213feb9aa4958e0512d787e9dc58bcbe35e8973280998fba42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_02:2 -> audio/generated/de-DE/dialogues/3622d0521a3959dcb8440372b211ee682d76b6ba55db11ceed3e2154f00803fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c0a33d3-dd7c-5a62-86c0-7d73be053f09', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cadf57d83866880b113cb64931b626a6c5fefb1adfbe1f6f1a4388c3e85a29fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9028429d-aaaa-567c-871a-b51b8cee7174', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c0a33d3-dd7c-5a62-86c0-7d73be053f09', 1), 'cadf57d83866880b113cb64931b626a6c5fefb1adfbe1f6f1a4388c3e85a29fd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3622d0521a3959dcb8440372b211ee682d76b6ba55db11ceed3e2154f00803fa.mp3', 3892, '2026-09-13 11:31:47.213001', 'a7560b24270f06f83ea434ef93782346158db4d392ddd13db9bfe3e6e650f309', 'validated', '{"audio_key":"3622d0521a3959dcb8440372b211ee682d76b6ba55db11ceed3e2154f00803fa","entity_key":"d_semantic_scope_ambiguity_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a7560b24270f06f83ea434ef93782346158db4d392ddd13db9bfe3e6e650f309","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3622d0521a3959dcb8440372b211ee682d76b6ba55db11ceed3e2154f00803fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_01:1 -> audio/generated/de-DE/dialogues/363403e236a5d7c8833b65cd3d246c21b77d2bafeb5a7901204aa35ab0c42fd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('303c756f-e962-5c8c-b6e4-062a615b87cb', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8eff7a8a0593bcb1b7b26c78c694db8cd49b1537b5566cc25cbf76643d51a5c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76c9b4c9-9e9a-526f-ad7d-604f38b6d910', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('303c756f-e962-5c8c-b6e4-062a615b87cb', 1), '8eff7a8a0593bcb1b7b26c78c694db8cd49b1537b5566cc25cbf76643d51a5c3',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/363403e236a5d7c8833b65cd3d246c21b77d2bafeb5a7901204aa35ab0c42fd2.mp3', 4597, '2026-09-13 11:31:47.812361', '6d35f615a485b4bd49b1f4fcea9997301f761526e311fbb5defdb9a5f1858e43', 'validated', '{"audio_key":"363403e236a5d7c8833b65cd3d246c21b77d2bafeb5a7901204aa35ab0c42fd2","entity_key":"d_expert_public_precision_capstone_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d35f615a485b4bd49b1f4fcea9997301f761526e311fbb5defdb9a5f1858e43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/363403e236a5d7c8833b65cd3d246c21b77d2bafeb5a7901204aa35ab0c42fd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_03:2 -> audio/generated/de-DE/dialogues/364f0206290741b195e038a8a285383ca02f122c1dfdcaecb5bd249dd67e0237.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c14c2031-2f18-53da-8420-cf639bcd9a6d', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '741ef24db0aa8f45a72b8cedddfa96461c495d666e8c85ded8aa0e74c372aafd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('624a7b2f-4379-51e0-878e-f3513afbaa14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c14c2031-2f18-53da-8420-cf639bcd9a6d', 1), '741ef24db0aa8f45a72b8cedddfa96461c495d666e8c85ded8aa0e74c372aafd',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/364f0206290741b195e038a8a285383ca02f122c1dfdcaecb5bd249dd67e0237.mp3', 3526, '2026-09-13 11:31:48.429177', 'beb68d04b939fd8c2bc4d3f8093f5b72ab9f89bb77b2aeca95aece51fca19eb1', 'validated', '{"audio_key":"364f0206290741b195e038a8a285383ca02f122c1dfdcaecb5bd249dd67e0237","entity_key":"d_live_debate_interruption_reframing_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"beb68d04b939fd8c2bc4d3f8093f5b72ab9f89bb77b2aeca95aece51fca19eb1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/364f0206290741b195e038a8a285383ca02f122c1dfdcaecb5bd249dd67e0237.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_02:1 -> audio/generated/de-DE/dialogues/385238102f02afb9462ca807375095c4056be2d86af6278fcace1eb58e636939.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65960906-0dd6-507e-b921-4333bfcfcac1', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b503ce12730ba29d6ed665a3bf13b017d2e1fdbec6ce87bdbd6f4fbdec5fac89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45678ed0-578f-5db5-b795-2140aa54f60c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65960906-0dd6-507e-b921-4333bfcfcac1', 1), 'b503ce12730ba29d6ed665a3bf13b017d2e1fdbec6ce87bdbd6f4fbdec5fac89',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/385238102f02afb9462ca807375095c4056be2d86af6278fcace1eb58e636939.mp3', 3892, '2026-09-13 11:31:49.096519', '66ca79b708673f50af7ac70374419051fdf813a4f63e5a099931eb0c96cf9ef4', 'validated', '{"audio_key":"385238102f02afb9462ca807375095c4056be2d86af6278fcace1eb58e636939","entity_key":"d_live_debate_interruption_reframing_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"66ca79b708673f50af7ac70374419051fdf813a4f63e5a099931eb0c96cf9ef4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/385238102f02afb9462ca807375095c4056be2d86af6278fcace1eb58e636939.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_01:2 -> audio/generated/de-DE/dialogues/39c4071d6c4c30e5990b9d78f4ad2099a70e527d196ab6ae3813d578c263ea9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55d24a6d-21f1-5334-b1b1-64ef9ed1b574', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be3f816b045347974c8563df3edfd688ce150a3be01afbd9f374b72b52817d7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f50eac7-e16d-5a48-bf43-36924ea4b177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55d24a6d-21f1-5334-b1b1-64ef9ed1b574', 1), 'be3f816b045347974c8563df3edfd688ce150a3be01afbd9f374b72b52817d7b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/39c4071d6c4c30e5990b9d78f4ad2099a70e527d196ab6ae3813d578c263ea9b.mp3', 4257, '2026-09-13 11:31:49.726004', 'ae28620a1ad7eee22d01bb93ebad9dedc5ee887af560bff083d910ec34ba7a3d', 'validated', '{"audio_key":"39c4071d6c4c30e5990b9d78f4ad2099a70e527d196ab6ae3813d578c263ea9b","entity_key":"d_semantic_scope_ambiguity_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ae28620a1ad7eee22d01bb93ebad9dedc5ee887af560bff083d910ec34ba7a3d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/39c4071d6c4c30e5990b9d78f4ad2099a70e527d196ab6ae3813d578c263ea9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_03:3 -> audio/generated/de-DE/dialogues/3a179ede048754c29de8ed5f5e1665c10afd94ad51abd7c67cd8220f8530a919.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('656eca58-5529-5c18-99a6-769195b5e131', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f27cf8e83c66e0d9db8f2b00330d9e96fdf57bcbae41d31e79975d4a35107033'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9a83b94-059f-525c-97ce-26b18beebdef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('656eca58-5529-5c18-99a6-769195b5e131', 1), 'f27cf8e83c66e0d9db8f2b00330d9e96fdf57bcbae41d31e79975d4a35107033',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a179ede048754c29de8ed5f5e1665c10afd94ad51abd7c67cd8220f8530a919.mp3', 3526, '2026-09-13 11:31:50.308430', '09091915ae2b3a4bdee809c935a90e78ed4bf60649092346d1c867711708e382', 'validated', '{"audio_key":"3a179ede048754c29de8ed5f5e1665c10afd94ad51abd7c67cd8220f8530a919","entity_key":"d_lossless_compression_summarization_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"09091915ae2b3a4bdee809c935a90e78ed4bf60649092346d1c867711708e382","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3a179ede048754c29de8ed5f5e1665c10afd94ad51abd7c67cd8220f8530a919.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_02:3 -> audio/generated/de-DE/dialogues/3bb158eef3e55a3dd4872d85b1bf3e429b2e13d3c92392f90e944f713230641d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b9dd657-9245-5590-9830-1f3ac5eaf659', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '632359aa793d63fc978dd2765f66766840d265de458bf01347d3595679a8dd79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78fd19ea-3a86-57d8-a8ec-d490239b6624', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b9dd657-9245-5590-9830-1f3ac5eaf659', 1), '632359aa793d63fc978dd2765f66766840d265de458bf01347d3595679a8dd79',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3bb158eef3e55a3dd4872d85b1bf3e429b2e13d3c92392f90e944f713230641d.mp3', 3787, '2026-09-13 11:31:50.983523', 'cc889abde54916e349e95e0024fca0d99d1521732dea92e9f43697421a1d1d94', 'validated', '{"audio_key":"3bb158eef3e55a3dd4872d85b1bf3e429b2e13d3c92392f90e944f713230641d","entity_key":"d_modal_commitment_precision_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc889abde54916e349e95e0024fca0d99d1521732dea92e9f43697421a1d1d94","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3bb158eef3e55a3dd4872d85b1bf3e429b2e13d3c92392f90e944f713230641d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_03:2 -> audio/generated/de-DE/dialogues/3c81add6538de1200300b467a440999767e4e153d0e969b0f90d8a8493ee582e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a18816a-21fe-5f65-9550-99a01e83189a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '222159a86ce6f6d27a583f27c438bfcd8dc5859306b76e72acf050c2294e25cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86079e7b-b401-5ffa-b8dd-ce304d0a73a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a18816a-21fe-5f65-9550-99a01e83189a', 1), '222159a86ce6f6d27a583f27c438bfcd8dc5859306b76e72acf050c2294e25cd',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3c81add6538de1200300b467a440999767e4e153d0e969b0f90d8a8493ee582e.mp3', 6922, '2026-09-13 11:31:51.902668', '4c8a652e9c85e841b4379fb367e2401c06adcc5b84f8f698419b1d1c63077c94', 'validated', '{"audio_key":"3c81add6538de1200300b467a440999767e4e153d0e969b0f90d8a8493ee582e","entity_key":"d_modal_commitment_precision_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4c8a652e9c85e841b4379fb367e2401c06adcc5b84f8f698419b1d1c63077c94","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3c81add6538de1200300b467a440999767e4e153d0e969b0f90d8a8493ee582e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_01:2 -> audio/generated/de-DE/dialogues/41e662b4b225df658185501d553e3b9956af1ea23c4b46ec0aea5be0e6dd4b82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e49a935-9fac-56a8-a0e0-b174d0e8edd8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7d8235ce7d317d58b871814bc8f4168f9cf18cad63760a210e5f4da465cff68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c32cc895-b8f0-5d4e-8811-7d2849bee188', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e49a935-9fac-56a8-a0e0-b174d0e8edd8', 1), 'e7d8235ce7d317d58b871814bc8f4168f9cf18cad63760a210e5f4da465cff68',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41e662b4b225df658185501d553e3b9956af1ea23c4b46ec0aea5be0e6dd4b82.mp3', 3343, '2026-09-13 11:31:52.243651', '9d5060e812a359ab37466e004ed5823111c44c385e95cc93cbbbad45585fa96e', 'validated', '{"audio_key":"41e662b4b225df658185501d553e3b9956af1ea23c4b46ec0aea5be0e6dd4b82","entity_key":"d_live_debate_interruption_reframing_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9d5060e812a359ab37466e004ed5823111c44c385e95cc93cbbbad45585fa96e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/41e662b4b225df658185501d553e3b9956af1ea23c4b46ec0aea5be0e6dd4b82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_01:4 -> audio/generated/de-DE/dialogues/422810fc3e7ea697bc95722ca66352e12259a340adf4fc193d7a816d870cca36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a111ebf-c254-51a7-9b7b-f0945ff92e2b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa8cd3562dbeefa16827a57fcb6c329d697787aca231589b968103d7950f6e92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70478e53-edc0-5d2c-83f7-263d6174114d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a111ebf-c254-51a7-9b7b-f0945ff92e2b', 1), 'aa8cd3562dbeefa16827a57fcb6c329d697787aca231589b968103d7950f6e92',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/422810fc3e7ea697bc95722ca66352e12259a340adf4fc193d7a816d870cca36.mp3', 3186, '2026-09-13 11:31:53.051920', '28b99f5ab72fde6362259af80b5ed637514e7fb7a1c1c394d4c9b0aa34872743', 'validated', '{"audio_key":"422810fc3e7ea697bc95722ca66352e12259a340adf4fc193d7a816d870cca36","entity_key":"d_lossless_compression_summarization_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"28b99f5ab72fde6362259af80b5ed637514e7fb7a1c1c394d4c9b0aa34872743","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/422810fc3e7ea697bc95722ca66352e12259a340adf4fc193d7a816d870cca36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_01:4 -> audio/generated/de-DE/dialogues/42e9cf598f2b7716f90280df0e8086a0dd51556a889ba3208fc95458695cb876.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c20afde-e725-5d00-806e-9bed8aefcaae', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59681c9a811de49b971c1493d1775c125cbb2afb66c2ffedc4fe83d0058524ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9b7a1e8-433f-5249-abdf-91a0b838cb95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c20afde-e725-5d00-806e-9bed8aefcaae', 1), '59681c9a811de49b971c1493d1775c125cbb2afb66c2ffedc4fe83d0058524ec',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/42e9cf598f2b7716f90280df0e8086a0dd51556a889ba3208fc95458695cb876.mp3', 4205, '2026-09-13 11:31:53.988276', '88a578ceafbf84849c29febfb80c4ff9c2c3fce952a91cfbaea134736e203c2a', 'validated', '{"audio_key":"42e9cf598f2b7716f90280df0e8086a0dd51556a889ba3208fc95458695cb876","entity_key":"d_audience_reformulation_technical_public_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"88a578ceafbf84849c29febfb80c4ff9c2c3fce952a91cfbaea134736e203c2a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/42e9cf598f2b7716f90280df0e8086a0dd51556a889ba3208fc95458695cb876.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_02:4 -> audio/generated/de-DE/dialogues/4377396837b954555bddab57d9e31cf9e9295f315a21fea23f193739cde5f651.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b977dcb-f76d-5ad4-9b18-753ad530486e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6938f831807b10ef0a3e00a50cffe6933244a95e166c8ac3c7f22da93ee6f46b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6c75a41-9c71-5ee8-b931-3422df7ddf5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b977dcb-f76d-5ad4-9b18-753ad530486e', 1), '6938f831807b10ef0a3e00a50cffe6933244a95e166c8ac3c7f22da93ee6f46b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4377396837b954555bddab57d9e31cf9e9295f315a21fea23f193739cde5f651.mp3', 4832, '2026-09-13 11:31:54.413111', '7d7504778d80c093c485ebefb2fbbad391469f5c28c1c764d3aed74710ba716c', 'validated', '{"audio_key":"4377396837b954555bddab57d9e31cf9e9295f315a21fea23f193739cde5f651","entity_key":"d_metacommunication_misunderstanding_repair_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7d7504778d80c093c485ebefb2fbbad391469f5c28c1c764d3aed74710ba716c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4377396837b954555bddab57d9e31cf9e9295f315a21fea23f193739cde5f651.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_01:2 -> audio/generated/de-DE/dialogues/45421ee8725ecec603273d2acc65f669574668ff4ebfadd0715de8b5df50afcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5a4fff5-2453-553b-ad2a-d8a4e80933ae', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8197b9eace9fe417dd194b08afc3443c6aa69a6532468c6364a1fce69ffd9aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7fee5bc-68fc-5248-957d-b90ae49a2792', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5a4fff5-2453-553b-ad2a-d8a4e80933ae', 1), 'c8197b9eace9fe417dd194b08afc3443c6aa69a6532468c6364a1fce69ffd9aa',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/45421ee8725ecec603273d2acc65f669574668ff4ebfadd0715de8b5df50afcc.mp3', 6112, '2026-09-13 11:31:55.534482', 'adb376558baed47dbd6697dd5097cd23f2b4a3a3da56e12eedb3553407b33953', 'validated', '{"audio_key":"45421ee8725ecec603273d2acc65f669574668ff4ebfadd0715de8b5df50afcc","entity_key":"d_terminology_negotiation_concept_boundaries_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"adb376558baed47dbd6697dd5097cd23f2b4a3a3da56e12eedb3553407b33953","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/45421ee8725ecec603273d2acc65f669574668ff4ebfadd0715de8b5df50afcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_02:2 -> audio/generated/de-DE/dialogues/47dab6d0ea4f2baccf5a08c73ba92166684e709e4e6043873836c9a0c0121c12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34dbf126-9ec9-5676-b789-cf7cbbf336e4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b310256815b67130001b3ab3578f94f2c24ed147709c90c1bc25e8dcaaa2fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f4866b6-ac9d-587b-a7d1-dad3fe5d1ccb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34dbf126-9ec9-5676-b789-cf7cbbf336e4', 1), '9b310256815b67130001b3ab3578f94f2c24ed147709c90c1bc25e8dcaaa2fab',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/47dab6d0ea4f2baccf5a08c73ba92166684e709e4e6043873836c9a0c0121c12.mp3', 4362, '2026-09-13 11:31:55.682373', '30349f9dd8d38db10de5093cbb1f96dbcebe0c04f26b07306eecd6bfadabc516', 'validated', '{"audio_key":"47dab6d0ea4f2baccf5a08c73ba92166684e709e4e6043873836c9a0c0121c12","entity_key":"d_evidentiality_epistemic_calibration_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30349f9dd8d38db10de5093cbb1f96dbcebe0c04f26b07306eecd6bfadabc516","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/47dab6d0ea4f2baccf5a08c73ba92166684e709e4e6043873836c9a0c0121c12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_03:2 -> audio/generated/de-DE/dialogues/4a4c3551c4798ba85dfa4066b22155aa3fd7dfd9e236aa0009a6886c74c8ea6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d98becc9-1920-5f56-a770-00cf9e1d1e50', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c60d7b8374c75b17a4d59fde11e737769509d13e1f68484fb17bc88754ed48ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af1fdf46-5c01-5f56-9df3-9b46555fd61e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d98becc9-1920-5f56-a770-00cf9e1d1e50', 1), 'c60d7b8374c75b17a4d59fde11e737769509d13e1f68484fb17bc88754ed48ea',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a4c3551c4798ba85dfa4066b22155aa3fd7dfd9e236aa0009a6886c74c8ea6b.mp3', 2768, '2026-09-13 11:31:56.645775', '796de1cbf6f616b117160c69d61988859dce9dbf1260170bfa2ab2649aafc9e8', 'validated', '{"audio_key":"4a4c3551c4798ba85dfa4066b22155aa3fd7dfd9e236aa0009a6886c74c8ea6b","entity_key":"d_terminology_negotiation_concept_boundaries_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"796de1cbf6f616b117160c69d61988859dce9dbf1260170bfa2ab2649aafc9e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4a4c3551c4798ba85dfa4066b22155aa3fd7dfd9e236aa0009a6886c74c8ea6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_03:3 -> audio/generated/de-DE/dialogues/4bb028c2b5c592d3dc1c792bf6c9e7a4db4b760250ebf00778148cd06b3d4b4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('116988a1-7ac1-5db2-9da3-82aee748d980', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d338de70164b215b50b65d9228c803b1a9cb9b981bad6deee4aa1380c8c9e9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c382c2ae-1d7a-51a1-837a-b1ee698adbfc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('116988a1-7ac1-5db2-9da3-82aee748d980', 1), '6d338de70164b215b50b65d9228c803b1a9cb9b981bad6deee4aa1380c8c9e9e',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4bb028c2b5c592d3dc1c792bf6c9e7a4db4b760250ebf00778148cd06b3d4b4c.mp3', 5668, '2026-09-13 11:31:57.172357', '2b77e3a339e4123b3fdfe9a1703ad01501d74b9482a6933488f630ff445a2e84', 'validated', '{"audio_key":"4bb028c2b5c592d3dc1c792bf6c9e7a4db4b760250ebf00778148cd06b3d4b4c","entity_key":"d_live_debate_interruption_reframing_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2b77e3a339e4123b3fdfe9a1703ad01501d74b9482a6933488f630ff445a2e84","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4bb028c2b5c592d3dc1c792bf6c9e7a4db4b760250ebf00778148cd06b3d4b4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_02:1 -> audio/generated/de-DE/dialogues/4dda11df9c8333a6f12fe4c4654dcd6628edceb27b1cb6efb7eea4457b8de438.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d2079de3-bf54-5269-ad5b-43939bc1ba54', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '422e245934393dd03731b9db9b252dc6901c5599d91a19ca8e7f8bc0f4c08d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64370e63-4874-5a17-acd2-c25235ca6b7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d2079de3-bf54-5269-ad5b-43939bc1ba54', 1), '422e245934393dd03731b9db9b252dc6901c5599d91a19ca8e7f8bc0f4c08d51',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4dda11df9c8333a6f12fe4c4654dcd6628edceb27b1cb6efb7eea4457b8de438.mp3', 4362, '2026-09-13 11:31:57.953391', '4750bec20c4835637aa06a148986896056283c6bcbe64b4f18ac7fe036b58b4c', 'validated', '{"audio_key":"4dda11df9c8333a6f12fe4c4654dcd6628edceb27b1cb6efb7eea4457b8de438","entity_key":"d_expert_public_precision_capstone_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4750bec20c4835637aa06a148986896056283c6bcbe64b4f18ac7fe036b58b4c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4dda11df9c8333a6f12fe4c4654dcd6628edceb27b1cb6efb7eea4457b8de438.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_01:4 -> audio/generated/de-DE/dialogues/50fb2c6530cebd3f0c13a08059795456e6e50b493b271d9fe3cce203b4a33c08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23356e90-8ec1-55f0-b895-9f22f906bb7c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11376507af297e4db1cae81cc42c336f1c17d82fb0a56ab10e8954828f2bf95c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f908567-9017-5ef8-ae21-6cdf34a6cc81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23356e90-8ec1-55f0-b895-9f22f906bb7c', 1), '11376507af297e4db1cae81cc42c336f1c17d82fb0a56ab10e8954828f2bf95c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50fb2c6530cebd3f0c13a08059795456e6e50b493b271d9fe3cce203b4a33c08.mp3', 4440, '2026-09-13 11:31:58.459429', 'cfa32612b7755183272d9ea79423a0991ad87738b551888057507c35c93e1427', 'validated', '{"audio_key":"50fb2c6530cebd3f0c13a08059795456e6e50b493b271d9fe3cce203b4a33c08","entity_key":"d_semantic_scope_ambiguity_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cfa32612b7755183272d9ea79423a0991ad87738b551888057507c35c93e1427","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/50fb2c6530cebd3f0c13a08059795456e6e50b493b271d9fe3cce203b4a33c08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_01:4 -> audio/generated/de-DE/dialogues/562ab358a12f0ea89fec1a807d128e99d7039e550f50ceb0df72a7378759af1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fac4e1fc-1bfe-53cd-acd6-cb9229515ebb', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '105ef6c4a7884f4dc1a87d92827cdc7566a48e9f778d98cce0b2b7f53720f2c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5adfbd5d-8f11-51fc-80ad-e4415f49b72a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fac4e1fc-1bfe-53cd-acd6-cb9229515ebb', 1), '105ef6c4a7884f4dc1a87d92827cdc7566a48e9f778d98cce0b2b7f53720f2c9',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/562ab358a12f0ea89fec1a807d128e99d7039e550f50ceb0df72a7378759af1d.mp3', 2351, '2026-09-13 11:31:59.064062', 'f08edadc3de012153683f85ea44dfe963a39e498a773ae185225e116f26e2717', 'validated', '{"audio_key":"562ab358a12f0ea89fec1a807d128e99d7039e550f50ceb0df72a7378759af1d","entity_key":"d_evidentiality_epistemic_calibration_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f08edadc3de012153683f85ea44dfe963a39e498a773ae185225e116f26e2717","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/562ab358a12f0ea89fec1a807d128e99d7039e550f50ceb0df72a7378759af1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_03:4 -> audio/generated/de-DE/dialogues/565be9ee5630f391e484c238401afdeb1efb83bc4982a83cad397bdcae32c3c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87e6d734-95dc-594d-9794-7aa4e2173e4a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85e0fbbda6bbc50b29bcfaaacab4972401bfa0716c5cb5a72fb638af3faf618d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f01f707-03c4-5e38-99fe-cbd88bcca804', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87e6d734-95dc-594d-9794-7aa4e2173e4a', 1), '85e0fbbda6bbc50b29bcfaaacab4972401bfa0716c5cb5a72fb638af3faf618d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/565be9ee5630f391e484c238401afdeb1efb83bc4982a83cad397bdcae32c3c5.mp3', 4493, '2026-09-13 11:31:59.738815', '2c2ae72af81d5dac698bbdfab67907312ef3ede668fe1e184c14edfde4ed0856', 'validated', '{"audio_key":"565be9ee5630f391e484c238401afdeb1efb83bc4982a83cad397bdcae32c3c5","entity_key":"d_lossless_compression_summarization_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2c2ae72af81d5dac698bbdfab67907312ef3ede668fe1e184c14edfde4ed0856","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/565be9ee5630f391e484c238401afdeb1efb83bc4982a83cad397bdcae32c3c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_02:3 -> audio/generated/de-DE/dialogues/56d78a93125d6f95ec01635f550069fa9b7fa297687c6d1745c818cf9267c4b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c0a71b7-3448-53af-b438-25d5bee61981', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6aae851ad4851dc88fd77deda1ac5a908afd88000ed75a9126908edadb0203c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68d1ec84-c68d-583f-aac7-97be4b485b81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c0a71b7-3448-53af-b438-25d5bee61981', 1), 'd6aae851ad4851dc88fd77deda1ac5a908afd88000ed75a9126908edadb0203c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56d78a93125d6f95ec01635f550069fa9b7fa297687c6d1745c818cf9267c4b2.mp3', 3056, '2026-09-13 11:32:00.199864', '10fb973b172b3493a023388431f01780bf84f5a1f5a24e4d2034102d093abf6b', 'validated', '{"audio_key":"56d78a93125d6f95ec01635f550069fa9b7fa297687c6d1745c818cf9267c4b2","entity_key":"d_cohesion_reference_dense_texts_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"10fb973b172b3493a023388431f01780bf84f5a1f5a24e4d2034102d093abf6b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/56d78a93125d6f95ec01635f550069fa9b7fa297687c6d1745c818cf9267c4b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_03:3 -> audio/generated/de-DE/dialogues/5721b53f38f5dfe7ffc1219a054cbdff85118f77dff9b891ea15e7cda9fbfbf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e72b192-6fdf-5dd9-b72e-dd5430b34450', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cc99e591ddf4356a23897d158e28415c84e100ea4cae38eb2100d9b18c0304f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff5867d-1387-592f-b433-a97091380e38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e72b192-6fdf-5dd9-b72e-dd5430b34450', 1), '5cc99e591ddf4356a23897d158e28415c84e100ea4cae38eb2100d9b18c0304f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5721b53f38f5dfe7ffc1219a054cbdff85118f77dff9b891ea15e7cda9fbfbf4.mp3', 4362, '2026-09-13 11:32:01.037002', '93c721f8d77c47a6f44ae69896bc28efb01c6c0dead09f6380872b1c60ce7ecf', 'validated', '{"audio_key":"5721b53f38f5dfe7ffc1219a054cbdff85118f77dff9b891ea15e7cda9fbfbf4","entity_key":"d_terminology_negotiation_concept_boundaries_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"93c721f8d77c47a6f44ae69896bc28efb01c6c0dead09f6380872b1c60ce7ecf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5721b53f38f5dfe7ffc1219a054cbdff85118f77dff9b891ea15e7cda9fbfbf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_01:3 -> audio/generated/de-DE/dialogues/59fad6476cba2a230f501c6f19dc0e303bbb29d048e6753e97aba9f4895d942f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c105a889-57a3-5cf2-830f-ffe6296c16b3', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3acbaac480add1d15a00c66e4399b4e3010df6b7eb5afe292908c6d705deebad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0139aade-10ee-53e1-9fc2-0a59619ef0ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c105a889-57a3-5cf2-830f-ffe6296c16b3', 1), '3acbaac480add1d15a00c66e4399b4e3010df6b7eb5afe292908c6d705deebad',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/59fad6476cba2a230f501c6f19dc0e303bbb29d048e6753e97aba9f4895d942f.mp3', 4205, '2026-09-13 11:32:01.470390', '7c713b4e2666d0ead39bfd1b903baf7672f3f1be322e618acb264a8600ec007c', 'validated', '{"audio_key":"59fad6476cba2a230f501c6f19dc0e303bbb29d048e6753e97aba9f4895d942f","entity_key":"d_audience_reformulation_technical_public_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7c713b4e2666d0ead39bfd1b903baf7672f3f1be322e618acb264a8600ec007c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/59fad6476cba2a230f501c6f19dc0e303bbb29d048e6753e97aba9f4895d942f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_02:3 -> audio/generated/de-DE/dialogues/5b412f9862fad5ca32b9683f4fac3e92caa9b2b6b5e126b31b66b8857e3c70ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82574bb6-3775-5b7d-914f-410c8f8f66a5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80223f45a2c2db5ab7cf00673d14ed5a40e2cc7561d9485a55b8bf788bbe1314'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9acd59e9-9477-50ec-933b-f3a906d03104', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82574bb6-3775-5b7d-914f-410c8f8f66a5', 1), '80223f45a2c2db5ab7cf00673d14ed5a40e2cc7561d9485a55b8bf788bbe1314',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b412f9862fad5ca32b9683f4fac3e92caa9b2b6b5e126b31b66b8857e3c70ef.mp3', 2037, '2026-09-13 11:32:02.057062', 'f31f9e84cccdc6ff294932f8226d72ccc36ba07f4be4ba7e040541861d8b8622', 'validated', '{"audio_key":"5b412f9862fad5ca32b9683f4fac3e92caa9b2b6b5e126b31b66b8857e3c70ef","entity_key":"d_metacommunication_misunderstanding_repair_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f31f9e84cccdc6ff294932f8226d72ccc36ba07f4be4ba7e040541861d8b8622","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5b412f9862fad5ca32b9683f4fac3e92caa9b2b6b5e126b31b66b8857e3c70ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_01:2 -> audio/generated/de-DE/dialogues/60068ec70afa3cd0189a44bfc130d74fd265dad3ed23d2a1c5d5565950f3260e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d75a1217-807c-5e4a-b647-e6f51823b7cd', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24971a9f486ab4f32d3c09f693fbcebb2e7b52e5bd59291762e70eeaa8023cb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4ea84cc-b60c-527b-9bea-60ff1e52acb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d75a1217-807c-5e4a-b647-e6f51823b7cd', 1), '24971a9f486ab4f32d3c09f693fbcebb2e7b52e5bd59291762e70eeaa8023cb1',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/60068ec70afa3cd0189a44bfc130d74fd265dad3ed23d2a1c5d5565950f3260e.mp3', 8124, '2026-09-13 11:32:03.179882', 'bd32b0ef58841bc9ca3d82a1bd03b462be1c303c5ffd803c7605b3366b60d873', 'validated', '{"audio_key":"60068ec70afa3cd0189a44bfc130d74fd265dad3ed23d2a1c5d5565950f3260e","entity_key":"d_cohesion_reference_dense_texts_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"bd32b0ef58841bc9ca3d82a1bd03b462be1c303c5ffd803c7605b3366b60d873","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/60068ec70afa3cd0189a44bfc130d74fd265dad3ed23d2a1c5d5565950f3260e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_03:2 -> audio/generated/de-DE/dialogues/60398c778336c3c94159f76c1ff6c15258d89071ed6c37680152973f0e8b8bae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7bdc407-153f-577d-85c5-f5ff1e8090f9', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a8390bb6c5c54f16f34875da6cb78c063ebf529bbf75bb4e03bc7132b8cb4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5db5df5-8e8d-5e23-9a7c-ac8014a425e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7bdc407-153f-577d-85c5-f5ff1e8090f9', 1), '9a8390bb6c5c54f16f34875da6cb78c063ebf529bbf75bb4e03bc7132b8cb4a8',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/60398c778336c3c94159f76c1ff6c15258d89071ed6c37680152973f0e8b8bae.mp3', 3604, '2026-09-13 11:32:03.243958', '309868a136ceed0b8389ada8c8094670a026ebb59c64d5e4f2fc4a00387d4b08', 'validated', '{"audio_key":"60398c778336c3c94159f76c1ff6c15258d89071ed6c37680152973f0e8b8bae","entity_key":"d_cohesion_reference_dense_texts_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"309868a136ceed0b8389ada8c8094670a026ebb59c64d5e4f2fc4a00387d4b08","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/60398c778336c3c94159f76c1ff6c15258d89071ed6c37680152973f0e8b8bae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_01:3 -> audio/generated/de-DE/dialogues/609db622d1b8848e93c07127a23d4f4ad9eae0d0de12e4a2c8e242e4bf535b55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1855d4ec-405f-5ea3-a78a-6633c7cc4d1e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf87371090f5609fcb9f7ab52b446216d34884de6268d81c146e436348a6542c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f20904ea-918a-58d9-91cb-c062a214a237', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1855d4ec-405f-5ea3-a78a-6633c7cc4d1e', 1), 'cf87371090f5609fcb9f7ab52b446216d34884de6268d81c146e436348a6542c',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/609db622d1b8848e93c07127a23d4f4ad9eae0d0de12e4a2c8e242e4bf535b55.mp3', 4728, '2026-09-13 11:32:04.602364', '400364563d3d845e71a63dc7b914f0ea153b4b3affcb454fb2b41c6fe676fefd', 'validated', '{"audio_key":"609db622d1b8848e93c07127a23d4f4ad9eae0d0de12e4a2c8e242e4bf535b55","entity_key":"d_semantic_scope_ambiguity_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"400364563d3d845e71a63dc7b914f0ea153b4b3affcb454fb2b41c6fe676fefd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/609db622d1b8848e93c07127a23d4f4ad9eae0d0de12e4a2c8e242e4bf535b55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_01:1 -> audio/generated/de-DE/dialogues/62a9dbfd839478c4fc8c69a41381b8b5aa8ef6b807c6cc58c1c32d26ef5ef5b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe526ace-5d2e-54de-ae04-062d80fc361b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02162dd0ca0f254f94feac95bfa5be72f62be93c9b678bcb02b0a9ed77d26077'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6caff98b-365a-5954-9146-73770fb606d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe526ace-5d2e-54de-ae04-062d80fc361b', 1), '02162dd0ca0f254f94feac95bfa5be72f62be93c9b678bcb02b0a9ed77d26077',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/62a9dbfd839478c4fc8c69a41381b8b5aa8ef6b807c6cc58c1c32d26ef5ef5b0.mp3', 5198, '2026-09-13 11:32:04.688830', 'c6e481b10195ef739691c37c876d7ac2cbc4366c55a9c0b7aec3785dfacd2538', 'validated', '{"audio_key":"62a9dbfd839478c4fc8c69a41381b8b5aa8ef6b807c6cc58c1c32d26ef5ef5b0","entity_key":"d_lossless_compression_summarization_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c6e481b10195ef739691c37c876d7ac2cbc4366c55a9c0b7aec3785dfacd2538","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/62a9dbfd839478c4fc8c69a41381b8b5aa8ef6b807c6cc58c1c32d26ef5ef5b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_02:1 -> audio/generated/de-DE/dialogues/62c6fe2557c3a639cb655ee400b09a2ad16780021e94d7e0e93ba751ef4f86ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2644348d-6e4e-51ec-aa7a-1cfc1b2db7c8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd29ddc975522cb62199cad6de4d360218c327bb91e069549fe7d0335dbf6b536'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfc3050f-1bba-5499-ab8e-dc4a69eaefab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2644348d-6e4e-51ec-aa7a-1cfc1b2db7c8', 1), 'd29ddc975522cb62199cad6de4d360218c327bb91e069549fe7d0335dbf6b536',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/62c6fe2557c3a639cb655ee400b09a2ad16780021e94d7e0e93ba751ef4f86ce.mp3', 4205, '2026-09-13 11:32:05.895356', '374c5b7ceda54dc269a7d8538f32af514682a71767cd85d2af8c643815b19917', 'validated', '{"audio_key":"62c6fe2557c3a639cb655ee400b09a2ad16780021e94d7e0e93ba751ef4f86ce","entity_key":"d_lossless_compression_summarization_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"374c5b7ceda54dc269a7d8538f32af514682a71767cd85d2af8c643815b19917","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/62c6fe2557c3a639cb655ee400b09a2ad16780021e94d7e0e93ba751ef4f86ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_03:4 -> audio/generated/de-DE/dialogues/6925e1e1003f3eaa11d96d5ec81a7989b8b450d881dbc885faab9c0704cfe2f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e437a8a1-b61f-5e9b-b5ff-2d5e2a89434c', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '682572ba02082821af36bb2898f73231ad421129371787d9a734d9c30e265aa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0487cc-3882-592f-8e52-def35074da39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e437a8a1-b61f-5e9b-b5ff-2d5e2a89434c', 1), '682572ba02082821af36bb2898f73231ad421129371787d9a734d9c30e265aa9',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6925e1e1003f3eaa11d96d5ec81a7989b8b450d881dbc885faab9c0704cfe2f7.mp3', 4205, '2026-09-13 11:32:05.938540', '4a5dbaa0c81a77e8848e15eb4a184b9ff15ab2433c5328514fc3a4974f44558e', 'validated', '{"audio_key":"6925e1e1003f3eaa11d96d5ec81a7989b8b450d881dbc885faab9c0704cfe2f7","entity_key":"d_evidentiality_epistemic_calibration_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4a5dbaa0c81a77e8848e15eb4a184b9ff15ab2433c5328514fc3a4974f44558e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6925e1e1003f3eaa11d96d5ec81a7989b8b450d881dbc885faab9c0704cfe2f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_02:3 -> audio/generated/de-DE/dialogues/6a33b66bfbf7f6463cfc1b76ba16f3e0ccd9dba52b6e771196b222e04f5e8414.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ece3aef-eca4-52c9-b2da-14bdeeebc505', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bd77199b168131b432bb4ae48488ef3bbf1c03529bb8a5dc7d82cc2acf2d574'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31f99eb0-d606-505c-ab22-c91b5e1acde2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ece3aef-eca4-52c9-b2da-14bdeeebc505', 1), '6bd77199b168131b432bb4ae48488ef3bbf1c03529bb8a5dc7d82cc2acf2d574',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6a33b66bfbf7f6463cfc1b76ba16f3e0ccd9dba52b6e771196b222e04f5e8414.mp3', 3108, '2026-09-13 11:32:07.071695', '4e4b6d34890916736b4dcb949184bbf2c88c7fe1b3874dcbc6c71b2692d2f79a', 'validated', '{"audio_key":"6a33b66bfbf7f6463cfc1b76ba16f3e0ccd9dba52b6e771196b222e04f5e8414","entity_key":"d_semantic_scope_ambiguity_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e4b6d34890916736b4dcb949184bbf2c88c7fe1b3874dcbc6c71b2692d2f79a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6a33b66bfbf7f6463cfc1b76ba16f3e0ccd9dba52b6e771196b222e04f5e8414.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_02:4 -> audio/generated/de-DE/dialogues/6ba85c1bf27e8b13aaa794dfcbbc681616072c2ef7c60423c1f03d9335940e5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d49da311-3a53-5146-9c61-ccc4f6accb4e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb75d613cbca0f406a3f426ad7d1edf4b6ca289734e5743535cf8f9978b45e81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c0dc5e8-199a-55f1-b44c-2104089b00dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d49da311-3a53-5146-9c61-ccc4f6accb4e', 1), 'fb75d613cbca0f406a3f426ad7d1edf4b6ca289734e5743535cf8f9978b45e81',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6ba85c1bf27e8b13aaa794dfcbbc681616072c2ef7c60423c1f03d9335940e5f.mp3', 4728, '2026-09-13 11:32:07.522476', '58c74a1fcc38497582dccda9824dd91915b94b3eed8853a683da31cf5b7fd936', 'validated', '{"audio_key":"6ba85c1bf27e8b13aaa794dfcbbc681616072c2ef7c60423c1f03d9335940e5f","entity_key":"d_terminology_negotiation_concept_boundaries_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"58c74a1fcc38497582dccda9824dd91915b94b3eed8853a683da31cf5b7fd936","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6ba85c1bf27e8b13aaa794dfcbbc681616072c2ef7c60423c1f03d9335940e5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_01:2 -> audio/generated/de-DE/dialogues/6c2f8982dc20d2f87edca67f7f52d2b675a742e3c5c2ada776f6f6576c3735f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79950304-2164-5e85-a0ce-9d81f5067f03', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4ffb4c729a07508cc51d412d26e925be97e8356f766f489535f3d1b81949e69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a93be10f-2e5b-5376-9f54-b52a1536736a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79950304-2164-5e85-a0ce-9d81f5067f03', 1), 'd4ffb4c729a07508cc51d412d26e925be97e8356f766f489535f3d1b81949e69',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c2f8982dc20d2f87edca67f7f52d2b675a742e3c5c2ada776f6f6576c3735f8.mp3', 4022, '2026-09-13 11:32:08.336790', 'a3e50f6fe5e1783aa1838f4dee4b85009bb9812c666358cf30f57d7e74ce7381', 'validated', '{"audio_key":"6c2f8982dc20d2f87edca67f7f52d2b675a742e3c5c2ada776f6f6576c3735f8","entity_key":"d_modal_commitment_precision_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a3e50f6fe5e1783aa1838f4dee4b85009bb9812c666358cf30f57d7e74ce7381","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6c2f8982dc20d2f87edca67f7f52d2b675a742e3c5c2ada776f6f6576c3735f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_03:3 -> audio/generated/de-DE/dialogues/6d674b3f24330ef0f2795feb04e3c4f3fbb10fbb5b91e47cc62974cff06eb87a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02c9a668-ca2e-5168-b4e8-159b3013d44d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd27141d72db2df12bfe3ffeb578e2943839e06e791cd7c43487e506a9d741941'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcd5b9a9-7dc1-5fe5-acf3-4b7840d81a34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02c9a668-ca2e-5168-b4e8-159b3013d44d', 1), 'd27141d72db2df12bfe3ffeb578e2943839e06e791cd7c43487e506a9d741941',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d674b3f24330ef0f2795feb04e3c4f3fbb10fbb5b91e47cc62974cff06eb87a.mp3', 2168, '2026-09-13 11:32:08.576262', 'd6b754742f82143dbc10e2ca23c78718a2f2f2a031021cbfcc23da4d9b969b39', 'validated', '{"audio_key":"6d674b3f24330ef0f2795feb04e3c4f3fbb10fbb5b91e47cc62974cff06eb87a","entity_key":"d_expert_public_precision_capstone_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d6b754742f82143dbc10e2ca23c78718a2f2f2a031021cbfcc23da4d9b969b39","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6d674b3f24330ef0f2795feb04e3c4f3fbb10fbb5b91e47cc62974cff06eb87a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_02:3 -> audio/generated/de-DE/dialogues/6da20f2edee8be737bc12a7660ce3e9923ac3f7d0c0fe3cfb8437faeda776207.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24f88639-dd4d-5f6a-bb86-b35466f5fd78', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15352cf6ce9b50e7fb3befc435566decb639ee8e5db60da8521f082063c85aa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55dfccfb-262e-50c8-a8c3-d37d36025c97', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24f88639-dd4d-5f6a-bb86-b35466f5fd78', 1), '15352cf6ce9b50e7fb3befc435566decb639ee8e5db60da8521f082063c85aa9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6da20f2edee8be737bc12a7660ce3e9923ac3f7d0c0fe3cfb8437faeda776207.mp3', 3369, '2026-09-13 11:32:09.510456', '566f386e95255f6917e8be68079491bebbbfc7e55a753ca11b4c8784e420c367', 'validated', '{"audio_key":"6da20f2edee8be737bc12a7660ce3e9923ac3f7d0c0fe3cfb8437faeda776207","entity_key":"d_expert_public_precision_capstone_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"566f386e95255f6917e8be68079491bebbbfc7e55a753ca11b4c8784e420c367","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6da20f2edee8be737bc12a7660ce3e9923ac3f7d0c0fe3cfb8437faeda776207.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_03:1 -> audio/generated/de-DE/dialogues/702d21583af870c6012562a8ff3d596ec23c3b0f20ba4887709821dca7536c50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5415326e-8e6e-55c3-b986-1c471b4f9460', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af69e39aefd3a52f106aae1faeeda27e4d79a8f4f9d2a6738a7a8e922b0b614c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b487e0d8-88ee-5c99-9288-dbc061a02baf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5415326e-8e6e-55c3-b986-1c471b4f9460', 1), 'af69e39aefd3a52f106aae1faeeda27e4d79a8f4f9d2a6738a7a8e922b0b614c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/702d21583af870c6012562a8ff3d596ec23c3b0f20ba4887709821dca7536c50.mp3', 7053, '2026-09-13 11:32:10.257884', '154c6261cc1dabf739df8ac6786b1faa215f928e9c0a730fbd5f481d9f6f53b9', 'validated', '{"audio_key":"702d21583af870c6012562a8ff3d596ec23c3b0f20ba4887709821dca7536c50","entity_key":"d_expert_public_precision_capstone_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"154c6261cc1dabf739df8ac6786b1faa215f928e9c0a730fbd5f481d9f6f53b9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/702d21583af870c6012562a8ff3d596ec23c3b0f20ba4887709821dca7536c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_01:3 -> audio/generated/de-DE/dialogues/7538f6283c74be2a475549e8bc9d1d62aa77d11aff074f9bf52625b1c5d4f258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bac74beb-76f1-525d-a559-9142d5c9a416', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70a82b0c24ba735fec9a70064aa02d25671e8223a03a1932aa9448b415e69236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('856cae46-56ed-5b4c-9647-90db9a841f1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bac74beb-76f1-525d-a559-9142d5c9a416', 1), '70a82b0c24ba735fec9a70064aa02d25671e8223a03a1932aa9448b415e69236',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7538f6283c74be2a475549e8bc9d1d62aa77d11aff074f9bf52625b1c5d4f258.mp3', 2951, '2026-09-13 11:32:10.612056', 'ae3fb83570da9dd2f3bae325462ff504d9867821ccf7e9545f5a4f51d9b2e9d8', 'validated', '{"audio_key":"7538f6283c74be2a475549e8bc9d1d62aa77d11aff074f9bf52625b1c5d4f258","entity_key":"d_terminology_negotiation_concept_boundaries_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ae3fb83570da9dd2f3bae325462ff504d9867821ccf7e9545f5a4f51d9b2e9d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7538f6283c74be2a475549e8bc9d1d62aa77d11aff074f9bf52625b1c5d4f258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_02:2 -> audio/generated/de-DE/dialogues/76ae924aeb5044656f73e0e171e51359f4977a70560bdb468bd29d78765ce2ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b1e4e47-bfaa-5393-b64f-647fa7df0abc', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26ac50d9acfc55024dd4b39f5dce4876b27a9f17af7679a301e35806558cc022'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df7ead24-ef26-5ce8-a5ee-099efc5fe960', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b1e4e47-bfaa-5393-b64f-647fa7df0abc', 1), '26ac50d9acfc55024dd4b39f5dce4876b27a9f17af7679a301e35806558cc022',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76ae924aeb5044656f73e0e171e51359f4977a70560bdb468bd29d78765ce2ee.mp3', 7340, '2026-09-13 11:32:11.942874', 'e9cf9e1869651a32a5688db008e080271bda3254ed0b6f28f217243ddcbcf259', 'validated', '{"audio_key":"76ae924aeb5044656f73e0e171e51359f4977a70560bdb468bd29d78765ce2ee","entity_key":"d_expert_public_precision_capstone_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e9cf9e1869651a32a5688db008e080271bda3254ed0b6f28f217243ddcbcf259","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/76ae924aeb5044656f73e0e171e51359f4977a70560bdb468bd29d78765ce2ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_03:1 -> audio/generated/de-DE/dialogues/76f7149ee6a59cc671b6930147ba1e7cd517e4c1986e6c552dca019fa3fed7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04174a3b-afc4-51bd-9e68-f391f47b396f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebec1b1e3ba6126584079f500d39d8cd4b852a2632f6f186b168b1141c550d9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5c68276-9675-54df-bbe8-ac1be8e56e90', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04174a3b-afc4-51bd-9e68-f391f47b396f', 1), 'ebec1b1e3ba6126584079f500d39d8cd4b852a2632f6f186b168b1141c550d9c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76f7149ee6a59cc671b6930147ba1e7cd517e4c1986e6c552dca019fa3fed7c8.mp3', 6112, '2026-09-13 11:32:12.103670', 'c50efbfb60fa4584fe13f79e87d624588978338088bf3dc304a4781150ebb69e', 'validated', '{"audio_key":"76f7149ee6a59cc671b6930147ba1e7cd517e4c1986e6c552dca019fa3fed7c8","entity_key":"d_cohesion_reference_dense_texts_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c50efbfb60fa4584fe13f79e87d624588978338088bf3dc304a4781150ebb69e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/76f7149ee6a59cc671b6930147ba1e7cd517e4c1986e6c552dca019fa3fed7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_01:1 -> audio/generated/de-DE/dialogues/78372ed4ff063be42685170992bb2a4d1e876757bc3fafff709862b4e2250aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c7140f2-8c18-568d-aa0a-16f75f8b418c', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42c72cfff7626981d8e61aa578fbc3a08c80f1776dade8302b0d06d210c96532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bc419b7-6631-51f5-a8a5-8102cb5bb583', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c7140f2-8c18-568d-aa0a-16f75f8b418c', 1), '42c72cfff7626981d8e61aa578fbc3a08c80f1776dade8302b0d06d210c96532',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78372ed4ff063be42685170992bb2a4d1e876757bc3fafff709862b4e2250aa9.mp3', 4832, '2026-09-13 11:32:13.340774', '072eab403ad190b54004dfc02a081d97589e560c84a41c69195cd71922c32184', 'validated', '{"audio_key":"78372ed4ff063be42685170992bb2a4d1e876757bc3fafff709862b4e2250aa9","entity_key":"d_cohesion_reference_dense_texts_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"072eab403ad190b54004dfc02a081d97589e560c84a41c69195cd71922c32184","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/78372ed4ff063be42685170992bb2a4d1e876757bc3fafff709862b4e2250aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_02:2 -> audio/generated/de-DE/dialogues/7c8b8d7a6414e006e84f2bab8ee95ad7df02bf9d5f23452ba2d3329b2bbbfdbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd4244d8-eedb-57aa-a745-8aeb85d41410', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23f9540fcaf653ad48bcf00161d106ced45780c8d3f61962476b868b7d502f35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a94171b-58d9-5572-a3f1-95b040bfe4ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd4244d8-eedb-57aa-a745-8aeb85d41410', 1), '23f9540fcaf653ad48bcf00161d106ced45780c8d3f61962476b868b7d502f35',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7c8b8d7a6414e006e84f2bab8ee95ad7df02bf9d5f23452ba2d3329b2bbbfdbb.mp3', 3761, '2026-09-13 11:32:13.356269', 'd0e2f6cdd348a02c587e55afb26991db80ab604e79a5041d3cd435ac31931aa6', 'validated', '{"audio_key":"7c8b8d7a6414e006e84f2bab8ee95ad7df02bf9d5f23452ba2d3329b2bbbfdbb","entity_key":"d_metacommunication_misunderstanding_repair_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d0e2f6cdd348a02c587e55afb26991db80ab604e79a5041d3cd435ac31931aa6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7c8b8d7a6414e006e84f2bab8ee95ad7df02bf9d5f23452ba2d3329b2bbbfdbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_01:1 -> audio/generated/de-DE/dialogues/7ce5ffd7bb34bf82db736c0102e08a8ba4f773c20ed79d102123e03d31701cec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a6f45f5-a6fa-5112-a1cd-0507c8263c97', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1e3bc5f42109df77e5a84506b883cc0a6817b49c144c115eeb8f6dc4616d1fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7f58d6b-1679-5b46-9c4a-d1c4047eb199', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a6f45f5-a6fa-5112-a1cd-0507c8263c97', 1), 'f1e3bc5f42109df77e5a84506b883cc0a6817b49c144c115eeb8f6dc4616d1fc',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ce5ffd7bb34bf82db736c0102e08a8ba4f773c20ed79d102123e03d31701cec.mp3', 5381, '2026-09-13 11:32:14.771897', '2e55e609f97a01074873a42b9f3ed79c8f7453a686a4f76d7d6bbb1bbeb74016', 'validated', '{"audio_key":"7ce5ffd7bb34bf82db736c0102e08a8ba4f773c20ed79d102123e03d31701cec","entity_key":"d_terminology_negotiation_concept_boundaries_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e55e609f97a01074873a42b9f3ed79c8f7453a686a4f76d7d6bbb1bbeb74016","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7ce5ffd7bb34bf82db736c0102e08a8ba4f773c20ed79d102123e03d31701cec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_03:4 -> audio/generated/de-DE/dialogues/7ec7b017d0c05ad48cdc1f5164c24a70969c43aff092548a929d2a50e0610f15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4f2b1e2-9b52-5bca-a151-d2f1e0e03000', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf1dc9f6ee109a49438c4524dd0991d59b2b092a16b3cda1b8954bd10b5ee019'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10f136f1-ee1a-5adf-8ad4-f203c64f18fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4f2b1e2-9b52-5bca-a151-d2f1e0e03000', 1), 'cf1dc9f6ee109a49438c4524dd0991d59b2b092a16b3cda1b8954bd10b5ee019',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ec7b017d0c05ad48cdc1f5164c24a70969c43aff092548a929d2a50e0610f15.mp3', 3186, '2026-09-13 11:32:14.491148', 'fcfcf97957dd46966c7a888d1840771a33a3c200b0bad340a2d7dfb314df090d', 'validated', '{"audio_key":"7ec7b017d0c05ad48cdc1f5164c24a70969c43aff092548a929d2a50e0610f15","entity_key":"d_audience_reformulation_technical_public_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fcfcf97957dd46966c7a888d1840771a33a3c200b0bad340a2d7dfb314df090d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7ec7b017d0c05ad48cdc1f5164c24a70969c43aff092548a929d2a50e0610f15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_01:1 -> audio/generated/de-DE/dialogues/821f3df8e9d7ac4849d8d1b55c930db77419296531c1e77e50f3f0b80fc80344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7253662-1fef-5e4f-8967-73f679c22a06', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b791971cffa52cd2d60df1e3df6e086cc1dd47a898af346101f6a4d343b2831'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9ad2935-e480-5338-9d71-f79334e65cda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7253662-1fef-5e4f-8967-73f679c22a06', 1), '2b791971cffa52cd2d60df1e3df6e086cc1dd47a898af346101f6a4d343b2831',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/821f3df8e9d7ac4849d8d1b55c930db77419296531c1e77e50f3f0b80fc80344.mp3', 4858, '2026-09-13 11:32:15.873724', 'c990b1b32906035a730537c90ed2ec10e04f42d890039588595a99cef3b93b0b', 'validated', '{"audio_key":"821f3df8e9d7ac4849d8d1b55c930db77419296531c1e77e50f3f0b80fc80344","entity_key":"d_modal_commitment_precision_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c990b1b32906035a730537c90ed2ec10e04f42d890039588595a99cef3b93b0b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/821f3df8e9d7ac4849d8d1b55c930db77419296531c1e77e50f3f0b80fc80344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_03:1 -> audio/generated/de-DE/dialogues/846587e9a5db0f6dac59aaf70ae1611781e799bb2ffb8017a33c1e9c5e0d69d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e9a76e1-7eb1-575e-b943-b3f8783dd071', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b24058a1c894649a673fdaaf0898d8eea861441627de1d95fa32ecbb0748a5a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39fd12f2-e993-5a73-969f-e0baaa556192', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e9a76e1-7eb1-575e-b943-b3f8783dd071', 1), 'b24058a1c894649a673fdaaf0898d8eea861441627de1d95fa32ecbb0748a5a1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/846587e9a5db0f6dac59aaf70ae1611781e799bb2ffb8017a33c1e9c5e0d69d6.mp3', 4493, '2026-09-13 11:32:16.094418', 'd092f4f998f8b13eeffb5ccf785c3e482eeee46e23c66625af261a721fb0a8d4', 'validated', '{"audio_key":"846587e9a5db0f6dac59aaf70ae1611781e799bb2ffb8017a33c1e9c5e0d69d6","entity_key":"d_terminology_negotiation_concept_boundaries_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d092f4f998f8b13eeffb5ccf785c3e482eeee46e23c66625af261a721fb0a8d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/846587e9a5db0f6dac59aaf70ae1611781e799bb2ffb8017a33c1e9c5e0d69d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_02:2 -> audio/generated/de-DE/dialogues/86e4f4016656d5338ef43349c4f9026f3b18617174cda0c60c7cfadbb82ec4f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be4045c7-ca12-5038-98a6-c01d08ef6db5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b723d6998f107e7e001ce0ec2b22c50f62a7c777d5d050bf5ba3accf5100570'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c23eac5-2cfe-57ee-a102-8451be0c9042', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be4045c7-ca12-5038-98a6-c01d08ef6db5', 1), '2b723d6998f107e7e001ce0ec2b22c50f62a7c777d5d050bf5ba3accf5100570',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/86e4f4016656d5338ef43349c4f9026f3b18617174cda0c60c7cfadbb82ec4f7.mp3', 5381, '2026-09-13 11:32:17.276523', 'c87a912641c236d5b53dd1df1e1b5a9a43d369b35f21df4266c51573e0c7e3b3', 'validated', '{"audio_key":"86e4f4016656d5338ef43349c4f9026f3b18617174cda0c60c7cfadbb82ec4f7","entity_key":"d_terminology_negotiation_concept_boundaries_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c87a912641c236d5b53dd1df1e1b5a9a43d369b35f21df4266c51573e0c7e3b3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/86e4f4016656d5338ef43349c4f9026f3b18617174cda0c60c7cfadbb82ec4f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_03:3 -> audio/generated/de-DE/dialogues/8c6329cadcf6ad675430aae7074e3eedd5772b05982ad41d74d796e1cce42e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef51057d-82a8-5123-9894-b29acaa24817', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2741b05c033213b7d31028f54caa00b5051299b889e202f0e941f665b534a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be5f0fbc-e1d1-5d94-8cfb-47f3757c739d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef51057d-82a8-5123-9894-b29acaa24817', 1), '2e2741b05c033213b7d31028f54caa00b5051299b889e202f0e941f665b534a7',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c6329cadcf6ad675430aae7074e3eedd5772b05982ad41d74d796e1cce42e37.mp3', 3291, '2026-09-13 11:32:17.326157', '65cf0322a7ff4331a1816f90ee60c3288ff666a3e6ba0f14240c2abdc91e0e7a', 'validated', '{"audio_key":"8c6329cadcf6ad675430aae7074e3eedd5772b05982ad41d74d796e1cce42e37","entity_key":"d_semantic_scope_ambiguity_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"65cf0322a7ff4331a1816f90ee60c3288ff666a3e6ba0f14240c2abdc91e0e7a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8c6329cadcf6ad675430aae7074e3eedd5772b05982ad41d74d796e1cce42e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_03:1 -> audio/generated/de-DE/dialogues/8fee40f471fc13af733c7aebe91b5b2cf6743b8d3f87550a858d518abca0bfde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a3ecc0c-4d59-5b71-b84c-1967e45f69a6', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7c2071a858f3b33ff04710351c96062ea6e381b4eb2ee9df639758434c16751'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c01cae0-cab2-5d44-b433-1286ed15e812', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a3ecc0c-4d59-5b71-b84c-1967e45f69a6', 1), 'b7c2071a858f3b33ff04710351c96062ea6e381b4eb2ee9df639758434c16751',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8fee40f471fc13af733c7aebe91b5b2cf6743b8d3f87550a858d518abca0bfde.mp3', 4362, '2026-09-13 11:32:18.576527', '7066717b27736bea9723f01b8fc61fffa2e4519efb2907bf4beaa1e6df7a2822', 'validated', '{"audio_key":"8fee40f471fc13af733c7aebe91b5b2cf6743b8d3f87550a858d518abca0bfde","entity_key":"d_audience_reformulation_technical_public_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7066717b27736bea9723f01b8fc61fffa2e4519efb2907bf4beaa1e6df7a2822","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8fee40f471fc13af733c7aebe91b5b2cf6743b8d3f87550a858d518abca0bfde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_03:3 -> audio/generated/de-DE/dialogues/931fda03759dd367efac5c2bdf63059af3eec3ef00b45c1b51f54c3071802f27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a16980e1-1fe9-53ef-8cc6-9d04a87584e7', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fa30b77634ff89909282021fe9ccbc08da9245482970bea7c73ddb9674dc7f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32da3f15-a1eb-58ab-ad18-e89ea7d7286a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a16980e1-1fe9-53ef-8cc6-9d04a87584e7', 1), '7fa30b77634ff89909282021fe9ccbc08da9245482970bea7c73ddb9674dc7f9',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/931fda03759dd367efac5c2bdf63059af3eec3ef00b45c1b51f54c3071802f27.mp3', 3186, '2026-09-13 11:32:18.534571', '9d41208ebb7f8b2bb41588ef2adb48b2d44956d805bb5be23bc1198bde55195f', 'validated', '{"audio_key":"931fda03759dd367efac5c2bdf63059af3eec3ef00b45c1b51f54c3071802f27","entity_key":"d_evidentiality_epistemic_calibration_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9d41208ebb7f8b2bb41588ef2adb48b2d44956d805bb5be23bc1198bde55195f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/931fda03759dd367efac5c2bdf63059af3eec3ef00b45c1b51f54c3071802f27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_02:1 -> audio/generated/de-DE/dialogues/970c95eeab84cfd1d2a9adb4dd4cd992ba3030fc760a3640c3035534030aeadd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c3c114b-9d42-5d76-aee7-161bfd10ea73', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a66c3ff112dd79db258aef176f3d61ed55f9c13fc118a49af6a102e2be9d4bec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83ecd4c8-172d-5294-a7a4-050b878bfcd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c3c114b-9d42-5d76-aee7-161bfd10ea73', 1), 'a66c3ff112dd79db258aef176f3d61ed55f9c13fc118a49af6a102e2be9d4bec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/970c95eeab84cfd1d2a9adb4dd4cd992ba3030fc760a3640c3035534030aeadd.mp3', 3422, '2026-09-13 11:32:19.781171', '267df7603586243387c63715f3961d95045b2fc4d5fcef16e72dc9ede988179e', 'validated', '{"audio_key":"970c95eeab84cfd1d2a9adb4dd4cd992ba3030fc760a3640c3035534030aeadd","entity_key":"d_audience_reformulation_technical_public_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"267df7603586243387c63715f3961d95045b2fc4d5fcef16e72dc9ede988179e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/970c95eeab84cfd1d2a9adb4dd4cd992ba3030fc760a3640c3035534030aeadd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_01:1 -> audio/generated/de-DE/dialogues/9811495a15bf4db39ff3ccc0909a55c3adad364fdc1cdd210ca5bcfff45de49e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f80669b-b004-5041-ade5-d0e5d7ba2b29', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd41b65bef9fe72510ab7caca18626fadad7ee6e47d979b75737e2b46e73cdcf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc9d04c6-e433-5f73-8faf-a5c388403162', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f80669b-b004-5041-ade5-d0e5d7ba2b29', 1), 'd41b65bef9fe72510ab7caca18626fadad7ee6e47d979b75737e2b46e73cdcf9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9811495a15bf4db39ff3ccc0909a55c3adad364fdc1cdd210ca5bcfff45de49e.mp3', 4362, '2026-09-13 11:32:19.855883', '579a78821bbeb4aeb7da344a73c51bb7612e86fa6e75b7d580c86dbab043d3ed', 'validated', '{"audio_key":"9811495a15bf4db39ff3ccc0909a55c3adad364fdc1cdd210ca5bcfff45de49e","entity_key":"d_live_debate_interruption_reframing_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"579a78821bbeb4aeb7da344a73c51bb7612e86fa6e75b7d580c86dbab043d3ed","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9811495a15bf4db39ff3ccc0909a55c3adad364fdc1cdd210ca5bcfff45de49e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_02:1 -> audio/generated/de-DE/dialogues/99fcd628d6d92c3eaa1e4f63c88a443a5b20906c65afcedd91b33e0291a3edcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cced8aec-3828-5b2b-819d-dccce2302224', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f976dd3bd88690ad86834944ece3b89900d64d88ceb2e40449d4dfe0c498efcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4fc8c9b-0e13-5c44-977d-aef19e4069cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cced8aec-3828-5b2b-819d-dccce2302224', 1), 'f976dd3bd88690ad86834944ece3b89900d64d88ceb2e40449d4dfe0c498efcc',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99fcd628d6d92c3eaa1e4f63c88a443a5b20906c65afcedd91b33e0291a3edcb.mp3', 3108, '2026-09-13 11:32:20.954559', 'cef50f8ed8cc41d514a24d4c16b8149083f5dc7b4ff7a08fd93b7f4d2f776e5f', 'validated', '{"audio_key":"99fcd628d6d92c3eaa1e4f63c88a443a5b20906c65afcedd91b33e0291a3edcb","entity_key":"d_metacommunication_misunderstanding_repair_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cef50f8ed8cc41d514a24d4c16b8149083f5dc7b4ff7a08fd93b7f4d2f776e5f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/99fcd628d6d92c3eaa1e4f63c88a443a5b20906c65afcedd91b33e0291a3edcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_02:4 -> audio/generated/de-DE/dialogues/9c47eb4b5716a5666c2d52c0439d9403e689ce7dd5b84bbafee163eb35e238bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31aaa81c-29ef-53d6-a450-14564f53e86d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fac4877cbfa9bfa8a2d001e402c94ef1b81fcd602020176df5a4f4f54bcff61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76b3b004-cdbd-56a6-92a4-b54b2dd7e61c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31aaa81c-29ef-53d6-a450-14564f53e86d', 1), '1fac4877cbfa9bfa8a2d001e402c94ef1b81fcd602020176df5a4f4f54bcff61',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c47eb4b5716a5666c2d52c0439d9403e689ce7dd5b84bbafee163eb35e238bb.mp3', 4362, '2026-09-13 11:32:21.122286', '7ee5c9925b1ebd7d3867a7eefbf9d0b1a08c32c5e58e5104152dcc2b08c1866f', 'validated', '{"audio_key":"9c47eb4b5716a5666c2d52c0439d9403e689ce7dd5b84bbafee163eb35e238bb","entity_key":"d_cohesion_reference_dense_texts_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7ee5c9925b1ebd7d3867a7eefbf9d0b1a08c32c5e58e5104152dcc2b08c1866f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9c47eb4b5716a5666c2d52c0439d9403e689ce7dd5b84bbafee163eb35e238bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_02:2 -> audio/generated/de-DE/dialogues/9fc88850372233f9c1c04cb77f14a7a9179a461d693fe473f9551dd78c2a596a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83c294eb-8b61-5222-8b57-965212a457c3', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a3a7e7638c52d75c35485d74d988e613e36dd0c01934b65480e276c0e196efb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('524bb44c-cbc2-52fd-af44-9dfd27076323', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83c294eb-8b61-5222-8b57-965212a457c3', 1), '5a3a7e7638c52d75c35485d74d988e613e36dd0c01934b65480e276c0e196efb',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9fc88850372233f9c1c04cb77f14a7a9179a461d693fe473f9551dd78c2a596a.mp3', 5146, '2026-09-13 11:32:22.359177', 'f34024d925fee656daec8d834ea56ba87d8280d6971d6386d78b31391021c3f7', 'validated', '{"audio_key":"9fc88850372233f9c1c04cb77f14a7a9179a461d693fe473f9551dd78c2a596a","entity_key":"d_audience_reformulation_technical_public_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f34024d925fee656daec8d834ea56ba87d8280d6971d6386d78b31391021c3f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9fc88850372233f9c1c04cb77f14a7a9179a461d693fe473f9551dd78c2a596a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_03:1 -> audio/generated/de-DE/dialogues/a066ed7b65512f3c892a962cb949a792d3a24240f76cfa63505f9e20a15d63ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bf1ef06-1ed9-583f-8528-06b5a3f4cec2', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cd194b827864b2e737a76323214ea735a9acb2d323ced2f24444b6838441f40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('174a91e5-7043-5034-bdb5-47fe369a0621', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bf1ef06-1ed9-583f-8528-06b5a3f4cec2', 1), '0cd194b827864b2e737a76323214ea735a9acb2d323ced2f24444b6838441f40',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a066ed7b65512f3c892a962cb949a792d3a24240f76cfa63505f9e20a15d63ca.mp3', 3892, '2026-09-13 11:32:22.331806', '88ec393be22f21d951c4aa871856743d842d2a96fac156912bc3bc4fe42d3f0f', 'validated', '{"audio_key":"a066ed7b65512f3c892a962cb949a792d3a24240f76cfa63505f9e20a15d63ca","entity_key":"d_modal_commitment_precision_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"88ec393be22f21d951c4aa871856743d842d2a96fac156912bc3bc4fe42d3f0f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a066ed7b65512f3c892a962cb949a792d3a24240f76cfa63505f9e20a15d63ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_01:4 -> audio/generated/de-DE/dialogues/a7afb935d14d59419e084be05123c57d8b2bf39c9184b5115e7a24e671052331.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0133de3e-348c-54ef-9caf-1c2a8035c671', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87b506e9eeae285c32e2dd7282b1fbe1ad770240f79fb42adf92aca56368639f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28c661b4-50a8-5c46-a70a-e85949b9c93a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0133de3e-348c-54ef-9caf-1c2a8035c671', 1), '87b506e9eeae285c32e2dd7282b1fbe1ad770240f79fb42adf92aca56368639f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a7afb935d14d59419e084be05123c57d8b2bf39c9184b5115e7a24e671052331.mp3', 4414, '2026-09-13 11:32:23.572448', '9e6feddf27bbbf75d15e584d00f5b926081eaef2528f050f0384116d924db319', 'validated', '{"audio_key":"a7afb935d14d59419e084be05123c57d8b2bf39c9184b5115e7a24e671052331","entity_key":"d_cohesion_reference_dense_texts_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9e6feddf27bbbf75d15e584d00f5b926081eaef2528f050f0384116d924db319","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a7afb935d14d59419e084be05123c57d8b2bf39c9184b5115e7a24e671052331.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_02:4 -> audio/generated/de-DE/dialogues/a804360e0c7f3f52dbf7a6953f2b5d1defb6bd9fe8dca2713960cf02162bd8fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef630cdd-0929-5188-a6e5-fe23a2964bb4', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '021e99f0b77af2650c0238b4929cf947c86c2bf2fc3e11a1a7177e7116f5e88e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7c45650-4f9d-50f8-9012-eb01282fc177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef630cdd-0929-5188-a6e5-fe23a2964bb4', 1), '021e99f0b77af2650c0238b4929cf947c86c2bf2fc3e11a1a7177e7116f5e88e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a804360e0c7f3f52dbf7a6953f2b5d1defb6bd9fe8dca2713960cf02162bd8fd.mp3', 3604, '2026-09-13 11:32:23.600101', 'cf412e635b1e26a07e79b1e5e13e6881a95863fd79489d444362513eacec41e4', 'validated', '{"audio_key":"a804360e0c7f3f52dbf7a6953f2b5d1defb6bd9fe8dca2713960cf02162bd8fd","entity_key":"d_audience_reformulation_technical_public_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cf412e635b1e26a07e79b1e5e13e6881a95863fd79489d444362513eacec41e4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a804360e0c7f3f52dbf7a6953f2b5d1defb6bd9fe8dca2713960cf02162bd8fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_02:2 -> audio/generated/de-DE/dialogues/aa4db9b7c1d59bc27ee26e5c91a7dc57251f2437eaf752eae1fcea3fb6aa805f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2535efb-25a7-552a-8189-bffae8bf73f0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4747a0689090f72c9596ad7b4d3f46dac1d1ccdcac17d6b2445b875d96fa8d28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9de8b49-70ba-5197-8667-2f1d2b5a1cd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2535efb-25a7-552a-8189-bffae8bf73f0', 1), '4747a0689090f72c9596ad7b4d3f46dac1d1ccdcac17d6b2445b875d96fa8d28',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aa4db9b7c1d59bc27ee26e5c91a7dc57251f2437eaf752eae1fcea3fb6aa805f.mp3', 3657, '2026-09-13 11:32:24.798133', 'eddff6abcfea1e315d5f169bbf4d15da365a1d57d7f89975246faa23a8608c57', 'validated', '{"audio_key":"aa4db9b7c1d59bc27ee26e5c91a7dc57251f2437eaf752eae1fcea3fb6aa805f","entity_key":"d_lossless_compression_summarization_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eddff6abcfea1e315d5f169bbf4d15da365a1d57d7f89975246faa23a8608c57","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/aa4db9b7c1d59bc27ee26e5c91a7dc57251f2437eaf752eae1fcea3fb6aa805f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_03:4 -> audio/generated/de-DE/dialogues/b35871c6a70ede383ccc6cb098c35448be9e07acc9a1dc48736d14ba8d2976f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('407dcc56-faaa-518d-ad4f-50f3b118e9d4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e58548c3e2642d28043e2888a74cd550196ca35c1e4c673dbc82e71ec858ae0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9783f84e-a957-5640-9f7d-eb909f19908e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('407dcc56-faaa-518d-ad4f-50f3b118e9d4', 1), '8e58548c3e2642d28043e2888a74cd550196ca35c1e4c673dbc82e71ec858ae0',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b35871c6a70ede383ccc6cb098c35448be9e07acc9a1dc48736d14ba8d2976f9.mp3', 5433, '2026-09-13 11:32:25.046788', '7be97b54e32c386a9d35fc456096b8f83ab09dcacca564af3485088a9cb54d1a', 'validated', '{"audio_key":"b35871c6a70ede383ccc6cb098c35448be9e07acc9a1dc48736d14ba8d2976f9","entity_key":"d_metacommunication_misunderstanding_repair_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7be97b54e32c386a9d35fc456096b8f83ab09dcacca564af3485088a9cb54d1a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b35871c6a70ede383ccc6cb098c35448be9e07acc9a1dc48736d14ba8d2976f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_01:3 -> audio/generated/de-DE/dialogues/b94e3875f8348d63a1d6fb9b5ccad4d2086fc094f741514f028a72c438f2e949.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2401948c-6f4b-5eac-a8b6-0012dec12f10', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ea4bda549012d1f6f8a6ae28f23589f57959b4467eabdafcca172af306e5f14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d070736-3b95-5fcf-bdd0-585bfbe4e849', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2401948c-6f4b-5eac-a8b6-0012dec12f10', 1), '1ea4bda549012d1f6f8a6ae28f23589f57959b4467eabdafcca172af306e5f14',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b94e3875f8348d63a1d6fb9b5ccad4d2086fc094f741514f028a72c438f2e949.mp3', 2324, '2026-09-13 11:32:25.859619', 'b8f4b06cbfeb8bec34a8a488fab654ce901286e03a98fe4777539283c16b9e40', 'validated', '{"audio_key":"b94e3875f8348d63a1d6fb9b5ccad4d2086fc094f741514f028a72c438f2e949","entity_key":"d_metacommunication_misunderstanding_repair_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b8f4b06cbfeb8bec34a8a488fab654ce901286e03a98fe4777539283c16b9e40","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b94e3875f8348d63a1d6fb9b5ccad4d2086fc094f741514f028a72c438f2e949.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_03:2 -> audio/generated/de-DE/dialogues/ba6465387f2ad3aeee5f289b028854fc957e1caf45bd1aceb459092b1b75a573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb1df3ec-9be9-5bcd-a4a7-ffafac4aa80a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad1d7a402351125526ec0724ecf7c39eb6630bb9717526c0052765d27d987aa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3eeb332-13e3-533f-8ed6-a1f64c688744', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb1df3ec-9be9-5bcd-a4a7-ffafac4aa80a', 1), 'ad1d7a402351125526ec0724ecf7c39eb6630bb9717526c0052765d27d987aa4',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba6465387f2ad3aeee5f289b028854fc957e1caf45bd1aceb459092b1b75a573.mp3', 4440, '2026-09-13 11:32:26.319935', '9e503c98496807ebcd39928e9621211ce50ebcfb719c206f816fdb10934dd793', 'validated', '{"audio_key":"ba6465387f2ad3aeee5f289b028854fc957e1caf45bd1aceb459092b1b75a573","entity_key":"d_audience_reformulation_technical_public_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9e503c98496807ebcd39928e9621211ce50ebcfb719c206f816fdb10934dd793","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ba6465387f2ad3aeee5f289b028854fc957e1caf45bd1aceb459092b1b75a573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_03:2 -> audio/generated/de-DE/dialogues/bfbaa8022daa766366d4d9bc4f3213711a075c2db824c25f92b6affc2fe9105c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d5e9e8e-eb58-557d-a802-931bd306206f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a10c7b54ca7b18b7a348a016623d746e2468354db2afd0e4f2a86284eab7923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('735aa4c3-b83b-58be-8e04-c64d598e5285', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d5e9e8e-eb58-557d-a802-931bd306206f', 1), '0a10c7b54ca7b18b7a348a016623d746e2468354db2afd0e4f2a86284eab7923',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bfbaa8022daa766366d4d9bc4f3213711a075c2db824c25f92b6affc2fe9105c.mp3', 5433, '2026-09-13 11:32:27.290535', '852e67059774f56b8a0f5d104973de07f7a57ad932fe4277152ec04cc18cd5ed', 'validated', '{"audio_key":"bfbaa8022daa766366d4d9bc4f3213711a075c2db824c25f92b6affc2fe9105c","entity_key":"d_lossless_compression_summarization_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"852e67059774f56b8a0f5d104973de07f7a57ad932fe4277152ec04cc18cd5ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/bfbaa8022daa766366d4d9bc4f3213711a075c2db824c25f92b6affc2fe9105c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_02:3 -> audio/generated/de-DE/dialogues/c06fe2bfa84f6398469f25ce9d6612293d05c9cad8725d99fd4508b015ff5b16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a176536b-0628-5462-a974-42cc29a7a0ed', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '300b4b066bf47ea78677f2f82d40d79868cee643495780552238cad82b2034f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de0cf598-7c7b-5e55-b4d5-b871104bb78a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a176536b-0628-5462-a974-42cc29a7a0ed', 1), '300b4b066bf47ea78677f2f82d40d79868cee643495780552238cad82b2034f8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c06fe2bfa84f6398469f25ce9d6612293d05c9cad8725d99fd4508b015ff5b16.mp3', 4597, '2026-09-13 11:32:27.618461', 'ce5b623a65095b3d52ec33a5f8b69ebbea7c4b1ba6762c2d18cd204d1f4144b2', 'validated', '{"audio_key":"c06fe2bfa84f6398469f25ce9d6612293d05c9cad8725d99fd4508b015ff5b16","entity_key":"d_evidentiality_epistemic_calibration_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ce5b623a65095b3d52ec33a5f8b69ebbea7c4b1ba6762c2d18cd204d1f4144b2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c06fe2bfa84f6398469f25ce9d6612293d05c9cad8725d99fd4508b015ff5b16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_audience_reformulation_technical_public_01:1 -> audio/generated/de-DE/dialogues/c0fb1bb795bdd4d39fd036274ad443b2cdc90ab204d2b6282796f27d89ef670d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68e4b746-78e8-5d64-928b-8313e9472774', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_audience_reformulation_technical_public_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3beebc79738cdb9605a7c3beab1eae8ca6aae90e73432c37d6ad0b35c672c8e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17cc72ac-45af-5acb-be0f-1af8c94a7dec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68e4b746-78e8-5d64-928b-8313e9472774', 1), '3beebc79738cdb9605a7c3beab1eae8ca6aae90e73432c37d6ad0b35c672c8e2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c0fb1bb795bdd4d39fd036274ad443b2cdc90ab204d2b6282796f27d89ef670d.mp3', 4414, '2026-09-13 11:32:28.701750', '7354959522e1a3ec4463cd2b00ca4d990280259dba93943ba5fdc910f8bc5a60', 'validated', '{"audio_key":"c0fb1bb795bdd4d39fd036274ad443b2cdc90ab204d2b6282796f27d89ef670d","entity_key":"d_audience_reformulation_technical_public_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7354959522e1a3ec4463cd2b00ca4d990280259dba93943ba5fdc910f8bc5a60","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c0fb1bb795bdd4d39fd036274ad443b2cdc90ab204d2b6282796f27d89ef670d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_02:2 -> audio/generated/de-DE/dialogues/c5206d6c6b3c6d2a62ea74389c4d00a2fb2f1f56d56d4d0a76bfab7b885b22d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a380222-46cd-5d55-bad8-33881d022dce', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d8d22c1abf4f50f0d7e57cbf308843598f9da9620667a8af346f222710dca8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c87c8ce1-c086-5673-bbc8-d282fde1f99a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a380222-46cd-5d55-bad8-33881d022dce', 1), '8d8d22c1abf4f50f0d7e57cbf308843598f9da9620667a8af346f222710dca8e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c5206d6c6b3c6d2a62ea74389c4d00a2fb2f1f56d56d4d0a76bfab7b885b22d7.mp3', 4597, '2026-09-13 11:32:28.974568', '39091a04be5a3b2408a23f32afb85c74876776f75752297528347bd732d72a68', 'validated', '{"audio_key":"c5206d6c6b3c6d2a62ea74389c4d00a2fb2f1f56d56d4d0a76bfab7b885b22d7","entity_key":"d_cohesion_reference_dense_texts_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"39091a04be5a3b2408a23f32afb85c74876776f75752297528347bd732d72a68","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c5206d6c6b3c6d2a62ea74389c4d00a2fb2f1f56d56d4d0a76bfab7b885b22d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_01:2 -> audio/generated/de-DE/dialogues/c5cd16a8a268851d7529be25008f92cf0fa2a697399444fdc7b4b5e72d99fbb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('424132b0-153c-5aec-bcff-45f0a2c03f2e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b125a440361ab80bd4f60d20790b2fc15141931b732791405c423561dbd345d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe2f8dd-09c6-5646-ae94-ae72c010284b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('424132b0-153c-5aec-bcff-45f0a2c03f2e', 1), 'b125a440361ab80bd4f60d20790b2fc15141931b732791405c423561dbd345d1',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c5cd16a8a268851d7529be25008f92cf0fa2a697399444fdc7b4b5e72d99fbb2.mp3', 4414, '2026-09-13 11:32:30.052312', 'bf64f0771e8d0b086d6d1930a8af9f501205dc640541c167be2e45d9ae32ec6c', 'validated', '{"audio_key":"c5cd16a8a268851d7529be25008f92cf0fa2a697399444fdc7b4b5e72d99fbb2","entity_key":"d_expert_public_precision_capstone_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bf64f0771e8d0b086d6d1930a8af9f501205dc640541c167be2e45d9ae32ec6c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c5cd16a8a268851d7529be25008f92cf0fa2a697399444fdc7b4b5e72d99fbb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_03:1 -> audio/generated/de-DE/dialogues/c63312425d811788a4613a1068a6a4e0ec33c1242ac1e2492c2e15e526064204.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fcf04777-2550-5178-b92f-8f763c330f08', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43844a7a39d4cbfc85bcb14eb232e749e596e49470b54cc2a20fdde51dc19998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93b37d9e-2fc0-5552-861c-cf8573cdbc06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fcf04777-2550-5178-b92f-8f763c330f08', 1), '43844a7a39d4cbfc85bcb14eb232e749e596e49470b54cc2a20fdde51dc19998',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c63312425d811788a4613a1068a6a4e0ec33c1242ac1e2492c2e15e526064204.mp3', 2351, '2026-09-13 11:32:30.014886', '8bbae0039420fe8ebb3b05a395ae600f045f612e9888e5ee839a05fde7457b9f', 'validated', '{"audio_key":"c63312425d811788a4613a1068a6a4e0ec33c1242ac1e2492c2e15e526064204","entity_key":"d_semantic_scope_ambiguity_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8bbae0039420fe8ebb3b05a395ae600f045f612e9888e5ee839a05fde7457b9f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c63312425d811788a4613a1068a6a4e0ec33c1242ac1e2492c2e15e526064204.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_02:3 -> audio/generated/de-DE/dialogues/c840d90a26377576e8db10026a0d9f7328d07da64c6c7c80a7f0dfe7f1a17daa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('baae09bd-5476-5acb-94b4-98f6154dab50', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab8a63f6f7671002839f05d11b9fe6b181b6c863d05079bab8866e0e18ecae6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60844d8d-ae6a-5267-8c52-3fa65b88d2cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('baae09bd-5476-5acb-94b4-98f6154dab50', 1), 'ab8a63f6f7671002839f05d11b9fe6b181b6c863d05079bab8866e0e18ecae6a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c840d90a26377576e8db10026a0d9f7328d07da64c6c7c80a7f0dfe7f1a17daa.mp3', 5276, '2026-09-13 11:32:31.444009', '8ceeaa2b85dc7268405b4e16ac0406f2896fffa2adbe5faaedbbb117e8174dc5', 'validated', '{"audio_key":"c840d90a26377576e8db10026a0d9f7328d07da64c6c7c80a7f0dfe7f1a17daa","entity_key":"d_live_debate_interruption_reframing_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8ceeaa2b85dc7268405b4e16ac0406f2896fffa2adbe5faaedbbb117e8174dc5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c840d90a26377576e8db10026a0d9f7328d07da64c6c7c80a7f0dfe7f1a17daa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_02:1 -> audio/generated/de-DE/dialogues/ca6ba4d0e648e278ac7cbc0ff9e3d4b5f66ce3bce615132dd3f4020c60ad2690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c81f2fd-4537-57de-aac1-9215c0ff0578', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05b034f384a6db8036ec1cf0678af77a0766dd064dc7b64d88bffdad2bebe54c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('255e5e8c-217c-5776-bef1-2a14d4319d73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c81f2fd-4537-57de-aac1-9215c0ff0578', 1), '05b034f384a6db8036ec1cf0678af77a0766dd064dc7b64d88bffdad2bebe54c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ca6ba4d0e648e278ac7cbc0ff9e3d4b5f66ce3bce615132dd3f4020c60ad2690.mp3', 5877, '2026-09-13 11:32:31.529338', '92656ac0d34469bf8e4cb9035e5aa4875d07af0395a1128ad620ea280ea6a2f2', 'validated', '{"audio_key":"ca6ba4d0e648e278ac7cbc0ff9e3d4b5f66ce3bce615132dd3f4020c60ad2690","entity_key":"d_terminology_negotiation_concept_boundaries_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"92656ac0d34469bf8e4cb9035e5aa4875d07af0395a1128ad620ea280ea6a2f2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ca6ba4d0e648e278ac7cbc0ff9e3d4b5f66ce3bce615132dd3f4020c60ad2690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_03:4 -> audio/generated/de-DE/dialogues/cb57f6259f17763ab20a2e65fa67f97899cdb452677fcfc26e793f14bc2ff269.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b05633a2-ab36-5a37-91e7-35e837bcb77e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38185115555d66154de90ea39d440fb950852ba26bfe354363fd1c56ebd63f6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9a143d2-a4f4-5816-83c7-9bf2657f964c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b05633a2-ab36-5a37-91e7-35e837bcb77e', 1), '38185115555d66154de90ea39d440fb950852ba26bfe354363fd1c56ebd63f6f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb57f6259f17763ab20a2e65fa67f97899cdb452677fcfc26e793f14bc2ff269.mp3', 4623, '2026-09-13 11:32:32.798753', 'db337a4d4ea4e235fb8c1a66573e2b842beeba8bd1b62a3bb9953c2350454f78', 'validated', '{"audio_key":"cb57f6259f17763ab20a2e65fa67f97899cdb452677fcfc26e793f14bc2ff269","entity_key":"d_live_debate_interruption_reframing_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"db337a4d4ea4e235fb8c1a66573e2b842beeba8bd1b62a3bb9953c2350454f78","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cb57f6259f17763ab20a2e65fa67f97899cdb452677fcfc26e793f14bc2ff269.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_02:3 -> audio/generated/de-DE/dialogues/cb824bde2ef5b8c406a07ea833ef6a1500ce1a6cb53ae76d4bb449582146510b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da747295-11a4-59d0-a029-5aa80f150139', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d375f3d6c502b1bfd47507d7e9106d84356d197f8b9a353819f927b59d1183e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a3ebce-e2f1-5315-8efa-db23683f71bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da747295-11a4-59d0-a029-5aa80f150139', 1), '7d375f3d6c502b1bfd47507d7e9106d84356d197f8b9a353819f927b59d1183e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb824bde2ef5b8c406a07ea833ef6a1500ce1a6cb53ae76d4bb449582146510b.mp3', 4022, '2026-09-13 11:32:32.979551', 'ef4c6386ba384e3875d534343e2cf1607ff0f44d0709e735806d64852bfa3237', 'validated', '{"audio_key":"cb824bde2ef5b8c406a07ea833ef6a1500ce1a6cb53ae76d4bb449582146510b","entity_key":"d_lossless_compression_summarization_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ef4c6386ba384e3875d534343e2cf1607ff0f44d0709e735806d64852bfa3237","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cb824bde2ef5b8c406a07ea833ef6a1500ce1a6cb53ae76d4bb449582146510b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_03:3 -> audio/generated/de-DE/dialogues/d3fd4298cc5aaf97e2c59932905f21333bdd4c34257b0cfb0177fd8d1ab0b97a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73067f97-dcd9-5e83-8219-e934ca370c98', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b355c86d1b00afb0797dba9c444dac9cebfa1e018adc66066385b270de852fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27350fea-1228-5c39-a3c7-211132d95fda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73067f97-dcd9-5e83-8219-e934ca370c98', 1), '3b355c86d1b00afb0797dba9c444dac9cebfa1e018adc66066385b270de852fe',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d3fd4298cc5aaf97e2c59932905f21333bdd4c34257b0cfb0177fd8d1ab0b97a.mp3', 3108, '2026-09-13 11:32:34.146108', 'cca57a58d4f4d6dc04f0df559c16487a73c9c0a144f0bd5a47932f64628c2efc', 'validated', '{"audio_key":"d3fd4298cc5aaf97e2c59932905f21333bdd4c34257b0cfb0177fd8d1ab0b97a","entity_key":"d_modal_commitment_precision_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca57a58d4f4d6dc04f0df559c16487a73c9c0a144f0bd5a47932f64628c2efc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d3fd4298cc5aaf97e2c59932905f21333bdd4c34257b0cfb0177fd8d1ab0b97a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_01:3 -> audio/generated/de-DE/dialogues/d712824ba0cd50c768a7058d999a0c5cd06f46acddab7a504fd0e7eb0082490e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85d4690b-788c-5b2c-a4bb-c58007e3ffd0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de4ad1a2a13a15327bf49a32af40ab5d987a49e1e23fe5d4f110bcf73d5109e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e6ad5d8-0f8a-5f49-9fce-f7c0a1851860', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85d4690b-788c-5b2c-a4bb-c58007e3ffd0', 1), '4de4ad1a2a13a15327bf49a32af40ab5d987a49e1e23fe5d4f110bcf73d5109e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d712824ba0cd50c768a7058d999a0c5cd06f46acddab7a504fd0e7eb0082490e.mp3', 2272, '2026-09-13 11:32:34.006950', 'f5aa301c13275bba1549dd9135e94f59069c6bcb23f9c638d43473e3971da651', 'validated', '{"audio_key":"d712824ba0cd50c768a7058d999a0c5cd06f46acddab7a504fd0e7eb0082490e","entity_key":"d_expert_public_precision_capstone_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5aa301c13275bba1549dd9135e94f59069c6bcb23f9c638d43473e3971da651","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d712824ba0cd50c768a7058d999a0c5cd06f46acddab7a504fd0e7eb0082490e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_01:1 -> audio/generated/de-DE/dialogues/d8b485985b360448a8030f4376eedc3cd00ba5fcc7bcb0f1c6f5d4187698d9f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f524624-baa9-5b3a-8475-cc65ea3263c0', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a7072046040bc42af8edfb4b747f7c95e51e46690030637da9c76bd3532e4d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eda5d8c-2f85-51b3-ac78-e3ea562d74fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f524624-baa9-5b3a-8475-cc65ea3263c0', 1), '0a7072046040bc42af8edfb4b747f7c95e51e46690030637da9c76bd3532e4d2',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d8b485985b360448a8030f4376eedc3cd00ba5fcc7bcb0f1c6f5d4187698d9f4.mp3', 5328, '2026-09-13 11:32:35.413111', '771f2563413f4d97de98e7eb86ed3a64fc55c6caec2eb024a77072c6ae001ca6', 'validated', '{"audio_key":"d8b485985b360448a8030f4376eedc3cd00ba5fcc7bcb0f1c6f5d4187698d9f4","entity_key":"d_evidentiality_epistemic_calibration_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"771f2563413f4d97de98e7eb86ed3a64fc55c6caec2eb024a77072c6ae001ca6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d8b485985b360448a8030f4376eedc3cd00ba5fcc7bcb0f1c6f5d4187698d9f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_01:3 -> audio/generated/de-DE/dialogues/d8bc7cfe9e8789be1c093853bc4793cdab0370d86c4a55c32c0ad34ca9efd75f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa360b3f-3b96-58d3-b93b-8b388d5383d2', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '879c8e873313c448f5375886f2ee26252ae9d46ddf547e64f2c040f6250eaef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65e65937-557b-5190-8e3d-6de5e00cf614', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa360b3f-3b96-58d3-b93b-8b388d5383d2', 1), '879c8e873313c448f5375886f2ee26252ae9d46ddf547e64f2c040f6250eaef0',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d8bc7cfe9e8789be1c093853bc4793cdab0370d86c4a55c32c0ad34ca9efd75f.mp3', 4310, '2026-09-13 11:32:35.469768', '0f7dfda11314fe230f60e9054d2da2b9bd105b5b9ac150409e0afb16b2546b53', 'validated', '{"audio_key":"d8bc7cfe9e8789be1c093853bc4793cdab0370d86c4a55c32c0ad34ca9efd75f","entity_key":"d_evidentiality_epistemic_calibration_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0f7dfda11314fe230f60e9054d2da2b9bd105b5b9ac150409e0afb16b2546b53","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d8bc7cfe9e8789be1c093853bc4793cdab0370d86c4a55c32c0ad34ca9efd75f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metacommunication_misunderstanding_repair_03:2 -> audio/generated/de-DE/dialogues/dbe201af2c805014877ccb0b5dd43b00bf9ae3cc8550471d40436be879a62831.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13e2d9c8-a49c-5f3f-9e4e-9e4b44027b32', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metacommunication_misunderstanding_repair_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b275dfee857c7c73bdaf8af3722245c80f4ed8aa6763eacb716b06bcc0811dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c93fad91-c0a9-5b04-8fb8-c57b16939af8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13e2d9c8-a49c-5f3f-9e4e-9e4b44027b32', 1), '2b275dfee857c7c73bdaf8af3722245c80f4ed8aa6763eacb716b06bcc0811dd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dbe201af2c805014877ccb0b5dd43b00bf9ae3cc8550471d40436be879a62831.mp3', 4728, '2026-09-13 11:32:36.801714', 'ff15c32917e42ed5dff393af2f2f130dd6bcbf04afce3f3b441aee37b2659f06', 'validated', '{"audio_key":"dbe201af2c805014877ccb0b5dd43b00bf9ae3cc8550471d40436be879a62831","entity_key":"d_metacommunication_misunderstanding_repair_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ff15c32917e42ed5dff393af2f2f130dd6bcbf04afce3f3b441aee37b2659f06","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/dbe201af2c805014877ccb0b5dd43b00bf9ae3cc8550471d40436be879a62831.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_01:2 -> audio/generated/de-DE/dialogues/dee5a855506386a5c522b8c39bc2f6f09f2bc3a18a7b4f046e8c4a164ac6e35b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24962582-4b03-5c84-b70b-136c6b33227d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e76b4892467ec600699da0ff42fde2e1a071e93a5fd8551b1b7308855b2b975f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba806051-424d-5c52-b5a8-01212cadab12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24962582-4b03-5c84-b70b-136c6b33227d', 1), 'e76b4892467ec600699da0ff42fde2e1a071e93a5fd8551b1b7308855b2b975f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dee5a855506386a5c522b8c39bc2f6f09f2bc3a18a7b4f046e8c4a164ac6e35b.mp3', 6217, '2026-09-13 11:32:36.986239', 'c504aefde7fd6674b1776e679bc99ab266b7d805ef870e9960d3bbb28467db5a', 'validated', '{"audio_key":"dee5a855506386a5c522b8c39bc2f6f09f2bc3a18a7b4f046e8c4a164ac6e35b","entity_key":"d_evidentiality_epistemic_calibration_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c504aefde7fd6674b1776e679bc99ab266b7d805ef870e9960d3bbb28467db5a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/dee5a855506386a5c522b8c39bc2f6f09f2bc3a18a7b4f046e8c4a164ac6e35b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_03:1 -> audio/generated/de-DE/dialogues/df4925d6f0d59f9192566ebb8a6b180d8f9b3c9ad5d8b674603939e6a720f234.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c6c04e2-95eb-5ae4-b8d0-b6de9c12871f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52f45ad2328180095ebd24db443ddf69f51c7fbc73a54e642ca1523f75f050dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89e6448f-b4fb-56b1-a12b-1ba1dae872c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c6c04e2-95eb-5ae4-b8d0-b6de9c12871f', 1), '52f45ad2328180095ebd24db443ddf69f51c7fbc73a54e642ca1523f75f050dc',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df4925d6f0d59f9192566ebb8a6b180d8f9b3c9ad5d8b674603939e6a720f234.mp3', 3657, '2026-09-13 11:32:38.039493', '098bac8a5e481ae3280ac73cf3547826d3258ab2f6b51cfe1bc4b803698a5059', 'validated', '{"audio_key":"df4925d6f0d59f9192566ebb8a6b180d8f9b3c9ad5d8b674603939e6a720f234","entity_key":"d_lossless_compression_summarization_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"098bac8a5e481ae3280ac73cf3547826d3258ab2f6b51cfe1bc4b803698a5059","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/df4925d6f0d59f9192566ebb8a6b180d8f9b3c9ad5d8b674603939e6a720f234.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_03:4 -> audio/generated/de-DE/dialogues/e3f49cec85df35dc1e2710d1637da467ba0e490e53708368b752f9b37e829b51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('616de426-d202-5b31-96c8-e8cb3456b23e', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4207855f711a9e5e86395918a024916c299714b1cd09f8dec4ac89b95d4dc636'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('011730c8-10a0-5121-be20-288ca1dfda94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('616de426-d202-5b31-96c8-e8cb3456b23e', 1), '4207855f711a9e5e86395918a024916c299714b1cd09f8dec4ac89b95d4dc636',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e3f49cec85df35dc1e2710d1637da467ba0e490e53708368b752f9b37e829b51.mp3', 7523, '2026-09-13 11:32:38.667807', '2ade71fa32f52780d29c4fb72793b0647dbcbdfd955b2816c038dfd35c4888bf', 'validated', '{"audio_key":"e3f49cec85df35dc1e2710d1637da467ba0e490e53708368b752f9b37e829b51","entity_key":"d_expert_public_precision_capstone_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2ade71fa32f52780d29c4fb72793b0647dbcbdfd955b2816c038dfd35c4888bf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e3f49cec85df35dc1e2710d1637da467ba0e490e53708368b752f9b37e829b51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_03:1 -> audio/generated/de-DE/dialogues/e9a2d44b99118d740c0b192c5f054f2c9d31fb54c10efdd473d7b8388d607260.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('affc56ee-cb1e-534e-b40f-187b78efebe1', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb24dce6a3cafdadc3004f0f58f2bd114821529051d7d3d8954c33c801515328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4501d89f-731c-5460-8cec-bf7815fc668e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('affc56ee-cb1e-534e-b40f-187b78efebe1', 1), 'cb24dce6a3cafdadc3004f0f58f2bd114821529051d7d3d8954c33c801515328',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9a2d44b99118d740c0b192c5f054f2c9d31fb54c10efdd473d7b8388d607260.mp3', 3761, '2026-09-13 11:32:39.325093', 'd162caf896c42d92838f49fcee8dcf468201663ba709508e7c599188d4da3f6d', 'validated', '{"audio_key":"e9a2d44b99118d740c0b192c5f054f2c9d31fb54c10efdd473d7b8388d607260","entity_key":"d_evidentiality_epistemic_calibration_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d162caf896c42d92838f49fcee8dcf468201663ba709508e7c599188d4da3f6d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e9a2d44b99118d740c0b192c5f054f2c9d31fb54c10efdd473d7b8388d607260.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_02:4 -> audio/generated/de-DE/dialogues/e9f27fb44a5ca3e1da43fc4eecc5731e9bc5a1791bc87292e7bcc63c3615efb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ddfdcd5c-3c0e-5d93-9fd0-66bf1a72e76b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b7ecaa7b97f27b8bf8e6d2500d567bd7254181cf9646d65185b273109f06333'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82aeeab1-09a9-5fc7-b7b6-eda9c6d7517b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ddfdcd5c-3c0e-5d93-9fd0-66bf1a72e76b', 1), '4b7ecaa7b97f27b8bf8e6d2500d567bd7254181cf9646d65185b273109f06333',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9f27fb44a5ca3e1da43fc4eecc5731e9bc5a1791bc87292e7bcc63c3615efb7.mp3', 3787, '2026-09-13 11:32:39.883223', '5e989469ef4e65bfb7eb3d5efbfbf957916dbfc4644c89709788e39a83b78749', 'validated', '{"audio_key":"e9f27fb44a5ca3e1da43fc4eecc5731e9bc5a1791bc87292e7bcc63c3615efb7","entity_key":"d_lossless_compression_summarization_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5e989469ef4e65bfb7eb3d5efbfbf957916dbfc4644c89709788e39a83b78749","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e9f27fb44a5ca3e1da43fc4eecc5731e9bc5a1791bc87292e7bcc63c3615efb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_terminology_negotiation_concept_boundaries_01:4 -> audio/generated/de-DE/dialogues/ef651670c72e77708f972e092076b844baa9de2c7fdf6ae5ab87c558329a66f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52410330-796d-5666-96da-585c9c5b5480', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_terminology_negotiation_concept_boundaries_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2656b758c81556fd4a051e24dbd55f3518e86d5e9b188de4dc2f96f920265108'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51beeb66-2c69-5f37-8f70-2fba3d0b7f2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52410330-796d-5666-96da-585c9c5b5480', 1), '2656b758c81556fd4a051e24dbd55f3518e86d5e9b188de4dc2f96f920265108',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef651670c72e77708f972e092076b844baa9de2c7fdf6ae5ab87c558329a66f7.mp3', 4858, '2026-09-13 11:32:40.665378', '6ca457ffcd8267ff8ddb0256f44428abca8184d3bf30ea4d47c5cc05b097168c', 'validated', '{"audio_key":"ef651670c72e77708f972e092076b844baa9de2c7fdf6ae5ab87c558329a66f7","entity_key":"d_terminology_negotiation_concept_boundaries_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6ca457ffcd8267ff8ddb0256f44428abca8184d3bf30ea4d47c5cc05b097168c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ef651670c72e77708f972e092076b844baa9de2c7fdf6ae5ab87c558329a66f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_debate_interruption_reframing_01:4 -> audio/generated/de-DE/dialogues/f3cfc54ef6380200f0f45ff9889b5ae7e6121ee25ac99c37e4ab87673e504a0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04beecea-2da1-5f35-bf33-246fb9eed4e1', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_debate_interruption_reframing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9d1d98d5e579f9e1c81d879070b56085eb3d71f15168ce53ca4dd05325d3d55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e743a6f2-5fe8-55ae-bdc2-cbe2ff81701d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04beecea-2da1-5f35-bf33-246fb9eed4e1', 1), 'f9d1d98d5e579f9e1c81d879070b56085eb3d71f15168ce53ca4dd05325d3d55',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f3cfc54ef6380200f0f45ff9889b5ae7e6121ee25ac99c37e4ab87673e504a0c.mp3', 2638, '2026-09-13 11:32:40.972955', '7a1f38981b65bf5d538a862a1a2bdd39aa00ec23d456262a508aab09bf971b74', 'validated', '{"audio_key":"f3cfc54ef6380200f0f45ff9889b5ae7e6121ee25ac99c37e4ab87673e504a0c","entity_key":"d_live_debate_interruption_reframing_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7a1f38981b65bf5d538a862a1a2bdd39aa00ec23d456262a508aab09bf971b74","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f3cfc54ef6380200f0f45ff9889b5ae7e6121ee25ac99c37e4ab87673e504a0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesion_reference_dense_texts_03:3 -> audio/generated/de-DE/dialogues/f5ae873ae66b3c52384724967492dddace28d0ca83f54ede7fe17207ebae1827.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ace124d1-e0aa-5f93-89b8-67f8f5d191f9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesion_reference_dense_texts_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9b937cef2ff745432d3fdc344569eda17dc7b71bfa33c64ab4c9fbbad9bd18e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4d96f43-8182-577b-9793-c4dbb938460d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ace124d1-e0aa-5f93-89b8-67f8f5d191f9', 1), 'e9b937cef2ff745432d3fdc344569eda17dc7b71bfa33c64ab4c9fbbad9bd18e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f5ae873ae66b3c52384724967492dddace28d0ca83f54ede7fe17207ebae1827.mp3', 4832, '2026-09-13 11:32:42.207480', '9a457905cc4ef84671a5cc4bd16c099a319158e8b103879c252d7082a239429d', 'validated', '{"audio_key":"f5ae873ae66b3c52384724967492dddace28d0ca83f54ede7fe17207ebae1827","entity_key":"d_cohesion_reference_dense_texts_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9a457905cc4ef84671a5cc4bd16c099a319158e8b103879c252d7082a239429d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f5ae873ae66b3c52384724967492dddace28d0ca83f54ede7fe17207ebae1827.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidentiality_epistemic_calibration_02:1 -> audio/generated/de-DE/dialogues/f6f4156393a74bec2de9cae7db15a25b8f7900aaa30b1977b30b44ffda002444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46274d45-0c11-58c8-b14a-cd3dcd2f28da', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidentiality_epistemic_calibration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26e3d13eadb02012ab999de6dfb1fef2172d22907efc0c753df144b88325bb14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c181c61-5a8d-5c35-a48a-df1dab2c9b70', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46274d45-0c11-58c8-b14a-cd3dcd2f28da', 1), '26e3d13eadb02012ab999de6dfb1fef2172d22907efc0c753df144b88325bb14',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6f4156393a74bec2de9cae7db15a25b8f7900aaa30b1977b30b44ffda002444.mp3', 4858, '2026-09-13 11:32:42.384880', '7336849550944376468cc9007b33f07612ecdf9e6b4c3ca5f70137368653a000', 'validated', '{"audio_key":"f6f4156393a74bec2de9cae7db15a25b8f7900aaa30b1977b30b44ffda002444","entity_key":"d_evidentiality_epistemic_calibration_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7336849550944376468cc9007b33f07612ecdf9e6b4c3ca5f70137368653a000","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f6f4156393a74bec2de9cae7db15a25b8f7900aaa30b1977b30b44ffda002444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_scope_ambiguity_01:1 -> audio/generated/de-DE/dialogues/f788ed32d64c2a6417dc6c05c635a9eb39c573b75f35d9583d54ac9afbe2850b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51ac2920-7c34-5978-8152-97433083a064', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_scope_ambiguity_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6db07a2902a445478bf95061a975a557d045ed732d70241665d867b7cca34b56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1654d00f-5287-5c78-85f5-5be77632985d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51ac2920-7c34-5978-8152-97433083a064', 1), '6db07a2902a445478bf95061a975a557d045ed732d70241665d867b7cca34b56',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f788ed32d64c2a6417dc6c05c635a9eb39c573b75f35d9583d54ac9afbe2850b.mp3', 4257, '2026-09-13 11:32:43.599808', 'aa5710fd5891c05bcd33cca3f5bf728f7f55cf67c6d3e1b415baa22dace7e909', 'validated', '{"audio_key":"f788ed32d64c2a6417dc6c05c635a9eb39c573b75f35d9583d54ac9afbe2850b","entity_key":"d_semantic_scope_ambiguity_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"aa5710fd5891c05bcd33cca3f5bf728f7f55cf67c6d3e1b415baa22dace7e909","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f788ed32d64c2a6417dc6c05c635a9eb39c573b75f35d9583d54ac9afbe2850b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lossless_compression_summarization_01:3 -> audio/generated/de-DE/dialogues/f8e54d11f32b42f4ab3fd7631ef0e7dbc013a32f57efcafeeac619f3bbe62fc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('901ec05a-e225-5cc1-b731-fdf971457f64', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lossless_compression_summarization_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '519cd3a470323a1948ecf34f173ce1cd7fbd7e027348ab0a828cd33fa9eb2ada'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18fb6548-5ba5-51e8-a132-93c455f69e35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('901ec05a-e225-5cc1-b731-fdf971457f64', 1), '519cd3a470323a1948ecf34f173ce1cd7fbd7e027348ab0a828cd33fa9eb2ada',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8e54d11f32b42f4ab3fd7631ef0e7dbc013a32f57efcafeeac619f3bbe62fc6.mp3', 4440, '2026-09-13 11:32:43.710140', '8415c170713009ba68e290ccf018c8a0a7a09010e4626dfec59730fb889fc4fb', 'validated', '{"audio_key":"f8e54d11f32b42f4ab3fd7631ef0e7dbc013a32f57efcafeeac619f3bbe62fc6","entity_key":"d_lossless_compression_summarization_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8415c170713009ba68e290ccf018c8a0a7a09010e4626dfec59730fb889fc4fb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f8e54d11f32b42f4ab3fd7631ef0e7dbc013a32f57efcafeeac619f3bbe62fc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_modal_commitment_precision_01:3 -> audio/generated/de-DE/dialogues/f97d17b241d8ed6a7a5237941e0a19f7338bb112ecf578495cbce838e579ca0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5b6286f-2372-5bca-9ea6-c6e1ad415fd4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_modal_commitment_precision_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b1081bbe6d7e4bfc6f820b5948efad5b19da183b308857d5439514806054505'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d781b0c7-ed67-5e20-9f45-ede5b47d38e7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5b6286f-2372-5bca-9ea6-c6e1ad415fd4', 1), '8b1081bbe6d7e4bfc6f820b5948efad5b19da183b308857d5439514806054505',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f97d17b241d8ed6a7a5237941e0a19f7338bb112ecf578495cbce838e579ca0f.mp3', 3343, '2026-09-13 11:32:44.821251', '75053240a9e07076b56d657d190d87e714ee5711f3fabab0fce85cb1add7dfdf', 'validated', '{"audio_key":"f97d17b241d8ed6a7a5237941e0a19f7338bb112ecf578495cbce838e579ca0f","entity_key":"d_modal_commitment_precision_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"75053240a9e07076b56d657d190d87e714ee5711f3fabab0fce85cb1add7dfdf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f97d17b241d8ed6a7a5237941e0a19f7338bb112ecf578495cbce838e579ca0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_public_precision_capstone_03:2 -> audio/generated/de-DE/dialogues/f981933b71691fcfa9275af5283b952df1c08c13706b1d4fb16231d61f4d9d6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48e80e41-3da9-5849-846e-480d27e59cc2', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_public_precision_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '969212053adb2e7428bce96f18d8164fe4dc0dd9e72f2f4b8e7801d078d3c558'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2047c1f-1661-50af-b951-2d299139ed2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48e80e41-3da9-5849-846e-480d27e59cc2', 1), '969212053adb2e7428bce96f18d8164fe4dc0dd9e72f2f4b8e7801d078d3c558',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f981933b71691fcfa9275af5283b952df1c08c13706b1d4fb16231d61f4d9d6f.mp3', 5929, '2026-09-13 11:32:45.223444', '211e3ae169a081368bf13e9001d40863b13dd5d1117ea3f420c9a1144e5b5c6b', 'validated', '{"audio_key":"f981933b71691fcfa9275af5283b952df1c08c13706b1d4fb16231d61f4d9d6f","entity_key":"d_expert_public_precision_capstone_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"211e3ae169a081368bf13e9001d40863b13dd5d1117ea3f420c9a1144e5b5c6b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f981933b71691fcfa9275af5283b952df1c08c13706b1d4fb16231d61f4d9d6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_03 -> audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d547492-62cb-50bb-81f1-37accafe8e2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c90c347aa8cea9c770a6c3251c1d0d0fd6f10c71d82929c87491daafb0bd0f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02989dc6-8916-567f-8c05-5db4f0d4185b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d547492-62cb-50bb-81f1-37accafe8e2f', 1), '2c90c347aa8cea9c770a6c3251c1d0d0fd6f10c71d82929c87491daafb0bd0f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3', 1436, '2026-09-13 11:32:45.797576', '94d3ea4cb5d561a5bebb870d6f2e12900a4af3069d7f5df5c83ccd31b5c8c2f0', 'validated', '{"audio_key":"00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5","entity_key":"lx_audience_reformulation_technical_public_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94d3ea4cb5d561a5bebb870d6f2e12900a4af3069d7f5df5c83ccd31b5c8c2f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_03 -> audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3791956a-cc46-56b2-ad86-11551d90a402', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c90c347aa8cea9c770a6c3251c1d0d0fd6f10c71d82929c87491daafb0bd0f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2276e0db-5d36-59e7-8ca7-cda6dd7e277f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3791956a-cc46-56b2-ad86-11551d90a402', 1), '2c90c347aa8cea9c770a6c3251c1d0d0fd6f10c71d82929c87491daafb0bd0f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3', 1436, '2026-09-13 11:32:45.797576', '94d3ea4cb5d561a5bebb870d6f2e12900a4af3069d7f5df5c83ccd31b5c8c2f0', 'validated', '{"audio_key":"00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5","entity_key":"wf_audience_reformulation_technical_public_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94d3ea4cb5d561a5bebb870d6f2e12900a4af3069d7f5df5c83ccd31b5c8c2f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00b8575c443b6a074e52ce0c69cf12e1ce6d91271b97f15ec0e2a6abec3f86c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_03 -> audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d7579083-1a8a-5fb4-8cdb-6353e5f535b4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a6b7fef-c755-5089-8d08-7e517e458c89', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d7579083-1a8a-5fb4-8cdb-6353e5f535b4', 1), 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3', 1201, '2026-09-13 10:00:58.079006', '54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251', 'validated', '{"audio_key":"0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031","entity_key":"lx_semantic_scope_ambiguity_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_03 -> audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('960aff62-c1ef-5fbc-b062-f2813f7b589a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78468d67-1bf5-5d2c-a168-1f165d8d3938', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('960aff62-c1ef-5fbc-b062-f2813f7b589a', 1), 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3', 1201, '2026-09-13 10:00:58.079006', '54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251', 'validated', '{"audio_key":"0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031","entity_key":"wf_semantic_scope_ambiguity_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_01 -> audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e515cd7-0ecb-57da-be0a-1f1c5f0a34e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbcba7574b00e9d9d143b591a200824c4fdaf2a6a4042469c36625a264e859e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac86b085-7acc-5ff6-8cdd-da2e9212ebea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e515cd7-0ecb-57da-be0a-1f1c5f0a34e1', 1), '9dbcba7574b00e9d9d143b591a200824c4fdaf2a6a4042469c36625a264e859e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3', 1201, '2026-09-13 11:32:46.165100', 'e367cda0c01c488910612e517669c01001834f28d2816477ba0bbe952888d59a', 'validated', '{"audio_key":"0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd","entity_key":"lx_live_debate_interruption_reframing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e367cda0c01c488910612e517669c01001834f28d2816477ba0bbe952888d59a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_01 -> audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('855d60cf-9a46-5afb-a074-aeb78edb447d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbcba7574b00e9d9d143b591a200824c4fdaf2a6a4042469c36625a264e859e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('484f121e-f1e1-56d3-82f2-479350ad6b28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('855d60cf-9a46-5afb-a074-aeb78edb447d', 1), '9dbcba7574b00e9d9d143b591a200824c4fdaf2a6a4042469c36625a264e859e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3', 1201, '2026-09-13 11:32:46.165100', 'e367cda0c01c488910612e517669c01001834f28d2816477ba0bbe952888d59a', 'validated', '{"audio_key":"0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd","entity_key":"wf_live_debate_interruption_reframing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e367cda0c01c488910612e517669c01001834f28d2816477ba0bbe952888d59a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0868bb7452a746ab8013e6b5a8961f7d43c703729be813f82f206cb8167d2cfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_02 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b1017d-1d06-5d9f-87df-da31fff57190', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"lx_modal_commitment_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_02 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('433b7d9c-d212-5dd0-b0e8-a1eddf62be39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9915cafa-5e04-5df0-82b4-fc96e3475dc8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('433b7d9c-d212-5dd0-b0e8-a1eddf62be39', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"wf_modal_commitment_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_06 -> audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f6c1a18d-5509-58aa-84d6-4163c447de74', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c497c6e4-bc46-59d6-a607-da2f899bd7d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f6c1a18d-5509-58aa-84d6-4163c447de74', 1), 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3', 1332, '2026-09-13 11:32:46.759832', 'f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf', 'validated', '{"audio_key":"0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f","entity_key":"lx_expert_public_precision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_06 -> audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cbca1552-b04a-5fe2-bced-1572c0e93c5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e09812c-a002-5c75-9219-2b43a443b85f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cbca1552-b04a-5fe2-bced-1572c0e93c5f', 1), 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3', 1332, '2026-09-13 11:32:46.759832', 'f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf', 'validated', '{"audio_key":"0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f","entity_key":"wf_expert_public_precision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e434d45-fed3-595b-bb00-e41036abbe9b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"lx_lossless_compression_summarization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3070a2b-d122-59aa-8bfe-f44efc300f5e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37009948-2341-59c5-889c-5ce4cab269f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3070a2b-d122-59aa-8bfe-f44efc300f5e', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"wf_lossless_compression_summarization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_03 -> audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d12842aa-007c-5ae5-8816-012c0aeec590', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28675918-053a-550e-bfb8-e339dfbdf470', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d12842aa-007c-5ae5-8816-012c0aeec590', 1), '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3', 1071, '2026-09-13 07:53:11.281259', 'd6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213', 'validated', '{"audio_key":"15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d","entity_key":"lx_metacommunication_misunderstanding_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_03 -> audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96479582-44fb-533e-b4de-314634b75e4d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('809dad09-6076-5c90-9c0e-7f83cd583f8d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96479582-44fb-533e-b4de-314634b75e4d', 1), '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3', 1071, '2026-09-13 07:53:11.281259', 'd6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213', 'validated', '{"audio_key":"15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d","entity_key":"wf_metacommunication_misunderstanding_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_04 -> audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0cef04a-b2e4-566a-851d-02e5db755d5b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c61749cbc041c9277a863521c67402fd3efe0928f64f0b4607849601a161fa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('130e72a7-bca7-51ba-978d-f0fcd930cb43', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0cef04a-b2e4-566a-851d-02e5db755d5b', 1), '2c61749cbc041c9277a863521c67402fd3efe0928f64f0b4607849601a161fa7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3', 1149, '2026-09-13 11:32:47.152562', 'f00398fd3042e468a3cc9f708ba9b0f56e0e31b4909ec16c43ee94c48ac7870e', 'validated', '{"audio_key":"19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b","entity_key":"lx_audience_reformulation_technical_public_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f00398fd3042e468a3cc9f708ba9b0f56e0e31b4909ec16c43ee94c48ac7870e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_04 -> audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e95d77e1-3b6d-5986-ba69-2d08006a9c65', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c61749cbc041c9277a863521c67402fd3efe0928f64f0b4607849601a161fa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7501080d-7583-5ed9-8c65-746208f511ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e95d77e1-3b6d-5986-ba69-2d08006a9c65', 1), '2c61749cbc041c9277a863521c67402fd3efe0928f64f0b4607849601a161fa7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3', 1149, '2026-09-13 11:32:47.152562', 'f00398fd3042e468a3cc9f708ba9b0f56e0e31b4909ec16c43ee94c48ac7870e', 'validated', '{"audio_key":"19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b","entity_key":"wf_audience_reformulation_technical_public_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f00398fd3042e468a3cc9f708ba9b0f56e0e31b4909ec16c43ee94c48ac7870e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/19333695f85310a71228ab4cb6cdc6737c9de6863d16d029535a04d32d78ce3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_05 -> audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3944103d-931c-5507-b6c8-b6aff50c3170', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74343dee4e6a8410c0e37b39f76cabc1f123260a185881d751da92b6c42d9c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2522d7d-e726-5312-b6eb-16fa0e3dee07', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3944103d-931c-5507-b6c8-b6aff50c3170', 1), '74343dee4e6a8410c0e37b39f76cabc1f123260a185881d751da92b6c42d9c65',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3', 1201, '2026-09-13 11:32:47.723192', 'bee09b0ca72951b7e2043a1f7f8cb677e4edf09ba23a2ee70558d58f5e6ce57e', 'validated', '{"audio_key":"1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba","entity_key":"lx_terminology_negotiation_concept_boundaries_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bee09b0ca72951b7e2043a1f7f8cb677e4edf09ba23a2ee70558d58f5e6ce57e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_05 -> audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e25cc53d-f8cc-5bc8-81d5-da1bf53c80ac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74343dee4e6a8410c0e37b39f76cabc1f123260a185881d751da92b6c42d9c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d2d5b88-9ccf-58c2-9777-c510986095da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e25cc53d-f8cc-5bc8-81d5-da1bf53c80ac', 1), '74343dee4e6a8410c0e37b39f76cabc1f123260a185881d751da92b6c42d9c65',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3', 1201, '2026-09-13 11:32:47.723192', 'bee09b0ca72951b7e2043a1f7f8cb677e4edf09ba23a2ee70558d58f5e6ce57e', 'validated', '{"audio_key":"1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba","entity_key":"wf_terminology_negotiation_concept_boundaries_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bee09b0ca72951b7e2043a1f7f8cb677e4edf09ba23a2ee70558d58f5e6ce57e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e894cbaa85fc07dcaa276c83b5f7e5717458c16bbd85ccd5de535f34dd1f7ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_04 -> audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed9ae538-d481-5d8a-94e2-8e9d18a06825', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84ad3feb86ecbe8d7ff15ba6d18a6b561f05d23f0142b6181d29109f165f0d66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0670a39c-7b4b-55d4-bf2e-7daa4d507512', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed9ae538-d481-5d8a-94e2-8e9d18a06825', 1), '84ad3feb86ecbe8d7ff15ba6d18a6b561f05d23f0142b6181d29109f165f0d66',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3', 1253, '2026-09-13 11:32:48.130651', 'f39e4048ee3a72fd6178a1ab13aa232516ee1cd33a41737cea2ccef05a9027d7', 'validated', '{"audio_key":"22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d","entity_key":"lx_semantic_scope_ambiguity_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f39e4048ee3a72fd6178a1ab13aa232516ee1cd33a41737cea2ccef05a9027d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_04 -> audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17402e42-7c0f-51e4-9c20-770c2eed2003', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84ad3feb86ecbe8d7ff15ba6d18a6b561f05d23f0142b6181d29109f165f0d66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e97e940-8e49-5e92-a0ff-742ab8521bfe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17402e42-7c0f-51e4-9c20-770c2eed2003', 1), '84ad3feb86ecbe8d7ff15ba6d18a6b561f05d23f0142b6181d29109f165f0d66',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3', 1253, '2026-09-13 11:32:48.130651', 'f39e4048ee3a72fd6178a1ab13aa232516ee1cd33a41737cea2ccef05a9027d7', 'validated', '{"audio_key":"22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d","entity_key":"wf_semantic_scope_ambiguity_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f39e4048ee3a72fd6178a1ab13aa232516ee1cd33a41737cea2ccef05a9027d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/22b1cfda5f0fc93fe6629383052e5c6e1eca3a19a0f661e7833349bc12b9958d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_02 -> audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9f1517e-6033-57d8-b078-276acda1795a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a40435cf856259963934d69b12b57cafe3f11ce1b53c058c0368a3a6f8f119d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1f257af-782c-587f-b21b-79b073e48175', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9f1517e-6033-57d8-b078-276acda1795a', 1), 'a40435cf856259963934d69b12b57cafe3f11ce1b53c058c0368a3a6f8f119d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3', 1515, '2026-09-13 11:32:48.717209', 'f601295287f1914bc7b82e8f97e58ecd11493a33ac25cb047a5119c196a06e23', 'validated', '{"audio_key":"24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f","entity_key":"lx_expert_public_precision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f601295287f1914bc7b82e8f97e58ecd11493a33ac25cb047a5119c196a06e23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_02 -> audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a6269284-d758-52ef-9127-51cd40363493', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a40435cf856259963934d69b12b57cafe3f11ce1b53c058c0368a3a6f8f119d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba54d281-2761-5b92-a895-b3b2df3ed15a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a6269284-d758-52ef-9127-51cd40363493', 1), 'a40435cf856259963934d69b12b57cafe3f11ce1b53c058c0368a3a6f8f119d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3', 1515, '2026-09-13 11:32:48.717209', 'f601295287f1914bc7b82e8f97e58ecd11493a33ac25cb047a5119c196a06e23', 'validated', '{"audio_key":"24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f","entity_key":"wf_expert_public_precision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f601295287f1914bc7b82e8f97e58ecd11493a33ac25cb047a5119c196a06e23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/24e389fbe87fd4c52fb04432560a9a56a6320b259e74044b4ec710a04c338d9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_05 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb858c6a-865e-5663-bffd-306379bd2a0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"lx_evidentiality_epistemic_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_05 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef991cca-d3e5-5074-a174-0b2ad778c9c0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31d3b1f2-d296-5df7-b92f-f508a05e55c8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef991cca-d3e5-5074-a174-0b2ad778c9c0', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"wf_evidentiality_epistemic_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_04 -> audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('99588e5a-a913-5186-8452-e1d0cc924e60', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a950dcca-4310-5412-b90f-ce38b29742b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('99588e5a-a913-5186-8452-e1d0cc924e60', 1), 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3', 1149, '2026-09-13 11:32:49.097818', '09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c', 'validated', '{"audio_key":"2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496","entity_key":"lx_lossless_compression_summarization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_04 -> audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('390c5a94-a5d9-5e90-85bc-1f8a44fa0a08', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86f0689b-8b06-5475-a017-97487c1f951e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('390c5a94-a5d9-5e90-85bc-1f8a44fa0a08', 1), 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3', 1149, '2026-09-13 11:32:49.097818', '09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c', 'validated', '{"audio_key":"2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496","entity_key":"wf_lossless_compression_summarization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_02 -> audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c792e8f-f844-515e-b5e9-8ecf56bf7689', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20bfe716-a34a-5dba-9215-1f97415897ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c792e8f-f844-515e-b5e9-8ecf56bf7689', 1), '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3', 1280, '2026-09-13 09:40:53.678515', '7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52', 'validated', '{"audio_key":"3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103","entity_key":"lx_evidentiality_epistemic_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_02 -> audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da9497d4-8d4e-5d6e-a1c8-7c2f9277c633', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01e68e19-2d18-5e6f-b8ee-6b3934bbc6cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da9497d4-8d4e-5d6e-a1c8-7c2f9277c633', 1), '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3', 1280, '2026-09-13 09:40:53.678515', '7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52', 'validated', '{"audio_key":"3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103","entity_key":"wf_evidentiality_epistemic_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_06 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc32be3-dc4c-5e4f-887b-c9062f3cbb19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"lx_audience_reformulation_technical_public_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_06 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('70861afb-3984-59bd-a99a-eb419cd6a346', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8575a178-47d6-52ef-993a-8172a7a568c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('70861afb-3984-59bd-a99a-eb419cd6a346', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"wf_audience_reformulation_technical_public_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_02 -> audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1bb0c9f-542f-5fdb-980b-972e9c57c282', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad6cee2ce35765d0851b0f8fda30a524d3509411ac8743f8d2a3cf71a3b94f60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bed9a63c-57f7-500b-a2bb-781cba143048', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1bb0c9f-542f-5fdb-980b-972e9c57c282', 1), 'ad6cee2ce35765d0851b0f8fda30a524d3509411ac8743f8d2a3cf71a3b94f60',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3', 1384, '2026-09-13 11:32:49.674182', 'da2ff6351ad7d9098f647d1a1e2d745e40e885b1f593fc9e5f0db740851ea3c2', 'validated', '{"audio_key":"3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7","entity_key":"lx_metacommunication_misunderstanding_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da2ff6351ad7d9098f647d1a1e2d745e40e885b1f593fc9e5f0db740851ea3c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_02 -> audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15cc24f5-b18a-55d4-b302-11fab0c426c0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad6cee2ce35765d0851b0f8fda30a524d3509411ac8743f8d2a3cf71a3b94f60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba72351c-c1f3-5da9-a01d-118e4d752a58', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15cc24f5-b18a-55d4-b302-11fab0c426c0', 1), 'ad6cee2ce35765d0851b0f8fda30a524d3509411ac8743f8d2a3cf71a3b94f60',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3', 1384, '2026-09-13 11:32:49.674182', 'da2ff6351ad7d9098f647d1a1e2d745e40e885b1f593fc9e5f0db740851ea3c2', 'validated', '{"audio_key":"3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7","entity_key":"wf_metacommunication_misunderstanding_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da2ff6351ad7d9098f647d1a1e2d745e40e885b1f593fc9e5f0db740851ea3c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ea74f2df19a5fcf33cdfb2da13cab674cbcfb0a6c3e65b8eed14f57f551f4d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_04 -> audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('855e5eac-86b0-515f-8bdc-145318aac612', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eb989ffc7d3b799e406b4b0a7ae7ee447fb399d53d9beb85decdcfab456c3a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e73dc14-7c12-5ed0-bb40-4d57dba032ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('855e5eac-86b0-515f-8bdc-145318aac612', 1), '6eb989ffc7d3b799e406b4b0a7ae7ee447fb399d53d9beb85decdcfab456c3a7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3', 1567, '2026-09-13 11:32:50.102485', '22190cd14538e2f2438782dae5b5d6fd9aa3efe07e2dfcbb9f5761edde659e9b', 'validated', '{"audio_key":"4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30","entity_key":"lx_terminology_negotiation_concept_boundaries_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22190cd14538e2f2438782dae5b5d6fd9aa3efe07e2dfcbb9f5761edde659e9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_04 -> audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5464cdf3-1e75-52fb-a54d-75ae2f0cac0a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eb989ffc7d3b799e406b4b0a7ae7ee447fb399d53d9beb85decdcfab456c3a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('727d84b7-ca74-598b-ba80-b22f4ab247e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5464cdf3-1e75-52fb-a54d-75ae2f0cac0a', 1), '6eb989ffc7d3b799e406b4b0a7ae7ee447fb399d53d9beb85decdcfab456c3a7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3', 1567, '2026-09-13 11:32:50.102485', '22190cd14538e2f2438782dae5b5d6fd9aa3efe07e2dfcbb9f5761edde659e9b', 'validated', '{"audio_key":"4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30","entity_key":"wf_terminology_negotiation_concept_boundaries_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22190cd14538e2f2438782dae5b5d6fd9aa3efe07e2dfcbb9f5761edde659e9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4156d4c42d4786ac408462767083627e9e207191790bc91ba453472b8f234b30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_06 -> audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e61cce8-d52c-5b0c-84a9-ef76450856e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59a7a312-f3ea-5e62-8b68-cf6b2c2499a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e61cce8-d52c-5b0c-84a9-ef76450856e5', 1), '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3', 1201, '2026-09-13 11:32:50.683550', '11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d', 'validated', '{"audio_key":"4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748","entity_key":"lx_terminology_negotiation_concept_boundaries_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_06 -> audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aafd7244-51d9-594c-8304-69e35e3c71fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44f0195e-7589-54f1-891d-12a12409d6e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aafd7244-51d9-594c-8304-69e35e3c71fd', 1), '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3', 1201, '2026-09-13 11:32:50.683550', '11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d', 'validated', '{"audio_key":"4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748","entity_key":"wf_terminology_negotiation_concept_boundaries_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_03 -> audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('990f4ee2-fdfe-546d-b7e1-4241f3b0b42c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4132680ffde80b5f516e78e39bd646035819d8f761da1a79d0754ef2e036334e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2a6448e-2181-52c5-a06b-0f3d35477f82', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('990f4ee2-fdfe-546d-b7e1-4241f3b0b42c', 1), '4132680ffde80b5f516e78e39bd646035819d8f761da1a79d0754ef2e036334e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3', 1018, '2026-09-13 11:32:51.051810', '0f95b752813b5fdbdb143c1314d4423e1ec0a27ab8dd82ff7311633d56ae490e', 'validated', '{"audio_key":"5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967","entity_key":"lx_modal_commitment_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f95b752813b5fdbdb143c1314d4423e1ec0a27ab8dd82ff7311633d56ae490e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_03 -> audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d16bb14-2d91-5eaf-b15c-0c1ac6db409d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4132680ffde80b5f516e78e39bd646035819d8f761da1a79d0754ef2e036334e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70463d9d-1902-57b7-b7fa-fabdda3b44ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d16bb14-2d91-5eaf-b15c-0c1ac6db409d', 1), '4132680ffde80b5f516e78e39bd646035819d8f761da1a79d0754ef2e036334e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3', 1018, '2026-09-13 11:32:51.051810', '0f95b752813b5fdbdb143c1314d4423e1ec0a27ab8dd82ff7311633d56ae490e', 'validated', '{"audio_key":"5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967","entity_key":"wf_modal_commitment_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f95b752813b5fdbdb143c1314d4423e1ec0a27ab8dd82ff7311633d56ae490e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c7aedf08d1520dcb426b131ae210400319f9682ce06e91617acd93f25903967.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_01 -> audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9787b15b-5d82-5c9a-979e-d76e96ae95de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952deedc-0bf2-5dcc-bf11-a88e873964ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9787b15b-5d82-5c9a-979e-d76e96ae95de', 1), 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3', 1384, '2026-09-13 10:21:21.037824', '576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815', 'validated', '{"audio_key":"64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594","entity_key":"lx_expert_public_precision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_01 -> audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f83dd6f2-b7e3-54d4-a9f2-03ce1034ed53', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed3a1cf1-43af-5bd6-9156-bc51f4c10973', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f83dd6f2-b7e3-54d4-a9f2-03ce1034ed53', 1), 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3', 1384, '2026-09-13 10:21:21.037824', '576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815', 'validated', '{"audio_key":"64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594","entity_key":"wf_expert_public_precision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_06 -> audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ec730dd1-70a7-5a1b-ae27-d119f9843de4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542729b41134aa4f92b502276dae29b58a7c8dc04f7fe3b41009fd65a3f90949'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0fc7d28-a418-5344-af41-00aa6d264d4c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ec730dd1-70a7-5a1b-ae27-d119f9843de4', 1), '542729b41134aa4f92b502276dae29b58a7c8dc04f7fe3b41009fd65a3f90949',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3', 1149, '2026-09-13 11:32:51.612657', 'bf42eb8f3c554aced65172b3f774a37d0729d050cf20fb19a2749312b70092e7', 'validated', '{"audio_key":"6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33","entity_key":"lx_cohesion_reference_dense_texts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf42eb8f3c554aced65172b3f774a37d0729d050cf20fb19a2749312b70092e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_06 -> audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92f12368-9a83-5dc4-969c-6adcfdd1d3d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542729b41134aa4f92b502276dae29b58a7c8dc04f7fe3b41009fd65a3f90949'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b366443c-dc19-5ffa-97fa-6d85bf0f3844', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92f12368-9a83-5dc4-969c-6adcfdd1d3d6', 1), '542729b41134aa4f92b502276dae29b58a7c8dc04f7fe3b41009fd65a3f90949',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3', 1149, '2026-09-13 11:32:51.612657', 'bf42eb8f3c554aced65172b3f774a37d0729d050cf20fb19a2749312b70092e7', 'validated', '{"audio_key":"6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33","entity_key":"wf_cohesion_reference_dense_texts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf42eb8f3c554aced65172b3f774a37d0729d050cf20fb19a2749312b70092e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6596adf369f0fab5c81582a5e9860ee9cb70e8b10ed5beb93adbc78cfc153d33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_06 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c4c3a8e-958d-56ca-b95e-1506b839bf72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"lx_evidentiality_epistemic_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_06 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('690fd03f-fd46-508c-a618-4379615597af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51cbc404-91ca-596e-a1ab-12ac4499d309', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('690fd03f-fd46-508c-a618-4379615597af', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"wf_evidentiality_epistemic_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_04 -> audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db179d8e-18cc-5ee9-879e-dc7b4ea2006a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dcc627f63c847fa0c334805aaeaa95094b03aecc8b3dd21742edaff342bef1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa91c8ab-5d95-5c76-861b-3a3c50eaf9bc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db179d8e-18cc-5ee9-879e-dc7b4ea2006a', 1), '1dcc627f63c847fa0c334805aaeaa95094b03aecc8b3dd21742edaff342bef1b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3', 1332, '2026-09-13 11:32:52.046237', 'd6b453e6168a42400b0455eefdb6dafc0857480cd74174ead89c525722d084ae', 'validated', '{"audio_key":"6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3","entity_key":"lx_cohesion_reference_dense_texts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6b453e6168a42400b0455eefdb6dafc0857480cd74174ead89c525722d084ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_04 -> audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('578236e8-3dab-5ddd-b0b2-8bda20ada5f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dcc627f63c847fa0c334805aaeaa95094b03aecc8b3dd21742edaff342bef1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cda500c-1f65-5747-961a-15de7844fe2e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('578236e8-3dab-5ddd-b0b2-8bda20ada5f9', 1), '1dcc627f63c847fa0c334805aaeaa95094b03aecc8b3dd21742edaff342bef1b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3', 1332, '2026-09-13 11:32:52.046237', 'd6b453e6168a42400b0455eefdb6dafc0857480cd74174ead89c525722d084ae', 'validated', '{"audio_key":"6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3","entity_key":"wf_cohesion_reference_dense_texts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6b453e6168a42400b0455eefdb6dafc0857480cd74174ead89c525722d084ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6bc42f494f6416fea157f7f09113bd513f7061725407689ad4868947e15638d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aff4bb1-be43-5c9e-8fc9-aa79c6e4f7ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"lx_expert_public_precision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('085fd2fd-2517-5f84-9a3a-420984483616', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7773dcb3-94c9-5458-87b5-0f5ba94f90d6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('085fd2fd-2517-5f84-9a3a-420984483616', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"wf_expert_public_precision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_01 -> audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5fcc8b8-a2ce-54b9-89d7-d52c5dcb00d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a980b2ada423893677dd46d4c2a763f7473c7a9c11da5094027191e244faa97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a139f4ed-8531-5318-bd7b-c9bfdda8c9d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5fcc8b8-a2ce-54b9-89d7-d52c5dcb00d1', 1), '9a980b2ada423893677dd46d4c2a763f7473c7a9c11da5094027191e244faa97',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3', 1280, '2026-09-13 11:32:52.659980', '2117a07cda91564591b2a57c0b62b310ff39343f14043deffc8b6a34cb09bd5e', 'validated', '{"audio_key":"75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c","entity_key":"lx_semantic_scope_ambiguity_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2117a07cda91564591b2a57c0b62b310ff39343f14043deffc8b6a34cb09bd5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_01 -> audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e975b87c-c7ae-587a-b46f-c0d306826414', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a980b2ada423893677dd46d4c2a763f7473c7a9c11da5094027191e244faa97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('014ebdb7-6b97-5e5d-8fe6-128f0f57d080', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e975b87c-c7ae-587a-b46f-c0d306826414', 1), '9a980b2ada423893677dd46d4c2a763f7473c7a9c11da5094027191e244faa97',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3', 1280, '2026-09-13 11:32:52.659980', '2117a07cda91564591b2a57c0b62b310ff39343f14043deffc8b6a34cb09bd5e', 'validated', '{"audio_key":"75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c","entity_key":"wf_semantic_scope_ambiguity_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2117a07cda91564591b2a57c0b62b310ff39343f14043deffc8b6a34cb09bd5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75c1c2d90d126f1328c9a15849361eab2bfe55090d2a9dcff172996d23a5f41c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_02 -> audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b70531a1-f2ab-55b1-99f5-9880b6da3afc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b623687-fafb-5662-948b-720f22268642', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b70531a1-f2ab-55b1-99f5-9880b6da3afc', 1), '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3', 1567, '2026-09-13 11:18:41.680018', '7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275', 'validated', '{"audio_key":"76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c","entity_key":"lx_audience_reformulation_technical_public_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_02 -> audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0a9ac2c-8797-5f38-99f4-8165ada380ad', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38a4fd67-e288-5943-87b9-798209b3a693', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0a9ac2c-8797-5f38-99f4-8165ada380ad', 1), '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3', 1567, '2026-09-13 11:18:41.680018', '7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275', 'validated', '{"audio_key":"76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c","entity_key":"wf_audience_reformulation_technical_public_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_05 -> audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('326605d6-d9e2-5942-a38f-aaf84623b6f0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c09f9ed7-9e7a-53d3-a8e5-78107fe0b7f3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('326605d6-d9e2-5942-a38f-aaf84623b6f0', 1), '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3', 966, '2026-09-13 11:32:52.965122', '9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792', 'validated', '{"audio_key":"78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832","entity_key":"lx_lossless_compression_summarization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_05 -> audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ede3245-1ba0-56c8-b148-2eddacf28d9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0bb124d-017b-5042-bb94-0f6e73f9c4d9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ede3245-1ba0-56c8-b148-2eddacf28d9d', 1), '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3', 966, '2026-09-13 11:32:52.965122', '9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792', 'validated', '{"audio_key":"78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832","entity_key":"wf_lossless_compression_summarization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_05 -> audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da0cf621-fa43-5308-ba40-895102de96c3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4331f9c5ca4dd7f4da5971154414a886ea74bfe8d342bf42e6f95c4ca60c6b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8569bd1f-5f0f-5fcd-ba62-651a8eea9594', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da0cf621-fa43-5308-ba40-895102de96c3', 1), 'd4331f9c5ca4dd7f4da5971154414a886ea74bfe8d342bf42e6f95c4ca60c6b1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3', 1253, '2026-09-13 11:32:53.614016', '8c8af986347a40f37811473743f8d9f1874a5beacc14eb0e17b8189d5186e723', 'validated', '{"audio_key":"79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b","entity_key":"lx_metacommunication_misunderstanding_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c8af986347a40f37811473743f8d9f1874a5beacc14eb0e17b8189d5186e723","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_05 -> audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8353ab44-df44-546b-a540-e9bf52ee2af0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4331f9c5ca4dd7f4da5971154414a886ea74bfe8d342bf42e6f95c4ca60c6b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81f0c577-9262-5e63-ab52-f56ae9d591e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8353ab44-df44-546b-a540-e9bf52ee2af0', 1), 'd4331f9c5ca4dd7f4da5971154414a886ea74bfe8d342bf42e6f95c4ca60c6b1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3', 1253, '2026-09-13 11:32:53.614016', '8c8af986347a40f37811473743f8d9f1874a5beacc14eb0e17b8189d5186e723', 'validated', '{"audio_key":"79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b","entity_key":"wf_metacommunication_misunderstanding_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c8af986347a40f37811473743f8d9f1874a5beacc14eb0e17b8189d5186e723","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79a189fcdabd79e22788112789e32be5b8f1f1bd3d850fff3ccc87f1da3a6a2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_03 -> audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8b442a3-172d-5456-9b9b-62a0867bf33f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e199667a9f558eabe9a5dfd38a7639cb9c6ba7714db97caf4b470a0a1b8f1bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68632ae9-c157-5628-98d5-5a403c2e417f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8b442a3-172d-5456-9b9b-62a0867bf33f', 1), '9e199667a9f558eabe9a5dfd38a7639cb9c6ba7714db97caf4b470a0a1b8f1bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3', 1906, '2026-09-13 11:32:53.993306', '1a67bbc20960b708fc882a6bc597f56def5ee1b4a6b619c0abe4e64b69515072', 'validated', '{"audio_key":"7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a","entity_key":"lx_expert_public_precision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a67bbc20960b708fc882a6bc597f56def5ee1b4a6b619c0abe4e64b69515072","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_03 -> audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a5fe8dd-a830-50d1-a335-27da5e0aac41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e199667a9f558eabe9a5dfd38a7639cb9c6ba7714db97caf4b470a0a1b8f1bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43ceb01f-0828-52c3-897f-c520b02abc07', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a5fe8dd-a830-50d1-a335-27da5e0aac41', 1), '9e199667a9f558eabe9a5dfd38a7639cb9c6ba7714db97caf4b470a0a1b8f1bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3', 1906, '2026-09-13 11:32:53.993306', '1a67bbc20960b708fc882a6bc597f56def5ee1b4a6b619c0abe4e64b69515072', 'validated', '{"audio_key":"7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a","entity_key":"wf_expert_public_precision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a67bbc20960b708fc882a6bc597f56def5ee1b4a6b619c0abe4e64b69515072","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a65bd024755417bb871bd656973309d30a0149ca140f131d266fe1f83adf73a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_05 -> audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0da159de-ec6f-5f2f-b177-6d0dabee8adf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63afc3ef0942d3b3ef3616d728d6f7b7610f869f7efd30ffdfb77525d76bbf3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04c85810-a8f3-5839-96b1-3c89046e2a36', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0da159de-ec6f-5f2f-b177-6d0dabee8adf', 1), '63afc3ef0942d3b3ef3616d728d6f7b7610f869f7efd30ffdfb77525d76bbf3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3', 1097, '2026-09-13 11:32:54.575635', '7eae1020c445b8e5eea40b9addcb46bd99ebcb97706da922332e9b07448dd994', 'validated', '{"audio_key":"7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02","entity_key":"lx_cohesion_reference_dense_texts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7eae1020c445b8e5eea40b9addcb46bd99ebcb97706da922332e9b07448dd994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_05 -> audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aa8500d0-0ede-57e2-ad0a-d6d264e95b2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63afc3ef0942d3b3ef3616d728d6f7b7610f869f7efd30ffdfb77525d76bbf3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e135a863-20d9-5921-8e80-fb1760d072f6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aa8500d0-0ede-57e2-ad0a-d6d264e95b2c', 1), '63afc3ef0942d3b3ef3616d728d6f7b7610f869f7efd30ffdfb77525d76bbf3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3', 1097, '2026-09-13 11:32:54.575635', '7eae1020c445b8e5eea40b9addcb46bd99ebcb97706da922332e9b07448dd994', 'validated', '{"audio_key":"7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02","entity_key":"wf_cohesion_reference_dense_texts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7eae1020c445b8e5eea40b9addcb46bd99ebcb97706da922332e9b07448dd994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b6db58f090b0a31bcaea70327b1a93a5c19e3bfefb63640ee4af2e3b9771d02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_04 -> audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e447824-7a36-58f8-a8de-c6f7021095aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c83a09f7-4f4b-5491-b65b-a76c42a830c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e447824-7a36-58f8-a8de-c6f7021095aa', 1), '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3', 1018, '2026-09-13 08:16:37.725943', '56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f', 'validated', '{"audio_key":"7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219","entity_key":"lx_evidentiality_epistemic_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_04 -> audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a08e9b3-bbe4-56bd-afe6-0e227a82574d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a417c87-dca1-5b8e-90d2-064b867268a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a08e9b3-bbe4-56bd-afe6-0e227a82574d', 1), '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3', 1018, '2026-09-13 08:16:37.725943', '56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f', 'validated', '{"audio_key":"7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219","entity_key":"wf_evidentiality_epistemic_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_06 -> audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43fa0188-bba2-51cb-bde1-306bfbc91780', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8153f946299be9576e7330e73576aae68c0344bca31f9572de31fc388a828f83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c221ce9e-b89b-5876-b3b0-34f1e28fc101', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43fa0188-bba2-51cb-bde1-306bfbc91780', 1), '8153f946299be9576e7330e73576aae68c0344bca31f9572de31fc388a828f83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3', 1332, '2026-09-13 11:32:54.961442', 'd216a08ce394337981d901601c90122306bb4063b2c9be4295dab9131fb1581d', 'validated', '{"audio_key":"8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9","entity_key":"lx_live_debate_interruption_reframing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d216a08ce394337981d901601c90122306bb4063b2c9be4295dab9131fb1581d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_06 -> audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ca93fb0-307f-58af-adff-768af1ed6d70', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8153f946299be9576e7330e73576aae68c0344bca31f9572de31fc388a828f83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('051adf23-a445-5d98-9bb1-92375fc035b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ca93fb0-307f-58af-adff-768af1ed6d70', 1), '8153f946299be9576e7330e73576aae68c0344bca31f9572de31fc388a828f83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3', 1332, '2026-09-13 11:32:54.961442', 'd216a08ce394337981d901601c90122306bb4063b2c9be4295dab9131fb1581d', 'validated', '{"audio_key":"8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9","entity_key":"wf_live_debate_interruption_reframing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d216a08ce394337981d901601c90122306bb4063b2c9be4295dab9131fb1581d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8184fb731395647116e5f827fca2f49a9d4eefbcbb97df464a1f85bbe3aed5f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_04 -> audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a6c87ef-73ee-5d89-84fd-b57e17519ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3e03223-490c-565c-9740-8953948571f3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a6c87ef-73ee-5d89-84fd-b57e17519ec2', 1), '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3', 1149, '2026-09-13 11:32:55.535554', '9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f', 'validated', '{"audio_key":"87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547","entity_key":"lx_modal_commitment_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_04 -> audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6242924-0888-56d3-8538-2b80b0f8de70', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9c9712a-b523-5976-8548-b1e164b98fb9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6242924-0888-56d3-8538-2b80b0f8de70', 1), '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3', 1149, '2026-09-13 11:32:55.535554', '9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f', 'validated', '{"audio_key":"87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547","entity_key":"wf_modal_commitment_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_02 -> audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c3e74d31-7ae9-53df-99e5-2379b24274c4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '024800efcefb07e8cbb01f0cc387369f3f69abdc4e80e4f0c5ea1bbac435c016'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3360e22-71f5-566a-93d1-8c9183979db7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c3e74d31-7ae9-53df-99e5-2379b24274c4', 1), '024800efcefb07e8cbb01f0cc387369f3f69abdc4e80e4f0c5ea1bbac435c016',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3', 1018, '2026-09-13 11:32:55.936454', 'c43cecf177e02cc72319222b3df054e084b74a090324c1c8a8024248328a3602', 'validated', '{"audio_key":"88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477","entity_key":"lx_live_debate_interruption_reframing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c43cecf177e02cc72319222b3df054e084b74a090324c1c8a8024248328a3602","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_02 -> audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('069c5445-ecc4-540b-b87e-06ed61127ae8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '024800efcefb07e8cbb01f0cc387369f3f69abdc4e80e4f0c5ea1bbac435c016'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc3234d1-f3ec-5ef0-b141-3077fe2d03b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('069c5445-ecc4-540b-b87e-06ed61127ae8', 1), '024800efcefb07e8cbb01f0cc387369f3f69abdc4e80e4f0c5ea1bbac435c016',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3', 1018, '2026-09-13 11:32:55.936454', 'c43cecf177e02cc72319222b3df054e084b74a090324c1c8a8024248328a3602', 'validated', '{"audio_key":"88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477","entity_key":"wf_live_debate_interruption_reframing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c43cecf177e02cc72319222b3df054e084b74a090324c1c8a8024248328a3602","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88f97d646fa48364d3ce5a9b60ad4b38d72965980145e2d1da8e535807aa8477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_03 -> audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4f478c2b-b2ae-5712-a953-9de3ba0f88ea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a905d4a9e211ce9860b9315f581d89c9846727044b0e96be3499e3fa82787dc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5bca400-e722-5d47-a660-a691311ff327', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4f478c2b-b2ae-5712-a953-9de3ba0f88ea', 1), 'a905d4a9e211ce9860b9315f581d89c9846727044b0e96be3499e3fa82787dc1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3', 1149, '2026-09-13 11:32:56.515021', '544c805fffc620e1310beee18201229d3e029d2852464d0956bfdc5b87b49927', 'validated', '{"audio_key":"89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86","entity_key":"lx_evidentiality_epistemic_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544c805fffc620e1310beee18201229d3e029d2852464d0956bfdc5b87b49927","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_03 -> audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e028da9-b97f-57f0-a03e-9b3ecc273365', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a905d4a9e211ce9860b9315f581d89c9846727044b0e96be3499e3fa82787dc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b3e8950-2d83-571a-b22d-71ee76f6c542', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e028da9-b97f-57f0-a03e-9b3ecc273365', 1), 'a905d4a9e211ce9860b9315f581d89c9846727044b0e96be3499e3fa82787dc1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3', 1149, '2026-09-13 11:32:56.515021', '544c805fffc620e1310beee18201229d3e029d2852464d0956bfdc5b87b49927', 'validated', '{"audio_key":"89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86","entity_key":"wf_evidentiality_epistemic_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544c805fffc620e1310beee18201229d3e029d2852464d0956bfdc5b87b49927","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/89c1f5fea4bd2edc1db24e2a82ffc934b1c91eb1959554c8f715e53c31703f86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_06 -> audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3226a6f5-0fed-504e-af33-9934797b87fe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc1b3dc3b7babdf00ce0ec35d71c6c21f956fedfd21f4c9b476eeb57e27f0c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601066fc-fdc8-5a29-9a38-9856657826fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3226a6f5-0fed-504e-af33-9934797b87fe', 1), 'dcc1b3dc3b7babdf00ce0ec35d71c6c21f956fedfd21f4c9b476eeb57e27f0c5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3', 1071, '2026-09-13 11:32:56.889019', 'fb4552bfd200eff8179967a3a4006eda688e67869deccd737536db55ef63ba1e', 'validated', '{"audio_key":"8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c","entity_key":"lx_semantic_scope_ambiguity_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb4552bfd200eff8179967a3a4006eda688e67869deccd737536db55ef63ba1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_06 -> audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e0c9ec7e-284c-51ed-8d02-b04e9b3a32e7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc1b3dc3b7babdf00ce0ec35d71c6c21f956fedfd21f4c9b476eeb57e27f0c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20947876-9201-536f-bfd2-4e6c44cf9ec8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e0c9ec7e-284c-51ed-8d02-b04e9b3a32e7', 1), 'dcc1b3dc3b7babdf00ce0ec35d71c6c21f956fedfd21f4c9b476eeb57e27f0c5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3', 1071, '2026-09-13 11:32:56.889019', 'fb4552bfd200eff8179967a3a4006eda688e67869deccd737536db55ef63ba1e', 'validated', '{"audio_key":"8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c","entity_key":"wf_semantic_scope_ambiguity_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb4552bfd200eff8179967a3a4006eda688e67869deccd737536db55ef63ba1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f12df343e46b6fb1db376d676ae84684c84919c08f0a03d90d9c3a5c69ae00c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_02 -> audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4bd450e1-6051-59a1-b5b2-168fabef9bbb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb65751b417bd961e9990b6c153ae052acd9d83a52b0878b440203edc04f1b4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48ae39f0-71cf-5c35-9818-7e07f088348f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4bd450e1-6051-59a1-b5b2-168fabef9bbb', 1), 'fb65751b417bd961e9990b6c153ae052acd9d83a52b0878b440203edc04f1b4e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3', 1515, '2026-09-13 11:32:57.481709', 'c0c0cdf59f65b17756fe9b0fc764447e940c76ed139d5b88fadeff902a27fcc6', 'validated', '{"audio_key":"90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148","entity_key":"lx_semantic_scope_ambiguity_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0c0cdf59f65b17756fe9b0fc764447e940c76ed139d5b88fadeff902a27fcc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_02 -> audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18985cf8-da0e-52fb-904c-af122398aa21', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb65751b417bd961e9990b6c153ae052acd9d83a52b0878b440203edc04f1b4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1a17f06-9869-5ef5-8569-657ec8868e54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18985cf8-da0e-52fb-904c-af122398aa21', 1), 'fb65751b417bd961e9990b6c153ae052acd9d83a52b0878b440203edc04f1b4e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3', 1515, '2026-09-13 11:32:57.481709', 'c0c0cdf59f65b17756fe9b0fc764447e940c76ed139d5b88fadeff902a27fcc6', 'validated', '{"audio_key":"90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148","entity_key":"wf_semantic_scope_ambiguity_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0c0cdf59f65b17756fe9b0fc764447e940c76ed139d5b88fadeff902a27fcc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90adc26f030b82c2ec221e5cf6d0f6036e3e02cfa240d8486ef89974142ed148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_01 -> audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ea2e78c-3455-5154-8dd6-08c3964bd4eb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f83604194e27c6f8b1ac76404b8d15e6388fd778745daf96ba36eb6ddd07748'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('006c8516-90ad-57c5-9c40-373f8c3ccbee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ea2e78c-3455-5154-8dd6-08c3964bd4eb', 1), '1f83604194e27c6f8b1ac76404b8d15e6388fd778745daf96ba36eb6ddd07748',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3', 1384, '2026-09-13 11:32:57.850925', '5ae364570cb822764cf77a3b3f2094ca71bff99becfc9ab7b9f81ef4a90d22ff', 'validated', '{"audio_key":"91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f","entity_key":"lx_cohesion_reference_dense_texts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ae364570cb822764cf77a3b3f2094ca71bff99becfc9ab7b9f81ef4a90d22ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_01 -> audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e36b9723-7652-586a-b4fb-0654a83c4e55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f83604194e27c6f8b1ac76404b8d15e6388fd778745daf96ba36eb6ddd07748'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bdc3e43-c652-58e7-861a-843fad81dc86', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e36b9723-7652-586a-b4fb-0654a83c4e55', 1), '1f83604194e27c6f8b1ac76404b8d15e6388fd778745daf96ba36eb6ddd07748',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3', 1384, '2026-09-13 11:32:57.850925', '5ae364570cb822764cf77a3b3f2094ca71bff99becfc9ab7b9f81ef4a90d22ff', 'validated', '{"audio_key":"91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f","entity_key":"wf_cohesion_reference_dense_texts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ae364570cb822764cf77a3b3f2094ca71bff99becfc9ab7b9f81ef4a90d22ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/91f47379d4435c7f401ee7c3a4880d920f446308b91c02acc5f0b1daec1b8d7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_02 -> audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d53510e7-a9ad-5526-ba0b-f00a195337cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea5fbcc6-8241-5cf5-b4f6-1c9205ae8ac0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d53510e7-a9ad-5526-ba0b-f00a195337cf', 1), '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3', 1436, '2026-09-13 11:32:58.659757', 'de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c', 'validated', '{"audio_key":"969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043","entity_key":"lx_terminology_negotiation_concept_boundaries_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_02 -> audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8f9ac95-f6f2-52e9-8bfa-d7f4b055518b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79f8c366-56f1-571f-8997-6b42e5ccddfc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8f9ac95-f6f2-52e9-8bfa-d7f4b055518b', 1), '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3', 1436, '2026-09-13 11:32:58.659757', 'de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c', 'validated', '{"audio_key":"969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043","entity_key":"wf_terminology_negotiation_concept_boundaries_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_03 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9efd8281-5208-57b2-80a4-ebc8db8d83db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"lx_lossless_compression_summarization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_03 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('30f46b22-9a27-559f-a017-cc23ab7b3581', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cce6864-9bc0-5b43-b09b-5b6cea684d6f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('30f46b22-9a27-559f-a017-cc23ab7b3581', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"wf_lossless_compression_summarization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_scope_ambiguity_05 -> audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73b89a21-d886-516b-bae7-231efe3cb118', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_scope_ambiguity_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834a6f37616ebf9274d0eeddf3ba4b2a3d87b3e8dc39970bca5b31160bbc53f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e49125aa-b6d0-5f3d-b559-1ad2b9bc96ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73b89a21-d886-516b-bae7-231efe3cb118', 1), '834a6f37616ebf9274d0eeddf3ba4b2a3d87b3e8dc39970bca5b31160bbc53f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3', 1149, '2026-09-13 11:32:58.844460', '65270aa9b00bb445ad02c4c063933467e2dad988577324fcd7576c3a7de6d250', 'validated', '{"audio_key":"9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2","entity_key":"lx_semantic_scope_ambiguity_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65270aa9b00bb445ad02c4c063933467e2dad988577324fcd7576c3a7de6d250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_scope_ambiguity_05 -> audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82c85789-9361-5a4e-9101-8845f496cb13', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_scope_ambiguity_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834a6f37616ebf9274d0eeddf3ba4b2a3d87b3e8dc39970bca5b31160bbc53f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac691943-4ac2-5cf9-b376-6e4db681f9af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82c85789-9361-5a4e-9101-8845f496cb13', 1), '834a6f37616ebf9274d0eeddf3ba4b2a3d87b3e8dc39970bca5b31160bbc53f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3', 1149, '2026-09-13 11:32:58.844460', '65270aa9b00bb445ad02c4c063933467e2dad988577324fcd7576c3a7de6d250', 'validated', '{"audio_key":"9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2","entity_key":"wf_semantic_scope_ambiguity_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65270aa9b00bb445ad02c4c063933467e2dad988577324fcd7576c3a7de6d250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e508562196106ddfc8a43e909e4916757c5371ad15f0daddb4d26dcadf3e9c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_06 -> audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ff63d9b-a715-5be2-87fb-25cb6d786151', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('686c9070-a994-52f5-9bcb-831ede997bbb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ff63d9b-a715-5be2-87fb-25cb6d786151', 1), 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3', 1384, '2026-09-13 11:32:59.618130', '924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee', 'validated', '{"audio_key":"9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116","entity_key":"lx_metacommunication_misunderstanding_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_06 -> audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ff067ad-ba30-576f-a476-fc63900e6274', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bc5635e-7f70-536d-acf9-031c7e934b29', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ff067ad-ba30-576f-a476-fc63900e6274', 1), 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3', 1384, '2026-09-13 11:32:59.618130', '924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee', 'validated', '{"audio_key":"9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116","entity_key":"wf_metacommunication_misunderstanding_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_01 -> audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bcbf5387-ad79-55b9-83e3-6c68fd63e9ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ac851474cc0fc512656450e49573155f4d2ee7da8bc0a992d3b55af833c4e85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb6219a1-b96c-5879-bacb-eb258304b912', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bcbf5387-ad79-55b9-83e3-6c68fd63e9ff', 1), '0ac851474cc0fc512656450e49573155f4d2ee7da8bc0a992d3b55af833c4e85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3', 1332, '2026-09-13 11:32:59.801579', '00a568a6e97377286cb4511822e5fa4fb60d0e6fb15b4c603eb93cb2618bb136', 'validated', '{"audio_key":"a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32","entity_key":"lx_audience_reformulation_technical_public_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00a568a6e97377286cb4511822e5fa4fb60d0e6fb15b4c603eb93cb2618bb136","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_01 -> audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('79eb3b52-3c19-520d-ada0-70d7c4913944', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ac851474cc0fc512656450e49573155f4d2ee7da8bc0a992d3b55af833c4e85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eb45168-7100-5533-82f5-b412e547a479', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('79eb3b52-3c19-520d-ada0-70d7c4913944', 1), '0ac851474cc0fc512656450e49573155f4d2ee7da8bc0a992d3b55af833c4e85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3', 1332, '2026-09-13 11:32:59.801579', '00a568a6e97377286cb4511822e5fa4fb60d0e6fb15b4c603eb93cb2618bb136', 'validated', '{"audio_key":"a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32","entity_key":"wf_audience_reformulation_technical_public_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00a568a6e97377286cb4511822e5fa4fb60d0e6fb15b4c603eb93cb2618bb136","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a518b5547fa353fdb0de539155f08e1da8ad89830f4d0bac4d4d90766b139e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_02 -> audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ecac0891-cea7-5c9d-a81e-f4e09052801c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ed769a770ba22519097a360d40e09613ecebad249b29a8af6bb1c716f2d4c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43e8beab-106f-5c8e-9ba1-fd81194e43c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ecac0891-cea7-5c9d-a81e-f4e09052801c', 1), '4ed769a770ba22519097a360d40e09613ecebad249b29a8af6bb1c716f2d4c65',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3', 1149, '2026-09-13 11:33:00.605820', '9271cfcf82a4aa83d56cbd753a0862cc451980c1fe46a952bc0a5fca3b63739e', 'validated', '{"audio_key":"b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7","entity_key":"lx_cohesion_reference_dense_texts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9271cfcf82a4aa83d56cbd753a0862cc451980c1fe46a952bc0a5fca3b63739e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_02 -> audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b72f97da-b0cd-5ed9-ac5a-787626898d54', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ed769a770ba22519097a360d40e09613ecebad249b29a8af6bb1c716f2d4c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c54dad12-64c2-5d2b-aee7-a8c33347f000', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b72f97da-b0cd-5ed9-ac5a-787626898d54', 1), '4ed769a770ba22519097a360d40e09613ecebad249b29a8af6bb1c716f2d4c65',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3', 1149, '2026-09-13 11:33:00.605820', '9271cfcf82a4aa83d56cbd753a0862cc451980c1fe46a952bc0a5fca3b63739e', 'validated', '{"audio_key":"b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7","entity_key":"wf_cohesion_reference_dense_texts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9271cfcf82a4aa83d56cbd753a0862cc451980c1fe46a952bc0a5fca3b63739e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b66aca4b35bba9a75b33ac006b68d64545ccb3570e525d8917a1d2a424d084b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_audience_reformulation_technical_public_05 -> audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('863e856b-57ff-5199-b420-c056648674b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_audience_reformulation_technical_public_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07dfdf9e6c40fa3aa3d84955557460c532e048f4eb34fff10d3c59f32a9c8f1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29565e12-5ab1-598c-b14c-847577f6a49c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('863e856b-57ff-5199-b420-c056648674b7', 1), '07dfdf9e6c40fa3aa3d84955557460c532e048f4eb34fff10d3c59f32a9c8f1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3', 1149, '2026-09-13 11:33:00.757177', 'b807d3e969c80ed8aa8be8b2de0a598f2b936e38b8e7490e357cebeb9282bfe2', 'validated', '{"audio_key":"b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9","entity_key":"lx_audience_reformulation_technical_public_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b807d3e969c80ed8aa8be8b2de0a598f2b936e38b8e7490e357cebeb9282bfe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_audience_reformulation_technical_public_05 -> audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f08655e-b629-5689-95ee-1e68c2edc45d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_audience_reformulation_technical_public_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07dfdf9e6c40fa3aa3d84955557460c532e048f4eb34fff10d3c59f32a9c8f1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f577d5b0-d865-5c46-9e31-31cb2120deb1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f08655e-b629-5689-95ee-1e68c2edc45d', 1), '07dfdf9e6c40fa3aa3d84955557460c532e048f4eb34fff10d3c59f32a9c8f1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3', 1149, '2026-09-13 11:33:00.757177', 'b807d3e969c80ed8aa8be8b2de0a598f2b936e38b8e7490e357cebeb9282bfe2', 'validated', '{"audio_key":"b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9","entity_key":"wf_audience_reformulation_technical_public_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b807d3e969c80ed8aa8be8b2de0a598f2b936e38b8e7490e357cebeb9282bfe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bc41b3e04352ae3d26091a446f617b405aa37abe2bfb4636e3b805e0de98d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidentiality_epistemic_calibration_01 -> audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e00a0d8a-e850-5751-b6be-9c7d8b8a19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidentiality_epistemic_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc497a2674b97abc136873878293f8effa59e3e35f9dff0d63abcb77da1e9c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('989265b2-7ae2-559e-b4fa-730f2374f472', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e00a0d8a-e850-5751-b6be-9c7d8b8a19d2', 1), 'fc497a2674b97abc136873878293f8effa59e3e35f9dff0d63abcb77da1e9c39',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3', 1201, '2026-09-13 11:33:01.552804', '85a3e297ee085e491df22dc9d418545872d6091570a745101f0b765817ab248a', 'validated', '{"audio_key":"b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66","entity_key":"lx_evidentiality_epistemic_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85a3e297ee085e491df22dc9d418545872d6091570a745101f0b765817ab248a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidentiality_epistemic_calibration_01 -> audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb8f019b-6010-5f46-a7b5-646cbb8e526f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidentiality_epistemic_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc497a2674b97abc136873878293f8effa59e3e35f9dff0d63abcb77da1e9c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7f587d6-7998-5132-a7fb-1f18a5f2387c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb8f019b-6010-5f46-a7b5-646cbb8e526f', 1), 'fc497a2674b97abc136873878293f8effa59e3e35f9dff0d63abcb77da1e9c39',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3', 1201, '2026-09-13 11:33:01.552804', '85a3e297ee085e491df22dc9d418545872d6091570a745101f0b765817ab248a', 'validated', '{"audio_key":"b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66","entity_key":"wf_evidentiality_epistemic_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85a3e297ee085e491df22dc9d418545872d6091570a745101f0b765817ab248a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b993d238308afcf45ab03c864e6fe3a0a0464b23c44f0eb38909723b10d2dd66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_05 -> audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aaa51d76-b835-584b-bc84-a32f24d1f851', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14f8e1d18c915709234ad3cac642ef5f827f9c8d969e64b88d10eb9cc2b76b12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d62b6629-f159-5259-8062-ccd336040e8e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aaa51d76-b835-584b-bc84-a32f24d1f851', 1), '14f8e1d18c915709234ad3cac642ef5f827f9c8d969e64b88d10eb9cc2b76b12',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3', 1097, '2026-09-13 11:33:01.727569', '3b5963245a26b82e37f6293f58687bd406af84da6f066385f858e9910531a05b', 'validated', '{"audio_key":"bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a","entity_key":"lx_live_debate_interruption_reframing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b5963245a26b82e37f6293f58687bd406af84da6f066385f858e9910531a05b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_05 -> audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f691c9cf-127d-5038-8a93-6903ba184d69', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14f8e1d18c915709234ad3cac642ef5f827f9c8d969e64b88d10eb9cc2b76b12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2207601d-239b-5403-9dc1-706ef0ce84eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f691c9cf-127d-5038-8a93-6903ba184d69', 1), '14f8e1d18c915709234ad3cac642ef5f827f9c8d969e64b88d10eb9cc2b76b12',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3', 1097, '2026-09-13 11:33:01.727569', '3b5963245a26b82e37f6293f58687bd406af84da6f066385f858e9910531a05b', 'validated', '{"audio_key":"bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a","entity_key":"wf_live_debate_interruption_reframing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b5963245a26b82e37f6293f58687bd406af84da6f066385f858e9910531a05b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bc190e8ccbf60080882418a84af1f1e9a3c771f0575be930722e27d11ac0506a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_05 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1a1fd9f-4616-56bb-92d7-452a891f169a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"lx_modal_commitment_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_05 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e75c80c-64f0-5c1b-a8ad-972037f7bdd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99e7f191-e9b1-5fef-9cbe-a81b5546b658', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e75c80c-64f0-5c1b-a8ad-972037f7bdd6', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"wf_modal_commitment_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_public_precision_capstone_05 -> audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b37fdb0f-c7c9-500b-95e4-287470a6d8bf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_public_precision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7755994d-8002-5f47-b69f-6355a9efc747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b37fdb0f-c7c9-500b-95e4-287470a6d8bf', 1), '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3', 1097, '2026-09-13 09:41:06.499851', '544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4', 'validated', '{"audio_key":"c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c","entity_key":"lx_expert_public_precision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_public_precision_capstone_05 -> audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e05e4ee6-2814-5748-93b6-8283082c03ea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_public_precision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f28f5af3-fc26-5722-8096-c6b98837d252', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e05e4ee6-2814-5748-93b6-8283082c03ea', 1), '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3', 1097, '2026-09-13 09:41:06.499851', '544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4', 'validated', '{"audio_key":"c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c","entity_key":"wf_expert_public_precision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70cf655-7736-53b6-bef3-1deb3c1f1518', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"lx_live_debate_interruption_reframing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('98a3fc04-f883-5b02-9fef-5b4868535044', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7b733f0-dd22-5f2e-a2ef-8461d375c7a9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('98a3fc04-f883-5b02-9fef-5b4868535044', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"wf_live_debate_interruption_reframing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_01 -> audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52a00a87-2642-50b0-ad84-a74f66019900', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a9a34b0-2cf3-525b-ae8f-7b4c79ec9e8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52a00a87-2642-50b0-ad84-a74f66019900', 1), 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3', 1436, '2026-09-13 11:33:03.024373', '28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd', 'validated', '{"audio_key":"ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803","entity_key":"lx_terminology_negotiation_concept_boundaries_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_01 -> audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7480b72-9c47-575b-87bd-73ae46f8157d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba525b45-69b2-5f8f-97fe-304ab2da19f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7480b72-9c47-575b-87bd-73ae46f8157d', 1), 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3', 1436, '2026-09-13 11:33:03.024373', '28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd', 'validated', '{"audio_key":"ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803","entity_key":"wf_terminology_negotiation_concept_boundaries_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_06 -> audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02b23b9a-8e54-5fa3-a991-e71a6d58282c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc7271b07e82bee525164ac94a9532d85bec58ce0fd50824406d49525b4fbed4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50f1a3a3-bb18-53a8-b128-4fc1f2be1c7d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02b23b9a-8e54-5fa3-a991-e71a6d58282c', 1), 'fc7271b07e82bee525164ac94a9532d85bec58ce0fd50824406d49525b4fbed4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3', 1149, '2026-09-13 11:33:03.420205', '46b196d33d84de02937da395d97575f9a674305820363b85446b2f05ed253c49', 'validated', '{"audio_key":"d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911","entity_key":"lx_lossless_compression_summarization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46b196d33d84de02937da395d97575f9a674305820363b85446b2f05ed253c49","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_06 -> audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c699baa-0817-52b6-a068-6ace4eb0315c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc7271b07e82bee525164ac94a9532d85bec58ce0fd50824406d49525b4fbed4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc6e4811-8727-5f1b-a0ef-9ea876804e66', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c699baa-0817-52b6-a068-6ace4eb0315c', 1), 'fc7271b07e82bee525164ac94a9532d85bec58ce0fd50824406d49525b4fbed4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3', 1149, '2026-09-13 11:33:03.420205', '46b196d33d84de02937da395d97575f9a674305820363b85446b2f05ed253c49', 'validated', '{"audio_key":"d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911","entity_key":"wf_lossless_compression_summarization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46b196d33d84de02937da395d97575f9a674305820363b85446b2f05ed253c49","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d3117bc0e71e82ff8e445abf8ccba5ffe0647264e9c74faf07bb1976240bf911.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_06 -> audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c7cae9e9-2d5f-548c-b7e9-ce91bc1e99a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcaa82fd0d4787c9ebd283e88f751891b0c3cdd8d50784178f8b0778db274968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c464bba9-14ca-5d37-a5b9-a6388ca0f726', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c7cae9e9-2d5f-548c-b7e9-ce91bc1e99a0', 1), 'fcaa82fd0d4787c9ebd283e88f751891b0c3cdd8d50784178f8b0778db274968',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3', 1280, '2026-09-13 11:33:03.979455', '673bb5160f343d2c3da1d0e4c7e9ab21353a24ab4b155262fe7a4c7b89de7e30', 'validated', '{"audio_key":"d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e","entity_key":"lx_modal_commitment_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"673bb5160f343d2c3da1d0e4c7e9ab21353a24ab4b155262fe7a4c7b89de7e30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_06 -> audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb39f275-87a1-5bdd-ba01-1692f2c47c61', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcaa82fd0d4787c9ebd283e88f751891b0c3cdd8d50784178f8b0778db274968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af308b02-5c9b-5cd3-9cc2-938302e6dac9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb39f275-87a1-5bdd-ba01-1692f2c47c61', 1), 'fcaa82fd0d4787c9ebd283e88f751891b0c3cdd8d50784178f8b0778db274968',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3', 1280, '2026-09-13 11:33:03.979455', '673bb5160f343d2c3da1d0e4c7e9ab21353a24ab4b155262fe7a4c7b89de7e30', 'validated', '{"audio_key":"d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e","entity_key":"wf_modal_commitment_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"673bb5160f343d2c3da1d0e4c7e9ab21353a24ab4b155262fe7a4c7b89de7e30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d9c1000554561a0a81a98f7f0af98ea476b304c7b3c66f7bb51e190f91cef60e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d2623e-6265-57a4-ad7e-6eeca90e1ce9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"lx_metacommunication_misunderstanding_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0da411dc-394f-5bf7-9fe7-3e1ffbfee929', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b40359c7-595b-5ead-915c-2063d9d5aa90', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0da411dc-394f-5bf7-9fe7-3e1ffbfee929', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"wf_metacommunication_misunderstanding_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_modal_commitment_precision_01 -> audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d4f83c93-98c9-58fd-8356-e188303ee530', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_modal_commitment_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea3342e27808088c087bb90690ce986994aecb42f0a310b1a3943b7dc9dc4c6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5fce347-22a0-55a9-b83d-07c895b860a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d4f83c93-98c9-58fd-8356-e188303ee530', 1), 'ea3342e27808088c087bb90690ce986994aecb42f0a310b1a3943b7dc9dc4c6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3', 1436, '2026-09-13 11:33:04.398876', 'aef5dd08bd9d7735a2ddec662efe4f7dbb65dde7aab36bc43fc55c8cd648a40e', 'validated', '{"audio_key":"e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71","entity_key":"lx_modal_commitment_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aef5dd08bd9d7735a2ddec662efe4f7dbb65dde7aab36bc43fc55c8cd648a40e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_modal_commitment_precision_01 -> audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9de0ce2b-7bcf-522a-b68c-67277519c695', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_modal_commitment_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea3342e27808088c087bb90690ce986994aecb42f0a310b1a3943b7dc9dc4c6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbe889cd-7aae-50ad-bf3d-48aefd9c8446', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9de0ce2b-7bcf-522a-b68c-67277519c695', 1), 'ea3342e27808088c087bb90690ce986994aecb42f0a310b1a3943b7dc9dc4c6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3', 1436, '2026-09-13 11:33:04.398876', 'aef5dd08bd9d7735a2ddec662efe4f7dbb65dde7aab36bc43fc55c8cd648a40e', 'validated', '{"audio_key":"e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71","entity_key":"wf_modal_commitment_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aef5dd08bd9d7735a2ddec662efe4f7dbb65dde7aab36bc43fc55c8cd648a40e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e836bd594dedd8229c9b0de82b0434bf89f65e10321dde07beb0cc54e0fdbd71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_debate_interruption_reframing_03 -> audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a75de1f8-b69b-5962-8025-be6930e72e86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_debate_interruption_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3be9fb76-ff92-51ab-bc18-d1f3b13613b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a75de1f8-b69b-5962-8025-be6930e72e86', 1), 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3', 1332, '2026-09-13 10:21:32.529431', '70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8', 'validated', '{"audio_key":"e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724","entity_key":"lx_live_debate_interruption_reframing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_debate_interruption_reframing_03 -> audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4aca981d-22af-58d3-afce-1995326383c4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_debate_interruption_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d95d45c-40a2-529f-a56d-a65df44ec665', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4aca981d-22af-58d3-afce-1995326383c4', 1), 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3', 1332, '2026-09-13 10:21:32.529431', '70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8', 'validated', '{"audio_key":"e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724","entity_key":"wf_live_debate_interruption_reframing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesion_reference_dense_texts_03 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesion_reference_dense_texts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97eaf1d6-f1c2-534b-a928-0e42d06ad049', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"lx_cohesion_reference_dense_texts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesion_reference_dense_texts_03 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8dec3136-11db-553b-a5d9-22e77bd1f1b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesion_reference_dense_texts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9ba65a6-8426-537a-b994-5a52beb0c9ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8dec3136-11db-553b-a5d9-22e77bd1f1b9', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"wf_cohesion_reference_dense_texts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lossless_compression_summarization_02 -> audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27348032-7ca0-5d14-9599-fe032e74fafc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lossless_compression_summarization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e230610-0895-5e02-95f3-46645c5bd411', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27348032-7ca0-5d14-9599-fe032e74fafc', 1), 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3', 1201, '2026-09-13 11:33:04.931771', 'f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1', 'validated', '{"audio_key":"f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e","entity_key":"lx_lossless_compression_summarization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lossless_compression_summarization_02 -> audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b514c20-83d8-502f-b00b-8f6f7bd70f72', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lossless_compression_summarization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81a72a11-7629-5392-b40e-3e52bf74fcc1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b514c20-83d8-502f-b00b-8f6f7bd70f72', 1), 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3', 1201, '2026-09-13 11:33:04.931771', 'f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1', 'validated', '{"audio_key":"f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e","entity_key":"wf_lossless_compression_summarization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_terminology_negotiation_concept_boundaries_03 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_terminology_negotiation_concept_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c904f780-026a-56f0-8544-7b2e38c4ccdc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"lx_terminology_negotiation_concept_boundaries_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_terminology_negotiation_concept_boundaries_03 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a39e9ed-c4aa-5197-9972-799be65c8cf9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_terminology_negotiation_concept_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d87dfd2f-9191-56b8-b817-0581c8de3a11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a39e9ed-c4aa-5197-9972-799be65c8cf9', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"wf_terminology_negotiation_concept_boundaries_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metacommunication_misunderstanding_repair_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metacommunication_misunderstanding_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f905ca58-4aa4-5cd7-8df0-fedbffa44b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"lx_metacommunication_misunderstanding_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metacommunication_misunderstanding_repair_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('364d8f29-73d9-5291-a07f-30cc18b5369a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metacommunication_misunderstanding_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e651d48-1378-575a-87de-24208f019733', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('364d8f29-73d9-5291-a07f-30cc18b5369a', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"wf_metacommunication_misunderstanding_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_05 -> audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0a418cbd-6953-56ab-aa4a-464f6d24dde7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b0fd6f9cc26433add5598773608d1f4056640bc1ec4bcb32b5a37e0547f4a51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65ac65d8-046f-5654-9207-e13630d365d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0a418cbd-6953-56ab-aa4a-464f6d24dde7', 1), '8b0fd6f9cc26433add5598773608d1f4056640bc1ec4bcb32b5a37e0547f4a51',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3', 4257, '2026-09-13 11:33:05.665538', 'd34348047c2a5c32128980f168e5d5dff7e88d9274c7b8183cb9157cf230767f', 'validated', '{"audio_key":"011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d","entity_key":"u_modal_commitment_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d34348047c2a5c32128980f168e5d5dff7e88d9274c7b8183cb9157cf230767f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_modal_commitment_precision_03_listen -> audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('59386968-fd6d-5172-8b6e-fe3139afe64a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_modal_commitment_precision_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b0fd6f9cc26433add5598773608d1f4056640bc1ec4bcb32b5a37e0547f4a51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94d856d2-c284-5ed4-9219-bcaeec275db4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('59386968-fd6d-5172-8b6e-fe3139afe64a', 1), '8b0fd6f9cc26433add5598773608d1f4056640bc1ec4bcb32b5a37e0547f4a51',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3', 4257, '2026-09-13 11:33:05.665538', 'd34348047c2a5c32128980f168e5d5dff7e88d9274c7b8183cb9157cf230767f', 'validated', '{"audio_key":"011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d","entity_key":"ex_modal_commitment_precision_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d34348047c2a5c32128980f168e5d5dff7e88d9274c7b8183cb9157cf230767f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/011e5e6f514a6494c8521cf059e5255ef51365225119fe1b94f82a91cc0f357d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_05 -> audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d17bb3b-1364-5999-9aea-dd880dc96abf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '781ff922361f195dfd753d51b0dc932f90e9547147cba937f7233dc14059debb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cece345d-e1ca-5695-85c3-cff10fa7c0f4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d17bb3b-1364-5999-9aea-dd880dc96abf', 1), '781ff922361f195dfd753d51b0dc932f90e9547147cba937f7233dc14059debb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3', 5982, '2026-09-13 11:33:06.466468', '08616b49eb94428f7bb736ac2baed4afc55941b7d5bcc5c6d1336f0346f61431', 'validated', '{"audio_key":"031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4","entity_key":"u_lossless_compression_summarization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08616b49eb94428f7bb736ac2baed4afc55941b7d5bcc5c6d1336f0346f61431","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lossless_compression_summarization_03_listen -> audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ace6d060-f792-5e31-832a-508063e99845', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lossless_compression_summarization_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '781ff922361f195dfd753d51b0dc932f90e9547147cba937f7233dc14059debb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8defcbe4-dda7-5104-8d58-ce7ef25430cb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ace6d060-f792-5e31-832a-508063e99845', 1), '781ff922361f195dfd753d51b0dc932f90e9547147cba937f7233dc14059debb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3', 5982, '2026-09-13 11:33:06.466468', '08616b49eb94428f7bb736ac2baed4afc55941b7d5bcc5c6d1336f0346f61431', 'validated', '{"audio_key":"031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4","entity_key":"ex_lossless_compression_summarization_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08616b49eb94428f7bb736ac2baed4afc55941b7d5bcc5c6d1336f0346f61431","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/031f8bc7e4102132d77e4b1df1aafb4826a8092fbd574b0b841edaf1c948d0f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_06 -> audio/generated/de-DE/utterances/0542d5a9f3e38e9c0eca55f520e8312e5b3d2b36c34ceb59d4cc36fb4863aef6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d3025809-8056-5e16-8eec-c3a1e42cc482', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9042d50ac5fbbe114130ce69facc378f7e293752112cd8630e964648952b7cd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('563717a9-f961-5e3f-baa2-7e619566ba02', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d3025809-8056-5e16-8eec-c3a1e42cc482', 1), '9042d50ac5fbbe114130ce69facc378f7e293752112cd8630e964648952b7cd4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0542d5a9f3e38e9c0eca55f520e8312e5b3d2b36c34ceb59d4cc36fb4863aef6.mp3', 5250, '2026-09-13 11:33:07.097753', '8eb126259c9fae36bcd009dc8303dac45c59bf6347461ab85cbee5e601ccc0bd', 'validated', '{"audio_key":"0542d5a9f3e38e9c0eca55f520e8312e5b3d2b36c34ceb59d4cc36fb4863aef6","entity_key":"u_cohesion_reference_dense_texts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eb126259c9fae36bcd009dc8303dac45c59bf6347461ab85cbee5e601ccc0bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0542d5a9f3e38e9c0eca55f520e8312e5b3d2b36c34ceb59d4cc36fb4863aef6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_06 -> audio/generated/de-DE/utterances/061b7ad4829eaa99da0cde97c8218543511acb3e075f18b6ac73dfc837696fc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('84ed987d-bb1a-5360-aa67-cca2932fccb0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe39b3cd5d5e1617826ded10c6d096ad6860ab271d0f30f7e344baef6f5c701e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5701114-e3a6-5c6a-98c0-9fc3e44b2387', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('84ed987d-bb1a-5360-aa67-cca2932fccb0', 1), 'fe39b3cd5d5e1617826ded10c6d096ad6860ab271d0f30f7e344baef6f5c701e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/061b7ad4829eaa99da0cde97c8218543511acb3e075f18b6ac73dfc837696fc5.mp3', 6452, '2026-09-13 11:33:08.026798', '566e8aaf536e6fe0731bd7757f0a42d193795181bb7754a22b3111fc3b461078', 'validated', '{"audio_key":"061b7ad4829eaa99da0cde97c8218543511acb3e075f18b6ac73dfc837696fc5","entity_key":"u_expert_public_precision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"566e8aaf536e6fe0731bd7757f0a42d193795181bb7754a22b3111fc3b461078","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/061b7ad4829eaa99da0cde97c8218543511acb3e075f18b6ac73dfc837696fc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_04 -> audio/generated/de-DE/utterances/0643714afae90d1f66ddca187a71a8a260ab01f4d3b5bc59961da6c0b03a4e4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a193667-e620-5e58-8bf3-c171b419b0e4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74fd67d0ef3a5a95c65375842e4ca82371c2efc608c11802e7a8aa3a555af048'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0a3e46-d709-5766-8cb0-a32aeb58850b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a193667-e620-5e58-8bf3-c171b419b0e4', 1), '74fd67d0ef3a5a95c65375842e4ca82371c2efc608c11802e7a8aa3a555af048',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0643714afae90d1f66ddca187a71a8a260ab01f4d3b5bc59961da6c0b03a4e4e.mp3', 5668, '2026-09-13 11:33:08.586655', '1accad57d8f1247385a2a726d315e09e835854449c5c2a0a4b1071c59372adbf', 'validated', '{"audio_key":"0643714afae90d1f66ddca187a71a8a260ab01f4d3b5bc59961da6c0b03a4e4e","entity_key":"u_modal_commitment_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1accad57d8f1247385a2a726d315e09e835854449c5c2a0a4b1071c59372adbf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0643714afae90d1f66ddca187a71a8a260ab01f4d3b5bc59961da6c0b03a4e4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_01 -> audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('71ecb808-8f51-515f-8c11-83fc160dfb75', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bf57418e0cbf758117fa313b1dabb7647a771c1b7af19f29bc18655e57989c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2973fcea-5390-5d4a-b6ca-95f45a1a53ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('71ecb808-8f51-515f-8c11-83fc160dfb75', 1), '8bf57418e0cbf758117fa313b1dabb7647a771c1b7af19f29bc18655e57989c8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3', 5982, '2026-09-13 11:33:09.501498', 'd1b1804329f9caf7ff9b3e52cd5f578d86afb985e6175082a04110ced16e24d7', 'validated', '{"audio_key":"0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02","entity_key":"u_lossless_compression_summarization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1b1804329f9caf7ff9b3e52cd5f578d86afb985e6175082a04110ced16e24d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lossless_compression_summarization_01_listen -> audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1f2c4fb-1c00-5691-ada9-58508efd55a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lossless_compression_summarization_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bf57418e0cbf758117fa313b1dabb7647a771c1b7af19f29bc18655e57989c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daa38196-ca84-5974-b0ca-c0e0e07622de', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1f2c4fb-1c00-5691-ada9-58508efd55a7', 1), '8bf57418e0cbf758117fa313b1dabb7647a771c1b7af19f29bc18655e57989c8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3', 5982, '2026-09-13 11:33:09.501498', 'd1b1804329f9caf7ff9b3e52cd5f578d86afb985e6175082a04110ced16e24d7', 'validated', '{"audio_key":"0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02","entity_key":"ex_lossless_compression_summarization_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1b1804329f9caf7ff9b3e52cd5f578d86afb985e6175082a04110ced16e24d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cbbf088e913932085119956b1410b9332f3751b062865084a8504704d02cb02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_06 -> audio/generated/de-DE/utterances/1ac5165d7c186e8b36a2210a795df786920c3a4474bf01c996cd3de3cacb531c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1f887dbf-7f04-51d0-a121-abc0b911f22f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c725484fd3b4b212443aba3b6992ccaafa019d8e7c57f073a220d805e777a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c2a4ef3-947a-5dfa-85a3-d50399b6b7d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1f887dbf-7f04-51d0-a121-abc0b911f22f', 1), '1c725484fd3b4b212443aba3b6992ccaafa019d8e7c57f073a220d805e777a84',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ac5165d7c186e8b36a2210a795df786920c3a4474bf01c996cd3de3cacb531c.mp3', 5381, '2026-09-13 11:33:10.026216', '3a98e5a9be84ddeccb47e9cbcf084f54c4af56b7f42410608cbb7f060e21c808', 'validated', '{"audio_key":"1ac5165d7c186e8b36a2210a795df786920c3a4474bf01c996cd3de3cacb531c","entity_key":"u_modal_commitment_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a98e5a9be84ddeccb47e9cbcf084f54c4af56b7f42410608cbb7f060e21c808","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ac5165d7c186e8b36a2210a795df786920c3a4474bf01c996cd3de3cacb531c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_02 -> audio/generated/de-DE/utterances/21d70d0359c0058600a061fb44884b00ec7c2fc41a7c80d687e8edb3f13ed5a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16fa8dc0-7f0e-5804-87d3-70efc549487c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4507346d14a9de2266f0a9767a59f9b9725179bd1f38341409ed8c2f0409a061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ad2d215-ac32-5de2-8e00-1f2c3e2ae751', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16fa8dc0-7f0e-5804-87d3-70efc549487c', 1), '4507346d14a9de2266f0a9767a59f9b9725179bd1f38341409ed8c2f0409a061',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/21d70d0359c0058600a061fb44884b00ec7c2fc41a7c80d687e8edb3f13ed5a9.mp3', 4728, '2026-09-13 11:33:10.850658', '2f2daa3c6cb92b707427508b19605387c412fea57bd6069b3708186702f2dec9', 'validated', '{"audio_key":"21d70d0359c0058600a061fb44884b00ec7c2fc41a7c80d687e8edb3f13ed5a9","entity_key":"u_modal_commitment_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f2daa3c6cb92b707427508b19605387c412fea57bd6069b3708186702f2dec9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/21d70d0359c0058600a061fb44884b00ec7c2fc41a7c80d687e8edb3f13ed5a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_05 -> audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c3911ae5-8afb-5d09-9028-09c40f095969', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76e1b280510d5ba52abe5cc23c1cb80e5e87eb98efc08ad9ad5177ca181455aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f21e967-cc25-56ad-a504-7141d826a8b9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c3911ae5-8afb-5d09-9028-09c40f095969', 1), '76e1b280510d5ba52abe5cc23c1cb80e5e87eb98efc08ad9ad5177ca181455aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3', 6164, '2026-09-13 11:33:11.537922', '822584d92709a87bf6c7310e0b86a7ea1423d8ee40bb93b4707316ae423a8b01', 'validated', '{"audio_key":"28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d","entity_key":"u_expert_public_precision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"822584d92709a87bf6c7310e0b86a7ea1423d8ee40bb93b4707316ae423a8b01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_public_precision_capstone_03_listen -> audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('df43aba4-a94c-553b-bc9e-dcb2b52b91da', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_public_precision_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76e1b280510d5ba52abe5cc23c1cb80e5e87eb98efc08ad9ad5177ca181455aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('033f9d5f-e7ff-5220-b7ee-542da8969aed', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('df43aba4-a94c-553b-bc9e-dcb2b52b91da', 1), '76e1b280510d5ba52abe5cc23c1cb80e5e87eb98efc08ad9ad5177ca181455aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3', 6164, '2026-09-13 11:33:11.537922', '822584d92709a87bf6c7310e0b86a7ea1423d8ee40bb93b4707316ae423a8b01', 'validated', '{"audio_key":"28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d","entity_key":"ex_expert_public_precision_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"822584d92709a87bf6c7310e0b86a7ea1423d8ee40bb93b4707316ae423a8b01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/28e9ce370833f0e450efc0c081e57ec96cc4c02efabad1f78baaa918bbe84d0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_06 -> audio/generated/de-DE/utterances/3787c6a4d4bb553e2fa7343a878135b734d2b77630f9a29a55315bcbad6c0e13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4194a67f-33d5-5a5e-963e-178e7b1dfbb5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04bd1aefa185394ad721194280ecfc6c6977a2c8f8505d29c1c5e7bf8845c0a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0b289fc-64c5-5459-87c2-5118250af180', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4194a67f-33d5-5a5e-963e-178e7b1dfbb5', 1), '04bd1aefa185394ad721194280ecfc6c6977a2c8f8505d29c1c5e7bf8845c0a5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3787c6a4d4bb553e2fa7343a878135b734d2b77630f9a29a55315bcbad6c0e13.mp3', 4440, '2026-09-13 11:33:12.142412', 'ef1b4a1557d09d05ce1c17c9b0890d762a0d6cd5b9f5f093dde79ef55cefc347', 'validated', '{"audio_key":"3787c6a4d4bb553e2fa7343a878135b734d2b77630f9a29a55315bcbad6c0e13","entity_key":"u_semantic_scope_ambiguity_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef1b4a1557d09d05ce1c17c9b0890d762a0d6cd5b9f5f093dde79ef55cefc347","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3787c6a4d4bb553e2fa7343a878135b734d2b77630f9a29a55315bcbad6c0e13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_05 -> audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19b5efaa-6da8-5637-8248-f5281631bdf2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bc6fd4db6272bcae31e0f4300123c1964c5cd209e1c0f5b80a200d11c64797c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b6b9058-7ea0-5c13-a038-87aaef18c089', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19b5efaa-6da8-5637-8248-f5281631bdf2', 1), '0bc6fd4db6272bcae31e0f4300123c1964c5cd209e1c0f5b80a200d11c64797c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3', 6217, '2026-09-13 11:33:13.150642', '2dbebdb48b2fad3f49a080fbd5b961f68acd164f4b49eb6ba75ad7d281ae5df6', 'validated', '{"audio_key":"393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd","entity_key":"u_cohesion_reference_dense_texts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dbebdb48b2fad3f49a080fbd5b961f68acd164f4b49eb6ba75ad7d281ae5df6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cohesion_reference_dense_texts_03_listen -> audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1a271a6e-9ce1-54d9-ae05-1e1bd49274be', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cohesion_reference_dense_texts_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bc6fd4db6272bcae31e0f4300123c1964c5cd209e1c0f5b80a200d11c64797c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3db57f00-ca32-53e4-a125-fa2715ebf96c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1a271a6e-9ce1-54d9-ae05-1e1bd49274be', 1), '0bc6fd4db6272bcae31e0f4300123c1964c5cd209e1c0f5b80a200d11c64797c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3', 6217, '2026-09-13 11:33:13.150642', '2dbebdb48b2fad3f49a080fbd5b961f68acd164f4b49eb6ba75ad7d281ae5df6', 'validated', '{"audio_key":"393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd","entity_key":"ex_cohesion_reference_dense_texts_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dbebdb48b2fad3f49a080fbd5b961f68acd164f4b49eb6ba75ad7d281ae5df6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/393c8f571ca51fd4836f0161d6f512bf5b5b666bc9a21bac04ceed41e4b5c8cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_03 -> audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2637b5c6-82d0-57c2-a1b4-30739911ae61', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a836d332f4b23ab52b923b875bf521a03c00517678fd5ae5a737c06a8bc10977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c36ec419-716a-5d1d-b6ba-dec166c04b69', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2637b5c6-82d0-57c2-a1b4-30739911ae61', 1), 'a836d332f4b23ab52b923b875bf521a03c00517678fd5ae5a737c06a8bc10977',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3', 6504, '2026-09-13 11:33:13.781401', '8157d1ad7bcec9066d70721cf7071e2c5bfc400e3b32866f93c5a0f2d3df0b75', 'validated', '{"audio_key":"41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66","entity_key":"u_lossless_compression_summarization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8157d1ad7bcec9066d70721cf7071e2c5bfc400e3b32866f93c5a0f2d3df0b75","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lossless_compression_summarization_02_listen -> audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44fa1bdb-a4a9-5af9-8406-7bd8041e18c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lossless_compression_summarization_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a836d332f4b23ab52b923b875bf521a03c00517678fd5ae5a737c06a8bc10977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e4f64c2-6d24-590c-a1dd-8acd141c14c8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44fa1bdb-a4a9-5af9-8406-7bd8041e18c8', 1), 'a836d332f4b23ab52b923b875bf521a03c00517678fd5ae5a737c06a8bc10977',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3', 6504, '2026-09-13 11:33:13.781401', '8157d1ad7bcec9066d70721cf7071e2c5bfc400e3b32866f93c5a0f2d3df0b75', 'validated', '{"audio_key":"41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66","entity_key":"ex_lossless_compression_summarization_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8157d1ad7bcec9066d70721cf7071e2c5bfc400e3b32866f93c5a0f2d3df0b75","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/41445193839dfdbc2a85818bb26716a776b7905c95469ecd3f450501c5f4fb66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_05 -> audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7fe57fe-0ed4-5e20-b578-a82f6f4e3ecf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a01d9edceaf23470132f91b18a932fc44b3fea58029d4e13494975457f9648c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ee23d0c-b616-5de5-9b98-72042c050e87', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7fe57fe-0ed4-5e20-b578-a82f6f4e3ecf', 1), '9a01d9edceaf23470132f91b18a932fc44b3fea58029d4e13494975457f9648c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3', 4858, '2026-09-13 11:33:14.735171', '7af38a7bfb767f3bd988dcbf8291b9d93c1ea2395ca956ed84262dcc3d611e4c', 'validated', '{"audio_key":"45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a","entity_key":"u_metacommunication_misunderstanding_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7af38a7bfb767f3bd988dcbf8291b9d93c1ea2395ca956ed84262dcc3d611e4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metacommunication_misunderstanding_repair_03_listen -> audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c0ab518f-a475-5239-87d2-ed209f755b6b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metacommunication_misunderstanding_repair_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a01d9edceaf23470132f91b18a932fc44b3fea58029d4e13494975457f9648c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('817517bd-d6a1-5c1f-b74a-f0215a85c358', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c0ab518f-a475-5239-87d2-ed209f755b6b', 1), '9a01d9edceaf23470132f91b18a932fc44b3fea58029d4e13494975457f9648c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3', 4858, '2026-09-13 11:33:14.735171', '7af38a7bfb767f3bd988dcbf8291b9d93c1ea2395ca956ed84262dcc3d611e4c', 'validated', '{"audio_key":"45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a","entity_key":"ex_metacommunication_misunderstanding_repair_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7af38a7bfb767f3bd988dcbf8291b9d93c1ea2395ca956ed84262dcc3d611e4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/45261e361d535232fe79a862598eb84fdf6273eb1d07f1472ac3f559b9925a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_03 -> audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a97ba422-7fc0-514e-aaa8-ae07e840a9db', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '814c716af2aaed5fc0657ea05b2e43d65522743b5d06ad065b41de4e9ae03165'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8ddce88-f78b-565c-a3ff-dabfcaf5931e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a97ba422-7fc0-514e-aaa8-ae07e840a9db', 1), '814c716af2aaed5fc0657ea05b2e43d65522743b5d06ad065b41de4e9ae03165',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3', 4858, '2026-09-13 11:33:15.147887', '95cb6de79ed90f15815b1ad9fbddcc5b7892d89906b70c2678ab80e83df6d505', 'validated', '{"audio_key":"46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98","entity_key":"u_semantic_scope_ambiguity_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95cb6de79ed90f15815b1ad9fbddcc5b7892d89906b70c2678ab80e83df6d505","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_semantic_scope_ambiguity_02_listen -> audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('16e973ea-c63b-5f8c-b7fe-72b6d22430cb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_semantic_scope_ambiguity_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '814c716af2aaed5fc0657ea05b2e43d65522743b5d06ad065b41de4e9ae03165'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a14270df-4f4e-502f-9634-5621e5029bac', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('16e973ea-c63b-5f8c-b7fe-72b6d22430cb', 1), '814c716af2aaed5fc0657ea05b2e43d65522743b5d06ad065b41de4e9ae03165',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3', 4858, '2026-09-13 11:33:15.147887', '95cb6de79ed90f15815b1ad9fbddcc5b7892d89906b70c2678ab80e83df6d505', 'validated', '{"audio_key":"46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98","entity_key":"ex_semantic_scope_ambiguity_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95cb6de79ed90f15815b1ad9fbddcc5b7892d89906b70c2678ab80e83df6d505","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/46497e9ded6a140a7ce282bd35c6ff53a69e09b4e027c570b61510887fc5ad98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_03 -> audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de66189d-06eb-5858-b382-7ae40e2c45e8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8664b1badad12b8814eba70f512a30d57ef6901b5f187f620102407af1e57977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4272912a-4490-5c5e-a644-69d65e7ef28a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de66189d-06eb-5858-b382-7ae40e2c45e8', 1), '8664b1badad12b8814eba70f512a30d57ef6901b5f187f620102407af1e57977',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3', 6635, '2026-09-13 11:33:16.277742', 'a03ff9c020964362f10cd1c9952b0f4370066d8b8eb9c69a2379a246b610be97', 'validated', '{"audio_key":"4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08","entity_key":"u_expert_public_precision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a03ff9c020964362f10cd1c9952b0f4370066d8b8eb9c69a2379a246b610be97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_public_precision_capstone_02_listen -> audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8f792506-06c8-553b-a81e-050fa56329bb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_public_precision_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8664b1badad12b8814eba70f512a30d57ef6901b5f187f620102407af1e57977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5defea-b478-5ec1-84b2-b63ecf34e17d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8f792506-06c8-553b-a81e-050fa56329bb', 1), '8664b1badad12b8814eba70f512a30d57ef6901b5f187f620102407af1e57977',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3', 6635, '2026-09-13 11:33:16.277742', 'a03ff9c020964362f10cd1c9952b0f4370066d8b8eb9c69a2379a246b610be97', 'validated', '{"audio_key":"4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08","entity_key":"ex_expert_public_precision_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a03ff9c020964362f10cd1c9952b0f4370066d8b8eb9c69a2379a246b610be97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4cb6ca3c9fda7a0bb5605d8dca462327fd50b6e59696ed3cf52195c866634d08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_01 -> audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e0d153e-cad4-55ea-b2ca-cbe682bb10aa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93c77c52af042376af1ea66e671535a0bb82869997366a7b3ac626f762a44136'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c491332-c031-5f03-a776-9bcec4ca66c9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e0d153e-cad4-55ea-b2ca-cbe682bb10aa', 1), '93c77c52af042376af1ea66e671535a0bb82869997366a7b3ac626f762a44136',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3', 6452, '2026-09-13 11:33:16.656451', '4530800c088c47e08e360ca00b4f708824154612cb26c7ae6dc7c884199fd3a4', 'validated', '{"audio_key":"4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00","entity_key":"u_cohesion_reference_dense_texts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4530800c088c47e08e360ca00b4f708824154612cb26c7ae6dc7c884199fd3a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cohesion_reference_dense_texts_01_listen -> audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4dcbdc72-b654-5389-8cea-f6b02340e8e0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cohesion_reference_dense_texts_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93c77c52af042376af1ea66e671535a0bb82869997366a7b3ac626f762a44136'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0e28a18-80cb-5e66-9986-d8b604e3ecef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4dcbdc72-b654-5389-8cea-f6b02340e8e0', 1), '93c77c52af042376af1ea66e671535a0bb82869997366a7b3ac626f762a44136',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3', 6452, '2026-09-13 11:33:16.656451', '4530800c088c47e08e360ca00b4f708824154612cb26c7ae6dc7c884199fd3a4', 'validated', '{"audio_key":"4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00","entity_key":"ex_cohesion_reference_dense_texts_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4530800c088c47e08e360ca00b4f708824154612cb26c7ae6dc7c884199fd3a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4daab411f8919e9aa3469d7f0cd37d7e046ff2f46a9ede0ddeb5b18fb0af0c00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_03 -> audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('596206f9-7a6f-5750-a290-f10b9a3d7ea9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11ce4b1d1777568201ced3afb84f23f148b9df344f18867a294fdeb222a701b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bb5fac7-8e58-5ef0-94e7-4503efc86719', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('596206f9-7a6f-5750-a290-f10b9a3d7ea9', 1), '11ce4b1d1777568201ced3afb84f23f148b9df344f18867a294fdeb222a701b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3', 4127, '2026-09-13 11:33:17.580028', '32bca72bb1f95e91681126dc903d6a678f88bb58915fd1dc05729636fc74274b', 'validated', '{"audio_key":"5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02","entity_key":"u_terminology_negotiation_concept_boundaries_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32bca72bb1f95e91681126dc903d6a678f88bb58915fd1dc05729636fc74274b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_terminology_negotiation_concept_boundaries_02_listen -> audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b22ad9f1-b3b8-52ff-adc8-e08ae6c0f17a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_terminology_negotiation_concept_boundaries_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11ce4b1d1777568201ced3afb84f23f148b9df344f18867a294fdeb222a701b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29a8bc66-a42a-5cfb-a5b1-d66ce65f6222', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b22ad9f1-b3b8-52ff-adc8-e08ae6c0f17a', 1), '11ce4b1d1777568201ced3afb84f23f148b9df344f18867a294fdeb222a701b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3', 4127, '2026-09-13 11:33:17.580028', '32bca72bb1f95e91681126dc903d6a678f88bb58915fd1dc05729636fc74274b', 'validated', '{"audio_key":"5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02","entity_key":"ex_terminology_negotiation_concept_boundaries_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32bca72bb1f95e91681126dc903d6a678f88bb58915fd1dc05729636fc74274b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5057f2f9a39b82aefb5ad0f8824fb60cdc8fac7a0d49c82679fffbb9d5b41c02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_03 -> audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('00548e22-e7e8-5abd-87b2-ed5c658e39bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f8be545b1576fc9acf2185919f39ae035b1639aff3e19288028471bc73321f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b63f3a3b-6474-5a59-994b-f5f28d41a530', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('00548e22-e7e8-5abd-87b2-ed5c658e39bd', 1), '8f8be545b1576fc9acf2185919f39ae035b1639aff3e19288028471bc73321f7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3', 4911, '2026-09-13 11:33:18.076819', '3120b405b67ca245e090675df802d4fac1903caf2133b214e802674028ae3094', 'validated', '{"audio_key":"558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1","entity_key":"u_live_debate_interruption_reframing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3120b405b67ca245e090675df802d4fac1903caf2133b214e802674028ae3094","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_debate_interruption_reframing_02_listen -> audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b459f23-d716-574f-b00e-15e8c4f1a7df', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_debate_interruption_reframing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f8be545b1576fc9acf2185919f39ae035b1639aff3e19288028471bc73321f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14ca0e60-6d3a-5606-a519-75b4d34b5f7c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b459f23-d716-574f-b00e-15e8c4f1a7df', 1), '8f8be545b1576fc9acf2185919f39ae035b1639aff3e19288028471bc73321f7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3', 4911, '2026-09-13 11:33:18.076819', '3120b405b67ca245e090675df802d4fac1903caf2133b214e802674028ae3094', 'validated', '{"audio_key":"558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1","entity_key":"ex_live_debate_interruption_reframing_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3120b405b67ca245e090675df802d4fac1903caf2133b214e802674028ae3094","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/558a54f7943539d0210637b28fca3b4ccef02071e6427a2d2105c9d78dc590c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_04 -> audio/generated/de-DE/utterances/594e01204014d5c1bf9bd255bde6ea6d367ca32856e3abc0749d2e1f4a3ce9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46a5c0d2-7dd5-5ecd-8f22-d008b691740b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34c7a322ce9808464919bf16f8e9925587e1942293d23cd7b9983a9e822e72f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cb186a8-de3d-5e57-99ec-b8fa80af6271', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46a5c0d2-7dd5-5ecd-8f22-d008b691740b', 1), '34c7a322ce9808464919bf16f8e9925587e1942293d23cd7b9983a9e822e72f2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/594e01204014d5c1bf9bd255bde6ea6d367ca32856e3abc0749d2e1f4a3ce9e9.mp3', 5146, '2026-09-13 11:33:19.036401', 'aae59e924138c0a81af4de7eb492443acd29e154039a2dfbba6f1877e4207905', 'validated', '{"audio_key":"594e01204014d5c1bf9bd255bde6ea6d367ca32856e3abc0749d2e1f4a3ce9e9","entity_key":"u_cohesion_reference_dense_texts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aae59e924138c0a81af4de7eb492443acd29e154039a2dfbba6f1877e4207905","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/594e01204014d5c1bf9bd255bde6ea6d367ca32856e3abc0749d2e1f4a3ce9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_02 -> audio/generated/de-DE/utterances/5e215554d12e988c8e8413715f7202b3e9eb976e45e98e15f82676ee934c3bf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('330c2573-29bf-5de7-b0ae-2e75d10d93d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d88bd9698073e05b902af3fd28c381bfeb1c1a6dc69098e0a5326164c76e0b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6328838f-8726-56c3-81a1-57fffb9c1593', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('330c2573-29bf-5de7-b0ae-2e75d10d93d5', 1), '6d88bd9698073e05b902af3fd28c381bfeb1c1a6dc69098e0a5326164c76e0b7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e215554d12e988c8e8413715f7202b3e9eb976e45e98e15f82676ee934c3bf8.mp3', 4832, '2026-09-13 11:33:19.514242', '7c3b5e9f1f01c9c72e76f4422acab9e1c9ab6fda21f843d40d92e238ba212dcf', 'validated', '{"audio_key":"5e215554d12e988c8e8413715f7202b3e9eb976e45e98e15f82676ee934c3bf8","entity_key":"u_semantic_scope_ambiguity_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c3b5e9f1f01c9c72e76f4422acab9e1c9ab6fda21f843d40d92e238ba212dcf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e215554d12e988c8e8413715f7202b3e9eb976e45e98e15f82676ee934c3bf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_05 -> audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c34b5ac3-57a8-52e9-8d6e-b551cc79a53d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3a38cc36903f0083852a6918567472573d15153edb6040367a9da6b19e0fdcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0f01e77-6b46-5285-ab8b-6887ebd5839e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c34b5ac3-57a8-52e9-8d6e-b551cc79a53d', 1), 'c3a38cc36903f0083852a6918567472573d15153edb6040367a9da6b19e0fdcf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3', 5877, '2026-09-13 11:33:20.545507', '6fe44f264a55892c7ca08dadeb50c15030556c9eb4cbbdf07d62879f0d6fe107', 'validated', '{"audio_key":"5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed","entity_key":"u_evidentiality_epistemic_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fe44f264a55892c7ca08dadeb50c15030556c9eb4cbbdf07d62879f0d6fe107","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidentiality_epistemic_calibration_03_listen -> audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ef58e919-bd17-5991-8592-99f96cdce036', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidentiality_epistemic_calibration_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3a38cc36903f0083852a6918567472573d15153edb6040367a9da6b19e0fdcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7f87317-83c1-55e4-946a-02cd28887215', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ef58e919-bd17-5991-8592-99f96cdce036', 1), 'c3a38cc36903f0083852a6918567472573d15153edb6040367a9da6b19e0fdcf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3', 5877, '2026-09-13 11:33:20.545507', '6fe44f264a55892c7ca08dadeb50c15030556c9eb4cbbdf07d62879f0d6fe107', 'validated', '{"audio_key":"5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed","entity_key":"ex_evidentiality_epistemic_calibration_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fe44f264a55892c7ca08dadeb50c15030556c9eb4cbbdf07d62879f0d6fe107","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5fea571561ff1cf75a18898c6d99fc5c2aa765ed0aee9f57c1e00d03350de2ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_03 -> audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fda26833-b1d0-53f3-9f78-d376342a5592', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dee65f13ad36602aa0dfb45b5d012f8be13e07fc27d97cb92c65cd227d0de83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88e051c2-2bed-5fef-b193-b122f42b6414', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fda26833-b1d0-53f3-9f78-d376342a5592', 1), '2dee65f13ad36602aa0dfb45b5d012f8be13e07fc27d97cb92c65cd227d0de83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3', 6269, '2026-09-13 11:33:21.086289', '73312d62f96d8d4ed51e489eca0cfc248b5796dab2ff76af53717adf5a71ad76', 'validated', '{"audio_key":"62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f","entity_key":"u_cohesion_reference_dense_texts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73312d62f96d8d4ed51e489eca0cfc248b5796dab2ff76af53717adf5a71ad76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cohesion_reference_dense_texts_02_listen -> audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('214b7beb-cc85-5918-afec-09d886dd6f02', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cohesion_reference_dense_texts_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dee65f13ad36602aa0dfb45b5d012f8be13e07fc27d97cb92c65cd227d0de83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bccfdf1a-ae65-5fa9-8efa-8a115dd69ed0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('214b7beb-cc85-5918-afec-09d886dd6f02', 1), '2dee65f13ad36602aa0dfb45b5d012f8be13e07fc27d97cb92c65cd227d0de83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3', 6269, '2026-09-13 11:33:21.086289', '73312d62f96d8d4ed51e489eca0cfc248b5796dab2ff76af53717adf5a71ad76', 'validated', '{"audio_key":"62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f","entity_key":"ex_cohesion_reference_dense_texts_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73312d62f96d8d4ed51e489eca0cfc248b5796dab2ff76af53717adf5a71ad76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62fc59316ef18f4687dc2f13b7827bb580975af17afb9780292da69aad886c2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_05 -> audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('09fe31fe-a396-53a8-ad8a-8bcba1c8ecfa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6568e6fa5a259d62abf0a19576494aeb3e7ce9025f6a78d0f7c92386470f92d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c9f99d9-0541-581f-a3a2-ddcbc99687df', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('09fe31fe-a396-53a8-ad8a-8bcba1c8ecfa', 1), 'b6568e6fa5a259d62abf0a19576494aeb3e7ce9025f6a78d0f7c92386470f92d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3', 6400, '2026-09-13 11:33:22.141649', 'a505893fbca0a2a433e22c73df1cd13077b91439a5a4436beb1b975f3de65f93', 'validated', '{"audio_key":"6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4","entity_key":"u_terminology_negotiation_concept_boundaries_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a505893fbca0a2a433e22c73df1cd13077b91439a5a4436beb1b975f3de65f93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_terminology_negotiation_concept_boundaries_03_listen -> audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0bdfff02-1353-5736-805b-0a49c3f84327', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_terminology_negotiation_concept_boundaries_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6568e6fa5a259d62abf0a19576494aeb3e7ce9025f6a78d0f7c92386470f92d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5524b8c3-7fee-5d70-9f4c-375dcac63070', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0bdfff02-1353-5736-805b-0a49c3f84327', 1), 'b6568e6fa5a259d62abf0a19576494aeb3e7ce9025f6a78d0f7c92386470f92d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3', 6400, '2026-09-13 11:33:22.141649', 'a505893fbca0a2a433e22c73df1cd13077b91439a5a4436beb1b975f3de65f93', 'validated', '{"audio_key":"6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4","entity_key":"ex_terminology_negotiation_concept_boundaries_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a505893fbca0a2a433e22c73df1cd13077b91439a5a4436beb1b975f3de65f93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6eea20664964e290c54f4cdd422938d1ce90073dbb0288ff67b3d0bc38fd97e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_01 -> audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b8e48ad-0e99-5540-ba2e-ae020aaf74fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46eb07536b11610e56a19773bd594f2022e9bc534418a09463ee7cd01fe38274'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00ea18d0-9a18-5a9e-a4e2-0cf84a806f22', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b8e48ad-0e99-5540-ba2e-ae020aaf74fc', 1), '46eb07536b11610e56a19773bd594f2022e9bc534418a09463ee7cd01fe38274',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3', 5433, '2026-09-13 11:33:22.509003', '7c3fee0a9b515661cafc15eaa98c76f61b5bc0747ab59cf5572a0863d6e696df', 'validated', '{"audio_key":"71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d","entity_key":"u_metacommunication_misunderstanding_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c3fee0a9b515661cafc15eaa98c76f61b5bc0747ab59cf5572a0863d6e696df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metacommunication_misunderstanding_repair_01_listen -> audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('072677dc-5830-58ae-95d6-ea8322be135f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metacommunication_misunderstanding_repair_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46eb07536b11610e56a19773bd594f2022e9bc534418a09463ee7cd01fe38274'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('019743bc-eda9-52b3-8c12-88854db955bb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('072677dc-5830-58ae-95d6-ea8322be135f', 1), '46eb07536b11610e56a19773bd594f2022e9bc534418a09463ee7cd01fe38274',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3', 5433, '2026-09-13 11:33:22.509003', '7c3fee0a9b515661cafc15eaa98c76f61b5bc0747ab59cf5572a0863d6e696df', 'validated', '{"audio_key":"71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d","entity_key":"ex_metacommunication_misunderstanding_repair_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c3fee0a9b515661cafc15eaa98c76f61b5bc0747ab59cf5572a0863d6e696df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71f916b01d8bb0df9bdc101b3f01696e2f2f84d80a362993e30b1b6aeaaf1c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_02 -> audio/generated/de-DE/utterances/7405b609f1f0d8db118755f54488a3ac7a1c0694be7cded0af87429b8dbc73e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('905ec998-2f79-5e80-a385-6c2381a64733', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '806a614335df00a5273a36397765bfc417d3375a221a9bd13697b56e7523471f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c16d967f-543c-531d-9896-46b802eb76e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('905ec998-2f79-5e80-a385-6c2381a64733', 1), '806a614335df00a5273a36397765bfc417d3375a221a9bd13697b56e7523471f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7405b609f1f0d8db118755f54488a3ac7a1c0694be7cded0af87429b8dbc73e7.mp3', 4832, '2026-09-13 11:33:23.496324', 'c4abe09db8c96acd6bc8118df8763b8e1fbd94f05765ead1431c904c37265fa8', 'validated', '{"audio_key":"7405b609f1f0d8db118755f54488a3ac7a1c0694be7cded0af87429b8dbc73e7","entity_key":"u_metacommunication_misunderstanding_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4abe09db8c96acd6bc8118df8763b8e1fbd94f05765ead1431c904c37265fa8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7405b609f1f0d8db118755f54488a3ac7a1c0694be7cded0af87429b8dbc73e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_04 -> audio/generated/de-DE/utterances/7482af181e9229ae51f8f53916d9a9d45436bf701908c3b9f346044248a58b64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8063aadf-3897-5e56-a231-470c69aca867', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ece0bd8ceb7502ba7d74d8f052686f3678e7718a3106e23e32c187bd955eca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fe43bdf-4b73-583c-ae5e-17323ed274ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8063aadf-3897-5e56-a231-470c69aca867', 1), '3ece0bd8ceb7502ba7d74d8f052686f3678e7718a3106e23e32c187bd955eca4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7482af181e9229ae51f8f53916d9a9d45436bf701908c3b9f346044248a58b64.mp3', 5198, '2026-09-13 11:33:23.919482', '364c07bf31541cfdd06b3b9c1ac02981f949300468b10b88c6f3ff158c337e38', 'validated', '{"audio_key":"7482af181e9229ae51f8f53916d9a9d45436bf701908c3b9f346044248a58b64","entity_key":"u_lossless_compression_summarization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"364c07bf31541cfdd06b3b9c1ac02981f949300468b10b88c6f3ff158c337e38","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7482af181e9229ae51f8f53916d9a9d45436bf701908c3b9f346044248a58b64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_05 -> audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('617b63f2-df71-5486-bc81-80de9618ab3b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4ac328c76753da6b386134e5671485bc801675b395d49067f3d1fcab30bcd2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad0c047d-08cc-5203-be1d-1197b66a3792', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('617b63f2-df71-5486-bc81-80de9618ab3b', 1), 'd4ac328c76753da6b386134e5671485bc801675b395d49067f3d1fcab30bcd2a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3', 5381, '2026-09-13 11:33:24.973532', '6929cbafece661a352eddd5a770b89fe4804883f082f286664ed25e21e0f3882', 'validated', '{"audio_key":"7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc","entity_key":"u_live_debate_interruption_reframing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6929cbafece661a352eddd5a770b89fe4804883f082f286664ed25e21e0f3882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_debate_interruption_reframing_03_listen -> audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c3f0db3-6dd2-5935-bd4d-581151e410c1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_debate_interruption_reframing_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4ac328c76753da6b386134e5671485bc801675b395d49067f3d1fcab30bcd2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d83ce4c-ab5d-5637-ac09-61250dab26f1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c3f0db3-6dd2-5935-bd4d-581151e410c1', 1), 'd4ac328c76753da6b386134e5671485bc801675b395d49067f3d1fcab30bcd2a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3', 5381, '2026-09-13 11:33:24.973532', '6929cbafece661a352eddd5a770b89fe4804883f082f286664ed25e21e0f3882', 'validated', '{"audio_key":"7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc","entity_key":"ex_live_debate_interruption_reframing_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6929cbafece661a352eddd5a770b89fe4804883f082f286664ed25e21e0f3882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7621ca79a97397c506126b83d80b8aaaae570e2fc0fd743150b741a981c5e1fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_01 -> audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9324199c-90b1-5f48-99b6-0fe3f3dcc8fb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '996666826be223571e3750ac1e66ef1c5f82fa1cab75571b519c226e124844a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('291259d1-f370-594d-aeb8-df82c10a830d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9324199c-90b1-5f48-99b6-0fe3f3dcc8fb', 1), '996666826be223571e3750ac1e66ef1c5f82fa1cab75571b519c226e124844a4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3', 4858, '2026-09-13 11:33:25.387747', 'a90550ebab071d5f9c5a3806cef81327ae3b6b96832aaabcef7ae48f5f362460', 'validated', '{"audio_key":"787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720","entity_key":"u_audience_reformulation_technical_public_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a90550ebab071d5f9c5a3806cef81327ae3b6b96832aaabcef7ae48f5f362460","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_audience_reformulation_technical_public_01_listen -> audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('34b901ca-79a6-5323-9764-46854a21d7e7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_audience_reformulation_technical_public_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '996666826be223571e3750ac1e66ef1c5f82fa1cab75571b519c226e124844a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81d8117b-4b70-5476-9045-fad728f1bc95', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('34b901ca-79a6-5323-9764-46854a21d7e7', 1), '996666826be223571e3750ac1e66ef1c5f82fa1cab75571b519c226e124844a4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3', 4858, '2026-09-13 11:33:25.387747', 'a90550ebab071d5f9c5a3806cef81327ae3b6b96832aaabcef7ae48f5f362460', 'validated', '{"audio_key":"787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720","entity_key":"ex_audience_reformulation_technical_public_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a90550ebab071d5f9c5a3806cef81327ae3b6b96832aaabcef7ae48f5f362460","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/787e30f046468ba100fb824a882144190c41854b1284b03cca5796571c991720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_05 -> audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b773a2c-9c51-552a-b106-b0a29295dd6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a39b136ab952f9169802fce16bd23ed90f8336e4dd4f8f59e2220607599116a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aae6f658-8246-5d4b-bd5a-377138fe4363', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b773a2c-9c51-552a-b106-b0a29295dd6a', 1), '8a39b136ab952f9169802fce16bd23ed90f8336e4dd4f8f59e2220607599116a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3', 5328, '2026-09-13 11:33:26.390944', 'abb4792e886b23923f2e08306948989a5f0266b1a1325fc88b297cf561963bef', 'validated', '{"audio_key":"794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820","entity_key":"u_semantic_scope_ambiguity_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abb4792e886b23923f2e08306948989a5f0266b1a1325fc88b297cf561963bef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_semantic_scope_ambiguity_03_listen -> audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c84f0dd3-d3a3-5dec-8327-28e10be88291', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_semantic_scope_ambiguity_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a39b136ab952f9169802fce16bd23ed90f8336e4dd4f8f59e2220607599116a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('812454ee-f86b-55a5-aa93-8c7683e5003b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c84f0dd3-d3a3-5dec-8327-28e10be88291', 1), '8a39b136ab952f9169802fce16bd23ed90f8336e4dd4f8f59e2220607599116a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3', 5328, '2026-09-13 11:33:26.390944', 'abb4792e886b23923f2e08306948989a5f0266b1a1325fc88b297cf561963bef', 'validated', '{"audio_key":"794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820","entity_key":"ex_semantic_scope_ambiguity_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abb4792e886b23923f2e08306948989a5f0266b1a1325fc88b297cf561963bef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/794d058856586aefe237aa0f644fa80c995861a2f49bc0046eaab696ea87c820.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_02 -> audio/generated/de-DE/utterances/80510b34f54e3834a877e0ff59da94a5a96b92fae6c9f04c9c0bbcacda1ebd21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('90ec355e-28fb-5678-ac4b-5df6c9ea19ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638024eb667254b36d1ef805e5b501b310856e1dac3a21be292d499450ddba43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d56eb37-645e-5ee9-8f2f-2275ac9461eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('90ec355e-28fb-5678-ac4b-5df6c9ea19ce', 1), '638024eb667254b36d1ef805e5b501b310856e1dac3a21be292d499450ddba43',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/80510b34f54e3834a877e0ff59da94a5a96b92fae6c9f04c9c0bbcacda1ebd21.mp3', 6347, '2026-09-13 11:33:27.073768', '6e136b0e4522b31e662a719fcf5b8676cbee24e69be1267e0ce73662c2c6dec3', 'validated', '{"audio_key":"80510b34f54e3834a877e0ff59da94a5a96b92fae6c9f04c9c0bbcacda1ebd21","entity_key":"u_audience_reformulation_technical_public_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e136b0e4522b31e662a719fcf5b8676cbee24e69be1267e0ce73662c2c6dec3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/80510b34f54e3834a877e0ff59da94a5a96b92fae6c9f04c9c0bbcacda1ebd21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_04 -> audio/generated/de-DE/utterances/8085bb9d08a6d95c2a3fbc77a31711e160558a29fa8163294e43cb4899824699.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('40272576-18aa-5f50-86eb-98347dcd5560', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ffeb9f708b2872a5b8836a9ff2dab8ebd961e24b56cb654c04c11fd715b288a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e0c7bc7-4d5f-5f86-85b7-3f1cb901ae67', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('40272576-18aa-5f50-86eb-98347dcd5560', 1), '7ffeb9f708b2872a5b8836a9ff2dab8ebd961e24b56cb654c04c11fd715b288a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8085bb9d08a6d95c2a3fbc77a31711e160558a29fa8163294e43cb4899824699.mp3', 6034, '2026-09-13 11:33:27.965812', '0e4b93eb10db006cef35759c4ec7db639d20a4ca13debfcc71a6723c4dae67bc', 'validated', '{"audio_key":"8085bb9d08a6d95c2a3fbc77a31711e160558a29fa8163294e43cb4899824699","entity_key":"u_semantic_scope_ambiguity_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e4b93eb10db006cef35759c4ec7db639d20a4ca13debfcc71a6723c4dae67bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8085bb9d08a6d95c2a3fbc77a31711e160558a29fa8163294e43cb4899824699.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_06 -> audio/generated/de-DE/utterances/80b1b22762920c306a50b7b84c1aada979dd2fc72789f276dd6b95e4185bb436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0f792d3-1766-57af-b67b-bf56e94ef12a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f66fba694b8087cafb3a7378c63f7ef682a48a339a8f05cc796ddc49e0ffdeb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e3bb6fe-9de2-58fd-9ad0-9944f1ac1a67', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0f792d3-1766-57af-b67b-bf56e94ef12a', 1), 'f66fba694b8087cafb3a7378c63f7ef682a48a339a8f05cc796ddc49e0ffdeb2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/80b1b22762920c306a50b7b84c1aada979dd2fc72789f276dd6b95e4185bb436.mp3', 5564, '2026-09-13 11:33:28.520375', '7f4149ea44a830be6884619e61db1ebe3808e2e6b23eb3c1ea9fa58fabc2003e', 'validated', '{"audio_key":"80b1b22762920c306a50b7b84c1aada979dd2fc72789f276dd6b95e4185bb436","entity_key":"u_live_debate_interruption_reframing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f4149ea44a830be6884619e61db1ebe3808e2e6b23eb3c1ea9fa58fabc2003e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/80b1b22762920c306a50b7b84c1aada979dd2fc72789f276dd6b95e4185bb436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_06 -> audio/generated/de-DE/utterances/84ec267b29900e4b7f910af0443b7047c1b23a7c368f8d2c2d8a6ccd6b87623b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e0bb2c54-f05f-5b06-8aab-1f8b7ca2efc1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eb869659688ee3e90fbf72eb3f3d5b75b656a54f26c0d9e248a076b64968dcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5709c0b-7a31-5025-bf84-b10c71f9a590', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e0bb2c54-f05f-5b06-8aab-1f8b7ca2efc1', 1), '9eb869659688ee3e90fbf72eb3f3d5b75b656a54f26c0d9e248a076b64968dcf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/84ec267b29900e4b7f910af0443b7047c1b23a7c368f8d2c2d8a6ccd6b87623b.mp3', 7000, '2026-09-13 11:33:29.605557', '2c6d5d87548bfa8c6d5d12bf09606fea09a110dc81087ad410f68e18229d31cb', 'validated', '{"audio_key":"84ec267b29900e4b7f910af0443b7047c1b23a7c368f8d2c2d8a6ccd6b87623b","entity_key":"u_evidentiality_epistemic_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c6d5d87548bfa8c6d5d12bf09606fea09a110dc81087ad410f68e18229d31cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/84ec267b29900e4b7f910af0443b7047c1b23a7c368f8d2c2d8a6ccd6b87623b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_01 -> audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fb54d213-01a2-57fb-a5fe-b2f364186544', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a269aa9fcc4b9fc17e401cf9b1881f09c23cf9f48fdc34b33955adfb9da0f76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc3f82ba-9e1e-5146-a52b-1cfffadb4444', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fb54d213-01a2-57fb-a5fe-b2f364186544', 1), '1a269aa9fcc4b9fc17e401cf9b1881f09c23cf9f48fdc34b33955adfb9da0f76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3', 4911, '2026-09-13 11:33:29.927675', 'e4f793e93b10d455634a5a551904b10590a2407e75fe480ef8576fc8291d03fe', 'validated', '{"audio_key":"8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4","entity_key":"u_live_debate_interruption_reframing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4f793e93b10d455634a5a551904b10590a2407e75fe480ef8576fc8291d03fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_debate_interruption_reframing_01_listen -> audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('03633409-7663-59d2-9535-355ab201758a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_debate_interruption_reframing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a269aa9fcc4b9fc17e401cf9b1881f09c23cf9f48fdc34b33955adfb9da0f76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efcf6e25-9523-52f0-9ad5-e888780ecd6b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('03633409-7663-59d2-9535-355ab201758a', 1), '1a269aa9fcc4b9fc17e401cf9b1881f09c23cf9f48fdc34b33955adfb9da0f76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3', 4911, '2026-09-13 11:33:29.927675', 'e4f793e93b10d455634a5a551904b10590a2407e75fe480ef8576fc8291d03fe', 'validated', '{"audio_key":"8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4","entity_key":"ex_live_debate_interruption_reframing_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4f793e93b10d455634a5a551904b10590a2407e75fe480ef8576fc8291d03fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8880d3a1bda2a1537f116d2f1f9e497111e16862d874fba6837d81d39a299fe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_06 -> audio/generated/de-DE/utterances/8947346ac7f6a5a3fa9d65af297c7ded2b6d5a07f80d525e80c42ee8d7bb8ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a62a3965-fb53-5af8-baa0-fa67f508b31b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9acd77bb2d5f91f3bdc6c26f5a60bbfe09d98d34613dc51fa4b8df21a31f600'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3dfd6526-695c-55a5-afbd-a59361c58eb1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a62a3965-fb53-5af8-baa0-fa67f508b31b', 1), 'a9acd77bb2d5f91f3bdc6c26f5a60bbfe09d98d34613dc51fa4b8df21a31f600',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8947346ac7f6a5a3fa9d65af297c7ded2b6d5a07f80d525e80c42ee8d7bb8ac5.mp3', 5564, '2026-09-13 11:33:31.035432', '658f4e390ebe53bbf0191dbc715e75f01bfc95341f1640efcfe20765de47297d', 'validated', '{"audio_key":"8947346ac7f6a5a3fa9d65af297c7ded2b6d5a07f80d525e80c42ee8d7bb8ac5","entity_key":"u_audience_reformulation_technical_public_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"658f4e390ebe53bbf0191dbc715e75f01bfc95341f1640efcfe20765de47297d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8947346ac7f6a5a3fa9d65af297c7ded2b6d5a07f80d525e80c42ee8d7bb8ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_04 -> audio/generated/de-DE/utterances/8fb01935c4a69977ab03db8be354f5554d5d3b1bbed3514dba422cab6239bb73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b151853b-405e-58fd-b9f6-84c03cc3a468', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d4a8cd078f603810d0a2d35b27964709756a5273a8c1ed5da3ad3563055414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5177e0d5-6194-5f39-8765-d64a82f8643c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b151853b-405e-58fd-b9f6-84c03cc3a468', 1), '8d4a8cd078f603810d0a2d35b27964709756a5273a8c1ed5da3ad3563055414b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8fb01935c4a69977ab03db8be354f5554d5d3b1bbed3514dba422cab6239bb73.mp3', 4414, '2026-09-13 11:33:31.199664', '5c93d1775592280d244b074540e824356ca3cf304bbb1f28c5eb862fe0b5d00d', 'validated', '{"audio_key":"8fb01935c4a69977ab03db8be354f5554d5d3b1bbed3514dba422cab6239bb73","entity_key":"u_live_debate_interruption_reframing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c93d1775592280d244b074540e824356ca3cf304bbb1f28c5eb862fe0b5d00d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8fb01935c4a69977ab03db8be354f5554d5d3b1bbed3514dba422cab6239bb73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_04 -> audio/generated/de-DE/utterances/95561d93c7eca8a34c2c043c459d4f7aba13138f1818a8cf12aaec5f82c4b1d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25fb0397-4be5-5d13-b71c-487cf2c568fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9090fbbe361fecefbd529c40b7c13a377539943bb98b0d648ccdcf53570ff656'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db141c4d-1471-5e3c-ad3f-f869a97049bb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25fb0397-4be5-5d13-b71c-487cf2c568fe', 1), '9090fbbe361fecefbd529c40b7c13a377539943bb98b0d648ccdcf53570ff656',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/95561d93c7eca8a34c2c043c459d4f7aba13138f1818a8cf12aaec5f82c4b1d6.mp3', 5694, '2026-09-13 11:33:32.500679', '3aff47b4c80b942607e3172623ad4c054da4a23456e4629260708e4cc005d28f', 'validated', '{"audio_key":"95561d93c7eca8a34c2c043c459d4f7aba13138f1818a8cf12aaec5f82c4b1d6","entity_key":"u_evidentiality_epistemic_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aff47b4c80b942607e3172623ad4c054da4a23456e4629260708e4cc005d28f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/95561d93c7eca8a34c2c043c459d4f7aba13138f1818a8cf12aaec5f82c4b1d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_01 -> audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7df2ec32-7860-517f-9386-99daf36c6680', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ba817e1d00aba23eb25760f5acb95c3978edaf72cc8809305ce7bd33f33699b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abd9584d-923b-54b8-946f-306df2305ce4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7df2ec32-7860-517f-9386-99daf36c6680', 1), '0ba817e1d00aba23eb25760f5acb95c3978edaf72cc8809305ce7bd33f33699b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3', 5616, '2026-09-13 11:33:32.729825', '9dc287c0e9823639d9f36265bae505477885f3b334b18198d5657c81e6ccb62d', 'validated', '{"audio_key":"9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd","entity_key":"u_expert_public_precision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dc287c0e9823639d9f36265bae505477885f3b334b18198d5657c81e6ccb62d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_public_precision_capstone_01_listen -> audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('40cb538a-97fa-5506-9826-b6c74c75e89e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_public_precision_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ba817e1d00aba23eb25760f5acb95c3978edaf72cc8809305ce7bd33f33699b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63747f10-96db-500e-9114-5b85377e2fd8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('40cb538a-97fa-5506-9826-b6c74c75e89e', 1), '0ba817e1d00aba23eb25760f5acb95c3978edaf72cc8809305ce7bd33f33699b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3', 5616, '2026-09-13 11:33:32.729825', '9dc287c0e9823639d9f36265bae505477885f3b334b18198d5657c81e6ccb62d', 'validated', '{"audio_key":"9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd","entity_key":"ex_expert_public_precision_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dc287c0e9823639d9f36265bae505477885f3b334b18198d5657c81e6ccb62d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9604ddec39a66cbd9aa29f3e3685c1284434ca19defe31522262669f353c4efd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_02 -> audio/generated/de-DE/utterances/9bc005591eb1dc2ecdbf047b11b41e3fa7d6b9bf0d73822c250022861641f1fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fcbe331f-7c60-55de-89ef-52c3fd20ba49', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e86adadbbe7217936009976908db1e947e163d97e2c3c8612f663d62e808f77b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20f904c6-1d01-5f22-b6dc-9d4529cb0e23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fcbe331f-7c60-55de-89ef-52c3fd20ba49', 1), 'e86adadbbe7217936009976908db1e947e163d97e2c3c8612f663d62e808f77b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9bc005591eb1dc2ecdbf047b11b41e3fa7d6b9bf0d73822c250022861641f1fa.mp3', 5564, '2026-09-13 11:33:33.929685', '70eade96f931d4574d5e1b175c4a148b41c075adfa98a72cc2ebe6e0450ff811', 'validated', '{"audio_key":"9bc005591eb1dc2ecdbf047b11b41e3fa7d6b9bf0d73822c250022861641f1fa","entity_key":"u_expert_public_precision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70eade96f931d4574d5e1b175c4a148b41c075adfa98a72cc2ebe6e0450ff811","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9bc005591eb1dc2ecdbf047b11b41e3fa7d6b9bf0d73822c250022861641f1fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_01 -> audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('213d01b4-0a2b-527f-8847-f42866671931', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd780cbe273b7cc92f6545d0dd4c49b946cf83e92f62fea3d915a1d43f745a87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4c2b573-3b40-59e6-948b-4b80ad43ee4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('213d01b4-0a2b-527f-8847-f42866671931', 1), 'bd780cbe273b7cc92f6545d0dd4c49b946cf83e92f62fea3d915a1d43f745a87',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3', 5929, '2026-09-13 11:33:34.241547', '8511c574013302fe4564e9a4411fe5946d41a5ba00d7c8ff19fc582e42119e32', 'validated', '{"audio_key":"af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990","entity_key":"u_evidentiality_epistemic_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8511c574013302fe4564e9a4411fe5946d41a5ba00d7c8ff19fc582e42119e32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidentiality_epistemic_calibration_01_listen -> audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0e09c043-298a-5845-afe2-65ad2de917f9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidentiality_epistemic_calibration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd780cbe273b7cc92f6545d0dd4c49b946cf83e92f62fea3d915a1d43f745a87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3d075c4-cf7d-5f34-ba02-19f040b1f524', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0e09c043-298a-5845-afe2-65ad2de917f9', 1), 'bd780cbe273b7cc92f6545d0dd4c49b946cf83e92f62fea3d915a1d43f745a87',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3', 5929, '2026-09-13 11:33:34.241547', '8511c574013302fe4564e9a4411fe5946d41a5ba00d7c8ff19fc582e42119e32', 'validated', '{"audio_key":"af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990","entity_key":"ex_evidentiality_epistemic_calibration_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8511c574013302fe4564e9a4411fe5946d41a5ba00d7c8ff19fc582e42119e32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af5173fea9d3464363a8018338b5de7596ddad40c10d8496110f06c384e3a990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_06 -> audio/generated/de-DE/utterances/b0417115b0bc8cf8d7b1ed01194c63418a2018a82dff6cb25030f3b54054eb0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('124406da-f3c1-5ca9-be93-b04a2da8f3fb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '824ae9b689caa42223436b739570413888962539c455b550d59f2ed6d8559848'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('512c0116-796b-54e7-ac00-551f7aeb012b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('124406da-f3c1-5ca9-be93-b04a2da8f3fb', 1), '824ae9b689caa42223436b739570413888962539c455b550d59f2ed6d8559848',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b0417115b0bc8cf8d7b1ed01194c63418a2018a82dff6cb25030f3b54054eb0e.mp3', 6922, '2026-09-13 11:33:35.525907', '24e31d109bce81e474d27bd71b13c51dc69d4f82375091a7c19d22ed43768783', 'validated', '{"audio_key":"b0417115b0bc8cf8d7b1ed01194c63418a2018a82dff6cb25030f3b54054eb0e","entity_key":"u_lossless_compression_summarization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24e31d109bce81e474d27bd71b13c51dc69d4f82375091a7c19d22ed43768783","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b0417115b0bc8cf8d7b1ed01194c63418a2018a82dff6cb25030f3b54054eb0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_public_precision_capstone_04 -> audio/generated/de-DE/utterances/b201b9b179039091533723787862311eff5825caf6964be43b60d3cc236695ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee45a2a3-f8fa-53ba-9fb9-76b270d89e57', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_public_precision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f664cb9eb3d0e8a575f75c1c28d6510a3854a1d5faa740a6a9caccd81df97b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a684694-882c-5eb8-822c-f65597eebbb4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee45a2a3-f8fa-53ba-9fb9-76b270d89e57', 1), 'c6f664cb9eb3d0e8a575f75c1c28d6510a3854a1d5faa740a6a9caccd81df97b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b201b9b179039091533723787862311eff5825caf6964be43b60d3cc236695ee.mp3', 7105, '2026-09-13 11:33:35.940636', '0013348499f515efb722ec3234bb4617ecdd40fedec8fbc93063a36f277f2c01', 'validated', '{"audio_key":"b201b9b179039091533723787862311eff5825caf6964be43b60d3cc236695ee","entity_key":"u_expert_public_precision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0013348499f515efb722ec3234bb4617ecdd40fedec8fbc93063a36f277f2c01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b201b9b179039091533723787862311eff5825caf6964be43b60d3cc236695ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesion_reference_dense_texts_02 -> audio/generated/de-DE/utterances/b3f0a9f82d96da1e7453471f413b37c0e19b9def828880b9b535f976c147e2d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b11fd7a6-324f-52c0-8c60-705df5f58593', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesion_reference_dense_texts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b29f2aa3305a9fd5518df2085220ce4f847743209fe5eaad0b93fa14d82a0e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c9fd995-3f7e-56b7-8004-3eee090c250b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b11fd7a6-324f-52c0-8c60-705df5f58593', 1), 'b29f2aa3305a9fd5518df2085220ce4f847743209fe5eaad0b93fa14d82a0e35',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b3f0a9f82d96da1e7453471f413b37c0e19b9def828880b9b535f976c147e2d3.mp3', 6164, '2026-09-13 11:33:37.136053', '17b8dd3b08ddcbf447b7ef4af0996046bd9530d4cb8abdec3a3ff91b87e19737', 'validated', '{"audio_key":"b3f0a9f82d96da1e7453471f413b37c0e19b9def828880b9b535f976c147e2d3","entity_key":"u_cohesion_reference_dense_texts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17b8dd3b08ddcbf447b7ef4af0996046bd9530d4cb8abdec3a3ff91b87e19737","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b3f0a9f82d96da1e7453471f413b37c0e19b9def828880b9b535f976c147e2d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_03 -> audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('754d3cdf-8a58-5b35-9b0d-e323a975c152', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a16acd6074b1f4c5cf3013803508d3de53a743e40787155636345df2e833dda8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f16d7e4f-426b-5018-bcf9-b81c417fcc86', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('754d3cdf-8a58-5b35-9b0d-e323a975c152', 1), 'a16acd6074b1f4c5cf3013803508d3de53a743e40787155636345df2e833dda8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3', 5041, '2026-09-13 11:33:37.368672', '59bdccf4ca723babbdf2c8e7493886d894058a6f20e1debf38df60cf2ba1121f', 'validated', '{"audio_key":"c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4","entity_key":"u_audience_reformulation_technical_public_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59bdccf4ca723babbdf2c8e7493886d894058a6f20e1debf38df60cf2ba1121f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_audience_reformulation_technical_public_02_listen -> audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('63cc061a-dcd6-53f7-b3ac-a5d5559bd1ed', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_audience_reformulation_technical_public_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a16acd6074b1f4c5cf3013803508d3de53a743e40787155636345df2e833dda8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77528d51-da40-52ab-be0c-cb84325c560e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('63cc061a-dcd6-53f7-b3ac-a5d5559bd1ed', 1), 'a16acd6074b1f4c5cf3013803508d3de53a743e40787155636345df2e833dda8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3', 5041, '2026-09-13 11:33:37.368672', '59bdccf4ca723babbdf2c8e7493886d894058a6f20e1debf38df60cf2ba1121f', 'validated', '{"audio_key":"c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4","entity_key":"ex_audience_reformulation_technical_public_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59bdccf4ca723babbdf2c8e7493886d894058a6f20e1debf38df60cf2ba1121f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c2275c4eba997bf260d3741692af7241942218c6bd155f18b3b3977baa768dd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_04 -> audio/generated/de-DE/utterances/c88ca496181284cf1cbd78335bbcec0cdd9f14b09fbc123945f0ee19772d7b23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10c998f8-6cbd-53f6-8738-178c1e55da97', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16b360fef162b7de15e8824ae1c2142bbd27206b4be5eb97d20b51161ff4e46e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d6f2da9-cfde-5cef-b800-0cfbccf0c48d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10c998f8-6cbd-53f6-8738-178c1e55da97', 1), '16b360fef162b7de15e8824ae1c2142bbd27206b4be5eb97d20b51161ff4e46e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c88ca496181284cf1cbd78335bbcec0cdd9f14b09fbc123945f0ee19772d7b23.mp3', 6582, '2026-09-13 11:33:38.782077', '14e801675f37c995cc191490bf4595ea7d478d2c1e95b0e38cab7b1ef20aaab4', 'validated', '{"audio_key":"c88ca496181284cf1cbd78335bbcec0cdd9f14b09fbc123945f0ee19772d7b23","entity_key":"u_terminology_negotiation_concept_boundaries_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14e801675f37c995cc191490bf4595ea7d478d2c1e95b0e38cab7b1ef20aaab4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c88ca496181284cf1cbd78335bbcec0cdd9f14b09fbc123945f0ee19772d7b23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_04 -> audio/generated/de-DE/utterances/cf21490d004be6ce898028984137aac37cebbc4888540d9bf8e9729bc6c46ec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1716e29b-662a-56e9-9d83-e8cba05f6bcf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8764f87568254c050d2be9768b40e950c3b775c0265122c4310bc5b0efd8de8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('732d0b47-60ea-5590-84fb-d3ec55dd95a5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1716e29b-662a-56e9-9d83-e8cba05f6bcf', 1), '8764f87568254c050d2be9768b40e950c3b775c0265122c4310bc5b0efd8de8b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cf21490d004be6ce898028984137aac37cebbc4888540d9bf8e9729bc6c46ec3.mp3', 5433, '2026-09-13 11:33:38.822532', '10797f95c39160f5db3b111a654a15bfbee9ad443ce25b5b847790f639f5182d', 'validated', '{"audio_key":"cf21490d004be6ce898028984137aac37cebbc4888540d9bf8e9729bc6c46ec3","entity_key":"u_audience_reformulation_technical_public_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10797f95c39160f5db3b111a654a15bfbee9ad443ce25b5b847790f639f5182d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cf21490d004be6ce898028984137aac37cebbc4888540d9bf8e9729bc6c46ec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_04 -> audio/generated/de-DE/utterances/d184a58c6500030880d45a7906f38ad8166d95ed4a34601e0f1e6419e7480fb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6ac8599f-5721-5026-9a0a-3b1b49bc146c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3dd1e95dd72040a92e60048f9fa5fbaac95faabc033ce3e2a17f1c78d62aa82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e9e83f8-372f-5c6f-9ce7-dfe5b3ebe975', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6ac8599f-5721-5026-9a0a-3b1b49bc146c', 1), 'e3dd1e95dd72040a92e60048f9fa5fbaac95faabc033ce3e2a17f1c78d62aa82',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d184a58c6500030880d45a7906f38ad8166d95ed4a34601e0f1e6419e7480fb0.mp3', 5146, '2026-09-13 11:33:40.132806', 'ea61c2da6d8b93083aa74f0b3666cb96c23a8b720a987328411a75fde4b78e8f', 'validated', '{"audio_key":"d184a58c6500030880d45a7906f38ad8166d95ed4a34601e0f1e6419e7480fb0","entity_key":"u_metacommunication_misunderstanding_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea61c2da6d8b93083aa74f0b3666cb96c23a8b720a987328411a75fde4b78e8f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d184a58c6500030880d45a7906f38ad8166d95ed4a34601e0f1e6419e7480fb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_01 -> audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('619cefba-a2b7-5af5-aed7-cf7856fbddd1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9c2cb5b060345e25e37135ade6eedb931ffef0a77353d102bba1e68fde2b2eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eee98d3-3315-5b46-80d0-8fb7368c3462', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('619cefba-a2b7-5af5-aed7-cf7856fbddd1', 1), 'f9c2cb5b060345e25e37135ade6eedb931ffef0a77353d102bba1e68fde2b2eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3', 6086, '2026-09-13 11:33:40.338533', 'e564d91216763c5ff70478e750cc4b3a0bf0a588ebbc67feb7f176778e801b31', 'validated', '{"audio_key":"d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498","entity_key":"u_terminology_negotiation_concept_boundaries_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e564d91216763c5ff70478e750cc4b3a0bf0a588ebbc67feb7f176778e801b31","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_terminology_negotiation_concept_boundaries_01_listen -> audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7d31c92f-515e-5f2e-9256-8ef26ac352a0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_terminology_negotiation_concept_boundaries_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9c2cb5b060345e25e37135ade6eedb931ffef0a77353d102bba1e68fde2b2eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e91490c-80d1-54ee-b8c4-594716d4fc58', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7d31c92f-515e-5f2e-9256-8ef26ac352a0', 1), 'f9c2cb5b060345e25e37135ade6eedb931ffef0a77353d102bba1e68fde2b2eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3', 6086, '2026-09-13 11:33:40.338533', 'e564d91216763c5ff70478e750cc4b3a0bf0a588ebbc67feb7f176778e801b31', 'validated', '{"audio_key":"d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498","entity_key":"ex_terminology_negotiation_concept_boundaries_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e564d91216763c5ff70478e750cc4b3a0bf0a588ebbc67feb7f176778e801b31","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d727581d719b0d107047768339c7f3826b6114eb1624de325af10c12e5784498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_scope_ambiguity_01 -> audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e05e9550-e2db-53ba-bf72-9baebc46143f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_scope_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87847f82ce387a5ef0cdc073687df4b6f9e596040413bab93c61470d292b84d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('909c8707-6cd2-5feb-bc9c-bec0d75ffd5f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e05e9550-e2db-53ba-bf72-9baebc46143f', 1), '87847f82ce387a5ef0cdc073687df4b6f9e596040413bab93c61470d292b84d0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3', 6817, '2026-09-13 11:33:41.757794', '002426990647eb016d2864e82b15d58ef5652c92bafbfa904bbc974c42939864', 'validated', '{"audio_key":"dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f","entity_key":"u_semantic_scope_ambiguity_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"002426990647eb016d2864e82b15d58ef5652c92bafbfa904bbc974c42939864","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_semantic_scope_ambiguity_01_listen -> audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('42b07557-f30f-5e6e-8bf1-803dc310384b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_semantic_scope_ambiguity_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87847f82ce387a5ef0cdc073687df4b6f9e596040413bab93c61470d292b84d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bee3b149-6496-57fa-bcc1-05dc390beafc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('42b07557-f30f-5e6e-8bf1-803dc310384b', 1), '87847f82ce387a5ef0cdc073687df4b6f9e596040413bab93c61470d292b84d0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3', 6817, '2026-09-13 11:33:41.757794', '002426990647eb016d2864e82b15d58ef5652c92bafbfa904bbc974c42939864', 'validated', '{"audio_key":"dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f","entity_key":"ex_semantic_scope_ambiguity_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"002426990647eb016d2864e82b15d58ef5652c92bafbfa904bbc974c42939864","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dde1f3cd34fc45ac9cabeb1f2f7c513f9f5ec60b7a8261cf6fe00b41b3bc917f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lossless_compression_summarization_02 -> audio/generated/de-DE/utterances/df2e9a3717a3bca05fc01538f0fa33c08af7bf65f4757d4ead777fd32e52de5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d44cf6f-9759-582a-b74b-c53e823c020c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lossless_compression_summarization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fc3ae888cf1a0c6356890b6cf524844d471fecaa6e839c79e42567e78fee695'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96d98eb9-2f3c-5bce-bccb-1546c62dcd0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d44cf6f-9759-582a-b74b-c53e823c020c', 1), '0fc3ae888cf1a0c6356890b6cf524844d471fecaa6e839c79e42567e78fee695',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/df2e9a3717a3bca05fc01538f0fa33c08af7bf65f4757d4ead777fd32e52de5d.mp3', 5616, '2026-09-13 11:33:41.824837', 'bcc80d11ed180b1f627cc7d29d7a5becc0cf5a5d426bc3cceb367228f56bee4a', 'validated', '{"audio_key":"df2e9a3717a3bca05fc01538f0fa33c08af7bf65f4757d4ead777fd32e52de5d","entity_key":"u_lossless_compression_summarization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcc80d11ed180b1f627cc7d29d7a5becc0cf5a5d426bc3cceb367228f56bee4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/df2e9a3717a3bca05fc01538f0fa33c08af7bf65f4757d4ead777fd32e52de5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_06 -> audio/generated/de-DE/utterances/e253bd3bb25225859b6eebdf42dc7b06773b995e88d1435f556753940a1fbe77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7dbbb8a-4cec-516b-a408-fe8fb4d8f729', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe1aeca1a81a9abc3f66973b88199b2647fd273763fba8a8590d62438b1a0beb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f99a63db-f885-5996-87cd-78eb1204bd96', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7dbbb8a-4cec-516b-a408-fe8fb4d8f729', 1), 'fe1aeca1a81a9abc3f66973b88199b2647fd273763fba8a8590d62438b1a0beb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e253bd3bb25225859b6eebdf42dc7b06773b995e88d1435f556753940a1fbe77.mp3', 6164, '2026-09-13 11:33:43.324285', '4289d74b83dbd146460500f3c5667a6866dce3d59abb4f6ecf55c26c3a180336', 'validated', '{"audio_key":"e253bd3bb25225859b6eebdf42dc7b06773b995e88d1435f556753940a1fbe77","entity_key":"u_metacommunication_misunderstanding_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4289d74b83dbd146460500f3c5667a6866dce3d59abb4f6ecf55c26c3a180336","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e253bd3bb25225859b6eebdf42dc7b06773b995e88d1435f556753940a1fbe77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_debate_interruption_reframing_02 -> audio/generated/de-DE/utterances/e26ab35f554322ae84c294490a8703c56482261b8babffb929b67194894f5edd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4008e3ed-0faf-5e91-b21e-496d607b3622', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_debate_interruption_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ec69c2a47cb5bca7b3f33e8dea7d1b2a757966e824285b7c713d7d74ff7797c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5030d8c-a860-5d02-a211-1acc8f14635b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4008e3ed-0faf-5e91-b21e-496d607b3622', 1), '0ec69c2a47cb5bca7b3f33e8dea7d1b2a757966e824285b7c713d7d74ff7797c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e26ab35f554322ae84c294490a8703c56482261b8babffb929b67194894f5edd.mp3', 4257, '2026-09-13 11:33:43.115024', '3d6481e0db356b24bba2f80e9fe58eaa82c38c91b96d201fd3d73423dd5a294c', 'validated', '{"audio_key":"e26ab35f554322ae84c294490a8703c56482261b8babffb929b67194894f5edd","entity_key":"u_live_debate_interruption_reframing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d6481e0db356b24bba2f80e9fe58eaa82c38c91b96d201fd3d73423dd5a294c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e26ab35f554322ae84c294490a8703c56482261b8babffb929b67194894f5edd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_03 -> audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8b139686-6251-59fd-9ede-5517f2fddc12', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7337e2cafefb9fbcfbb41de5858fdabc4c511fcc03b6400a79f510268de8acd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4fce07-3484-5927-91bc-a631319d6156', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8b139686-6251-59fd-9ede-5517f2fddc12', 1), '7337e2cafefb9fbcfbb41de5858fdabc4c511fcc03b6400a79f510268de8acd4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3', 4597, '2026-09-13 11:33:44.479546', 'd5175ff1cfb6ceaa2dcaedf062d839ab86b1b0f296b097291dd3b47b4f4e6fa3', 'validated', '{"audio_key":"e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb","entity_key":"u_modal_commitment_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5175ff1cfb6ceaa2dcaedf062d839ab86b1b0f296b097291dd3b47b4f4e6fa3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_modal_commitment_precision_02_listen -> audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0043efeb-ffce-507f-b10f-0f8dabce3825', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_modal_commitment_precision_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7337e2cafefb9fbcfbb41de5858fdabc4c511fcc03b6400a79f510268de8acd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ad7c695-d2c2-5467-b662-8bf97c16b483', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0043efeb-ffce-507f-b10f-0f8dabce3825', 1), '7337e2cafefb9fbcfbb41de5858fdabc4c511fcc03b6400a79f510268de8acd4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3', 4597, '2026-09-13 11:33:44.479546', 'd5175ff1cfb6ceaa2dcaedf062d839ab86b1b0f296b097291dd3b47b4f4e6fa3', 'validated', '{"audio_key":"e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb","entity_key":"ex_modal_commitment_precision_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5175ff1cfb6ceaa2dcaedf062d839ab86b1b0f296b097291dd3b47b4f4e6fa3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e5252f85caf8cb7e9b3f4f0ad8b4a5241ad5b72c99534560f3a0db979be07adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_02 -> audio/generated/de-DE/utterances/eadcb6fb965c9c7d106ad22d3df9313ef30e8ed4916195e20cb41bfec717dac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec606902-0959-5600-b16a-caa8dd36dee1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4e5b9861c2e2c9400b8d762cfb02a0fc96199f964707e39668196885818c289'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5824aab7-ce67-554b-975f-7771df270014', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec606902-0959-5600-b16a-caa8dd36dee1', 1), 'd4e5b9861c2e2c9400b8d762cfb02a0fc96199f964707e39668196885818c289',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eadcb6fb965c9c7d106ad22d3df9313ef30e8ed4916195e20cb41bfec717dac2.mp3', 5668, '2026-09-13 11:33:44.780756', 'c6713517f35427b4aa03c8d6e396c3798eca2aef171df0ee369d1677df9ba0a3', 'validated', '{"audio_key":"eadcb6fb965c9c7d106ad22d3df9313ef30e8ed4916195e20cb41bfec717dac2","entity_key":"u_terminology_negotiation_concept_boundaries_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6713517f35427b4aa03c8d6e396c3798eca2aef171df0ee369d1677df9ba0a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eadcb6fb965c9c7d106ad22d3df9313ef30e8ed4916195e20cb41bfec717dac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_audience_reformulation_technical_public_05 -> audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a28cc330-fbdb-5473-a495-86c77764178e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_audience_reformulation_technical_public_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5989faf646796017c39790acd64491a77e887c2aa885a226377bf6999433762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3c7e606-c35e-50c7-abd8-f5d6dea9207b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a28cc330-fbdb-5473-a495-86c77764178e', 1), 'b5989faf646796017c39790acd64491a77e887c2aa885a226377bf6999433762',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3', 4127, '2026-09-13 11:33:45.759430', '8f7453e88cc826d22f929047efad902cfbc8b56084e3f5721c82a9836587e755', 'validated', '{"audio_key":"ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a","entity_key":"u_audience_reformulation_technical_public_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f7453e88cc826d22f929047efad902cfbc8b56084e3f5721c82a9836587e755","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_audience_reformulation_technical_public_03_listen -> audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('af4048d3-8cbb-5845-88b8-7cb8cdd7579e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_audience_reformulation_technical_public_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5989faf646796017c39790acd64491a77e887c2aa885a226377bf6999433762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('999b8487-3798-52a6-8949-d7607b3cdb82', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('af4048d3-8cbb-5845-88b8-7cb8cdd7579e', 1), 'b5989faf646796017c39790acd64491a77e887c2aa885a226377bf6999433762',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3', 4127, '2026-09-13 11:33:45.759430', '8f7453e88cc826d22f929047efad902cfbc8b56084e3f5721c82a9836587e755', 'validated', '{"audio_key":"ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a","entity_key":"ex_audience_reformulation_technical_public_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f7453e88cc826d22f929047efad902cfbc8b56084e3f5721c82a9836587e755","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ebe09f1358d7503404143f86e8458d79bb32ead7282774ddd8efa9e53723189a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_03 -> audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4ac7f33-0679-5e12-930f-9e0c0058392e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78671c41e9e8fc76d98a86fa88008c5310632f3e4bd72b21a0f00de371d0b24a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c561c83-864e-57bd-ae2c-99d3010ea61d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4ac7f33-0679-5e12-930f-9e0c0058392e', 1), '78671c41e9e8fc76d98a86fa88008c5310632f3e4bd72b21a0f00de371d0b24a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3', 5929, '2026-09-13 11:33:46.296821', 'bca35dc95f45f2c94ede8c08134e39c4411f8736583c1bf19f7da7c3a87e185e', 'validated', '{"audio_key":"ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2","entity_key":"u_evidentiality_epistemic_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bca35dc95f45f2c94ede8c08134e39c4411f8736583c1bf19f7da7c3a87e185e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidentiality_epistemic_calibration_02_listen -> audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4ddab749-3563-5926-b696-f98a1b442d51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidentiality_epistemic_calibration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78671c41e9e8fc76d98a86fa88008c5310632f3e4bd72b21a0f00de371d0b24a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74234bc7-a330-5fbf-8ac2-35e68e75f7e2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4ddab749-3563-5926-b696-f98a1b442d51', 1), '78671c41e9e8fc76d98a86fa88008c5310632f3e4bd72b21a0f00de371d0b24a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3', 5929, '2026-09-13 11:33:46.296821', 'bca35dc95f45f2c94ede8c08134e39c4411f8736583c1bf19f7da7c3a87e185e', 'validated', '{"audio_key":"ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2","entity_key":"ex_evidentiality_epistemic_calibration_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bca35dc95f45f2c94ede8c08134e39c4411f8736583c1bf19f7da7c3a87e185e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ec9b1b1675d4f491462690f2f7aac6be01f3be55eb57a9c55871030b4d559de2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metacommunication_misunderstanding_repair_03 -> audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df853be1-7ddd-54b5-b316-d2e0ab949330', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metacommunication_misunderstanding_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69d839db7c53aa8eeb41ee083ec5c2189d0e1fa66670659a809ce2954e3d309f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51372fc7-1bc9-5322-8203-5ec313226862', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df853be1-7ddd-54b5-b316-d2e0ab949330', 1), '69d839db7c53aa8eeb41ee083ec5c2189d0e1fa66670659a809ce2954e3d309f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3', 4545, '2026-09-13 11:33:47.120241', 'f288539de4db2ca5e7c9cdc2d72fd9b1b891e6a6da1eec4dc735c958be8a9e69', 'validated', '{"audio_key":"ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b","entity_key":"u_metacommunication_misunderstanding_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f288539de4db2ca5e7c9cdc2d72fd9b1b891e6a6da1eec4dc735c958be8a9e69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metacommunication_misunderstanding_repair_02_listen -> audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('50895fc3-ce9f-5148-b5eb-93019b38e152', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metacommunication_misunderstanding_repair_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69d839db7c53aa8eeb41ee083ec5c2189d0e1fa66670659a809ce2954e3d309f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47aae4d0-7bd9-51dd-9e5a-ae053c99739d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('50895fc3-ce9f-5148-b5eb-93019b38e152', 1), '69d839db7c53aa8eeb41ee083ec5c2189d0e1fa66670659a809ce2954e3d309f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3', 4545, '2026-09-13 11:33:47.120241', 'f288539de4db2ca5e7c9cdc2d72fd9b1b891e6a6da1eec4dc735c958be8a9e69', 'validated', '{"audio_key":"ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b","entity_key":"ex_metacommunication_misunderstanding_repair_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f288539de4db2ca5e7c9cdc2d72fd9b1b891e6a6da1eec4dc735c958be8a9e69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed5fd69202a31582c0a03ea239e3c18d33ba9a99c9ed5e79c1bd5873a135bc8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidentiality_epistemic_calibration_02 -> audio/generated/de-DE/utterances/ef69268ad41e891a42cdb62bc0a9bda4cfbd3e0d0180dc1cb87039fe20bcdce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('36904650-2595-5cce-a7b7-425bb090084b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidentiality_epistemic_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94a517d8dffc68af9fe53fe0b1dfede5c3fd24e168565956f0c18c6f1fbb57e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcf7e822-86c7-596e-b1da-f32847f3b45f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('36904650-2595-5cce-a7b7-425bb090084b', 1), '94a517d8dffc68af9fe53fe0b1dfede5c3fd24e168565956f0c18c6f1fbb57e2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef69268ad41e891a42cdb62bc0a9bda4cfbd3e0d0180dc1cb87039fe20bcdce2.mp3', 5877, '2026-09-13 11:33:47.804349', '03ad0798962cd663d3cddba4be906edcc27fe1b5c74fdc347397830719a9dc41', 'validated', '{"audio_key":"ef69268ad41e891a42cdb62bc0a9bda4cfbd3e0d0180dc1cb87039fe20bcdce2","entity_key":"u_evidentiality_epistemic_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03ad0798962cd663d3cddba4be906edcc27fe1b5c74fdc347397830719a9dc41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef69268ad41e891a42cdb62bc0a9bda4cfbd3e0d0180dc1cb87039fe20bcdce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_modal_commitment_precision_01 -> audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8652470c-0acd-546f-a4d0-3d9451ed3d78', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_modal_commitment_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84bdfa8d33a9783c7edf1e6a6a8e97933015a35859f2d8b05082f2da72958208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f02c765c-a5f0-5eed-b36a-3483f59a3f40', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8652470c-0acd-546f-a4d0-3d9451ed3d78', 1), '84bdfa8d33a9783c7edf1e6a6a8e97933015a35859f2d8b05082f2da72958208',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3', 5198, '2026-09-13 11:33:48.610992', 'f2f8e09e5bd8f759ff585f7f7ab74490a6236c53541a98777dd14fbfee9e20b4', 'validated', '{"audio_key":"f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f","entity_key":"u_modal_commitment_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2f8e09e5bd8f759ff585f7f7ab74490a6236c53541a98777dd14fbfee9e20b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_modal_commitment_precision_01_listen -> audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('66577d64-21f2-564e-a4c7-f1c800db6d55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_modal_commitment_precision_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84bdfa8d33a9783c7edf1e6a6a8e97933015a35859f2d8b05082f2da72958208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dac7cbc1-3982-5688-9b0b-3c502aca48e3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('66577d64-21f2-564e-a4c7-f1c800db6d55', 1), '84bdfa8d33a9783c7edf1e6a6a8e97933015a35859f2d8b05082f2da72958208',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3', 5198, '2026-09-13 11:33:48.610992', 'f2f8e09e5bd8f759ff585f7f7ab74490a6236c53541a98777dd14fbfee9e20b4', 'validated', '{"audio_key":"f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f","entity_key":"ex_modal_commitment_precision_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2f8e09e5bd8f759ff585f7f7ab74490a6236c53541a98777dd14fbfee9e20b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f54fcb21b42a5a65aee0bd40bcb5eb9050c3659e18d6368f4326da1e9ac7d86f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_terminology_negotiation_concept_boundaries_06 -> audio/generated/de-DE/utterances/f572184827e0c6fc2cd9bbe41b62e1bc0d379a2c36b50503122e31d29b699b6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8861ae33-194d-58e4-862d-9f500ee445b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_terminology_negotiation_concept_boundaries_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9767e84aa77d21c65ab6a8af0efe75832c43a865a0f6c5afcd29b345d160a54c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('994439ab-7c67-5951-843d-2c61994d45a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8861ae33-194d-58e4-862d-9f500ee445b5', 1), '9767e84aa77d21c65ab6a8af0efe75832c43a865a0f6c5afcd29b345d160a54c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f572184827e0c6fc2cd9bbe41b62e1bc0d379a2c36b50503122e31d29b699b6e.mp3', 4780, '2026-09-13 11:33:49.219810', 'c813bd2f591035e959c42dcfb29beb41fb81847f9fa74e5aea112a436a5dc98a', 'validated', '{"audio_key":"f572184827e0c6fc2cd9bbe41b62e1bc0d379a2c36b50503122e31d29b699b6e","entity_key":"u_terminology_negotiation_concept_boundaries_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c813bd2f591035e959c42dcfb29beb41fb81847f9fa74e5aea112a436a5dc98a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f572184827e0c6fc2cd9bbe41b62e1bc0d379a2c36b50503122e31d29b699b6e.mp3"}'
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

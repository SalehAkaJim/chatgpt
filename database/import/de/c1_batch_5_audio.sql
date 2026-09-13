-- Generated audio link import for de-DE C1
-- Source manifest: audio/manifests/de/C1-batch-5.json
-- Generated rows: 165
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_professional_boundaries_judgment_03:3 -> audio/generated/de-DE/dialogues/08c0799be0f847436f8c598d4eefdf8e03fa01f4ed4da76a611482fb4f038266.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3089282-1742-5f27-8787-7f36222d0444', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6ded468751d81858436b991bcbf7fab3af7935f1536fb31edc533bbd66e9b61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca545b2f-1f2a-57a4-a075-74cc5e7f78e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3089282-1742-5f27-8787-7f36222d0444', 1), 'b6ded468751d81858436b991bcbf7fab3af7935f1536fb31edc533bbd66e9b61',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/08c0799be0f847436f8c598d4eefdf8e03fa01f4ed4da76a611482fb4f038266.mp3', 4440, '2026-09-13 11:00:25.414489', '28880091ffb79b442111ed2e5a8cad4a13db401b37e4e00ac23f98886c716c4a', 'validated', '{"audio_key":"08c0799be0f847436f8c598d4eefdf8e03fa01f4ed4da76a611482fb4f038266","entity_key":"d_professional_boundaries_judgment_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28880091ffb79b442111ed2e5a8cad4a13db401b37e4e00ac23f98886c716c4a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/08c0799be0f847436f8c598d4eefdf8e03fa01f4ed4da76a611482fb4f038266.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_01:4 -> audio/generated/de-DE/dialogues/0bbdc9ed86e334de03bba6a32db5610e1bafa6f2c932b7a5b6c965cdaa9db2c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('264fdb6c-ace4-50c0-8433-dacc3a666060', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7609bce4a81ca25bdc8058cfe67fc6a28592fbd541deb9c39654b0db486e491'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3129b592-01cc-58fb-acd0-b0deb0b34205', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('264fdb6c-ace4-50c0-8433-dacc3a666060', 1), 'e7609bce4a81ca25bdc8058cfe67fc6a28592fbd541deb9c39654b0db486e491',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0bbdc9ed86e334de03bba6a32db5610e1bafa6f2c932b7a5b6c965cdaa9db2c7.mp3', 6400, '2026-09-13 11:00:25.629002', 'cf3678c237aa7861ce8575e40bfdb93e39418465dcb5b9bffcba516eb03d4ef0', 'validated', '{"audio_key":"0bbdc9ed86e334de03bba6a32db5610e1bafa6f2c932b7a5b6c965cdaa9db2c7","entity_key":"d_risk_assessment_communication_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cf3678c237aa7861ce8575e40bfdb93e39418465dcb5b9bffcba516eb03d4ef0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0bbdc9ed86e334de03bba6a32db5610e1bafa6f2c932b7a5b6c965cdaa9db2c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_03:4 -> audio/generated/de-DE/dialogues/0c04d50278f967760203dc93090838b7ad723d6789facba5fc74c08a96ce9951.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f66ac74e-9652-50f0-8b06-8838af9cd283', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd41addc6dc5ea136315642982182df68b55b3b22e5c485c2ed938b8b3be93314'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0557e41-b059-5157-9970-1b687b9fd4ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f66ac74e-9652-50f0-8b06-8838af9cd283', 1), 'd41addc6dc5ea136315642982182df68b55b3b22e5c485c2ed938b8b3be93314',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c04d50278f967760203dc93090838b7ad723d6789facba5fc74c08a96ce9951.mp3', 4127, '2026-09-13 11:00:26.765059', '216ddcda4d5f8e4f77555a94fef162ec84d3206aceaf0326a6b66d6d2c2af6ad', 'validated', '{"audio_key":"0c04d50278f967760203dc93090838b7ad723d6789facba5fc74c08a96ce9951","entity_key":"d_decision_review_revision_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"216ddcda4d5f8e4f77555a94fef162ec84d3206aceaf0326a6b66d6d2c2af6ad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0c04d50278f967760203dc93090838b7ad723d6789facba5fc74c08a96ce9951.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_02:3 -> audio/generated/de-DE/dialogues/0c44ed0bc4533451d3b29612418f761c17d2b69bd04d04b89b3b169ee88d5b97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('178723e7-0e2e-57f6-9b77-149c0d2e5ce8', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7101fe538558c086bc0bde30394bb8fd66b558a5b67d2cc59985f9bde0fff430'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4eca15f7-f9d8-5371-a35d-4a82a003bf4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('178723e7-0e2e-57f6-9b77-149c0d2e5ce8', 1), '7101fe538558c086bc0bde30394bb8fd66b558a5b67d2cc59985f9bde0fff430',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c44ed0bc4533451d3b29612418f761c17d2b69bd04d04b89b3b169ee88d5b97.mp3', 4858, '2026-09-13 11:00:27.061602', '30d435555b4e5f8a04cdbc939fee5f7d72e187b13a746ec3cdce0a329129d42c', 'validated', '{"audio_key":"0c44ed0bc4533451d3b29612418f761c17d2b69bd04d04b89b3b169ee88d5b97","entity_key":"d_professional_boundaries_judgment_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30d435555b4e5f8a04cdbc939fee5f7d72e187b13a746ec3cdce0a329129d42c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0c44ed0bc4533451d3b29612418f761c17d2b69bd04d04b89b3b169ee88d5b97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_02:4 -> audio/generated/de-DE/dialogues/12253146d387051df90a2287baccccdad2add88922dda1e600203f7d81654ddd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7302fb78-47a5-5a12-b50e-4f7a27772d17', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f6e3cd8189ce44f27b98e7f89f18681d62a11b1de789d834d6da47668881840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36b0c490-0ef2-5428-b5a5-21f5ac27991e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7302fb78-47a5-5a12-b50e-4f7a27772d17', 1), '3f6e3cd8189ce44f27b98e7f89f18681d62a11b1de789d834d6da47668881840',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/12253146d387051df90a2287baccccdad2add88922dda1e600203f7d81654ddd.mp3', 5877, '2026-09-13 11:00:28.426183', 'fa7f507dc3355d009919d6e4f531f01656c9a9a48cb1aec820712eb219c0a74c', 'validated', '{"audio_key":"12253146d387051df90a2287baccccdad2add88922dda1e600203f7d81654ddd","entity_key":"d_causal_reasoning_counterfactuals_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fa7f507dc3355d009919d6e4f531f01656c9a9a48cb1aec820712eb219c0a74c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/12253146d387051df90a2287baccccdad2add88922dda1e600203f7d81654ddd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_01:1 -> audio/generated/de-DE/dialogues/125ca64a8b7eaf6a9642cbdb424bdaba4983afc30863c079fe01f67225b455ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a41194d-3a18-5672-a693-73e3c32aec6e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea112a51c9236d430a5f53fd4667e11c62a7baccbd12ffee2c48d4501ee1b06e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c46c14c7-d614-555a-9761-6bbf9a914125', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a41194d-3a18-5672-a693-73e3c32aec6e', 1), 'ea112a51c9236d430a5f53fd4667e11c62a7baccbd12ffee2c48d4501ee1b06e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/125ca64a8b7eaf6a9642cbdb424bdaba4983afc30863c079fe01f67225b455ef.mp3', 6347, '2026-09-13 11:00:28.628955', '1dc6e4f53e523203df8a3b60b95dc86e7f67b5a7d566903128461d06a02826ae', 'validated', '{"audio_key":"125ca64a8b7eaf6a9642cbdb424bdaba4983afc30863c079fe01f67225b455ef","entity_key":"d_causal_reasoning_counterfactuals_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1dc6e4f53e523203df8a3b60b95dc86e7f67b5a7d566903128461d06a02826ae","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/125ca64a8b7eaf6a9642cbdb424bdaba4983afc30863c079fe01f67225b455ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_03:1 -> audio/generated/de-DE/dialogues/1299b304e11bcc9d626b9322c09120ef4aef50b7925b911f58d5f361651d7e96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33b46a3c-9409-5466-8e00-b07034b7b958', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e1525fd2c03d32d8b0f80d2e2344b7642ff828a7113a27c6f6d6dd36b251ee1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2368484-3af9-59a3-af8b-f0259c3c927e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33b46a3c-9409-5466-8e00-b07034b7b958', 1), '3e1525fd2c03d32d8b0f80d2e2344b7642ff828a7113a27c6f6d6dd36b251ee1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1299b304e11bcc9d626b9322c09120ef4aef50b7925b911f58d5f361651d7e96.mp3', 5668, '2026-09-13 11:00:30.013367', '1fe175fb3a1e416db5e9019c43c0b9f3071e6025028b5d00ef5c9a626594c60a', 'validated', '{"audio_key":"1299b304e11bcc9d626b9322c09120ef4aef50b7925b911f58d5f361651d7e96","entity_key":"d_decision_review_revision_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1fe175fb3a1e416db5e9019c43c0b9f3071e6025028b5d00ef5c9a626594c60a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1299b304e11bcc9d626b9322c09120ef4aef50b7925b911f58d5f361651d7e96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_01:2 -> audio/generated/de-DE/dialogues/1cc011435b224055533a30ab7ef403d1c60568edc9f0460fac7ee35d5c6b4c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c05eb40-4b53-563a-9ef3-c2fa352f5fe0', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb83543ad4b7d0a747b8d146ed3536622e0a0f608bb0d02f710bdaafe731c2a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('331a3631-9d8c-5089-80d6-5ab62226041e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c05eb40-4b53-563a-9ef3-c2fa352f5fe0', 1), 'bb83543ad4b7d0a747b8d146ed3536622e0a0f608bb0d02f710bdaafe731c2a6',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1cc011435b224055533a30ab7ef403d1c60568edc9f0460fac7ee35d5c6b4c53.mp3', 5041, '2026-09-13 11:00:30.183834', '204b9ce4d3d492c42776cdbcf5feb3f3b9b8b98d2efa8e4660c8a7e8101ad9db', 'validated', '{"audio_key":"1cc011435b224055533a30ab7ef403d1c60568edc9f0460fac7ee35d5c6b4c53","entity_key":"d_risk_assessment_communication_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"204b9ce4d3d492c42776cdbcf5feb3f3b9b8b98d2efa8e4660c8a7e8101ad9db","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1cc011435b224055533a30ab7ef403d1c60568edc9f0460fac7ee35d5c6b4c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_01:4 -> audio/generated/de-DE/dialogues/230ebccaf02cdd1bfc754ccee87a3e7ba342fc8ef4e89ffb64891f8def1a0858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('842865f3-2874-5ca2-a3d7-2e1f7435b99a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ea6ea8faab97a84ee75cbeea099a987afbe0c0d7de184de07f10499f20d424a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f4de1e0-a75b-5a24-b031-987c70a4a7f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('842865f3-2874-5ca2-a3d7-2e1f7435b99a', 1), '6ea6ea8faab97a84ee75cbeea099a987afbe0c0d7de184de07f10499f20d424a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/230ebccaf02cdd1bfc754ccee87a3e7ba342fc8ef4e89ffb64891f8def1a0858.mp3', 4362, '2026-09-13 11:00:31.420051', 'b224d92caafda9b98820333110e24b31451e1a6b7a1a0b2cae19bc7e298b174a', 'validated', '{"audio_key":"230ebccaf02cdd1bfc754ccee87a3e7ba342fc8ef4e89ffb64891f8def1a0858","entity_key":"d_professional_boundaries_judgment_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b224d92caafda9b98820333110e24b31451e1a6b7a1a0b2cae19bc7e298b174a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/230ebccaf02cdd1bfc754ccee87a3e7ba342fc8ef4e89ffb64891f8def1a0858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_01:1 -> audio/generated/de-DE/dialogues/243115e3d1d85610de0bdd2aa884c67445a395b670ddd90cf9f5f4334efa56f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53c6ffb7-68e2-5f33-8ca9-026a3795416e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab8fb08fdbb7f4512b9b0068938dcf9a797f8ec9b532e0f3a40f949b5ef70613'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05802be4-d649-5699-9bcc-eb67dadafd57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53c6ffb7-68e2-5f33-8ca9-026a3795416e', 1), 'ab8fb08fdbb7f4512b9b0068938dcf9a797f8ec9b532e0f3a40f949b5ef70613',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/243115e3d1d85610de0bdd2aa884c67445a395b670ddd90cf9f5f4334efa56f0.mp3', 4493, '2026-09-13 11:00:31.542650', '5365a130d73c1cb838cddbdc4108abf394bdb6a2d026f6e6d507b3e6d4838731', 'validated', '{"audio_key":"243115e3d1d85610de0bdd2aa884c67445a395b670ddd90cf9f5f4334efa56f0","entity_key":"d_professional_boundaries_judgment_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5365a130d73c1cb838cddbdc4108abf394bdb6a2d026f6e6d507b3e6d4838731","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/243115e3d1d85610de0bdd2aa884c67445a395b670ddd90cf9f5f4334efa56f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_03:1 -> audio/generated/de-DE/dialogues/2b39d0812dd345b2574d0b669c6566652c4e9f0694b39bf4a6d46d0521d14f6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('893b7425-9b43-5a40-9298-2019b25e0f3e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3589b87d00b83ad1f0f0460668da8ab0e3118067fde66253b821a328bb509a77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02453bca-71d0-51e6-90fd-3baf17cd71a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('893b7425-9b43-5a40-9298-2019b25e0f3e', 1), '3589b87d00b83ad1f0f0460668da8ab0e3118067fde66253b821a328bb509a77',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b39d0812dd345b2574d0b669c6566652c4e9f0694b39bf4a6d46d0521d14f6d.mp3', 5877, '2026-09-13 11:00:32.986572', '6b97f570cb0d67dc0d64d8caecdf1f770d466a999f336ef326acffa147d89b50', 'validated', '{"audio_key":"2b39d0812dd345b2574d0b669c6566652c4e9f0694b39bf4a6d46d0521d14f6d","entity_key":"d_causal_reasoning_counterfactuals_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6b97f570cb0d67dc0d64d8caecdf1f770d466a999f336ef326acffa147d89b50","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2b39d0812dd345b2574d0b669c6566652c4e9f0694b39bf4a6d46d0521d14f6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_03:4 -> audio/generated/de-DE/dialogues/3032b69128d199e680924798ba23255398cce22735fad4a729a45a93e1153045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7592ed7-3173-5f9d-bdcf-100bcf8f5e7e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cbabceda4736caf9983cb9106a014757a761d5d76600769deae5e0e7c495e58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('763ee4d4-93c1-545f-99e7-1ce4fbc35133', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7592ed7-3173-5f9d-bdcf-100bcf8f5e7e', 1), '2cbabceda4736caf9983cb9106a014757a761d5d76600769deae5e0e7c495e58',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3032b69128d199e680924798ba23255398cce22735fad4a729a45a93e1153045.mp3', 4780, '2026-09-13 11:00:32.907740', 'cb89f3cfe75f3da802610921a8ef1dd493950a6c01fe461dbf7efbcd011b3be1', 'validated', '{"audio_key":"3032b69128d199e680924798ba23255398cce22735fad4a729a45a93e1153045","entity_key":"d_causal_reasoning_counterfactuals_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cb89f3cfe75f3da802610921a8ef1dd493950a6c01fe461dbf7efbcd011b3be1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3032b69128d199e680924798ba23255398cce22735fad4a729a45a93e1153045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_02:2 -> audio/generated/de-DE/dialogues/30f8174841c9c066ffd7a30c79e5bf0aa922f4d2e81cb0f3f9e0cceadfe84570.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24accd3b-15d1-5356-94af-d48b81d2131d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8453ee34064d7bf849e08c413ff26a5226584bf85c95f7c2dd34725069dafdd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b61787bb-779c-5314-ac03-7e2b29630a2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24accd3b-15d1-5356-94af-d48b81d2131d', 1), '8453ee34064d7bf849e08c413ff26a5226584bf85c95f7c2dd34725069dafdd7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30f8174841c9c066ffd7a30c79e5bf0aa922f4d2e81cb0f3f9e0cceadfe84570.mp3', 8620, '2026-09-13 11:00:34.708672', '182c179ea27992532916223245eac1bea82d79869b33189eddfa301ce6b3fd66', 'validated', '{"audio_key":"30f8174841c9c066ffd7a30c79e5bf0aa922f4d2e81cb0f3f9e0cceadfe84570","entity_key":"d_professional_boundaries_judgment_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"182c179ea27992532916223245eac1bea82d79869b33189eddfa301ce6b3fd66","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/30f8174841c9c066ffd7a30c79e5bf0aa922f4d2e81cb0f3f9e0cceadfe84570.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_01:4 -> audio/generated/de-DE/dialogues/33634d23a835678fd9421cffc2f35cc3d1fc8434a3e869251bba15085dfc7071.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('418d8f0a-12ad-56f6-83e9-93229fb459e4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bc4fac9ee096bed9c690102e238fd10b119a05bfc0f657893708a0aee92cc95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5930a4b4-5342-56e3-872b-8e7732be0000', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('418d8f0a-12ad-56f6-83e9-93229fb459e4', 1), '2bc4fac9ee096bed9c690102e238fd10b119a05bfc0f657893708a0aee92cc95',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/33634d23a835678fd9421cffc2f35cc3d1fc8434a3e869251bba15085dfc7071.mp3', 5564, '2026-09-13 11:00:34.625144', '28108224d57770a03b1a64d08850d57a5a7a128ed027267bd03477d31ed09f2e', 'validated', '{"audio_key":"33634d23a835678fd9421cffc2f35cc3d1fc8434a3e869251bba15085dfc7071","entity_key":"d_integrated_judgment_capstone_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"28108224d57770a03b1a64d08850d57a5a7a128ed027267bd03477d31ed09f2e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/33634d23a835678fd9421cffc2f35cc3d1fc8434a3e869251bba15085dfc7071.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_02:4 -> audio/generated/de-DE/dialogues/3378dcb1736b392d42f99034f79fc71c8b49e954b70cf4949871a7afcaaa0bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9270cc0f-8524-59af-9d40-d0e06256ca59', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9d40853e86a268e4b721eff93f775d59546ec46950c99e1d4302040ce7898e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56dd6628-b768-576a-87a4-8ab3917f3218', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9270cc0f-8524-59af-9d40-d0e06256ca59', 1), 'f9d40853e86a268e4b721eff93f775d59546ec46950c99e1d4302040ce7898e4',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3378dcb1736b392d42f99034f79fc71c8b49e954b70cf4949871a7afcaaa0bf5.mp3', 3840, '2026-09-13 11:00:35.967707', '521a2d49f9c5adf3c5844d1bedcdbe3d52e01400baf7d4edb5ecf89701ed967a', 'validated', '{"audio_key":"3378dcb1736b392d42f99034f79fc71c8b49e954b70cf4949871a7afcaaa0bf5","entity_key":"d_risk_assessment_communication_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"521a2d49f9c5adf3c5844d1bedcdbe3d52e01400baf7d4edb5ecf89701ed967a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3378dcb1736b392d42f99034f79fc71c8b49e954b70cf4949871a7afcaaa0bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_03:1 -> audio/generated/de-DE/dialogues/38f97d9de6743ec73da376fbfc6b0384124390fc4bc7cda0f206d85d73e3d73f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d13792a-9f17-5d1d-b667-fd5f5c5a1b61', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd27660b16e60beb93ac2253b55b636ad081e438f1a5a0864282d8d8124cc0223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e8ff332-b3c8-5bc8-bf71-55916f373be1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d13792a-9f17-5d1d-b667-fd5f5c5a1b61', 1), 'd27660b16e60beb93ac2253b55b636ad081e438f1a5a0864282d8d8124cc0223',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/38f97d9de6743ec73da376fbfc6b0384124390fc4bc7cda0f206d85d73e3d73f.mp3', 4728, '2026-09-13 11:00:36.131298', '9aa646c48837108901069581ebb764e120518bf9efe000093d67224a380955e1', 'validated', '{"audio_key":"38f97d9de6743ec73da376fbfc6b0384124390fc4bc7cda0f206d85d73e3d73f","entity_key":"d_professional_boundaries_judgment_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9aa646c48837108901069581ebb764e120518bf9efe000093d67224a380955e1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/38f97d9de6743ec73da376fbfc6b0384124390fc4bc7cda0f206d85d73e3d73f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_01:1 -> audio/generated/de-DE/dialogues/4539f905a3581bc6198f3f8eda366e23f2227b530e1d28bb27db1b471f1ad9e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63de4d67-8301-5997-8835-9fb3d0ce83b2', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69bffcf6fc066cf28478a228528e40e36af9d571af68653e959e623e548a8bdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26092ac6-1988-5661-a980-1536ec302124', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63de4d67-8301-5997-8835-9fb3d0ce83b2', 1), '69bffcf6fc066cf28478a228528e40e36af9d571af68653e959e623e548a8bdc',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4539f905a3581bc6198f3f8eda366e23f2227b530e1d28bb27db1b471f1ad9e3.mp3', 4257, '2026-09-13 11:00:37.246430', 'ca14887995678e9c1e0199b1c5ad52b4ad8e10001774a153a81a92e1a892dba0', 'validated', '{"audio_key":"4539f905a3581bc6198f3f8eda366e23f2227b530e1d28bb27db1b471f1ad9e3","entity_key":"d_integrated_judgment_capstone_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ca14887995678e9c1e0199b1c5ad52b4ad8e10001774a153a81a92e1a892dba0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4539f905a3581bc6198f3f8eda366e23f2227b530e1d28bb27db1b471f1ad9e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_01:3 -> audio/generated/de-DE/dialogues/46b8c52c4e6211d8060130c32d2477ced7d946538e5c9a6b65ea41d067ac958c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb0352a6-8a9e-51e4-85a0-1a4371ce7e1c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17dbe344620981c20b9b3f73919f2cd6ca9a972a59fc5a494d640a46f894b93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fd391b0-fa8b-5511-9689-53186adfff01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb0352a6-8a9e-51e4-85a0-1a4371ce7e1c', 1), '17dbe344620981c20b9b3f73919f2cd6ca9a972a59fc5a494d640a46f894b93b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/46b8c52c4e6211d8060130c32d2477ced7d946538e5c9a6b65ea41d067ac958c.mp3', 5511, '2026-09-13 11:00:37.686283', 'a815ff51325dc39b47535aa9bd81e185b835e7ddc05de75f1cb7946ef3b30d20', 'validated', '{"audio_key":"46b8c52c4e6211d8060130c32d2477ced7d946538e5c9a6b65ea41d067ac958c","entity_key":"d_professional_boundaries_judgment_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a815ff51325dc39b47535aa9bd81e185b835e7ddc05de75f1cb7946ef3b30d20","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/46b8c52c4e6211d8060130c32d2477ced7d946538e5c9a6b65ea41d067ac958c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_01:4 -> audio/generated/de-DE/dialogues/4810c59445df9ef4bf7e54bd5555f31b120775dd7a5b8aeb31e716cfd4e13623.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7a92cbb-49b5-5887-a20f-533319ae3783', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '717df26f8d51e0a7562a54dcfe5757d2102c3974fe3a39ceaf74999c7718eaf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21afad51-b61a-5c34-9cbd-ddf51efa2df4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7a92cbb-49b5-5887-a20f-533319ae3783', 1), '717df26f8d51e0a7562a54dcfe5757d2102c3974fe3a39ceaf74999c7718eaf8',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4810c59445df9ef4bf7e54bd5555f31b120775dd7a5b8aeb31e716cfd4e13623.mp3', 4205, '2026-09-13 11:00:38.608001', '820ad5bbefcfa5c044e3a17ecdc9c8de2de17c1b4a7fd5729b72a55d144d1252', 'validated', '{"audio_key":"4810c59445df9ef4bf7e54bd5555f31b120775dd7a5b8aeb31e716cfd4e13623","entity_key":"d_decision_review_revision_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"820ad5bbefcfa5c044e3a17ecdc9c8de2de17c1b4a7fd5729b72a55d144d1252","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4810c59445df9ef4bf7e54bd5555f31b120775dd7a5b8aeb31e716cfd4e13623.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_02:2 -> audio/generated/de-DE/dialogues/4836e7efcb79e6ba92de542edae6d181ca73f411090b0577eee30097c5c82ca2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ca1271a-c535-52c3-93e7-679eeb2d95c2', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd97b9986cc30f5bfd0cddc78bad9781e5749620391c1ec6903a28c07fbe1d94a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5983463e-343e-52c7-ad64-e7df6cc1f79f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ca1271a-c535-52c3-93e7-679eeb2d95c2', 1), 'd97b9986cc30f5bfd0cddc78bad9781e5749620391c1ec6903a28c07fbe1d94a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4836e7efcb79e6ba92de542edae6d181ca73f411090b0577eee30097c5c82ca2.mp3', 4728, '2026-09-13 11:00:39.049761', '32e63e3bc32f19687342090d6045477cea1acb888bf2de6dcf82f606c2afc776', 'validated', '{"audio_key":"4836e7efcb79e6ba92de542edae6d181ca73f411090b0577eee30097c5c82ca2","entity_key":"d_causal_reasoning_counterfactuals_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"32e63e3bc32f19687342090d6045477cea1acb888bf2de6dcf82f606c2afc776","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4836e7efcb79e6ba92de542edae6d181ca73f411090b0577eee30097c5c82ca2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_03:2 -> audio/generated/de-DE/dialogues/4dcc76148e215945d8e33889c5c7349a00448f852c01ea4a8465af28a57f887b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de4191cb-37df-546e-83c5-324b64149269', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9104716febeb224127413362c7e112ab4542e7b4a09cb26ee18bd1ee052f9d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32a0c5bb-2d99-5eff-8506-bb712aa4b7d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de4191cb-37df-546e-83c5-324b64149269', 1), 'a9104716febeb224127413362c7e112ab4542e7b4a09cb26ee18bd1ee052f9d8',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4dcc76148e215945d8e33889c5c7349a00448f852c01ea4a8465af28a57f887b.mp3', 4257, '2026-09-13 11:00:39.898836', '26ff38a4b5aee8ccd5aa5b321f28365455b7734a3ad606244154e006817e15ae', 'validated', '{"audio_key":"4dcc76148e215945d8e33889c5c7349a00448f852c01ea4a8465af28a57f887b","entity_key":"d_causal_reasoning_counterfactuals_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26ff38a4b5aee8ccd5aa5b321f28365455b7734a3ad606244154e006817e15ae","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4dcc76148e215945d8e33889c5c7349a00448f852c01ea4a8465af28a57f887b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_01:2 -> audio/generated/de-DE/dialogues/4fee51e3eb7ebde0967a6dadb843826c96d022c9f78db0dfec946dc0518ee314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f32f65f-f3d4-54b0-98a1-b3295fccd4e2', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '427c3a66b2e8ee0717c4cdd2f77c8b1848cec339953d8edefa386aef374e066e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33bb6a41-ba55-5f47-a4d9-159be2fdb6b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f32f65f-f3d4-54b0-98a1-b3295fccd4e2', 1), '427c3a66b2e8ee0717c4cdd2f77c8b1848cec339953d8edefa386aef374e066e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4fee51e3eb7ebde0967a6dadb843826c96d022c9f78db0dfec946dc0518ee314.mp3', 5433, '2026-09-13 11:00:40.536035', 'a094eaa113b660597b9eea93bc25f4e3e77c73686046076b7249269df398246a', 'validated', '{"audio_key":"4fee51e3eb7ebde0967a6dadb843826c96d022c9f78db0dfec946dc0518ee314","entity_key":"d_causal_reasoning_counterfactuals_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a094eaa113b660597b9eea93bc25f4e3e77c73686046076b7249269df398246a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4fee51e3eb7ebde0967a6dadb843826c96d022c9f78db0dfec946dc0518ee314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_03:1 -> audio/generated/de-DE/dialogues/52e321c7ae6c3d5d27c055d0fae43aa2f4476b2f174d401ce60edd4195a7ffb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91b5a739-b736-56e6-a2da-a4eef8e7be6e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f38e17b7a97bcbad3854baf0a53d63a8775166711252353f705589d087cfc241'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80e8f6e3-eb5c-59bf-907b-c210cf8545f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91b5a739-b736-56e6-a2da-a4eef8e7be6e', 1), 'f38e17b7a97bcbad3854baf0a53d63a8775166711252353f705589d087cfc241',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/52e321c7ae6c3d5d27c055d0fae43aa2f4476b2f174d401ce60edd4195a7ffb0.mp3', 4414, '2026-09-13 11:00:41.272383', '69bac24a21517c991d36d065cdb17942870152c601c8e9be69f9cf2c088849fc', 'validated', '{"audio_key":"52e321c7ae6c3d5d27c055d0fae43aa2f4476b2f174d401ce60edd4195a7ffb0","entity_key":"d_risk_assessment_communication_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"69bac24a21517c991d36d065cdb17942870152c601c8e9be69f9cf2c088849fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/52e321c7ae6c3d5d27c055d0fae43aa2f4476b2f174d401ce60edd4195a7ffb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_01:3 -> audio/generated/de-DE/dialogues/53390ab987ab5aa75f13d292a6d6de8ff7ebc9592ad8afed60b7de529ae1131f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('723deabd-e1cd-54f0-a149-5563dc16cf65', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70679a019eea6fb05a1d3c1d729aeb960510b4d221148f248188fb660a65645d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea65b066-bc4e-5ea4-93e9-bae5fb54e113', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('723deabd-e1cd-54f0-a149-5563dc16cf65', 1), '70679a019eea6fb05a1d3c1d729aeb960510b4d221148f248188fb660a65645d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/53390ab987ab5aa75f13d292a6d6de8ff7ebc9592ad8afed60b7de529ae1131f.mp3', 4597, '2026-09-13 11:00:41.899116', 'b5d2a9d0d70d7f3d7fbd1eaa22c19ec0500aafedbe09a7c6bad2fc616afd98f5', 'validated', '{"audio_key":"53390ab987ab5aa75f13d292a6d6de8ff7ebc9592ad8afed60b7de529ae1131f","entity_key":"d_causal_reasoning_counterfactuals_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b5d2a9d0d70d7f3d7fbd1eaa22c19ec0500aafedbe09a7c6bad2fc616afd98f5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/53390ab987ab5aa75f13d292a6d6de8ff7ebc9592ad8afed60b7de529ae1131f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_02:4 -> audio/generated/de-DE/dialogues/5d133ba5d39840ad8141c0f7f5b2914884ad537270adfb72e7dbc623c088db0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea831c1c-6dc5-5592-86e5-48eba9c95c6c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1f484fc2385f952d30b907cf7f993ce7df7b0ca9a8e969d09ee3a0ac1d5e039'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6bd12a1-58a6-5f36-8f9c-9ddd4abc1bf3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea831c1c-6dc5-5592-86e5-48eba9c95c6c', 1), 'd1f484fc2385f952d30b907cf7f993ce7df7b0ca9a8e969d09ee3a0ac1d5e039',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d133ba5d39840ad8141c0f7f5b2914884ad537270adfb72e7dbc623c088db0c.mp3', 6530, '2026-09-13 11:00:42.963480', '8c53005aa197cd42f6b36cbd5f56bee8640817e2895da3e761728cfbb771db6a', 'validated', '{"audio_key":"5d133ba5d39840ad8141c0f7f5b2914884ad537270adfb72e7dbc623c088db0c","entity_key":"d_professional_boundaries_judgment_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8c53005aa197cd42f6b36cbd5f56bee8640817e2895da3e761728cfbb771db6a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5d133ba5d39840ad8141c0f7f5b2914884ad537270adfb72e7dbc623c088db0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_02:1 -> audio/generated/de-DE/dialogues/6218bc3ba224667f4547d430c1da0d36a16aeddd368306ab9b72749595c09825.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4f3c61c0-043e-5309-8c22-c9262aad901a', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f528dd2f289ee0370bf36393c5c4696471d6e26735027b737ffdad39a86d00f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce8bec12-c847-58c1-bea0-6e186c02382b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4f3c61c0-043e-5309-8c22-c9262aad901a', 1), 'f528dd2f289ee0370bf36393c5c4696471d6e26735027b737ffdad39a86d00f1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6218bc3ba224667f4547d430c1da0d36a16aeddd368306ab9b72749595c09825.mp3', 6112, '2026-09-13 11:00:43.504021', 'd7ca70567517fff2ac32668c5302876c20cd19ad10fdf5b8baae1a2d41e13db7', 'validated', '{"audio_key":"6218bc3ba224667f4547d430c1da0d36a16aeddd368306ab9b72749595c09825","entity_key":"d_causal_reasoning_counterfactuals_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d7ca70567517fff2ac32668c5302876c20cd19ad10fdf5b8baae1a2d41e13db7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6218bc3ba224667f4547d430c1da0d36a16aeddd368306ab9b72749595c09825.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_01:2 -> audio/generated/de-DE/dialogues/667b8418b75687989fef747b4521f2ea4bbdf664edb5c5d4b7a0306e4509d5c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad34390c-e192-5804-8dbb-26757f7b1d60', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '726f5c90482c5c150aacfbbbbc1102b73b39af85dde6dcb5bf43a1fe52704807'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8fd2636-dd03-5f69-977e-f0a8b6e3c6f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad34390c-e192-5804-8dbb-26757f7b1d60', 1), '726f5c90482c5c150aacfbbbbc1102b73b39af85dde6dcb5bf43a1fe52704807',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/667b8418b75687989fef747b4521f2ea4bbdf664edb5c5d4b7a0306e4509d5c4.mp3', 6817, '2026-09-13 11:00:44.600454', '69c67fa59ba5712ba521d4776bd28a8ac48c713d176b6759756f8c73859c2352', 'validated', '{"audio_key":"667b8418b75687989fef747b4521f2ea4bbdf664edb5c5d4b7a0306e4509d5c4","entity_key":"d_integrated_judgment_capstone_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"69c67fa59ba5712ba521d4776bd28a8ac48c713d176b6759756f8c73859c2352","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/667b8418b75687989fef747b4521f2ea4bbdf664edb5c5d4b7a0306e4509d5c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_01:2 -> audio/generated/de-DE/dialogues/763cc92550dd758c152b1d773d83c62e39052ede38dda8eb46de3294deade23c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7418f10d-7324-553c-aadc-978ffea2e86a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67402b6bf59c7a9b28407046619f6fd468a9aa0160ae5b99768d4a11ab21af89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef9e3b0f-a7dc-55c5-8548-24896b116bf3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7418f10d-7324-553c-aadc-978ffea2e86a', 1), '67402b6bf59c7a9b28407046619f6fd468a9aa0160ae5b99768d4a11ab21af89',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/763cc92550dd758c152b1d773d83c62e39052ede38dda8eb46de3294deade23c.mp3', 5459, '2026-09-13 11:00:45.043264', 'cd1d016bf083a17d0123799d22d152815a0b1916a919a96150528008b38620fc', 'validated', '{"audio_key":"763cc92550dd758c152b1d773d83c62e39052ede38dda8eb46de3294deade23c","entity_key":"d_decision_review_revision_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cd1d016bf083a17d0123799d22d152815a0b1916a919a96150528008b38620fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/763cc92550dd758c152b1d773d83c62e39052ede38dda8eb46de3294deade23c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_02:2 -> audio/generated/de-DE/dialogues/773d4ee64260cd052c0c0b7b8390e076bb9aa853dc99e6dee0cee44aa5c1ab2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67ac8cad-9204-5991-922b-1feb50cec614', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42682894952b023e3aa3cb1f5a8a316849d43025ecd392a4bb671fcebfb36bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ef034ab-a00a-5d9c-b35b-0a5eda4a516a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67ac8cad-9204-5991-922b-1feb50cec614', 1), '42682894952b023e3aa3cb1f5a8a316849d43025ecd392a4bb671fcebfb36bbb',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/773d4ee64260cd052c0c0b7b8390e076bb9aa853dc99e6dee0cee44aa5c1ab2d.mp3', 5093, '2026-09-13 11:00:46.097398', 'ba712eb656abb7da18a079c233e456ce534921a0343f089056eb8629392dd83d', 'validated', '{"audio_key":"773d4ee64260cd052c0c0b7b8390e076bb9aa853dc99e6dee0cee44aa5c1ab2d","entity_key":"d_decision_review_revision_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ba712eb656abb7da18a079c233e456ce534921a0343f089056eb8629392dd83d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/773d4ee64260cd052c0c0b7b8390e076bb9aa853dc99e6dee0cee44aa5c1ab2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_01:3 -> audio/generated/de-DE/dialogues/78ac72f3181fed5df4bab53814839fcbe79f5d166b81272eb84329b3cda9d9f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3493d955-ff1e-5597-a202-e828b911d714', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1509bd99d589c7b2d10e285199d601b246951efa569a5c66157d36cf72fb0082'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('076ab11c-86b5-58ce-9ecb-ff3b18b9d368', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3493d955-ff1e-5597-a202-e828b911d714', 1), '1509bd99d589c7b2d10e285199d601b246951efa569a5c66157d36cf72fb0082',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78ac72f3181fed5df4bab53814839fcbe79f5d166b81272eb84329b3cda9d9f3.mp3', 6034, '2026-09-13 11:00:46.599685', 'f7ec8f2f8016fac540c96face219e697e51a30414b4d9e85c800e4f6e4a5afba', 'validated', '{"audio_key":"78ac72f3181fed5df4bab53814839fcbe79f5d166b81272eb84329b3cda9d9f3","entity_key":"d_risk_assessment_communication_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f7ec8f2f8016fac540c96face219e697e51a30414b4d9e85c800e4f6e4a5afba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/78ac72f3181fed5df4bab53814839fcbe79f5d166b81272eb84329b3cda9d9f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_02:4 -> audio/generated/de-DE/dialogues/7a20bca4e5aafa89ff5e8cf7aeabd3d541ebb17159359f31eea704fa0dd62184.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('224b5819-30ba-543a-8370-0aaeca8f2135', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b07a2c6fa84b8e59b0a479c57d1f52b14dca2ab71efd395b349b469d03a147cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e7a6e6c-d23d-5f53-9909-2d1a2cafce4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('224b5819-30ba-543a-8370-0aaeca8f2135', 1), 'b07a2c6fa84b8e59b0a479c57d1f52b14dca2ab71efd395b349b469d03a147cc',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a20bca4e5aafa89ff5e8cf7aeabd3d541ebb17159359f31eea704fa0dd62184.mp3', 3709, '2026-09-13 11:00:47.332922', 'd4210486845565ec84e253e89ae183b932edfc0702c119a20a5d0eddadaf8b7b', 'validated', '{"audio_key":"7a20bca4e5aafa89ff5e8cf7aeabd3d541ebb17159359f31eea704fa0dd62184","entity_key":"d_integrated_judgment_capstone_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d4210486845565ec84e253e89ae183b932edfc0702c119a20a5d0eddadaf8b7b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7a20bca4e5aafa89ff5e8cf7aeabd3d541ebb17159359f31eea704fa0dd62184.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_02:3 -> audio/generated/de-DE/dialogues/7b39176f4acd5092645e17edebe1dc2a213f1caacd14cc23be545c4991b26b15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8122aa3-9e54-56d7-aadb-1d9cb8dc7a68', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16abfd2ce2224d8a18e874750578bd85c2a40d1410a9c5c990fa3382ce97526d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76de26f9-6116-561e-889d-2f0812afc29f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8122aa3-9e54-56d7-aadb-1d9cb8dc7a68', 1), '16abfd2ce2224d8a18e874750578bd85c2a40d1410a9c5c990fa3382ce97526d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7b39176f4acd5092645e17edebe1dc2a213f1caacd14cc23be545c4991b26b15.mp3', 4362, '2026-09-13 11:00:47.931322', 'f7c93d3f120bd3e08e2c7d5f44eb2df888c50b5db6d5e947baf14bc2c27458e9', 'validated', '{"audio_key":"7b39176f4acd5092645e17edebe1dc2a213f1caacd14cc23be545c4991b26b15","entity_key":"d_integrated_judgment_capstone_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f7c93d3f120bd3e08e2c7d5f44eb2df888c50b5db6d5e947baf14bc2c27458e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7b39176f4acd5092645e17edebe1dc2a213f1caacd14cc23be545c4991b26b15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_02:4 -> audio/generated/de-DE/dialogues/84459152e83ee11cfbae4ee1bb4e96c81cddcb622ec76e97878f072598556924.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4445918e-4188-554d-9492-435853f012c8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f92e27fe60462b72d0493fe40b75f86ef29d4983a30751f304b7f1a81cfe2db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d40244e0-0b9e-5cfd-90a7-b8767cb9d568', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4445918e-4188-554d-9492-435853f012c8', 1), '6f92e27fe60462b72d0493fe40b75f86ef29d4983a30751f304b7f1a81cfe2db',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84459152e83ee11cfbae4ee1bb4e96c81cddcb622ec76e97878f072598556924.mp3', 3892, '2026-09-13 11:00:48.633919', 'fecbbb7afac5f30a39d8dd83e312b357f443f4ff1b4e969f02543f6aff87ea2a', 'validated', '{"audio_key":"84459152e83ee11cfbae4ee1bb4e96c81cddcb622ec76e97878f072598556924","entity_key":"d_decision_review_revision_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fecbbb7afac5f30a39d8dd83e312b357f443f4ff1b4e969f02543f6aff87ea2a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/84459152e83ee11cfbae4ee1bb4e96c81cddcb622ec76e97878f072598556924.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_03:2 -> audio/generated/de-DE/dialogues/84477205966028b33fed4ad6eb207f1bc1efb151df501e1bdd5d593501c245b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('901ac8c4-c495-5ec1-b7b3-fde33ccbc1fa', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce52a919031ff94fd6cd73aa2434361f0377ed4c20e4115d749f019624cda215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b3a9401-98b5-514f-9730-f06dac49db60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('901ac8c4-c495-5ec1-b7b3-fde33ccbc1fa', 1), 'ce52a919031ff94fd6cd73aa2434361f0377ed4c20e4115d749f019624cda215',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84477205966028b33fed4ad6eb207f1bc1efb151df501e1bdd5d593501c245b2.mp3', 5851, '2026-09-13 11:00:49.470759', 'c5abdd6d8294e57642dc457a7f1e09d2882b3f7f2cfbb5cf6f59d6cc87746675', 'validated', '{"audio_key":"84477205966028b33fed4ad6eb207f1bc1efb151df501e1bdd5d593501c245b2","entity_key":"d_professional_boundaries_judgment_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c5abdd6d8294e57642dc457a7f1e09d2882b3f7f2cfbb5cf6f59d6cc87746675","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/84477205966028b33fed4ad6eb207f1bc1efb151df501e1bdd5d593501c245b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_02:3 -> audio/generated/de-DE/dialogues/897fabe0dd9c124f2cb08ec96e9f4a72323c359bfd651f41d8d358ccaa84241e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65534b3f-18c3-5fd9-a186-ff43d145d69b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4929e9adc2c13b182067e3b3792156413477bb81f2763d5a533d59dd61a6349b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75d91b29-dbd6-5e57-bdc7-5f93752d32df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65534b3f-18c3-5fd9-a186-ff43d145d69b', 1), '4929e9adc2c13b182067e3b3792156413477bb81f2763d5a533d59dd61a6349b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/897fabe0dd9c124f2cb08ec96e9f4a72323c359bfd651f41d8d358ccaa84241e.mp3', 6034, '2026-09-13 11:00:50.179895', 'd49bd0d14d997c1b9ff25771f1474525167aa2f449f4083ceda1b2381eaebaa6', 'validated', '{"audio_key":"897fabe0dd9c124f2cb08ec96e9f4a72323c359bfd651f41d8d358ccaa84241e","entity_key":"d_risk_assessment_communication_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d49bd0d14d997c1b9ff25771f1474525167aa2f449f4083ceda1b2381eaebaa6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/897fabe0dd9c124f2cb08ec96e9f4a72323c359bfd651f41d8d358ccaa84241e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_02:1 -> audio/generated/de-DE/dialogues/8f3bad40c82ab6795e1547274964f82202d1846bd410eb8c266b089d6e57af37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d8dc75f-e71e-54a2-b3c4-21e058760094', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '682b0bef8315d1b47c1f95546f022a6b994666c875e6286b229d1c6135f5c328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8938a751-9a20-5317-933a-00c63ffa760a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d8dc75f-e71e-54a2-b3c4-21e058760094', 1), '682b0bef8315d1b47c1f95546f022a6b994666c875e6286b229d1c6135f5c328',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8f3bad40c82ab6795e1547274964f82202d1846bd410eb8c266b089d6e57af37.mp3', 4205, '2026-09-13 11:00:50.801180', '51e4679afdd617795d97aa6510621a43e7fab0c25a5a29a2ba0dacffe4cb1e19', 'validated', '{"audio_key":"8f3bad40c82ab6795e1547274964f82202d1846bd410eb8c266b089d6e57af37","entity_key":"d_decision_review_revision_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"51e4679afdd617795d97aa6510621a43e7fab0c25a5a29a2ba0dacffe4cb1e19","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8f3bad40c82ab6795e1547274964f82202d1846bd410eb8c266b089d6e57af37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_03:2 -> audio/generated/de-DE/dialogues/9e1a836b37bb424703e1ec54a5005d1a9965807b31aac32498c3d2b5ca104611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d746f82b-1d3d-5c19-a62f-6556dd371348', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ac1c37c23df563dd32f09fdcc26bc705263e1d40357c88f2ea3bcd74e60804e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dde38cd-7aec-57fa-b46b-24ef578701c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d746f82b-1d3d-5c19-a62f-6556dd371348', 1), '3ac1c37c23df563dd32f09fdcc26bc705263e1d40357c88f2ea3bcd74e60804e',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e1a836b37bb424703e1ec54a5005d1a9965807b31aac32498c3d2b5ca104611.mp3', 6217, '2026-09-13 11:00:51.690570', '17ff6ae46b0627cfc2fe9e9e45bff5743e9b4ae16e0bac504faca0d536a33785', 'validated', '{"audio_key":"9e1a836b37bb424703e1ec54a5005d1a9965807b31aac32498c3d2b5ca104611","entity_key":"d_integrated_judgment_capstone_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"17ff6ae46b0627cfc2fe9e9e45bff5743e9b4ae16e0bac504faca0d536a33785","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9e1a836b37bb424703e1ec54a5005d1a9965807b31aac32498c3d2b5ca104611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_03:4 -> audio/generated/de-DE/dialogues/9ea89b2c4afcb8021f868d2555e3b137a40337a5e2e66abb63ec20b7ed00adcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a31bdcc-2a9f-5717-85d8-90bf5b24f597', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a1bfd4adb51c32507c8e4adba31786969807ce0a3728803d1b05960ba517106'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4f8ae5c-923c-5ed1-93b0-ff193d16e91f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a31bdcc-2a9f-5717-85d8-90bf5b24f597', 1), '7a1bfd4adb51c32507c8e4adba31786969807ce0a3728803d1b05960ba517106',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ea89b2c4afcb8021f868d2555e3b137a40337a5e2e66abb63ec20b7ed00adcd.mp3', 6817, '2026-09-13 11:00:52.547539', '75a5e6dfb64d3a2c2f02edb8a05c4e9c0b0c1c2fe851b146c7f3cbbe3176dfc1', 'validated', '{"audio_key":"9ea89b2c4afcb8021f868d2555e3b137a40337a5e2e66abb63ec20b7ed00adcd","entity_key":"d_integrated_judgment_capstone_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"75a5e6dfb64d3a2c2f02edb8a05c4e9c0b0c1c2fe851b146c7f3cbbe3176dfc1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9ea89b2c4afcb8021f868d2555e3b137a40337a5e2e66abb63ec20b7ed00adcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_02:3 -> audio/generated/de-DE/dialogues/a2bdfb8a12e3f06290c6f4434b58e51e2461d60b50df79263627878252abf93b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3f01e74-72e4-5650-a502-4e8a1302cf93', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '409b996c8468f1961b1906a4e986d56d5b878d9ddfe82c32a9d10582964efad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('193d917e-18f5-5180-8c3e-ad3ffc5ef45a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3f01e74-72e4-5650-a502-4e8a1302cf93', 1), '409b996c8468f1961b1906a4e986d56d5b878d9ddfe82c32a9d10582964efad7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a2bdfb8a12e3f06290c6f4434b58e51e2461d60b50df79263627878252abf93b.mp3', 4493, '2026-09-13 11:00:53.038444', 'f5611170804a5d86ba62bc754b640590b59c9ccd12ea67200178ae9a53d4f7c3', 'validated', '{"audio_key":"a2bdfb8a12e3f06290c6f4434b58e51e2461d60b50df79263627878252abf93b","entity_key":"d_causal_reasoning_counterfactuals_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f5611170804a5d86ba62bc754b640590b59c9ccd12ea67200178ae9a53d4f7c3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a2bdfb8a12e3f06290c6f4434b58e51e2461d60b50df79263627878252abf93b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_03:3 -> audio/generated/de-DE/dialogues/acb2ee83e5877e8af9c87e379927321ff07853e91415e02057d0680743630864.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0727cc71-97e5-5697-9b10-362815a989c9', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06753a715cc9849a208b77a719361cadd591a9f70e1c78a2f618267ff2abdfcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf2c7713-2c02-54ce-b33e-a99d45293466', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0727cc71-97e5-5697-9b10-362815a989c9', 1), '06753a715cc9849a208b77a719361cadd591a9f70e1c78a2f618267ff2abdfcb',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/acb2ee83e5877e8af9c87e379927321ff07853e91415e02057d0680743630864.mp3', 4440, '2026-09-13 11:00:53.910506', 'a18fb3e4ffbf20ee1b1f877dffcdc73e15dfc2d7d321a2eb100004d7ae448df9', 'validated', '{"audio_key":"acb2ee83e5877e8af9c87e379927321ff07853e91415e02057d0680743630864","entity_key":"d_risk_assessment_communication_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a18fb3e4ffbf20ee1b1f877dffcdc73e15dfc2d7d321a2eb100004d7ae448df9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/acb2ee83e5877e8af9c87e379927321ff07853e91415e02057d0680743630864.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_03:3 -> audio/generated/de-DE/dialogues/ad8677cdaa8b30634c85ed5a7d2bcee7602ff9ba58aafef8eeb71a78ea981a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('931d9000-155c-5793-a76f-62922334295a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23e216d3a1d546a7b8bd12be2c2270342f9721a734b299a8e0d7d6379f57f7d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c26301ac-29a2-58c4-b47a-17ec76c66427', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('931d9000-155c-5793-a76f-62922334295a', 1), '23e216d3a1d546a7b8bd12be2c2270342f9721a734b299a8e0d7d6379f57f7d2',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ad8677cdaa8b30634c85ed5a7d2bcee7602ff9ba58aafef8eeb71a78ea981a64.mp3', 4597, '2026-09-13 11:00:54.396774', 'a6a2cfd806d88bbe2e97b21ac80268373475bf06bd8d0e8cb15d9ee2f0e7c486', 'validated', '{"audio_key":"ad8677cdaa8b30634c85ed5a7d2bcee7602ff9ba58aafef8eeb71a78ea981a64","entity_key":"d_decision_review_revision_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a6a2cfd806d88bbe2e97b21ac80268373475bf06bd8d0e8cb15d9ee2f0e7c486","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ad8677cdaa8b30634c85ed5a7d2bcee7602ff9ba58aafef8eeb71a78ea981a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_03:3 -> audio/generated/de-DE/dialogues/af23e504d32f74018da714954c594c33702cb609bd05dc909c8e3824fecac1f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('330a854b-cf75-5248-9f8f-366aa586f7e8', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe74c701a7d2abf79e65cc5be4031c5edcbcf6894fcd52f1ec2ed3d13b5eec6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('391a34ae-fd91-59c1-9c12-97f2732187b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('330a854b-cf75-5248-9f8f-366aa586f7e8', 1), 'fe74c701a7d2abf79e65cc5be4031c5edcbcf6894fcd52f1ec2ed3d13b5eec6f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af23e504d32f74018da714954c594c33702cb609bd05dc909c8e3824fecac1f1.mp3', 4257, '2026-09-13 11:00:55.208494', 'edc8932a740e1e9fc8860d0a422a8b6159a75db02ae724a4ca95599d00ec64c5', 'validated', '{"audio_key":"af23e504d32f74018da714954c594c33702cb609bd05dc909c8e3824fecac1f1","entity_key":"d_integrated_judgment_capstone_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"edc8932a740e1e9fc8860d0a422a8b6159a75db02ae724a4ca95599d00ec64c5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/af23e504d32f74018da714954c594c33702cb609bd05dc909c8e3824fecac1f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_02:2 -> audio/generated/de-DE/dialogues/af862a0f315c6ddf402173525f347a85801abd7db582dba8760437a97bd591f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('191cbab3-77a7-580c-9864-45ddbeb9f02b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f2e089344271b046824c8ceb60b97d7548d1f5015fde554ecf893261f4dc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('173b0ffd-96c4-59aa-a2da-53d920d20b95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('191cbab3-77a7-580c-9864-45ddbeb9f02b', 1), '3f2e089344271b046824c8ceb60b97d7548d1f5015fde554ecf893261f4dc3df',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af862a0f315c6ddf402173525f347a85801abd7db582dba8760437a97bd591f7.mp3', 4362, '2026-09-13 11:00:55.725630', '3cf4f16655e962479267ea25c0c1bc6c086d484e70b5cc35eb88bd6915dba08d', 'validated', '{"audio_key":"af862a0f315c6ddf402173525f347a85801abd7db582dba8760437a97bd591f7","entity_key":"d_risk_assessment_communication_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3cf4f16655e962479267ea25c0c1bc6c086d484e70b5cc35eb88bd6915dba08d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/af862a0f315c6ddf402173525f347a85801abd7db582dba8760437a97bd591f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_01:3 -> audio/generated/de-DE/dialogues/b5cd32d76dab9e076b1be92e7cd6e3f4dde2a7dc45b4f5f3aa0b0d9917c70032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0aaf9795-0dac-5ad4-9d8d-466d3e981ab5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72d59ba9679d258986c1b3ec8abd406e0727ccf5ade93791d4a5850954caa27c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23b5ad0f-ab71-594c-b8b6-cdd474c5435e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0aaf9795-0dac-5ad4-9d8d-466d3e981ab5', 1), '72d59ba9679d258986c1b3ec8abd406e0727ccf5ade93791d4a5850954caa27c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b5cd32d76dab9e076b1be92e7cd6e3f4dde2a7dc45b4f5f3aa0b0d9917c70032.mp3', 4832, '2026-09-13 11:00:56.638681', 'd02091711e682b4e0f008e0056d399878a3444bbf51da513408acee225cd6286', 'validated', '{"audio_key":"b5cd32d76dab9e076b1be92e7cd6e3f4dde2a7dc45b4f5f3aa0b0d9917c70032","entity_key":"d_decision_review_revision_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d02091711e682b4e0f008e0056d399878a3444bbf51da513408acee225cd6286","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b5cd32d76dab9e076b1be92e7cd6e3f4dde2a7dc45b4f5f3aa0b0d9917c70032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_02:1 -> audio/generated/de-DE/dialogues/ba8960b98169d15b6054872d2aab9aab74a8c3cee83f37df2ac9c5dc8a5f2adc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db2354c7-726d-57fc-bac7-c57153a464c4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '051e1bb543e1c3d0d553d46a6e79246989e35a0560c3654caf832ec75d89384f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf7826e2-1bc1-5790-9210-60794870e84e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db2354c7-726d-57fc-bac7-c57153a464c4', 1), '051e1bb543e1c3d0d553d46a6e79246989e35a0560c3654caf832ec75d89384f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba8960b98169d15b6054872d2aab9aab74a8c3cee83f37df2ac9c5dc8a5f2adc.mp3', 5746, '2026-09-13 11:00:57.197025', '0a34c786c09369025bf83dcaf86946eafbcf28425f8c763603601c1a28526139', 'validated', '{"audio_key":"ba8960b98169d15b6054872d2aab9aab74a8c3cee83f37df2ac9c5dc8a5f2adc","entity_key":"d_professional_boundaries_judgment_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a34c786c09369025bf83dcaf86946eafbcf28425f8c763603601c1a28526139","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ba8960b98169d15b6054872d2aab9aab74a8c3cee83f37df2ac9c5dc8a5f2adc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_03:2 -> audio/generated/de-DE/dialogues/bc4e1a0f73d3849da458b4564e1bd4d49f0f04d91ebddf4b0bdb8a77227d5257.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('badb0d9b-7fb9-5287-9bb1-dc1befacba47', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '358e173f2a3e79b33977933c63b096eb34941a409376b526ccab579593c0ca18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f86b6e6-8b7d-5d92-9e47-f141a22ccd9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('badb0d9b-7fb9-5287-9bb1-dc1befacba47', 1), '358e173f2a3e79b33977933c63b096eb34941a409376b526ccab579593c0ca18',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bc4e1a0f73d3849da458b4564e1bd4d49f0f04d91ebddf4b0bdb8a77227d5257.mp3', 5328, '2026-09-13 11:00:58.096597', '641c3cff1f528ba3b007cba71404982cefcc339b6d5ca33741ec2087fd888b99', 'validated', '{"audio_key":"bc4e1a0f73d3849da458b4564e1bd4d49f0f04d91ebddf4b0bdb8a77227d5257","entity_key":"d_risk_assessment_communication_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"641c3cff1f528ba3b007cba71404982cefcc339b6d5ca33741ec2087fd888b99","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bc4e1a0f73d3849da458b4564e1bd4d49f0f04d91ebddf4b0bdb8a77227d5257.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_01:3 -> audio/generated/de-DE/dialogues/bd4079d1c28e2005f8c37987604aae0d03b5d2eb48ac80b30b35a4d2b878e896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0535e417-0a7a-5b6d-91c0-533825d517d5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1854a82054026357e8d515d0bea607aa67c6b66c26736e44cda801c2e40e9aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a4e29d0-cbb0-5c43-8a94-59ac10b4daa5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0535e417-0a7a-5b6d-91c0-533825d517d5', 1), 'f1854a82054026357e8d515d0bea607aa67c6b66c26736e44cda801c2e40e9aa',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bd4079d1c28e2005f8c37987604aae0d03b5d2eb48ac80b30b35a4d2b878e896.mp3', 5041, '2026-09-13 11:00:58.585517', 'db9f9b743ee9f54e856334f34732b3eb730e384dee198129e2be3d47a8ca6cd9', 'validated', '{"audio_key":"bd4079d1c28e2005f8c37987604aae0d03b5d2eb48ac80b30b35a4d2b878e896","entity_key":"d_integrated_judgment_capstone_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"db9f9b743ee9f54e856334f34732b3eb730e384dee198129e2be3d47a8ca6cd9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bd4079d1c28e2005f8c37987604aae0d03b5d2eb48ac80b30b35a4d2b878e896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_01:1 -> audio/generated/de-DE/dialogues/be1097e7c13a2ddc62488fa0063d5e095e3c54c0d06394219c4195756165af60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f648484d-3e09-5bed-b301-5edf9024340e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f20c9dd3c7d8aa55a8c46cc492560fbcf1fd3f04389264ba463261e0477af5de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e73b5955-c1d4-5999-881d-1656807a9ab4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f648484d-3e09-5bed-b301-5edf9024340e', 1), 'f20c9dd3c7d8aa55a8c46cc492560fbcf1fd3f04389264ba463261e0477af5de',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/be1097e7c13a2ddc62488fa0063d5e095e3c54c0d06394219c4195756165af60.mp3', 5616, '2026-09-13 11:00:59.530596', '5d7ca10e1844ad51802aaa9df035a2171f2726b82f5910be1e64d1eba6eed87b', 'validated', '{"audio_key":"be1097e7c13a2ddc62488fa0063d5e095e3c54c0d06394219c4195756165af60","entity_key":"d_risk_assessment_communication_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5d7ca10e1844ad51802aaa9df035a2171f2726b82f5910be1e64d1eba6eed87b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/be1097e7c13a2ddc62488fa0063d5e095e3c54c0d06394219c4195756165af60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_02:1 -> audio/generated/de-DE/dialogues/c36608e3bd4128dbfb41ed04c880f80ac76419a0db750a06413769f43d79c5eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b20e7d9-7b7c-5b29-a08c-8dd3f6a3c63b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '103ce48027e069ba9a9f31409afd08c1dcb15d375dc0facb28af4c0905e41bf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('358d60e1-85bb-5bad-b773-2fd816adba81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b20e7d9-7b7c-5b29-a08c-8dd3f6a3c63b', 1), '103ce48027e069ba9a9f31409afd08c1dcb15d375dc0facb28af4c0905e41bf6',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c36608e3bd4128dbfb41ed04c880f80ac76419a0db750a06413769f43d79c5eb.mp3', 4858, '2026-09-13 11:00:59.996659', 'e262008485f7e89b901e2c647e2f4d3dcc3e0a83f61c3a658eee8b2828892433', 'validated', '{"audio_key":"c36608e3bd4128dbfb41ed04c880f80ac76419a0db750a06413769f43d79c5eb","entity_key":"d_risk_assessment_communication_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e262008485f7e89b901e2c647e2f4d3dcc3e0a83f61c3a658eee8b2828892433","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c36608e3bd4128dbfb41ed04c880f80ac76419a0db750a06413769f43d79c5eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_03:2 -> audio/generated/de-DE/dialogues/cbdcf0aca22aff6bf860afb02ff51084cba57d64076320802bb433d23cac1f12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb86a268-cbab-540f-b8f5-6369d1676f1f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab7f049f08b2eb8975aa146d5f84039abc5dfd7e4c29e0348f56cb93ed25f58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf854b86-647f-5ab2-b9fa-704ce9b215b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb86a268-cbab-540f-b8f5-6369d1676f1f', 1), 'ab7f049f08b2eb8975aa146d5f84039abc5dfd7e4c29e0348f56cb93ed25f58d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cbdcf0aca22aff6bf860afb02ff51084cba57d64076320802bb433d23cac1f12.mp3', 6504, '2026-09-13 11:01:01.088359', 'd720baf7a02a7c49c40b25f582b64196eb769488286836e4d9014758348e550e', 'validated', '{"audio_key":"cbdcf0aca22aff6bf860afb02ff51084cba57d64076320802bb433d23cac1f12","entity_key":"d_decision_review_revision_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d720baf7a02a7c49c40b25f582b64196eb769488286836e4d9014758348e550e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cbdcf0aca22aff6bf860afb02ff51084cba57d64076320802bb433d23cac1f12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_03:4 -> audio/generated/de-DE/dialogues/cc466d7f710845eb8984fa1a8b6bb4c3ce0801ec93b1fea88a260d236f33152f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0bd7ab6-e90f-5df7-b71e-e3bb4430ceac', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e19b29d103ced52e2fe20497af745944eb60ceac4da7f21a2133cb03d40c447'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eccc0f6c-931a-567d-8bfd-2447b6c404d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0bd7ab6-e90f-5df7-b71e-e3bb4430ceac', 1), '9e19b29d103ced52e2fe20497af745944eb60ceac4da7f21a2133cb03d40c447',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc466d7f710845eb8984fa1a8b6bb4c3ce0801ec93b1fea88a260d236f33152f.mp3', 4493, '2026-09-13 11:01:01.444750', 'e57f59853548d3c6c2c5818ea1e38a7b33e8bb71e893e95f61b71ca9485b3a7c', 'validated', '{"audio_key":"cc466d7f710845eb8984fa1a8b6bb4c3ce0801ec93b1fea88a260d236f33152f","entity_key":"d_professional_boundaries_judgment_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e57f59853548d3c6c2c5818ea1e38a7b33e8bb71e893e95f61b71ca9485b3a7c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cc466d7f710845eb8984fa1a8b6bb4c3ce0801ec93b1fea88a260d236f33152f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_03:1 -> audio/generated/de-DE/dialogues/cfbfa7ac2a532ed753288c3c0d9f5107387d27bcf5bd356cfe7bdb26c7a739e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da34e51e-a228-54ad-b7c1-e65a63dc84dd', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6141f15274cdf504f79cc0efbf1f5b8df02be5c592c2d448b796617df5293033'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3071159f-a391-5336-a66a-422b690201be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da34e51e-a228-54ad-b7c1-e65a63dc84dd', 1), '6141f15274cdf504f79cc0efbf1f5b8df02be5c592c2d448b796617df5293033',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cfbfa7ac2a532ed753288c3c0d9f5107387d27bcf5bd356cfe7bdb26c7a739e3.mp3', 5616, '2026-09-13 11:01:02.561187', '174bf6a71b8c97a92e0010c1cc8d42d843a7a666be5e28f14306c62c8828cf6c', 'validated', '{"audio_key":"cfbfa7ac2a532ed753288c3c0d9f5107387d27bcf5bd356cfe7bdb26c7a739e3","entity_key":"d_integrated_judgment_capstone_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"174bf6a71b8c97a92e0010c1cc8d42d843a7a666be5e28f14306c62c8828cf6c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cfbfa7ac2a532ed753288c3c0d9f5107387d27bcf5bd356cfe7bdb26c7a739e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_02:3 -> audio/generated/de-DE/dialogues/d0e27a9d49d12b9ca47f276f2ef87e54be4d452209df1fd43c4a6b17b2caa8df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc1575a6-7bea-55e7-a615-86d340c598e3', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d6fe8bb04a3b71341f710f4ebc83eb7be2bb954ffd445d549a5b316724aa8f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d283faa-f185-5a1b-b2b1-453c92e9ba15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc1575a6-7bea-55e7-a615-86d340c598e3', 1), '8d6fe8bb04a3b71341f710f4ebc83eb7be2bb954ffd445d549a5b316724aa8f2',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d0e27a9d49d12b9ca47f276f2ef87e54be4d452209df1fd43c4a6b17b2caa8df.mp3', 5746, '2026-09-13 11:01:03.090222', 'fe369b428af5c2930d63727a9481684ef7df4eee5a5b03e9ede0ffa5edfa7c58', 'validated', '{"audio_key":"d0e27a9d49d12b9ca47f276f2ef87e54be4d452209df1fd43c4a6b17b2caa8df","entity_key":"d_decision_review_revision_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fe369b428af5c2930d63727a9481684ef7df4eee5a5b03e9ede0ffa5edfa7c58","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d0e27a9d49d12b9ca47f276f2ef87e54be4d452209df1fd43c4a6b17b2caa8df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_risk_assessment_communication_03:4 -> audio/generated/de-DE/dialogues/dcef5fac9d5f7587488ccc3d5a56576b2ecaa8553a3ef0d832fac66d47701b8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39423d5a-e0e4-5bbd-a60a-d87212518650', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_risk_assessment_communication_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '303a2c751d7dbe058a9e37ce79351d6b6bd40b144bc203b9e10472a255555c6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c35d1ea-96cf-5b8a-a8ff-f12e41328f30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39423d5a-e0e4-5bbd-a60a-d87212518650', 1), '303a2c751d7dbe058a9e37ce79351d6b6bd40b144bc203b9e10472a255555c6a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dcef5fac9d5f7587488ccc3d5a56576b2ecaa8553a3ef0d832fac66d47701b8d.mp3', 5381, '2026-09-13 11:01:04.007204', '8a4e602e4fe997b1704f1e0d144802ba8aba7ba7148f1832bce9937ef32ca07d', 'validated', '{"audio_key":"dcef5fac9d5f7587488ccc3d5a56576b2ecaa8553a3ef0d832fac66d47701b8d","entity_key":"d_risk_assessment_communication_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8a4e602e4fe997b1704f1e0d144802ba8aba7ba7148f1832bce9937ef32ca07d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dcef5fac9d5f7587488ccc3d5a56576b2ecaa8553a3ef0d832fac66d47701b8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decision_review_revision_01:1 -> audio/generated/de-DE/dialogues/ded85497b713f16442d5cf20cda436f22e50b70abc5f1735b37744eff90a040c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c24fa85-3c59-54d1-96d1-5af814459cd6', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decision_review_revision_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ccde5eed2b2ce231a45dc017de8245c584cbdc1afb6c0b1ca5530459199be8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('217d87bf-ecb2-5a8e-ad80-d0c2a422a500', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c24fa85-3c59-54d1-96d1-5af814459cd6', 1), '6ccde5eed2b2ce231a45dc017de8245c584cbdc1afb6c0b1ca5530459199be8f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ded85497b713f16442d5cf20cda436f22e50b70abc5f1735b37744eff90a040c.mp3', 5041, '2026-09-13 11:01:04.473760', '0d966759ccc967d60164f7ad6be3763d68d6d2141f944c6f6c44b307f21b2df3', 'validated', '{"audio_key":"ded85497b713f16442d5cf20cda436f22e50b70abc5f1735b37744eff90a040c","entity_key":"d_decision_review_revision_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0d966759ccc967d60164f7ad6be3763d68d6d2141f944c6f6c44b307f21b2df3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ded85497b713f16442d5cf20cda436f22e50b70abc5f1735b37744eff90a040c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_03:3 -> audio/generated/de-DE/dialogues/df52afbd3c74a021ff5b52132d9c6fd51ee4975bf2a277fba6a79b0186912522.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bd3de5a-d8d8-5f0e-a21f-d155480c3a1b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f426db3c2dff3859d646f5976ffbcceccac27d769df4e90fd56c9bfbdc95291'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41740746-ecdb-5aac-b64d-497656e213e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bd3de5a-d8d8-5f0e-a21f-d155480c3a1b', 1), '3f426db3c2dff3859d646f5976ffbcceccac27d769df4e90fd56c9bfbdc95291',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df52afbd3c74a021ff5b52132d9c6fd51ee4975bf2a277fba6a79b0186912522.mp3', 5616, '2026-09-13 11:01:05.476652', '514e272832a2392e728e84fe6a0e7cec376d690f79c6f24148e7d37d1a7f558f', 'validated', '{"audio_key":"df52afbd3c74a021ff5b52132d9c6fd51ee4975bf2a277fba6a79b0186912522","entity_key":"d_causal_reasoning_counterfactuals_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"514e272832a2392e728e84fe6a0e7cec376d690f79c6f24148e7d37d1a7f558f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/df52afbd3c74a021ff5b52132d9c6fd51ee4975bf2a277fba6a79b0186912522.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causal_reasoning_counterfactuals_01:4 -> audio/generated/de-DE/dialogues/e67960d0a2cc7558cc5f6a3c3c96028e0adf2af1b6c8a24d84e98734444b9559.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('390b5035-525f-5f8e-995b-0139b4fec325', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causal_reasoning_counterfactuals_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd33a99e5a188abcf148abbceee8ecc7853170255f11d6921d2bbca14fd8fb233'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dfb8748-71e2-5ea5-b795-79b731b5958b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('390b5035-525f-5f8e-995b-0139b4fec325', 1), 'd33a99e5a188abcf148abbceee8ecc7853170255f11d6921d2bbca14fd8fb233',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e67960d0a2cc7558cc5f6a3c3c96028e0adf2af1b6c8a24d84e98734444b9559.mp3', 5381, '2026-09-13 11:01:05.925103', 'd68c3556b417036bb5c96f557155faceb8470f9e14c2cd89460b43e943de53f6', 'validated', '{"audio_key":"e67960d0a2cc7558cc5f6a3c3c96028e0adf2af1b6c8a24d84e98734444b9559","entity_key":"d_causal_reasoning_counterfactuals_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d68c3556b417036bb5c96f557155faceb8470f9e14c2cd89460b43e943de53f6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e67960d0a2cc7558cc5f6a3c3c96028e0adf2af1b6c8a24d84e98734444b9559.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_02:2 -> audio/generated/de-DE/dialogues/f20dfb43944ab4f093be069db949b677a0b2828894862c60fd02278cd1855c76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b94766e-5656-5252-8778-c90db980d22f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33a26042e7f8d76cdfa700da118c52e610b83e3ef615d3f5698c99459b1e0213'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f30e8b8f-7f32-5dc1-bb9b-57c99d213084', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b94766e-5656-5252-8778-c90db980d22f', 1), '33a26042e7f8d76cdfa700da118c52e610b83e3ef615d3f5698c99459b1e0213',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f20dfb43944ab4f093be069db949b677a0b2828894862c60fd02278cd1855c76.mp3', 6086, '2026-09-13 11:01:07.020775', 'c266a753af7efbf8c35caee6c4fd407d6e1aea3efaf7dfd386ce6b03e04dc82b', 'validated', '{"audio_key":"f20dfb43944ab4f093be069db949b677a0b2828894862c60fd02278cd1855c76","entity_key":"d_integrated_judgment_capstone_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"c266a753af7efbf8c35caee6c4fd407d6e1aea3efaf7dfd386ce6b03e04dc82b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f20dfb43944ab4f093be069db949b677a0b2828894862c60fd02278cd1855c76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_judgment_capstone_02:1 -> audio/generated/de-DE/dialogues/f6a93c25b82659647684fde42a722ae01a094db84102f386790736d13c6e9de8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09e97fad-2e94-59d7-b058-a5c7c6fa5027', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_judgment_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a81eb314be26c685862ae93ab03a41961dcf1ce8e24ee354374b77111406495'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b14bc4d-6dda-5f01-bef6-3df17ed8fe55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09e97fad-2e94-59d7-b058-a5c7c6fa5027', 1), '1a81eb314be26c685862ae93ab03a41961dcf1ce8e24ee354374b77111406495',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6a93c25b82659647684fde42a722ae01a094db84102f386790736d13c6e9de8.mp3', 5146, '2026-09-13 11:01:07.409999', 'd2aff1529a84ad4ac38f344b0d61f2cc3dfa799ec68f3b4788ed5b22201a2250', 'validated', '{"audio_key":"f6a93c25b82659647684fde42a722ae01a094db84102f386790736d13c6e9de8","entity_key":"d_integrated_judgment_capstone_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d2aff1529a84ad4ac38f344b0d61f2cc3dfa799ec68f3b4788ed5b22201a2250","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f6a93c25b82659647684fde42a722ae01a094db84102f386790736d13c6e9de8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_boundaries_judgment_01:2 -> audio/generated/de-DE/dialogues/fac70b9ec3fb9cbe9dd88a16ee50ef702625f2b06c0523c3ed123fd576c83418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe9773a7-519c-5dc8-8fe0-6f299dd8a411', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_boundaries_judgment_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '837bdcc0a54161557fb675301bbf219a7c1a34cf09e4da0fd67faf61ab23c17b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3849a4e-0767-51b7-b370-dd1cc4175e86', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe9773a7-519c-5dc8-8fe0-6f299dd8a411', 1), '837bdcc0a54161557fb675301bbf219a7c1a34cf09e4da0fd67faf61ab23c17b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fac70b9ec3fb9cbe9dd88a16ee50ef702625f2b06c0523c3ed123fd576c83418.mp3', 5198, '2026-09-13 11:01:08.418397', '45f47dc83a3a153323eee6b1b814b61504d9e333c6c5ac6f8d00f55257057dc2', 'validated', '{"audio_key":"fac70b9ec3fb9cbe9dd88a16ee50ef702625f2b06c0523c3ed123fd576c83418","entity_key":"d_professional_boundaries_judgment_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"45f47dc83a3a153323eee6b1b814b61504d9e333c6c5ac6f8d00f55257057dc2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fac70b9ec3fb9cbe9dd88a16ee50ef702625f2b06c0523c3ed123fd576c83418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_02 -> audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('76d49f35-3ece-595f-a2ff-02ebc4a8836d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36d5ff20f980be255c5662a5aade4c673ed6d59255b5bd9040e035db637ca2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ada49e4a-fdfe-58dd-bcaa-b75f808930bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('76d49f35-3ece-595f-a2ff-02ebc4a8836d', 1), 'e36d5ff20f980be255c5662a5aade4c673ed6d59255b5bd9040e035db637ca2e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3', 1384, '2026-09-13 11:01:08.480225', '5ff723dea5a2d00b7034467f40feb7dacc208a219275fd035932822a3a175ca2', 'validated', '{"audio_key":"08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7","entity_key":"lx_risk_assessment_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ff723dea5a2d00b7034467f40feb7dacc208a219275fd035932822a3a175ca2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_02 -> audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f451d707-8f24-552f-8bcb-1601650ab034', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36d5ff20f980be255c5662a5aade4c673ed6d59255b5bd9040e035db637ca2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('715cfb9b-1c9a-5b91-8e00-09b917659096', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f451d707-8f24-552f-8bcb-1601650ab034', 1), 'e36d5ff20f980be255c5662a5aade4c673ed6d59255b5bd9040e035db637ca2e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3', 1384, '2026-09-13 11:01:08.480225', '5ff723dea5a2d00b7034467f40feb7dacc208a219275fd035932822a3a175ca2', 'validated', '{"audio_key":"08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7","entity_key":"wf_risk_assessment_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ff723dea5a2d00b7034467f40feb7dacc208a219275fd035932822a3a175ca2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/08dae0d82bd65c0af4ea4ac785504260fdd384c7162b1ef9d2d89645bb0ef4b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_01 -> audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cbb60426-ac49-5ebe-bf4d-1154e57b5e41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4fc66c7b5092b3242e6fcb3c623919de0ba4ee57aef0bb747dec39b5c9a4fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b4b0c90-aa7f-592b-84e6-d2cce61085fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cbb60426-ac49-5ebe-bf4d-1154e57b5e41', 1), 'd4fc66c7b5092b3242e6fcb3c623919de0ba4ee57aef0bb747dec39b5c9a4fe2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3', 1750, '2026-09-13 11:01:09.443888', 'd6e670fb006f6f1443c0900cfaf42da5f584354a5fddfe99dc290a82c7f8f7ff', 'validated', '{"audio_key":"280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa","entity_key":"lx_risk_assessment_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6e670fb006f6f1443c0900cfaf42da5f584354a5fddfe99dc290a82c7f8f7ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_01 -> audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c7b7407-bc09-5f21-957a-e60d09d6606f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4fc66c7b5092b3242e6fcb3c623919de0ba4ee57aef0bb747dec39b5c9a4fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b2b8dda-a51d-57f8-8b74-08f3cfb46742', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c7b7407-bc09-5f21-957a-e60d09d6606f', 1), 'd4fc66c7b5092b3242e6fcb3c623919de0ba4ee57aef0bb747dec39b5c9a4fe2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3', 1750, '2026-09-13 11:01:09.443888', 'd6e670fb006f6f1443c0900cfaf42da5f584354a5fddfe99dc290a82c7f8f7ff', 'validated', '{"audio_key":"280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa","entity_key":"wf_risk_assessment_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6e670fb006f6f1443c0900cfaf42da5f584354a5fddfe99dc290a82c7f8f7ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/280e366097af6599f9f576f72d346e0c370b425146791946147225c22e6066fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_05 -> audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b09fc13-0de6-5598-a763-c1669094d6f1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79d82555615bc7b3f7fd4903887c48e9193d6a0c915150404809dbb5d05d1e77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('192e8738-133a-54d1-a7e5-63bff15dc14f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b09fc13-0de6-5598-a763-c1669094d6f1', 1), '79d82555615bc7b3f7fd4903887c48e9193d6a0c915150404809dbb5d05d1e77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3', 1332, '2026-09-13 11:01:09.458112', 'ae6fb1ac6e1affdc1813e6d6bf6bcd34d2dec16372caf1864afb45c97fadcaf1', 'validated', '{"audio_key":"2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f","entity_key":"lx_risk_assessment_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae6fb1ac6e1affdc1813e6d6bf6bcd34d2dec16372caf1864afb45c97fadcaf1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_05 -> audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ba630c5-6069-571a-b28a-fe614d6d636d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79d82555615bc7b3f7fd4903887c48e9193d6a0c915150404809dbb5d05d1e77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82aeda61-312b-5843-986c-c4febcbbe0c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ba630c5-6069-571a-b28a-fe614d6d636d', 1), '79d82555615bc7b3f7fd4903887c48e9193d6a0c915150404809dbb5d05d1e77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3', 1332, '2026-09-13 11:01:09.458112', 'ae6fb1ac6e1affdc1813e6d6bf6bcd34d2dec16372caf1864afb45c97fadcaf1', 'validated', '{"audio_key":"2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f","entity_key":"wf_risk_assessment_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae6fb1ac6e1affdc1813e6d6bf6bcd34d2dec16372caf1864afb45c97fadcaf1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2abe9b64898e7ac957029e6d614874da1bb75ec525206bd54744670d5ceb3d1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_01 -> audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('068587db-5114-5ae2-8ed0-f0e03a82f6d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9437ab3bf0eb3cc5868aeaf5d6ec288fe777bf935cf64469eedbce3a42e1918'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b13efe9d-542c-54ee-a49c-4a1163d5fe54', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('068587db-5114-5ae2-8ed0-f0e03a82f6d4', 1), 'c9437ab3bf0eb3cc5868aeaf5d6ec288fe777bf935cf64469eedbce3a42e1918',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3', 1619, '2026-09-13 11:01:10.528977', '3dd849bfc3d580a08126fa429e97dda80aaaca116878cfee49f8812e9fe0896a', 'validated', '{"audio_key":"3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e","entity_key":"lx_causal_reasoning_counterfactuals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dd849bfc3d580a08126fa429e97dda80aaaca116878cfee49f8812e9fe0896a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_01 -> audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('74690fd5-90b5-5f36-b02a-3d98fd8cbce0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9437ab3bf0eb3cc5868aeaf5d6ec288fe777bf935cf64469eedbce3a42e1918'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0fdbc86-3c98-5523-91ae-b878d37a07b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('74690fd5-90b5-5f36-b02a-3d98fd8cbce0', 1), 'c9437ab3bf0eb3cc5868aeaf5d6ec288fe777bf935cf64469eedbce3a42e1918',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3', 1619, '2026-09-13 11:01:10.528977', '3dd849bfc3d580a08126fa429e97dda80aaaca116878cfee49f8812e9fe0896a', 'validated', '{"audio_key":"3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e","entity_key":"wf_causal_reasoning_counterfactuals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dd849bfc3d580a08126fa429e97dda80aaaca116878cfee49f8812e9fe0896a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3015fcd3fd4ea77d922315618a549f69c79ef3e53482daec0ea64329a006880e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_02 -> audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f8ca3a8-6fe4-5ce3-af1a-4f1bce7f7058', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38d1519cc87fad10f1e69995e55f2676f8c36bb4b49d0e023cb00b9ea314d415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('535d1909-8cb1-54e0-96a9-cef5d057366d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f8ca3a8-6fe4-5ce3-af1a-4f1bce7f7058', 1), '38d1519cc87fad10f1e69995e55f2676f8c36bb4b49d0e023cb00b9ea314d415',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3', 1149, '2026-09-13 11:01:10.595955', 'eca027662d4ff7e57ac05cd2ec9aa2d6d863a5603f23b0e9b03f15826359cd19', 'validated', '{"audio_key":"31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce","entity_key":"lx_professional_boundaries_judgment_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eca027662d4ff7e57ac05cd2ec9aa2d6d863a5603f23b0e9b03f15826359cd19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_02 -> audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad5fb1bc-12e9-5d8b-a667-a230e641efa6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38d1519cc87fad10f1e69995e55f2676f8c36bb4b49d0e023cb00b9ea314d415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0ca3fde-cbdc-5dfd-bf4c-c4abc459cbd3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad5fb1bc-12e9-5d8b-a667-a230e641efa6', 1), '38d1519cc87fad10f1e69995e55f2676f8c36bb4b49d0e023cb00b9ea314d415',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3', 1149, '2026-09-13 11:01:10.595955', 'eca027662d4ff7e57ac05cd2ec9aa2d6d863a5603f23b0e9b03f15826359cd19', 'validated', '{"audio_key":"31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce","entity_key":"wf_professional_boundaries_judgment_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eca027662d4ff7e57ac05cd2ec9aa2d6d863a5603f23b0e9b03f15826359cd19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31d3d113d1f5d553c55015d8d21769cb04baff193d5bb5816240db6e667328ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_06 -> audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39d76ef1-f1e0-5d1d-96bb-589e36cb9f50', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22f005e7a4f398c327a09d825292763ad5c86121b32bf07d7d3d7fae250b99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad3d5011-9640-5a4d-9cdd-bbb5cca2323b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39d76ef1-f1e0-5d1d-96bb-589e36cb9f50', 1), '22f005e7a4f398c327a09d825292763ad5c86121b32bf07d7d3d7fae250b99bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3', 1384, '2026-09-13 11:01:11.539952', 'ce0a69707f0ae276753de626ca566af788253623c0975b2bc571667e719e4f75', 'validated', '{"audio_key":"35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7","entity_key":"lx_causal_reasoning_counterfactuals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce0a69707f0ae276753de626ca566af788253623c0975b2bc571667e719e4f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_06 -> audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e9d1deb9-f3bf-5928-842e-ef863816db8a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22f005e7a4f398c327a09d825292763ad5c86121b32bf07d7d3d7fae250b99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dd110ce-d072-5ab8-9bde-59585dfc345b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e9d1deb9-f3bf-5928-842e-ef863816db8a', 1), '22f005e7a4f398c327a09d825292763ad5c86121b32bf07d7d3d7fae250b99bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3', 1384, '2026-09-13 11:01:11.539952', 'ce0a69707f0ae276753de626ca566af788253623c0975b2bc571667e719e4f75', 'validated', '{"audio_key":"35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7","entity_key":"wf_causal_reasoning_counterfactuals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce0a69707f0ae276753de626ca566af788253623c0975b2bc571667e719e4f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35af5aa4490bc4a0aa7b20e69e5f1e2a8c8d400759e4d7d8e916fda09d5ddcf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_04 -> audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6743215b-aec1-5e8a-a94d-f60ed689e231', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4985da12288f852c9f98d69b02c35e920377a72aa324c098008ed826bc93a3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3197b692-f6dc-518c-af67-751a5d3e76d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6743215b-aec1-5e8a-a94d-f60ed689e231', 1), 'e4985da12288f852c9f98d69b02c35e920377a72aa324c098008ed826bc93a3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3', 1253, '2026-09-13 11:01:11.559824', 'f92d5fd4b70b4342f9ab33dfe64ba1d80110336250ec8f4324c64b8d0c44aa0a', 'validated', '{"audio_key":"3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3","entity_key":"lx_causal_reasoning_counterfactuals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f92d5fd4b70b4342f9ab33dfe64ba1d80110336250ec8f4324c64b8d0c44aa0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_04 -> audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('38c6ca95-fe97-5b06-a543-c434c4b17b90', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4985da12288f852c9f98d69b02c35e920377a72aa324c098008ed826bc93a3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('658ce7f1-f603-54e0-b0d6-b59c2f60383b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('38c6ca95-fe97-5b06-a543-c434c4b17b90', 1), 'e4985da12288f852c9f98d69b02c35e920377a72aa324c098008ed826bc93a3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3', 1253, '2026-09-13 11:01:11.559824', 'f92d5fd4b70b4342f9ab33dfe64ba1d80110336250ec8f4324c64b8d0c44aa0a', 'validated', '{"audio_key":"3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3","entity_key":"wf_causal_reasoning_counterfactuals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f92d5fd4b70b4342f9ab33dfe64ba1d80110336250ec8f4324c64b8d0c44aa0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f99270bc2dd722839f46a23ee81c6f90640986e2a95836af4004af62444a2c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_01 -> audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cdc6cd12-14bd-59f3-b965-835edee5eefe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b721a8-c0e9-57ef-ac67-43fb837a8383', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cdc6cd12-14bd-59f3-b965-835edee5eefe', 1), 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3', 1384, '2026-09-13 10:01:02.151919', '5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248', 'validated', '{"audio_key":"477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf","entity_key":"lx_decision_review_revision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_01 -> audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39b745b9-045b-56aa-ab9d-e3a0bb84cbff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d75a256c-6299-5ccf-aad8-70cb0f506c69', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39b745b9-045b-56aa-ab9d-e3a0bb84cbff', 1), 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3', 1384, '2026-09-13 10:01:02.151919', '5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248', 'validated', '{"audio_key":"477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf","entity_key":"wf_decision_review_revision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_06 -> audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b586c208-489f-52e1-b0e3-4f6710b9e6f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2e5a55814db1bf8ed9a4d83af2cbf0b473b824945e61575337753abba8fb16c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bcb5f3d-43f4-5d6b-88c0-36f92be9a270', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b586c208-489f-52e1-b0e3-4f6710b9e6f2', 1), 'd2e5a55814db1bf8ed9a4d83af2cbf0b473b824945e61575337753abba8fb16c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3', 1671, '2026-09-13 11:01:12.579798', 'e4192f42cb2d6df2ac3351dc7ebc2c4bae6a6152cb666784718625871a5eb28d', 'validated', '{"audio_key":"4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0","entity_key":"lx_professional_boundaries_judgment_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4192f42cb2d6df2ac3351dc7ebc2c4bae6a6152cb666784718625871a5eb28d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_06 -> audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76ad79eb-ae30-512f-944c-7a9d61f608d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2e5a55814db1bf8ed9a4d83af2cbf0b473b824945e61575337753abba8fb16c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cbb5302-7375-5b09-ad90-081d27ec1abd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76ad79eb-ae30-512f-944c-7a9d61f608d1', 1), 'd2e5a55814db1bf8ed9a4d83af2cbf0b473b824945e61575337753abba8fb16c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3', 1671, '2026-09-13 11:01:12.579798', 'e4192f42cb2d6df2ac3351dc7ebc2c4bae6a6152cb666784718625871a5eb28d', 'validated', '{"audio_key":"4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0","entity_key":"wf_professional_boundaries_judgment_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4192f42cb2d6df2ac3351dc7ebc2c4bae6a6152cb666784718625871a5eb28d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dfb035154a2e42597bd7e2d61f5cefbf985d21cc87a6519b9120a8de9290cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_02 -> audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa91e4be-6786-5e68-bf6f-e9f110b4df39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01b574c2f3b8f39a6d6162148ce4f6b47fe64a512357a78dd8cf905ca4ffc665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21e69aca-1973-51e4-b8df-8984451c74c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa91e4be-6786-5e68-bf6f-e9f110b4df39', 1), '01b574c2f3b8f39a6d6162148ce4f6b47fe64a512357a78dd8cf905ca4ffc665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3', 1332, '2026-09-13 11:01:12.544378', '029d06263e7aa9c4aed21597c40cb65b920749e287527884592d735afd1a0965', 'validated', '{"audio_key":"4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383","entity_key":"lx_decision_review_revision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"029d06263e7aa9c4aed21597c40cb65b920749e287527884592d735afd1a0965","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_02 -> audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32c6e5be-40d3-57ae-b822-b78c4edda936', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01b574c2f3b8f39a6d6162148ce4f6b47fe64a512357a78dd8cf905ca4ffc665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32030911-8f09-57b4-9615-46a5e3524802', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32c6e5be-40d3-57ae-b822-b78c4edda936', 1), '01b574c2f3b8f39a6d6162148ce4f6b47fe64a512357a78dd8cf905ca4ffc665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3', 1332, '2026-09-13 11:01:12.544378', '029d06263e7aa9c4aed21597c40cb65b920749e287527884592d735afd1a0965', 'validated', '{"audio_key":"4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383","entity_key":"wf_decision_review_revision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"029d06263e7aa9c4aed21597c40cb65b920749e287527884592d735afd1a0965","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4e9521aa2f3615c017a6d9495146287f1cf1b241d89b503a29877b314cc8b383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_06 -> audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9280462f-939e-5daf-a2b5-baeb4bda77b6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68fecd777c0941205d19c7693ea51543d40020432485caeee1fd46b6180af957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e804b150-babe-5db7-82c5-fb504d9038d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9280462f-939e-5daf-a2b5-baeb4bda77b6', 1), '68fecd777c0941205d19c7693ea51543d40020432485caeee1fd46b6180af957',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3', 1515, '2026-09-13 11:01:13.532831', 'e37d9f90874893b62e1f1846b641e3368b4bedcae4e18a76e74bfaba6a8f3e90', 'validated', '{"audio_key":"540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d","entity_key":"lx_integrated_judgment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e37d9f90874893b62e1f1846b641e3368b4bedcae4e18a76e74bfaba6a8f3e90","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_06 -> audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('11262295-b7e0-5a66-b896-3220597da27f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68fecd777c0941205d19c7693ea51543d40020432485caeee1fd46b6180af957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3b7fc60-523d-5c7f-acb6-57e44d2db3f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('11262295-b7e0-5a66-b896-3220597da27f', 1), '68fecd777c0941205d19c7693ea51543d40020432485caeee1fd46b6180af957',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3', 1515, '2026-09-13 11:01:13.532831', 'e37d9f90874893b62e1f1846b641e3368b4bedcae4e18a76e74bfaba6a8f3e90', 'validated', '{"audio_key":"540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d","entity_key":"wf_integrated_judgment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e37d9f90874893b62e1f1846b641e3368b4bedcae4e18a76e74bfaba6a8f3e90","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/540a36c754c4df547f70bac09e10534fa9c91574027cfcc1703a19f408a7500d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_04 -> audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('03f8c746-8887-565b-af18-0d2320b5fdb6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b60af8666cb80902586b9d247d39e163dd18fb06643a5ce609d1811d5a5edee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaf6948b-0481-574e-80de-42466a08de36', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('03f8c746-8887-565b-af18-0d2320b5fdb6', 1), '2b60af8666cb80902586b9d247d39e163dd18fb06643a5ce609d1811d5a5edee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3', 1384, '2026-09-13 11:01:13.566760', 'a567faf805b86a9886fb395baaad5e235c2ce9a35ef29c565c0c15601d02f9d6', 'validated', '{"audio_key":"6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1","entity_key":"lx_risk_assessment_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a567faf805b86a9886fb395baaad5e235c2ce9a35ef29c565c0c15601d02f9d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_04 -> audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18680b83-b2af-558d-b8b3-41caa9ac4d95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b60af8666cb80902586b9d247d39e163dd18fb06643a5ce609d1811d5a5edee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba9b95e6-d2ed-5ec2-bcff-6466217bd0db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18680b83-b2af-558d-b8b3-41caa9ac4d95', 1), '2b60af8666cb80902586b9d247d39e163dd18fb06643a5ce609d1811d5a5edee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3', 1384, '2026-09-13 11:01:13.566760', 'a567faf805b86a9886fb395baaad5e235c2ce9a35ef29c565c0c15601d02f9d6', 'validated', '{"audio_key":"6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1","entity_key":"wf_risk_assessment_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a567faf805b86a9886fb395baaad5e235c2ce9a35ef29c565c0c15601d02f9d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6002502f2c1259cd425afc9982c394e8e6de5a1ad7ed9f04369315444ad971e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_05 -> audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('88deeb17-371b-5cb6-8897-6e485a042258', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be35698ca0b93e4d792a875d2be9a44e3408d67cd3ae57eab5a84f59be052e14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e1dd1cf-c6b0-5104-91a9-72c8c47e13e0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('88deeb17-371b-5cb6-8897-6e485a042258', 1), 'be35698ca0b93e4d792a875d2be9a44e3408d67cd3ae57eab5a84f59be052e14',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3', 1436, '2026-09-13 11:01:14.532795', '22adb455e755704b5263ad36daff9dedcec4950f6887dc7c51d2b8aa1c4f1a95', 'validated', '{"audio_key":"646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047","entity_key":"lx_causal_reasoning_counterfactuals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22adb455e755704b5263ad36daff9dedcec4950f6887dc7c51d2b8aa1c4f1a95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_05 -> audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('36609765-0087-59e4-ab03-42201f6b544a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be35698ca0b93e4d792a875d2be9a44e3408d67cd3ae57eab5a84f59be052e14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2fbb7ac-eeeb-5065-b552-5fbd4f5e7e12', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('36609765-0087-59e4-ab03-42201f6b544a', 1), 'be35698ca0b93e4d792a875d2be9a44e3408d67cd3ae57eab5a84f59be052e14',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3', 1436, '2026-09-13 11:01:14.532795', '22adb455e755704b5263ad36daff9dedcec4950f6887dc7c51d2b8aa1c4f1a95', 'validated', '{"audio_key":"646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047","entity_key":"wf_causal_reasoning_counterfactuals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22adb455e755704b5263ad36daff9dedcec4950f6887dc7c51d2b8aa1c4f1a95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/646e5904e1b403792527ecb2002d0bf369e2f2267ed837a23d3d49daa061f047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_02 -> audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('25e06d51-ec90-5c4c-8f67-c03a5232c3e8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86fc7556d2d92e4f7b23a918634655b1d1d2837ab6ad6da5e0fb70a24364dd31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c6808c7-37f7-5cc7-8298-4f8b3d24fa32', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('25e06d51-ec90-5c4c-8f67-c03a5232c3e8', 1), '86fc7556d2d92e4f7b23a918634655b1d1d2837ab6ad6da5e0fb70a24364dd31',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3', 1515, '2026-09-13 11:01:14.597049', '51af54a66ea86a9ea52d6c8011bf4dfccec93a586a5cda3dfa50b37156c951da', 'validated', '{"audio_key":"6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40","entity_key":"lx_causal_reasoning_counterfactuals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51af54a66ea86a9ea52d6c8011bf4dfccec93a586a5cda3dfa50b37156c951da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_02 -> audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('25e9a7de-d562-595d-8d8f-3143f1d7c423', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86fc7556d2d92e4f7b23a918634655b1d1d2837ab6ad6da5e0fb70a24364dd31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60f906d6-8326-5254-ab81-702b0ac418c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('25e9a7de-d562-595d-8d8f-3143f1d7c423', 1), '86fc7556d2d92e4f7b23a918634655b1d1d2837ab6ad6da5e0fb70a24364dd31',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3', 1515, '2026-09-13 11:01:14.597049', '51af54a66ea86a9ea52d6c8011bf4dfccec93a586a5cda3dfa50b37156c951da', 'validated', '{"audio_key":"6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40","entity_key":"wf_causal_reasoning_counterfactuals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51af54a66ea86a9ea52d6c8011bf4dfccec93a586a5cda3dfa50b37156c951da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6d0afbb230d91df30513bec6c238768011129b78b72c99ae21b2d35880441d40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_05 -> audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('80a103f2-cb62-57c3-b0ba-a278fd8658bd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe0c69d0e0de35e9bff201e079fb09f0f82ae6a72b05d0dacf40ab02af6d5799'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6572bbee-9a1f-5288-b9dc-80179d1168bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('80a103f2-cb62-57c3-b0ba-a278fd8658bd', 1), 'fe0c69d0e0de35e9bff201e079fb09f0f82ae6a72b05d0dacf40ab02af6d5799',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3', 1515, '2026-09-13 11:01:15.661321', '02d96f10fe12fd04a36d082210bbbf028fd2941159338d108a4a04a83dfb2821', 'validated', '{"audio_key":"6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c","entity_key":"lx_integrated_judgment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02d96f10fe12fd04a36d082210bbbf028fd2941159338d108a4a04a83dfb2821","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_05 -> audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d68de91-aa81-5b9e-a72a-3697a61acf1c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe0c69d0e0de35e9bff201e079fb09f0f82ae6a72b05d0dacf40ab02af6d5799'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84a1bb2a-c099-58c3-8a19-3d80a2a7a3c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d68de91-aa81-5b9e-a72a-3697a61acf1c', 1), 'fe0c69d0e0de35e9bff201e079fb09f0f82ae6a72b05d0dacf40ab02af6d5799',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3', 1515, '2026-09-13 11:01:15.661321', '02d96f10fe12fd04a36d082210bbbf028fd2941159338d108a4a04a83dfb2821', 'validated', '{"audio_key":"6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c","entity_key":"wf_integrated_judgment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02d96f10fe12fd04a36d082210bbbf028fd2941159338d108a4a04a83dfb2821","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fd59d154ad57843bed1ccb9aab1099982b98021ede09afddba1e1b2b6dd051c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_04 -> audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0d07f249-9401-5235-ad35-026a1074d0d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15841cef5ef36a566851eaf8752a8fef9cc2dc62f56c51c26b5174a5d546b6d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0846100c-6ad1-59ef-bdd3-86861041c932', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0d07f249-9401-5235-ad35-026a1074d0d6', 1), '15841cef5ef36a566851eaf8752a8fef9cc2dc62f56c51c26b5174a5d546b6d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3', 1280, '2026-09-13 11:01:15.578448', 'a573ce9543b5125fb5bba7016b316a80ce0aba3d8444b5101874870d590a1150', 'validated', '{"audio_key":"734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817","entity_key":"lx_decision_review_revision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a573ce9543b5125fb5bba7016b316a80ce0aba3d8444b5101874870d590a1150","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_04 -> audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('258be053-3b5f-515e-a282-de02040f07d9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15841cef5ef36a566851eaf8752a8fef9cc2dc62f56c51c26b5174a5d546b6d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dbfdd25-aa90-5654-abe4-c5ea465581b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('258be053-3b5f-515e-a282-de02040f07d9', 1), '15841cef5ef36a566851eaf8752a8fef9cc2dc62f56c51c26b5174a5d546b6d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3', 1280, '2026-09-13 11:01:15.578448', 'a573ce9543b5125fb5bba7016b316a80ce0aba3d8444b5101874870d590a1150', 'validated', '{"audio_key":"734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817","entity_key":"wf_decision_review_revision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a573ce9543b5125fb5bba7016b316a80ce0aba3d8444b5101874870d590a1150","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/734e7a4b1d7db23935509d0c10d5c1839520cb4436f2f1c1009a1a068776e817.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_03 -> audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3fe935a1-ca4c-53b2-9224-fa844cd9c185', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7155057-e385-515a-9666-c61009c836df', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3fe935a1-ca4c-53b2-9224-fa844cd9c185', 1), '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3', 1488, '2026-09-13 10:21:24.242031', '65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64', 'validated', '{"audio_key":"966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab","entity_key":"lx_professional_boundaries_judgment_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_03 -> audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('43313556-481b-5e90-8675-3adfedb9ca47', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56346470-78b6-513f-b1a8-50de1c1387f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('43313556-481b-5e90-8675-3adfedb9ca47', 1), '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3', 1488, '2026-09-13 10:21:24.242031', '65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64', 'validated', '{"audio_key":"966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab","entity_key":"wf_professional_boundaries_judgment_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_01 -> audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6348a79b-37e9-5423-b597-fcc16f357d9f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2d6cd34-f145-599c-8053-df865db0fe31', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6348a79b-37e9-5423-b597-fcc16f357d9f', 1), '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3', 1253, '2026-09-13 11:01:16.600251', '75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567', 'validated', '{"audio_key":"9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9","entity_key":"lx_integrated_judgment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_01 -> audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('533ac4a6-b40b-5e20-94d2-3ee907908194', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80cc140a-06bc-5d59-812e-28c390f42b5f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('533ac4a6-b40b-5e20-94d2-3ee907908194', 1), '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3', 1253, '2026-09-13 11:01:16.600251', '75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567', 'validated', '{"audio_key":"9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9","entity_key":"wf_integrated_judgment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_03 -> audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('344ac875-3793-5b17-94bb-4fc732a7949d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d0071cc904cce8139376274c12a9a5164e310a8188d462a9b1c65d5b0d28f3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99c62afd-0313-5813-a796-70a210a2a517', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('344ac875-3793-5b17-94bb-4fc732a7949d', 1), '6d0071cc904cce8139376274c12a9a5164e310a8188d462a9b1c65d5b0d28f3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3', 1384, '2026-09-13 11:01:16.653286', 'b45c45479ad62ab4db7d2183145bb160801c262c3082ebe17ed0bbe13dac6fc9', 'validated', '{"audio_key":"af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef","entity_key":"lx_risk_assessment_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b45c45479ad62ab4db7d2183145bb160801c262c3082ebe17ed0bbe13dac6fc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_03 -> audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c7f7133-adcf-5d67-aebf-446f31838142', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d0071cc904cce8139376274c12a9a5164e310a8188d462a9b1c65d5b0d28f3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43bc1096-ccae-598f-8266-047ed9d9475f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c7f7133-adcf-5d67-aebf-446f31838142', 1), '6d0071cc904cce8139376274c12a9a5164e310a8188d462a9b1c65d5b0d28f3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3', 1384, '2026-09-13 11:01:16.653286', 'b45c45479ad62ab4db7d2183145bb160801c262c3082ebe17ed0bbe13dac6fc9', 'validated', '{"audio_key":"af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef","entity_key":"wf_risk_assessment_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b45c45479ad62ab4db7d2183145bb160801c262c3082ebe17ed0bbe13dac6fc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/af559dbb101ceabf62f7c2ed5c15614dc6076ebb826746ff2217ae2cf21af1ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_06 -> audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('878da39e-e688-56db-959c-26581f0bb00c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c4ec1f43e7d4d8ed3521e888d816765a46b3fe9ce1b3a85f641779d341f505d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22751d25-df4c-5424-9898-575bd9577d21', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('878da39e-e688-56db-959c-26581f0bb00c', 1), '3c4ec1f43e7d4d8ed3521e888d816765a46b3fe9ce1b3a85f641779d341f505d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3', 1253, '2026-09-13 11:01:17.561144', '0511974e03a9bc1cf21983da2c8315065bebb7c11c10cd38a0c7910611d5da31', 'validated', '{"audio_key":"b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea","entity_key":"lx_decision_review_revision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0511974e03a9bc1cf21983da2c8315065bebb7c11c10cd38a0c7910611d5da31","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_06 -> audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7185f531-daf1-57dc-b265-c25019f16b71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c4ec1f43e7d4d8ed3521e888d816765a46b3fe9ce1b3a85f641779d341f505d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56ce2629-b759-5380-8f97-c3938ba4efa9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7185f531-daf1-57dc-b265-c25019f16b71', 1), '3c4ec1f43e7d4d8ed3521e888d816765a46b3fe9ce1b3a85f641779d341f505d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3', 1253, '2026-09-13 11:01:17.561144', '0511974e03a9bc1cf21983da2c8315065bebb7c11c10cd38a0c7910611d5da31', 'validated', '{"audio_key":"b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea","entity_key":"wf_decision_review_revision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0511974e03a9bc1cf21983da2c8315065bebb7c11c10cd38a0c7910611d5da31","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b51fe3e9196dea022271b1a1e07d743e3c2083b48be662feb19be832b3d349ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_risk_assessment_communication_06 -> audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1bc6840b-d83a-5334-bf73-fc1d6363ebaa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_risk_assessment_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11611ff5097660ddd3b324c07f1cb003ccd06dab39797f98bb5ddb38abc46093'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1db83d8-60a4-5150-bd16-6df96c5a1931', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1bc6840b-d83a-5334-bf73-fc1d6363ebaa', 1), '11611ff5097660ddd3b324c07f1cb003ccd06dab39797f98bb5ddb38abc46093',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3', 1515, '2026-09-13 11:01:17.651324', '8e4eddd05e752a78527260ac6a52fe855031b98f1c07cd1fac800b01386c9b91', 'validated', '{"audio_key":"bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551","entity_key":"lx_risk_assessment_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e4eddd05e752a78527260ac6a52fe855031b98f1c07cd1fac800b01386c9b91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_risk_assessment_communication_06 -> audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0eaa979-c5b0-537f-af22-41aed5b79b24', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_risk_assessment_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11611ff5097660ddd3b324c07f1cb003ccd06dab39797f98bb5ddb38abc46093'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('606b0132-8b3d-5be7-8ec6-e22cff4a373b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0eaa979-c5b0-537f-af22-41aed5b79b24', 1), '11611ff5097660ddd3b324c07f1cb003ccd06dab39797f98bb5ddb38abc46093',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3', 1515, '2026-09-13 11:01:17.651324', '8e4eddd05e752a78527260ac6a52fe855031b98f1c07cd1fac800b01386c9b91', 'validated', '{"audio_key":"bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551","entity_key":"wf_risk_assessment_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e4eddd05e752a78527260ac6a52fe855031b98f1c07cd1fac800b01386c9b91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bc3845cc229e1aa2db37ead1740fa082de93a0b5c80a1840876b81eb3b82a551.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_03 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8424c0f4-b8c0-5930-b68f-41a0cb5c665b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"lx_decision_review_revision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_03 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('750d4648-cf26-5f68-8bb6-b4ddad0ca476', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a57aea78-f14c-5cb5-9e89-2189af76172f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('750d4648-cf26-5f68-8bb6-b4ddad0ca476', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"wf_decision_review_revision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causal_reasoning_counterfactuals_03 -> audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ceb8ecc-d2ad-5203-ab79-84bfe401ff9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causal_reasoning_counterfactuals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2a5aaa4-0a65-587d-8644-70587fcfc450', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ceb8ecc-d2ad-5203-ab79-84bfe401ff9d', 1), '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3', 1149, '2026-09-13 11:01:18.578578', 'e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8', 'validated', '{"audio_key":"c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74","entity_key":"lx_causal_reasoning_counterfactuals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causal_reasoning_counterfactuals_03 -> audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8f5d836c-dea1-5e1c-82e6-1ebe4c6e8ca1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causal_reasoning_counterfactuals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8326390a-17de-5301-923d-a95689e45dee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8f5d836c-dea1-5e1c-82e6-1ebe4c6e8ca1', 1), '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3', 1149, '2026-09-13 11:01:18.578578', 'e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8', 'validated', '{"audio_key":"c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74","entity_key":"wf_causal_reasoning_counterfactuals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_05 -> audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4af2e80c-d56d-5bd2-b977-34919ebbe3aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04426fb804f7de4d9e6dc1544484f3643137ae99ecbbbc30894702ff3634bf1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d758631-9115-57a2-ba5e-c0d61bf57665', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4af2e80c-d56d-5bd2-b977-34919ebbe3aa', 1), '04426fb804f7de4d9e6dc1544484f3643137ae99ecbbbc30894702ff3634bf1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3', 1253, '2026-09-13 11:01:18.616173', '9955c70eaebdd17de7190625f7d27bd6cbad2a384a49a6ca36978f98b742f2dc', 'validated', '{"audio_key":"e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f","entity_key":"lx_professional_boundaries_judgment_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9955c70eaebdd17de7190625f7d27bd6cbad2a384a49a6ca36978f98b742f2dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_05 -> audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9baa67f1-e76c-5ec9-adff-d7795e2a8ac3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04426fb804f7de4d9e6dc1544484f3643137ae99ecbbbc30894702ff3634bf1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95f15246-bfff-522a-b113-e59eae13ff48', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9baa67f1-e76c-5ec9-adff-d7795e2a8ac3', 1), '04426fb804f7de4d9e6dc1544484f3643137ae99ecbbbc30894702ff3634bf1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3', 1253, '2026-09-13 11:01:18.616173', '9955c70eaebdd17de7190625f7d27bd6cbad2a384a49a6ca36978f98b742f2dc', 'validated', '{"audio_key":"e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f","entity_key":"wf_professional_boundaries_judgment_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9955c70eaebdd17de7190625f7d27bd6cbad2a384a49a6ca36978f98b742f2dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e2f144369a5a20dcef8ab658e0a8cab04cb60889745394224c64e6c0bd80821f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_04 -> audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f3b9bb5f-1212-5c79-8b11-bb1a6b149101', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '520a1a3fe9f63ac6bcd809336399f2a78b62cd21bf4d6c354cff496bc086f34c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('539c42fd-fba2-571f-a44d-4e4580240030', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f3b9bb5f-1212-5c79-8b11-bb1a6b149101', 1), '520a1a3fe9f63ac6bcd809336399f2a78b62cd21bf4d6c354cff496bc086f34c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3', 1619, '2026-09-13 11:01:19.570321', '527c7714d336f438d5c7d3ffe72c9fc60024a55e3b7f4779b4beff3cf5159eb0', 'validated', '{"audio_key":"f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8","entity_key":"lx_integrated_judgment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"527c7714d336f438d5c7d3ffe72c9fc60024a55e3b7f4779b4beff3cf5159eb0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_04 -> audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('259ca1cd-2554-5d05-b9b4-ee3257c93b72', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '520a1a3fe9f63ac6bcd809336399f2a78b62cd21bf4d6c354cff496bc086f34c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c26b44b8-e911-57e5-a8ad-bdd968d68376', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('259ca1cd-2554-5d05-b9b4-ee3257c93b72', 1), '520a1a3fe9f63ac6bcd809336399f2a78b62cd21bf4d6c354cff496bc086f34c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3', 1619, '2026-09-13 11:01:19.570321', '527c7714d336f438d5c7d3ffe72c9fc60024a55e3b7f4779b4beff3cf5159eb0', 'validated', '{"audio_key":"f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8","entity_key":"wf_integrated_judgment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"527c7714d336f438d5c7d3ffe72c9fc60024a55e3b7f4779b4beff3cf5159eb0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f21261f9f3d0ef4ff5013b723046385b53403d026879a8c74f41d46997ece5c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decision_review_revision_05 -> audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('053f7a50-090a-5022-b9da-b62b58a67d7a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decision_review_revision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd851222f26e501327bf809ff5aa579912cdff4de8183bd2c89c49621ef99afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da973d55-c02d-5708-8faa-e292fb4ae36b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('053f7a50-090a-5022-b9da-b62b58a67d7a', 1), 'cd851222f26e501327bf809ff5aa579912cdff4de8183bd2c89c49621ef99afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3', 1384, '2026-09-13 11:01:19.618273', '4344037b8cea169fc1cb20ca56ee5693a01bb944d30a365ed6402cc0e44432a5', 'validated', '{"audio_key":"f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca","entity_key":"lx_decision_review_revision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4344037b8cea169fc1cb20ca56ee5693a01bb944d30a365ed6402cc0e44432a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decision_review_revision_05 -> audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbefaa48-e012-5606-a883-2ac52a30be13', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decision_review_revision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd851222f26e501327bf809ff5aa579912cdff4de8183bd2c89c49621ef99afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27aa22cc-1bdc-54ca-a519-4d54882d2d29', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbefaa48-e012-5606-a883-2ac52a30be13', 1), 'cd851222f26e501327bf809ff5aa579912cdff4de8183bd2c89c49621ef99afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3', 1384, '2026-09-13 11:01:19.618273', '4344037b8cea169fc1cb20ca56ee5693a01bb944d30a365ed6402cc0e44432a5', 'validated', '{"audio_key":"f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca","entity_key":"wf_decision_review_revision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4344037b8cea169fc1cb20ca56ee5693a01bb944d30a365ed6402cc0e44432a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f5e8c418d413aeaae698f00c294bf0a157019531f0f74c3ddf6942d8c7f09bca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_02 -> audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d37a60e-aa15-5a23-a6eb-1d9ae7eb42f1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c91c1ebd44d59b0870cf277ce6b161e817a40c0c5ecaf0f8d9a3278c4145005'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b65244c6-302d-5845-ac62-96e65b1ebf0b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d37a60e-aa15-5a23-a6eb-1d9ae7eb42f1', 1), '7c91c1ebd44d59b0870cf277ce6b161e817a40c0c5ecaf0f8d9a3278c4145005',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3', 1436, '2026-09-13 11:01:20.535577', 'dc248b1700eb32dbb479d81d99b8f2249485ec88f15a6a2bb4d75aaa25d39937', 'validated', '{"audio_key":"f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3","entity_key":"lx_integrated_judgment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc248b1700eb32dbb479d81d99b8f2249485ec88f15a6a2bb4d75aaa25d39937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_02 -> audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dafc8b72-19ee-5832-9307-d462197cb26c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c91c1ebd44d59b0870cf277ce6b161e817a40c0c5ecaf0f8d9a3278c4145005'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a99146ab-7662-5247-b255-aa415d5789ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dafc8b72-19ee-5832-9307-d462197cb26c', 1), '7c91c1ebd44d59b0870cf277ce6b161e817a40c0c5ecaf0f8d9a3278c4145005',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3', 1436, '2026-09-13 11:01:20.535577', 'dc248b1700eb32dbb479d81d99b8f2249485ec88f15a6a2bb4d75aaa25d39937', 'validated', '{"audio_key":"f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3","entity_key":"wf_integrated_judgment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc248b1700eb32dbb479d81d99b8f2249485ec88f15a6a2bb4d75aaa25d39937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f6070eb4afdc81b8c4f0d44e5ef2acb83546eaca792b490618f41a8625cc7cc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_judgment_capstone_03 -> audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c1ea246-e8af-5176-9ad7-13ebcfa4dd20', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_judgment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6a30413c6d3c334c337db50bd046a04609d8472ca66be215cc382e286ed1974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1018afdb-8a8a-5b2b-8f29-da822787c848', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c1ea246-e8af-5176-9ad7-13ebcfa4dd20', 1), 'e6a30413c6d3c334c337db50bd046a04609d8472ca66be215cc382e286ed1974',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3', 1488, '2026-09-13 11:01:20.598063', '6dc0d1d59ee1b1768b48b347886825a44d2f150dd7a649ce98af8370e3f9ed4c', 'validated', '{"audio_key":"fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f","entity_key":"lx_integrated_judgment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dc0d1d59ee1b1768b48b347886825a44d2f150dd7a649ce98af8370e3f9ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_judgment_capstone_03 -> audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('60bdfc76-6924-5e20-8835-3ab48ed906d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_judgment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6a30413c6d3c334c337db50bd046a04609d8472ca66be215cc382e286ed1974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f19f73e-e2fa-5492-adb4-da8192e8e340', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('60bdfc76-6924-5e20-8835-3ab48ed906d7', 1), 'e6a30413c6d3c334c337db50bd046a04609d8472ca66be215cc382e286ed1974',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3', 1488, '2026-09-13 11:01:20.598063', '6dc0d1d59ee1b1768b48b347886825a44d2f150dd7a649ce98af8370e3f9ed4c', 'validated', '{"audio_key":"fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f","entity_key":"wf_integrated_judgment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dc0d1d59ee1b1768b48b347886825a44d2f150dd7a649ce98af8370e3f9ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fa8489fd0f180f0cd7c1e8af3fad2a4ab8ad99ed5b9ded94b35d2c5403ff392f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_04 -> audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa8fcb8b-a382-509d-91ac-4809ad4226c3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c16577d50850b65daf3d68feb64b8ffac2b053b8c7284b68226492d4ca18a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87c5bfe5-7386-5252-aacc-7455df90e463', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa8fcb8b-a382-509d-91ac-4809ad4226c3', 1), 'd6c16577d50850b65daf3d68feb64b8ffac2b053b8c7284b68226492d4ca18a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3', 1332, '2026-09-13 11:01:21.567601', '5cedc08866368eeffe3e491aef1c296d48a228aab245846064a8970f0fdf7ee8', 'validated', '{"audio_key":"fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0","entity_key":"lx_professional_boundaries_judgment_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5cedc08866368eeffe3e491aef1c296d48a228aab245846064a8970f0fdf7ee8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_04 -> audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a346c4ed-0882-55db-b334-b387e52e9d3b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c16577d50850b65daf3d68feb64b8ffac2b053b8c7284b68226492d4ca18a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29889cf1-8d94-5919-96e2-a3cc7af20616', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a346c4ed-0882-55db-b334-b387e52e9d3b', 1), 'd6c16577d50850b65daf3d68feb64b8ffac2b053b8c7284b68226492d4ca18a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3', 1332, '2026-09-13 11:01:21.567601', '5cedc08866368eeffe3e491aef1c296d48a228aab245846064a8970f0fdf7ee8', 'validated', '{"audio_key":"fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0","entity_key":"wf_professional_boundaries_judgment_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5cedc08866368eeffe3e491aef1c296d48a228aab245846064a8970f0fdf7ee8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe05850158b66aae9920d83a23d25f770a0a78c713d896bd0f5a62f4d134b8c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_boundaries_judgment_01 -> audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f0dbcfcb-d3fc-576d-b10f-46c6dce71fe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_boundaries_judgment_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a2ad99eac3d79650b086124caca3d391d4f624c49bf4adf3c99eb11dd146cf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79fead6f-9ece-5e8b-9af3-764c975e4d4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f0dbcfcb-d3fc-576d-b10f-46c6dce71fe3', 1), '1a2ad99eac3d79650b086124caca3d391d4f624c49bf4adf3c99eb11dd146cf1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3', 1567, '2026-09-13 11:01:21.596308', '0bf943d1156ecee6f9591c3c6227430b90b890cb03014f840f8ab044eba266cf', 'validated', '{"audio_key":"feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb","entity_key":"lx_professional_boundaries_judgment_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bf943d1156ecee6f9591c3c6227430b90b890cb03014f840f8ab044eba266cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_boundaries_judgment_01 -> audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('512d9089-c573-5417-8a35-ebc85bed2441', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_boundaries_judgment_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a2ad99eac3d79650b086124caca3d391d4f624c49bf4adf3c99eb11dd146cf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b15ea965-86e6-5dee-aac8-39d062381084', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('512d9089-c573-5417-8a35-ebc85bed2441', 1), '1a2ad99eac3d79650b086124caca3d391d4f624c49bf4adf3c99eb11dd146cf1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3', 1567, '2026-09-13 11:01:21.596308', '0bf943d1156ecee6f9591c3c6227430b90b890cb03014f840f8ab044eba266cf', 'validated', '{"audio_key":"feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb","entity_key":"wf_professional_boundaries_judgment_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bf943d1156ecee6f9591c3c6227430b90b890cb03014f840f8ab044eba266cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/feda5687edf364c0712ba498f583ad8dbd9c85b2fa24131194756f7076f8aecb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_05 -> audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26a683e2-8428-5299-bb75-e48b3357b563', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba3eb8cd9f9a6fd5ef7ac5452516617c0e45b63193acb4613fb8fc1b6139bbb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4ab49a0-64fe-592e-8a14-ff302c5ceaf7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26a683e2-8428-5299-bb75-e48b3357b563', 1), 'ba3eb8cd9f9a6fd5ef7ac5452516617c0e45b63193acb4613fb8fc1b6139bbb6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3', 7288, '2026-09-13 11:01:23.258843', '627b648e9bfbbb305b6c5c86584f4e0c3134ed4a05c103e38c615649d6e7d103', 'validated', '{"audio_key":"07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c","entity_key":"u_professional_boundaries_judgment_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"627b648e9bfbbb305b6c5c86584f4e0c3134ed4a05c103e38c615649d6e7d103","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_boundaries_judgment_03_listen -> audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0fbe5128-9366-5def-ae0e-acd055bd7c71', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_boundaries_judgment_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba3eb8cd9f9a6fd5ef7ac5452516617c0e45b63193acb4613fb8fc1b6139bbb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91af9457-f32e-5028-a1de-78f52249ecd1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0fbe5128-9366-5def-ae0e-acd055bd7c71', 1), 'ba3eb8cd9f9a6fd5ef7ac5452516617c0e45b63193acb4613fb8fc1b6139bbb6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3', 7288, '2026-09-13 11:01:23.258843', '627b648e9bfbbb305b6c5c86584f4e0c3134ed4a05c103e38c615649d6e7d103', 'validated', '{"audio_key":"07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c","entity_key":"ex_professional_boundaries_judgment_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"627b648e9bfbbb305b6c5c86584f4e0c3134ed4a05c103e38c615649d6e7d103","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07b994f8c46d86fdb5b3f67149c1db3cb02310696f598b63019ae422d3b1ef9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_05 -> audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0ea135bb-7a5c-5d63-b6bb-0fc89a6c0a47', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f044ba3987a0d89cd14839c6a182832700c34b584f5b1efe1d4b310af2b17d3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1692c14-d6b2-5f8e-bf45-24908b2f440d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0ea135bb-7a5c-5d63-b6bb-0fc89a6c0a47', 1), 'f044ba3987a0d89cd14839c6a182832700c34b584f5b1efe1d4b310af2b17d3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3', 7131, '2026-09-13 11:01:23.238828', '00705b88a3cd3dba1cc1aae489972df3bed30c405c66a26ae92c638a0cd68c62', 'validated', '{"audio_key":"1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1","entity_key":"u_integrated_judgment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00705b88a3cd3dba1cc1aae489972df3bed30c405c66a26ae92c638a0cd68c62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_judgment_capstone_03_listen -> audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c786d615-c825-5101-90ad-290d61427ee1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_judgment_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f044ba3987a0d89cd14839c6a182832700c34b584f5b1efe1d4b310af2b17d3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f832c00d-6418-58af-9a9b-c9a25fef6425', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c786d615-c825-5101-90ad-290d61427ee1', 1), 'f044ba3987a0d89cd14839c6a182832700c34b584f5b1efe1d4b310af2b17d3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3', 7131, '2026-09-13 11:01:23.238828', '00705b88a3cd3dba1cc1aae489972df3bed30c405c66a26ae92c638a0cd68c62', 'validated', '{"audio_key":"1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1","entity_key":"ex_integrated_judgment_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00705b88a3cd3dba1cc1aae489972df3bed30c405c66a26ae92c638a0cd68c62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1433e649beca6ce2b7bbb8fdff3f1838304635596a3905b023e2048fac186cd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_01 -> audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('82f0a107-e782-55c0-9fc9-c703ee19c679', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb59ec9af33c8adf964baa44c826fd537b120ee679ad0ebcc9eb25bc489128ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('174f61eb-afe9-5c23-863e-3a8f376c5063', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('82f0a107-e782-55c0-9fc9-c703ee19c679', 1), 'cb59ec9af33c8adf964baa44c826fd537b120ee679ad0ebcc9eb25bc489128ae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3', 6922, '2026-09-13 11:01:24.886148', '0374855d9c46c2eb231d8d1e25c7e43be36dbfdcccd078be5b2b14b80e7f9296', 'validated', '{"audio_key":"18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76","entity_key":"u_decision_review_revision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0374855d9c46c2eb231d8d1e25c7e43be36dbfdcccd078be5b2b14b80e7f9296","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decision_review_revision_01_listen -> audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c5307805-c46e-5469-bb48-c9c1bc8e2d8d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decision_review_revision_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb59ec9af33c8adf964baa44c826fd537b120ee679ad0ebcc9eb25bc489128ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f27ea4f-eddb-547e-97c9-7364b0196fb8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c5307805-c46e-5469-bb48-c9c1bc8e2d8d', 1), 'cb59ec9af33c8adf964baa44c826fd537b120ee679ad0ebcc9eb25bc489128ae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3', 6922, '2026-09-13 11:01:24.886148', '0374855d9c46c2eb231d8d1e25c7e43be36dbfdcccd078be5b2b14b80e7f9296', 'validated', '{"audio_key":"18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76","entity_key":"ex_decision_review_revision_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0374855d9c46c2eb231d8d1e25c7e43be36dbfdcccd078be5b2b14b80e7f9296","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/18317a37742ac0cf625934e8f066eb20f283c0a71f94f5084df8263d3013ed76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_06 -> audio/generated/de-DE/utterances/1929b6c3e701a5d29396a0a09273d53754bbe2d4be9ce57e97c73ecc34d87635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('30eb7c18-d070-5f8c-a420-7f8386f15a13', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90b80102f829d1cd32417217483b66c9a1aac552817d5c8cb22800573da6df50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4854009d-9d94-5f5e-ad8f-964cfe0babf2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('30eb7c18-d070-5f8c-a420-7f8386f15a13', 1), '90b80102f829d1cd32417217483b66c9a1aac552817d5c8cb22800573da6df50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1929b6c3e701a5d29396a0a09273d53754bbe2d4be9ce57e97c73ecc34d87635.mp3', 7941, '2026-09-13 11:01:24.972176', '72eaee5074964558fe073b16da0f921d756bdc6700e113ba9b91d97db910e8ea', 'validated', '{"audio_key":"1929b6c3e701a5d29396a0a09273d53754bbe2d4be9ce57e97c73ecc34d87635","entity_key":"u_professional_boundaries_judgment_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72eaee5074964558fe073b16da0f921d756bdc6700e113ba9b91d97db910e8ea","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1929b6c3e701a5d29396a0a09273d53754bbe2d4be9ce57e97c73ecc34d87635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_02 -> audio/generated/de-DE/utterances/19ff8a524571abd642641e438732446cc56671417871490355d04dcec1b278df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3432c3e4-98b0-57d7-ae99-2957d8da0bf4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d3cad459077ebbbaea21fbc7dab5da445b07bfdf01a3f4a7940a0c0083aec32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e40540e3-3def-500e-bdc1-417d34926c75', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3432c3e4-98b0-57d7-ae99-2957d8da0bf4', 1), '3d3cad459077ebbbaea21fbc7dab5da445b07bfdf01a3f4a7940a0c0083aec32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/19ff8a524571abd642641e438732446cc56671417871490355d04dcec1b278df.mp3', 6687, '2026-09-13 11:01:26.515043', 'd8295021448aab42da495f2a1b5dc472239d9715b48229624161ec7abe6ee09b', 'validated', '{"audio_key":"19ff8a524571abd642641e438732446cc56671417871490355d04dcec1b278df","entity_key":"u_risk_assessment_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8295021448aab42da495f2a1b5dc472239d9715b48229624161ec7abe6ee09b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/19ff8a524571abd642641e438732446cc56671417871490355d04dcec1b278df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_04 -> audio/generated/de-DE/utterances/1be066887bcf7a3890b5aeee84c5316c8dfef4122582df8f90f49d894510b64f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0af023d-9370-550c-a146-64fc40a8c51f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb75a9be3b7b27daa14f145551ef6cb6fffbd6e1db7dd706ebe5f1d630789046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('030cc152-5909-5704-b157-c3b4e742d45f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0af023d-9370-550c-a146-64fc40a8c51f', 1), 'eb75a9be3b7b27daa14f145551ef6cb6fffbd6e1db7dd706ebe5f1d630789046',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1be066887bcf7a3890b5aeee84c5316c8dfef4122582df8f90f49d894510b64f.mp3', 6530, '2026-09-13 11:01:26.603750', '6737dce8da3316e9436af70066bf02191ba4dd35b437b8a0045ffade7409cdef', 'validated', '{"audio_key":"1be066887bcf7a3890b5aeee84c5316c8dfef4122582df8f90f49d894510b64f","entity_key":"u_decision_review_revision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6737dce8da3316e9436af70066bf02191ba4dd35b437b8a0045ffade7409cdef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1be066887bcf7a3890b5aeee84c5316c8dfef4122582df8f90f49d894510b64f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_05 -> audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25dfa541-61ba-561e-93f6-f67a05a4fd51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35c1a442b1f186c93bf8694532735fe4d705738fbe0b332e19e37694b1a3840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b491414d-be31-5d67-9d36-4db85b9e6533', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25dfa541-61ba-561e-93f6-f67a05a4fd51', 1), 'd35c1a442b1f186c93bf8694532735fe4d705738fbe0b332e19e37694b1a3840',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3', 6504, '2026-09-13 11:01:28.123309', 'd69eccccb06c6e14d063418f24d2b2db45e87206b9786ba6d5f41339ea56b07b', 'validated', '{"audio_key":"24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78","entity_key":"u_decision_review_revision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d69eccccb06c6e14d063418f24d2b2db45e87206b9786ba6d5f41339ea56b07b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decision_review_revision_03_listen -> audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a505c374-c556-561f-8217-00ed7441e80d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decision_review_revision_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35c1a442b1f186c93bf8694532735fe4d705738fbe0b332e19e37694b1a3840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ab87c6d-2c28-5aeb-aa98-ee0227f8f0cc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a505c374-c556-561f-8217-00ed7441e80d', 1), 'd35c1a442b1f186c93bf8694532735fe4d705738fbe0b332e19e37694b1a3840',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3', 6504, '2026-09-13 11:01:28.123309', 'd69eccccb06c6e14d063418f24d2b2db45e87206b9786ba6d5f41339ea56b07b', 'validated', '{"audio_key":"24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78","entity_key":"ex_decision_review_revision_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d69eccccb06c6e14d063418f24d2b2db45e87206b9786ba6d5f41339ea56b07b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/24c7e56521a1be22e11eafc1775514f96ee5feafae62660f9764f0e135365d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_04 -> audio/generated/de-DE/utterances/288cd3fada7ba3ec025a46284695e525802f0cc9e95b6e8d3a8862b18c77579b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('310b5b61-46dd-594e-aefd-638e6d6c33eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7361ac27196abc532033a9630014ae3d3dc7f9077f1997504d70ddfac8e2f17d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13fbcf27-42d5-5e33-ad13-b28b2617b79f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('310b5b61-46dd-594e-aefd-638e6d6c33eb', 1), '7361ac27196abc532033a9630014ae3d3dc7f9077f1997504d70ddfac8e2f17d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/288cd3fada7ba3ec025a46284695e525802f0cc9e95b6e8d3a8862b18c77579b.mp3', 8907, '2026-09-13 11:01:28.492391', '7630d1640b08fc3f39d1ed8a44b925e6777bc5f24993a3d4438d9808501da54a', 'validated', '{"audio_key":"288cd3fada7ba3ec025a46284695e525802f0cc9e95b6e8d3a8862b18c77579b","entity_key":"u_professional_boundaries_judgment_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7630d1640b08fc3f39d1ed8a44b925e6777bc5f24993a3d4438d9808501da54a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/288cd3fada7ba3ec025a46284695e525802f0cc9e95b6e8d3a8862b18c77579b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_03 -> audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('120f4042-f391-5fa5-851d-6c271b353836', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1822ba46b35d97eb43cc8fe7c14678765d38915e48d1bf509deb2f8d90ce6d8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4566444d-c31c-560d-b156-1d56371eda85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('120f4042-f391-5fa5-851d-6c271b353836', 1), '1822ba46b35d97eb43cc8fe7c14678765d38915e48d1bf509deb2f8d90ce6d8d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3', 7471, '2026-09-13 11:01:29.783898', 'fa2c65247ca8994d94677029c067eab5de26a311d2dcd8aff5338beb806a870c', 'validated', '{"audio_key":"2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab","entity_key":"u_decision_review_revision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa2c65247ca8994d94677029c067eab5de26a311d2dcd8aff5338beb806a870c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decision_review_revision_02_listen -> audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('921566dc-7170-5f7c-b5ac-2dec5ce30729', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decision_review_revision_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1822ba46b35d97eb43cc8fe7c14678765d38915e48d1bf509deb2f8d90ce6d8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1b3bb5a-8bdf-56cb-958c-8f6ceee0029a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('921566dc-7170-5f7c-b5ac-2dec5ce30729', 1), '1822ba46b35d97eb43cc8fe7c14678765d38915e48d1bf509deb2f8d90ce6d8d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3', 7471, '2026-09-13 11:01:29.783898', 'fa2c65247ca8994d94677029c067eab5de26a311d2dcd8aff5338beb806a870c', 'validated', '{"audio_key":"2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab","entity_key":"ex_decision_review_revision_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa2c65247ca8994d94677029c067eab5de26a311d2dcd8aff5338beb806a870c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2b8434e0029b5b505325e8455e563c68f3af3cac8bc99455ca46b86b4cb491ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_04 -> audio/generated/de-DE/utterances/307ee0d679cf47b78dc3a3e7b0e4afc431639e5f0c5f59530b1f5fdeb4c0b19c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0e44993-7336-55e0-aa5c-ddd78804b4f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5de8fedb9cee20b540ad13e87b8f431b1c642d51a16b353ba3a5e0ea20a09ca0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7677c4a-cb10-5afc-9c32-7552aa337de1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0e44993-7336-55e0-aa5c-ddd78804b4f1', 1), '5de8fedb9cee20b540ad13e87b8f431b1c642d51a16b353ba3a5e0ea20a09ca0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/307ee0d679cf47b78dc3a3e7b0e4afc431639e5f0c5f59530b1f5fdeb4c0b19c.mp3', 7183, '2026-09-13 11:01:30.212868', 'a52726851270cf6fefa45da006f1aa137cdad83b54a02abc2a3c4e952491d731', 'validated', '{"audio_key":"307ee0d679cf47b78dc3a3e7b0e4afc431639e5f0c5f59530b1f5fdeb4c0b19c","entity_key":"u_causal_reasoning_counterfactuals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a52726851270cf6fefa45da006f1aa137cdad83b54a02abc2a3c4e952491d731","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/307ee0d679cf47b78dc3a3e7b0e4afc431639e5f0c5f59530b1f5fdeb4c0b19c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_05 -> audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('370bb7dd-81a3-5167-8e2d-d664017017be', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e8e6379f04dd4935a04f40f6addf3020695e4ac892ef59e59a94a0d58c24c9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668eb497-f34b-5885-853e-bd43874ece4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('370bb7dd-81a3-5167-8e2d-d664017017be', 1), '5e8e6379f04dd4935a04f40f6addf3020695e4ac892ef59e59a94a0d58c24c9a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3', 8071, '2026-09-13 11:01:31.737219', '010aec788776f48ff85f8e5cee7a2697be39792076b22ace45a60daacaa36b42', 'validated', '{"audio_key":"3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62","entity_key":"u_risk_assessment_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"010aec788776f48ff85f8e5cee7a2697be39792076b22ace45a60daacaa36b42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_risk_assessment_communication_03_listen -> audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a35679f1-3031-530e-98d3-0b26ae41112c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_risk_assessment_communication_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e8e6379f04dd4935a04f40f6addf3020695e4ac892ef59e59a94a0d58c24c9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96ccf7bd-bc09-5685-b17c-179152c1cd9b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a35679f1-3031-530e-98d3-0b26ae41112c', 1), '5e8e6379f04dd4935a04f40f6addf3020695e4ac892ef59e59a94a0d58c24c9a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3', 8071, '2026-09-13 11:01:31.737219', '010aec788776f48ff85f8e5cee7a2697be39792076b22ace45a60daacaa36b42', 'validated', '{"audio_key":"3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62","entity_key":"ex_risk_assessment_communication_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"010aec788776f48ff85f8e5cee7a2697be39792076b22ace45a60daacaa36b42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3ec815e8b4c0d8183ccee07548c9639e7941a40b353c35fe5593ff3066635a62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_04 -> audio/generated/de-DE/utterances/43a1c4171f0121dbd61ef69dcfcaa3317d5fee88ee292a94bf6bdc76f5cef47d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd7ba015-858b-56dd-a178-45fcf08e4d2b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ba0f5ae3d0d39847a6109399bf90f3e87e4480a8d885b7d4b7956b21bf08560'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88f34bc2-4918-5eeb-a4ef-6de747ee2375', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd7ba015-858b-56dd-a178-45fcf08e4d2b', 1), '8ba0f5ae3d0d39847a6109399bf90f3e87e4480a8d885b7d4b7956b21bf08560',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/43a1c4171f0121dbd61ef69dcfcaa3317d5fee88ee292a94bf6bdc76f5cef47d.mp3', 6112, '2026-09-13 11:01:31.771338', '89d45590c88536265c5625c52caa45d91503c751340a0f22409593ceed14b4e6', 'validated', '{"audio_key":"43a1c4171f0121dbd61ef69dcfcaa3317d5fee88ee292a94bf6bdc76f5cef47d","entity_key":"u_integrated_judgment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89d45590c88536265c5625c52caa45d91503c751340a0f22409593ceed14b4e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/43a1c4171f0121dbd61ef69dcfcaa3317d5fee88ee292a94bf6bdc76f5cef47d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_03 -> audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c85eb44-f323-5b8e-a7a5-07aadd7559eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3588dcf665a6a7d738c66ab7dec9898af00dafff2b695888ead7dc60d5924061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aba44356-4d17-5e9f-ad9e-10aaa6170a7b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c85eb44-f323-5b8e-a7a5-07aadd7559eb', 1), '3588dcf665a6a7d738c66ab7dec9898af00dafff2b695888ead7dc60d5924061',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3', 8385, '2026-09-13 11:01:33.593659', '9c8f596de9d0984b6aa3506609793ea95acc71326db77d10094acc21ec4f2b1d', 'validated', '{"audio_key":"53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5","entity_key":"u_professional_boundaries_judgment_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c8f596de9d0984b6aa3506609793ea95acc71326db77d10094acc21ec4f2b1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_boundaries_judgment_02_listen -> audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f09edb53-7b7c-5b13-8cda-86836b60ffb6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_boundaries_judgment_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3588dcf665a6a7d738c66ab7dec9898af00dafff2b695888ead7dc60d5924061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('697add0e-06d0-5c0d-826e-7674cbce491a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f09edb53-7b7c-5b13-8cda-86836b60ffb6', 1), '3588dcf665a6a7d738c66ab7dec9898af00dafff2b695888ead7dc60d5924061',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3', 8385, '2026-09-13 11:01:33.593659', '9c8f596de9d0984b6aa3506609793ea95acc71326db77d10094acc21ec4f2b1d', 'validated', '{"audio_key":"53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5","entity_key":"ex_professional_boundaries_judgment_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c8f596de9d0984b6aa3506609793ea95acc71326db77d10094acc21ec4f2b1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/53d79439983293da9d4c52427356a55ac35007511c21a8fdb3e486194e928bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_01 -> audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cefafb72-8722-597a-8d17-400b0bf19750', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e99eff68ee53e3bacf83065507aff527840c2728132dd2b2756ea1489832aa6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08f87093-8c10-5a7d-883d-883939049bb8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cefafb72-8722-597a-8d17-400b0bf19750', 1), 'e99eff68ee53e3bacf83065507aff527840c2728132dd2b2756ea1489832aa6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3', 7183, '2026-09-13 11:01:33.576697', '044fa88e4acca819bce8eb42d3377d6a2d86f1da0043168f43a9bbc980c553b3', 'validated', '{"audio_key":"6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a","entity_key":"u_risk_assessment_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"044fa88e4acca819bce8eb42d3377d6a2d86f1da0043168f43a9bbc980c553b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_risk_assessment_communication_01_listen -> audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5ff904f5-d1fb-5874-8018-41d5cae4f058', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_risk_assessment_communication_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e99eff68ee53e3bacf83065507aff527840c2728132dd2b2756ea1489832aa6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30d6cbbe-c78e-58a2-9076-c25d43b61c05', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5ff904f5-d1fb-5874-8018-41d5cae4f058', 1), 'e99eff68ee53e3bacf83065507aff527840c2728132dd2b2756ea1489832aa6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3', 7183, '2026-09-13 11:01:33.576697', '044fa88e4acca819bce8eb42d3377d6a2d86f1da0043168f43a9bbc980c553b3', 'validated', '{"audio_key":"6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a","entity_key":"ex_risk_assessment_communication_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"044fa88e4acca819bce8eb42d3377d6a2d86f1da0043168f43a9bbc980c553b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6015d676b0c9370a7370823fec847ab42925b9b03f01ddad9fa57ed287411b8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_04 -> audio/generated/de-DE/utterances/671bc5da314b202532f5c347d6d3e2c424b61d0429e13827938dafb81b0dfde6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6b1971e6-50b4-5dd9-bff0-ecbad2778bfc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e64048445a46c6cad8b8a64e94e617c13d942141b780b111d4a8609004eb81b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('227e56cf-daca-5e7b-b39c-e6202b175a3b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6b1971e6-50b4-5dd9-bff0-ecbad2778bfc', 1), '8e64048445a46c6cad8b8a64e94e617c13d942141b780b111d4a8609004eb81b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/671bc5da314b202532f5c347d6d3e2c424b61d0429e13827938dafb81b0dfde6.mp3', 5668, '2026-09-13 11:01:35.049550', '8747a05dc95bf1763810aa31688f5f5931002c7f038f86beefd880faf0b7da39', 'validated', '{"audio_key":"671bc5da314b202532f5c347d6d3e2c424b61d0429e13827938dafb81b0dfde6","entity_key":"u_risk_assessment_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8747a05dc95bf1763810aa31688f5f5931002c7f038f86beefd880faf0b7da39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/671bc5da314b202532f5c347d6d3e2c424b61d0429e13827938dafb81b0dfde6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_03 -> audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18f159ff-d166-559b-bf4f-8a7c8afb423e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bd29671bc06740ffaae4580080b8d69cd93085441cb87a749ae5f356c6bbd05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cb896c4-ab7f-57b6-86e7-ae808cbc3b5f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18f159ff-d166-559b-bf4f-8a7c8afb423e', 1), '0bd29671bc06740ffaae4580080b8d69cd93085441cb87a749ae5f356c6bbd05',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3', 6295, '2026-09-13 11:01:35.238728', '6991f9e5f49113678d2f6993c8828d74e25de0b2ae3f55661c26b17cf3deea54', 'validated', '{"audio_key":"693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4","entity_key":"u_causal_reasoning_counterfactuals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6991f9e5f49113678d2f6993c8828d74e25de0b2ae3f55661c26b17cf3deea54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_causal_reasoning_counterfactuals_02_listen -> audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2ab14754-28b6-57a0-a12a-14ca8ebad7a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_causal_reasoning_counterfactuals_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bd29671bc06740ffaae4580080b8d69cd93085441cb87a749ae5f356c6bbd05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da92b5c9-ebdb-5b28-8e4f-5d23a22161df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2ab14754-28b6-57a0-a12a-14ca8ebad7a5', 1), '0bd29671bc06740ffaae4580080b8d69cd93085441cb87a749ae5f356c6bbd05',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3', 6295, '2026-09-13 11:01:35.238728', '6991f9e5f49113678d2f6993c8828d74e25de0b2ae3f55661c26b17cf3deea54', 'validated', '{"audio_key":"693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4","entity_key":"ex_causal_reasoning_counterfactuals_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6991f9e5f49113678d2f6993c8828d74e25de0b2ae3f55661c26b17cf3deea54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/693b004d48c009630bd6300d944c89a4e21ad7d137782779e606c4a110c39ab4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_06 -> audio/generated/de-DE/utterances/7437c47bcc3934ec8009c47e5eb0729b5ffa78b49fd192215bde118248e282d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0903cda-865d-54dc-ac72-b5231584e190', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14171ee7a8718d332d9a9defe5c3df7df61911d06b22aaa7050063e8a9ce303a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b6378b0-e2ba-5185-8a7b-7963ae221b2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0903cda-865d-54dc-ac72-b5231584e190', 1), '14171ee7a8718d332d9a9defe5c3df7df61911d06b22aaa7050063e8a9ce303a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7437c47bcc3934ec8009c47e5eb0729b5ffa78b49fd192215bde118248e282d4.mp3', 5668, '2026-09-13 11:01:36.492741', '02377f10034b38c088c453cbc7faf344e7727332dfbdbc84775173d2da3e3a1b', 'validated', '{"audio_key":"7437c47bcc3934ec8009c47e5eb0729b5ffa78b49fd192215bde118248e282d4","entity_key":"u_risk_assessment_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02377f10034b38c088c453cbc7faf344e7727332dfbdbc84775173d2da3e3a1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7437c47bcc3934ec8009c47e5eb0729b5ffa78b49fd192215bde118248e282d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_05 -> audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c5fc7c1a-a7b1-59c7-bed1-4f37aa782744', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a59ad65339ab40f53e5ac60804cc02c1bc255533f9bd41e64ecef7495bef45e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60759f6d-2f7b-5001-ad90-3dbd120c7767', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c5fc7c1a-a7b1-59c7-bed1-4f37aa782744', 1), '0a59ad65339ab40f53e5ac60804cc02c1bc255533f9bd41e64ecef7495bef45e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3', 5433, '2026-09-13 11:01:36.689129', '3b4b1b2609ad7026065d0e6202e4d6d51ffc479be4fb3f6d53b641c4c6bee306', 'validated', '{"audio_key":"76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef","entity_key":"u_causal_reasoning_counterfactuals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b4b1b2609ad7026065d0e6202e4d6d51ffc479be4fb3f6d53b641c4c6bee306","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_causal_reasoning_counterfactuals_03_listen -> audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d67574a2-aacd-503c-9cbc-249ff2f7eca3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_causal_reasoning_counterfactuals_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a59ad65339ab40f53e5ac60804cc02c1bc255533f9bd41e64ecef7495bef45e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9f1b611-c938-5365-b835-a1585382cc03', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d67574a2-aacd-503c-9cbc-249ff2f7eca3', 1), '0a59ad65339ab40f53e5ac60804cc02c1bc255533f9bd41e64ecef7495bef45e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3', 5433, '2026-09-13 11:01:36.689129', '3b4b1b2609ad7026065d0e6202e4d6d51ffc479be4fb3f6d53b641c4c6bee306', 'validated', '{"audio_key":"76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef","entity_key":"ex_causal_reasoning_counterfactuals_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b4b1b2609ad7026065d0e6202e4d6d51ffc479be4fb3f6d53b641c4c6bee306","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/76d29aed2dafe1ccb35925ca61848a901e46e2b91f454579406923245cc469ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_03 -> audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('032a5943-4976-5121-bbda-dfb103326b7f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14cfda0eed325b2097a9eadcb222efd9eb4b08acb02435b0a0d3e92772e7ce97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4abec5fd-65a6-50e8-bfea-afefe40a1af7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('032a5943-4976-5121-bbda-dfb103326b7f', 1), '14cfda0eed325b2097a9eadcb222efd9eb4b08acb02435b0a0d3e92772e7ce97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3', 6765, '2026-09-13 11:01:38.107745', '2fc4702fe253a50522fe0ba98af60de5f19c282863e445dec28052622e0749dc', 'validated', '{"audio_key":"780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257","entity_key":"u_integrated_judgment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fc4702fe253a50522fe0ba98af60de5f19c282863e445dec28052622e0749dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_judgment_capstone_02_listen -> audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a4452799-8d51-5fc6-82c8-d0e2df3f6f70', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_judgment_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14cfda0eed325b2097a9eadcb222efd9eb4b08acb02435b0a0d3e92772e7ce97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62472694-3ce2-56f0-8bf8-adb3f85dc8c2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a4452799-8d51-5fc6-82c8-d0e2df3f6f70', 1), '14cfda0eed325b2097a9eadcb222efd9eb4b08acb02435b0a0d3e92772e7ce97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3', 6765, '2026-09-13 11:01:38.107745', '2fc4702fe253a50522fe0ba98af60de5f19c282863e445dec28052622e0749dc', 'validated', '{"audio_key":"780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257","entity_key":"ex_integrated_judgment_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fc4702fe253a50522fe0ba98af60de5f19c282863e445dec28052622e0749dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/780731952565b7d8180fbae214997d24c73bcad399e0d4902c8b68382fa12257.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_02 -> audio/generated/de-DE/utterances/7c0a709a633a3de2f8021426b417b5b0184356565085bc5f04241c2163769121.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0cca75c0-5f21-5472-bf9b-797a52ed5b2b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '661f4cd370d00d332a3d01dc14d62111d5d898137cf28a915f98bf20e969a592'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0da9e548-2b4f-59f7-a552-e8e9d5b04915', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0cca75c0-5f21-5472-bf9b-797a52ed5b2b', 1), '661f4cd370d00d332a3d01dc14d62111d5d898137cf28a915f98bf20e969a592',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7c0a709a633a3de2f8021426b417b5b0184356565085bc5f04241c2163769121.mp3', 6452, '2026-09-13 11:01:38.301639', 'bf10081706c4cc0fff6317f78fa5fb3fa0a26d170246f07ed0cb09271b51ee7b', 'validated', '{"audio_key":"7c0a709a633a3de2f8021426b417b5b0184356565085bc5f04241c2163769121","entity_key":"u_integrated_judgment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf10081706c4cc0fff6317f78fa5fb3fa0a26d170246f07ed0cb09271b51ee7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7c0a709a633a3de2f8021426b417b5b0184356565085bc5f04241c2163769121.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_risk_assessment_communication_03 -> audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1759e91-81cb-5ac1-9f6d-7a22f29f7599', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_risk_assessment_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aeeb868dcb2307fbc4fcdd2c037e00d1ffaa6769b6302d557dc665b7679fd03a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d6d4c0b-645b-5dfe-ae11-fa1c54e0e041', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1759e91-81cb-5ac1-9f6d-7a22f29f7599', 1), 'aeeb868dcb2307fbc4fcdd2c037e00d1ffaa6769b6302d557dc665b7679fd03a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3', 5799, '2026-09-13 11:01:39.553655', 'efa4f4270171a703bda9c66ebe1b030016bb73c5fe4298a46848a984dc89711d', 'validated', '{"audio_key":"8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad","entity_key":"u_risk_assessment_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efa4f4270171a703bda9c66ebe1b030016bb73c5fe4298a46848a984dc89711d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_risk_assessment_communication_02_listen -> audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ccfb3e4c-cffd-5698-a950-ddef04015d1a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_risk_assessment_communication_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aeeb868dcb2307fbc4fcdd2c037e00d1ffaa6769b6302d557dc665b7679fd03a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d971f210-67f0-5790-aa9c-8eb2103a0a96', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ccfb3e4c-cffd-5698-a950-ddef04015d1a', 1), 'aeeb868dcb2307fbc4fcdd2c037e00d1ffaa6769b6302d557dc665b7679fd03a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3', 5799, '2026-09-13 11:01:39.553655', 'efa4f4270171a703bda9c66ebe1b030016bb73c5fe4298a46848a984dc89711d', 'validated', '{"audio_key":"8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad","entity_key":"ex_risk_assessment_communication_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efa4f4270171a703bda9c66ebe1b030016bb73c5fe4298a46848a984dc89711d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8a12e555c1e0c986b8cfba8f10ccd1aa61538383ac69af6300f1cc95a4a800ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_02 -> audio/generated/de-DE/utterances/9684da3314f5f4bda956e997624bbab0426326e1869f256d712f0ba6b86b6c7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88b3b476-575a-5243-a90c-875ac88f74d1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9633ed8c3ab2f095ee5ac26ffa8cd1e71576b6b33d7cfd0ca0ad4bec279d5fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16069bc5-3c59-587c-b264-84d5651d883e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88b3b476-575a-5243-a90c-875ac88f74d1', 1), 'c9633ed8c3ab2f095ee5ac26ffa8cd1e71576b6b33d7cfd0ca0ad4bec279d5fe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9684da3314f5f4bda956e997624bbab0426326e1869f256d712f0ba6b86b6c7c.mp3', 5929, '2026-09-13 11:01:39.798505', '6690611532ee684bc3318a614db2d1a682ed61ebd318cf7fa6f21cfc6b4cb9cd', 'validated', '{"audio_key":"9684da3314f5f4bda956e997624bbab0426326e1869f256d712f0ba6b86b6c7c","entity_key":"u_decision_review_revision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6690611532ee684bc3318a614db2d1a682ed61ebd318cf7fa6f21cfc6b4cb9cd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9684da3314f5f4bda956e997624bbab0426326e1869f256d712f0ba6b86b6c7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_06 -> audio/generated/de-DE/utterances/a4f487eacf4b4e988e02b5e21cdea60953bd42e3057cde38bbe350dbaabcdfb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6809e75a-6aef-59ef-a92f-80a9d4ba4cbf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb99f47d2501e5e51423cd0e935662266b48be7ca9632a6cf57b6b10e5c5348e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80ea1994-a07e-5afd-9fa3-142fa1990ec7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6809e75a-6aef-59ef-a92f-80a9d4ba4cbf', 1), 'eb99f47d2501e5e51423cd0e935662266b48be7ca9632a6cf57b6b10e5c5348e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4f487eacf4b4e988e02b5e21cdea60953bd42e3057cde38bbe350dbaabcdfb1.mp3', 7288, '2026-09-13 11:01:41.295796', '044ae21eab76c7b03a8b46c5859ee4557dde04e0c36df9dd824d59484d89204e', 'validated', '{"audio_key":"a4f487eacf4b4e988e02b5e21cdea60953bd42e3057cde38bbe350dbaabcdfb1","entity_key":"u_causal_reasoning_counterfactuals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"044ae21eab76c7b03a8b46c5859ee4557dde04e0c36df9dd824d59484d89204e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4f487eacf4b4e988e02b5e21cdea60953bd42e3057cde38bbe350dbaabcdfb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_06 -> audio/generated/de-DE/utterances/abc51441c63f4353546bfa9d145ace374a4bba8ff097ee6c9abf2458f82da3a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d1d193fc-333b-5e95-8c7d-5af6bb2fb0c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c501057c5e569b94b76d8bda1b7e32a6f5674a8d675d3b9f0c5cdafac9f5c827'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74d92bf9-7f31-513d-a65d-39dd0d6c0d58', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d1d193fc-333b-5e95-8c7d-5af6bb2fb0c6', 1), 'c501057c5e569b94b76d8bda1b7e32a6f5674a8d675d3b9f0c5cdafac9f5c827',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/abc51441c63f4353546bfa9d145ace374a4bba8ff097ee6c9abf2458f82da3a2.mp3', 6269, '2026-09-13 11:01:41.410298', '82ef3cbeb3ca3b415a44de3206ea0d08b54eab1e0d1cac4f4b76675572621ebc', 'validated', '{"audio_key":"abc51441c63f4353546bfa9d145ace374a4bba8ff097ee6c9abf2458f82da3a2","entity_key":"u_integrated_judgment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82ef3cbeb3ca3b415a44de3206ea0d08b54eab1e0d1cac4f4b76675572621ebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/abc51441c63f4353546bfa9d145ace374a4bba8ff097ee6c9abf2458f82da3a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_01 -> audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('725a1af7-44cd-525f-9ab1-93376e8724c2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be9664f776aa2414fc5b48411c7209e4ed063b379e9e944bc9acc07d65e5a44d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6abd9695-6ea1-58f6-a1f4-9302761d2549', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('725a1af7-44cd-525f-9ab1-93376e8724c2', 1), 'be9664f776aa2414fc5b48411c7209e4ed063b379e9e944bc9acc07d65e5a44d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3', 5250, '2026-09-13 11:01:42.725012', '18e1364275f5bbd1f7241050f110de5787dcc683bd9cee63cf080b189ca1ca85', 'validated', '{"audio_key":"ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5","entity_key":"u_causal_reasoning_counterfactuals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18e1364275f5bbd1f7241050f110de5787dcc683bd9cee63cf080b189ca1ca85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_causal_reasoning_counterfactuals_01_listen -> audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2f570356-732b-5847-944a-2ef59ed3125f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_causal_reasoning_counterfactuals_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be9664f776aa2414fc5b48411c7209e4ed063b379e9e944bc9acc07d65e5a44d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00d66900-7f0f-5686-9a70-623696d4ec61', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2f570356-732b-5847-944a-2ef59ed3125f', 1), 'be9664f776aa2414fc5b48411c7209e4ed063b379e9e944bc9acc07d65e5a44d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3', 5250, '2026-09-13 11:01:42.725012', '18e1364275f5bbd1f7241050f110de5787dcc683bd9cee63cf080b189ca1ca85', 'validated', '{"audio_key":"ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5","entity_key":"ex_causal_reasoning_counterfactuals_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18e1364275f5bbd1f7241050f110de5787dcc683bd9cee63cf080b189ca1ca85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ba7d0e6bf0ec2d99cf6b5f5efd943fa8a864bab58dbc30e071f2131cd8d64ef5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_02 -> audio/generated/de-DE/utterances/c885d781a22cb57a6214433b3bbe69783165a07fad81ccbe7ae2d1a3dc3177e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5ba4fb6-27f6-5efb-b143-c83a65e8d466', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3972ec41a046255c8040b2a1b3ef3e06ac355725868d747162060ff26170a70b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b275b8c7-fd33-5991-9a6e-fc4510ee8e59', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5ba4fb6-27f6-5efb-b143-c83a65e8d466', 1), '3972ec41a046255c8040b2a1b3ef3e06ac355725868d747162060ff26170a70b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c885d781a22cb57a6214433b3bbe69783165a07fad81ccbe7ae2d1a3dc3177e4.mp3', 6582, '2026-09-13 11:01:42.969999', 'ca065fc2d5fe91fc68d328b767e13311b7b7f8d0c579bf6f57ff1e1eb94fb40d', 'validated', '{"audio_key":"c885d781a22cb57a6214433b3bbe69783165a07fad81ccbe7ae2d1a3dc3177e4","entity_key":"u_professional_boundaries_judgment_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca065fc2d5fe91fc68d328b767e13311b7b7f8d0c579bf6f57ff1e1eb94fb40d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c885d781a22cb57a6214433b3bbe69783165a07fad81ccbe7ae2d1a3dc3177e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decision_review_revision_06 -> audio/generated/de-DE/utterances/d5099f6007eada6d595f99334bcac9171ed1354398cc60510fc7f8b9004a855e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1422c07b-ba4b-5866-adaa-913fbacb5b9c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decision_review_revision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19e60dec27781a45fe84aa381d444cd215960ed2a3f9faaaa1d9a808ba7a1dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c1d1356-d6cf-5e6a-89ac-308a5d197e76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1422c07b-ba4b-5866-adaa-913fbacb5b9c', 1), '19e60dec27781a45fe84aa381d444cd215960ed2a3f9faaaa1d9a808ba7a1dce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d5099f6007eada6d595f99334bcac9171ed1354398cc60510fc7f8b9004a855e.mp3', 6582, '2026-09-13 11:01:44.338607', '8146b62c5bb5eee6100e98cd875142f60b6f36814e03354fe967691ce01dabe2', 'validated', '{"audio_key":"d5099f6007eada6d595f99334bcac9171ed1354398cc60510fc7f8b9004a855e","entity_key":"u_decision_review_revision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8146b62c5bb5eee6100e98cd875142f60b6f36814e03354fe967691ce01dabe2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d5099f6007eada6d595f99334bcac9171ed1354398cc60510fc7f8b9004a855e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causal_reasoning_counterfactuals_02 -> audio/generated/de-DE/utterances/e362744a194ce319d5b76bc97c4678f091cda726de44bfa7cfe1a8cf07ad6aac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d8352ee-b076-5a4e-aafd-5138278b5df5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causal_reasoning_counterfactuals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b09d12900cff1c02ba0122c747d43a49d7100ff75f455f354ba4db6a62bb3537'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87cc2d68-131b-5dc7-b7b1-a0aa91122ed9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d8352ee-b076-5a4e-aafd-5138278b5df5', 1), 'b09d12900cff1c02ba0122c747d43a49d7100ff75f455f354ba4db6a62bb3537',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e362744a194ce319d5b76bc97c4678f091cda726de44bfa7cfe1a8cf07ad6aac.mp3', 5746, '2026-09-13 11:01:44.468309', 'b55ed42438b8f8e15fa9493b41ead3be162e3a7a17cfc291d85a1ee81d8a9d44', 'validated', '{"audio_key":"e362744a194ce319d5b76bc97c4678f091cda726de44bfa7cfe1a8cf07ad6aac","entity_key":"u_causal_reasoning_counterfactuals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b55ed42438b8f8e15fa9493b41ead3be162e3a7a17cfc291d85a1ee81d8a9d44","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e362744a194ce319d5b76bc97c4678f091cda726de44bfa7cfe1a8cf07ad6aac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_judgment_capstone_01 -> audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b983d53b-d1dd-509f-8222-e623b169b6c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_judgment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f364579f0a03eda56cad51bef34a1867a0dbb2dfbe919cf37880db1603fa20e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c618d76-92da-5214-ae3b-13db3dad5317', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b983d53b-d1dd-509f-8222-e623b169b6c8', 1), 'f364579f0a03eda56cad51bef34a1867a0dbb2dfbe919cf37880db1603fa20e8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3', 9926, '2026-09-13 11:01:46.288515', '066d2dbc4be436c759fa6e002241dbf6b73dc258dfceca706633a9ce914adf0d', 'validated', '{"audio_key":"f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118","entity_key":"u_integrated_judgment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"066d2dbc4be436c759fa6e002241dbf6b73dc258dfceca706633a9ce914adf0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_judgment_capstone_01_listen -> audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('22765336-151a-5bac-b324-28fb774d5623', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_judgment_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f364579f0a03eda56cad51bef34a1867a0dbb2dfbe919cf37880db1603fa20e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78be2e0e-b2ae-504d-ae74-0ca905792674', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('22765336-151a-5bac-b324-28fb774d5623', 1), 'f364579f0a03eda56cad51bef34a1867a0dbb2dfbe919cf37880db1603fa20e8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3', 9926, '2026-09-13 11:01:46.288515', '066d2dbc4be436c759fa6e002241dbf6b73dc258dfceca706633a9ce914adf0d', 'validated', '{"audio_key":"f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118","entity_key":"ex_integrated_judgment_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"066d2dbc4be436c759fa6e002241dbf6b73dc258dfceca706633a9ce914adf0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f10e7d5b8679648bb818a66fe5b81af74c09d1fc1c6fe84cc3fb7be1c4ea0118.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_boundaries_judgment_01 -> audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a8a3cd8-9cb7-5192-a017-afe1ffd68a28', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_boundaries_judgment_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19cc542fe89fb459b430ae99785a8026421be826b288ea226b89cf2fe2aa934d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4c6a11e-ebf9-50b8-a95e-c293aff9b413', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a8a3cd8-9cb7-5192-a017-afe1ffd68a28', 1), '19cc542fe89fb459b430ae99785a8026421be826b288ea226b89cf2fe2aa934d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3', 7758, '2026-09-13 11:01:46.281502', 'b6078d3897cd8d75bae0935c91953a3326ecba5ecc480bd7d5fdaa1614d9c8c1', 'validated', '{"audio_key":"f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685","entity_key":"u_professional_boundaries_judgment_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6078d3897cd8d75bae0935c91953a3326ecba5ecc480bd7d5fdaa1614d9c8c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_boundaries_judgment_01_listen -> audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ede4c8ad-2b75-5388-8458-220ee2c1e973', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_boundaries_judgment_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19cc542fe89fb459b430ae99785a8026421be826b288ea226b89cf2fe2aa934d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('810001e9-7ae5-526e-af95-fe9833cfd13d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ede4c8ad-2b75-5388-8458-220ee2c1e973', 1), '19cc542fe89fb459b430ae99785a8026421be826b288ea226b89cf2fe2aa934d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3', 7758, '2026-09-13 11:01:46.281502', 'b6078d3897cd8d75bae0935c91953a3326ecba5ecc480bd7d5fdaa1614d9c8c1', 'validated', '{"audio_key":"f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685","entity_key":"ex_professional_boundaries_judgment_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6078d3897cd8d75bae0935c91953a3326ecba5ecc480bd7d5fdaa1614d9c8c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f48b8e8f4502843addc9715093c8babe729e2df333d7e8c6715ae103c340a685.mp3"}'
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

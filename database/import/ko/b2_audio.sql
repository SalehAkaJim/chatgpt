-- Generated audio link import for ko-KR B2
-- Source manifest: audio/manifests/ko/B2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_summarizing_and_mediation_01:3 -> audio/generated/ko-KR/dialogues/03ceadabd9e96b427270221d3b4c06b5f358ee0a23912667b8de0a3ca6101445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf3af169-7461-5099-b415-703d5cbc461a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3056b57d5a959d5694697da18bbe9df8b0e607cc635d748ea9e206b0d2874509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de138573-5de4-5e03-ae65-28dfb9a9bdef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf3af169-7461-5099-b415-703d5cbc461a', 1), '3056b57d5a959d5694697da18bbe9df8b0e607cc635d748ea9e206b0d2874509',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/03ceadabd9e96b427270221d3b4c06b5f358ee0a23912667b8de0a3ca6101445.mp3', 1671, '2026-09-13 23:57:44.053655', '2197f9b369b9b6c004f50ede32410f8b5117f96be9488a84990b0d04a134b58d', 'validated', '{"audio_key":"03ceadabd9e96b427270221d3b4c06b5f358ee0a23912667b8de0a3ca6101445","entity_key":"d_summarizing_and_mediation_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2197f9b369b9b6c004f50ede32410f8b5117f96be9488a84990b0d04a134b58d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/03ceadabd9e96b427270221d3b4c06b5f358ee0a23912667b8de0a3ca6101445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_02:1 -> audio/generated/ko-KR/dialogues/04f8bfb7db3760fbc4f44b37ad65dfe53f42730b6ec0ff3b169b1aacc38c471e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb60f3f2-e8fb-5a55-94ff-ec989d065f11', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59e3cbd9c1098c8bd489b5b5e41bd01d59453b6cddedeb1f93fdd7709d0e2c0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c48fc42-ba22-5b92-8066-515b5c5869f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb60f3f2-e8fb-5a55-94ff-ec989d065f11', 1), '59e3cbd9c1098c8bd489b5b5e41bd01d59453b6cddedeb1f93fdd7709d0e2c0d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/04f8bfb7db3760fbc4f44b37ad65dfe53f42730b6ec0ff3b169b1aacc38c471e.mp3', 3474, '2026-09-13 23:57:44.236890', '11375c2e4541c3bc1cf515d2a2a5af50acac4b39d4b5b83eafc35026d771bceb', 'validated', '{"audio_key":"04f8bfb7db3760fbc4f44b37ad65dfe53f42730b6ec0ff3b169b1aacc38c471e","entity_key":"d_evidence_and_inference_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11375c2e4541c3bc1cf515d2a2a5af50acac4b39d4b5b83eafc35026d771bceb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/04f8bfb7db3760fbc4f44b37ad65dfe53f42730b6ec0ff3b169b1aacc38c471e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_02:2 -> audio/generated/ko-KR/dialogues/0a38d36f59cd8311d28b3aa77f31dcb34ee6f83e987f2c5e6e751273f34cb60e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f04a9b4-5676-5ed9-9170-2f7f75881a1d', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a00b98a592e0b633ebbc239b05a1e17ed1a30fac81648b133cae535b9a4066bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8bc482a-d4ed-52a9-b51e-e512d0877243', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f04a9b4-5676-5ed9-9170-2f7f75881a1d', 1), 'a00b98a592e0b633ebbc239b05a1e17ed1a30fac81648b133cae535b9a4066bb',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0a38d36f59cd8311d28b3aa77f31dcb34ee6f83e987f2c5e6e751273f34cb60e.mp3', 4414, '2026-09-13 23:57:45.503232', '7dbefe8d5d68107495cf02f659dc653b410d03c62411d35fb05dd84d112700da', 'validated', '{"audio_key":"0a38d36f59cd8311d28b3aa77f31dcb34ee6f83e987f2c5e6e751273f34cb60e","entity_key":"d_b2_seoul_forum_capstone_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dbefe8d5d68107495cf02f659dc653b410d03c62411d35fb05dd84d112700da","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/0a38d36f59cd8311d28b3aa77f31dcb34ee6f83e987f2c5e6e751273f34cb60e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_01:4 -> audio/generated/ko-KR/dialogues/0efb4f97ecb9a49491861cb896c16d9daa15a4ed3a49f9a9518893a2350bb716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1488b60-c333-5520-9ad3-42f460ee0140', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a40b1e1a25aa8983b81b26b4f5ab686d781be2ec68cca5ce1581add2f7267c85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59035edc-c507-5839-817e-b1607d5c476c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1488b60-c333-5520-9ad3-42f460ee0140', 1), 'a40b1e1a25aa8983b81b26b4f5ab686d781be2ec68cca5ce1581add2f7267c85',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0efb4f97ecb9a49491861cb896c16d9daa15a4ed3a49f9a9518893a2350bb716.mp3', 3291, '2026-09-13 23:57:45.545226', 'ad3e7fc3c9a0124e4ed159c3dc79f079c3e58ec99f15c084064a72667c2c7b61', 'validated', '{"audio_key":"0efb4f97ecb9a49491861cb896c16d9daa15a4ed3a49f9a9518893a2350bb716","entity_key":"d_source_comparison_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad3e7fc3c9a0124e4ed159c3dc79f079c3e58ec99f15c084064a72667c2c7b61","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/0efb4f97ecb9a49491861cb896c16d9daa15a4ed3a49f9a9518893a2350bb716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:1 -> audio/generated/ko-KR/dialogues/13483f3fe47ad1fcadd51a5c38514597b462bc310114e074b2994c8fce4b21a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de077548-b9b2-568b-8906-839174d78333', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f51586af81da925ed49f8e8f0c17ea116cf360104faf32851318f0e38b387ba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e974048d-a81f-531e-92e3-1659fc7e3389', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de077548-b9b2-568b-8906-839174d78333', 1), 'f51586af81da925ed49f8e8f0c17ea116cf360104faf32851318f0e38b387ba7',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/13483f3fe47ad1fcadd51a5c38514597b462bc310114e074b2994c8fce4b21a2.mp3', 2168, '2026-09-13 23:57:46.780598', '8b24456da1ebd4dbb07ea3828fba9b0c82ba358334fad8627e5a63d8c9a3877f', 'validated', '{"audio_key":"13483f3fe47ad1fcadd51a5c38514597b462bc310114e074b2994c8fce4b21a2","entity_key":"d_concession_and_disagreement_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b24456da1ebd4dbb07ea3828fba9b0c82ba358334fad8627e5a63d8c9a3877f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/13483f3fe47ad1fcadd51a5c38514597b462bc310114e074b2994c8fce4b21a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_01:3 -> audio/generated/ko-KR/dialogues/15e746feb1c36de6a04fd37ba6250dd84e9823943cdc09e3e388ed0b913dc57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d66fcb1-9b2c-5f1a-9605-c8ddf3b01d43', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a288c3a0b5c39f6c8e2fd3716c4d00a16517fbe979cfdc29195a9e0ab6b58781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc6ebd44-c28d-54f1-85db-5c7e794e70ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d66fcb1-9b2c-5f1a-9605-c8ddf3b01d43', 1), 'a288c3a0b5c39f6c8e2fd3716c4d00a16517fbe979cfdc29195a9e0ab6b58781',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/15e746feb1c36de6a04fd37ba6250dd84e9823943cdc09e3e388ed0b913dc57c.mp3', 2533, '2026-09-13 23:57:46.767252', '9d5e2acacad89bfe56c6ad7e50cbbfebd4e571bba15bd49283656aa1eb3ee9f7', 'validated', '{"audio_key":"15e746feb1c36de6a04fd37ba6250dd84e9823943cdc09e3e388ed0b913dc57c","entity_key":"d_b2_seoul_forum_capstone_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9d5e2acacad89bfe56c6ad7e50cbbfebd4e571bba15bd49283656aa1eb3ee9f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/15e746feb1c36de6a04fd37ba6250dd84e9823943cdc09e3e388ed0b913dc57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:3 -> audio/generated/ko-KR/dialogues/16d4224e377b73afc0af1e5b4d13bf5086901e373f32f2eb6b089bb269c9d072.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d79c891-34fb-565f-bdfb-9a9a9da8a4ee', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0885765c909af8df6f9f1acefe5926f7bc69524de328f43c6df8fd23b28a16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73ae164b-6090-5d53-aac8-25abee2bd7eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d79c891-34fb-565f-bdfb-9a9a9da8a4ee', 1), '1a0885765c909af8df6f9f1acefe5926f7bc69524de328f43c6df8fd23b28a16',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/16d4224e377b73afc0af1e5b4d13bf5086901e373f32f2eb6b089bb269c9d072.mp3', 2507, '2026-09-13 23:57:47.946322', '5245f5fbd16352e42b7798b255c77ab770cb6102b9ccbcd0e2468eae045d903e', 'validated', '{"audio_key":"16d4224e377b73afc0af1e5b4d13bf5086901e373f32f2eb6b089bb269c9d072","entity_key":"d_concession_and_disagreement_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5245f5fbd16352e42b7798b255c77ab770cb6102b9ccbcd0e2468eae045d903e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/16d4224e377b73afc0af1e5b4d13bf5086901e373f32f2eb6b089bb269c9d072.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:1 -> audio/generated/ko-KR/dialogues/16e8bc287bc7e9a2d9453dc03fc23889464d963c8ec90cde670b9d38be06a22c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47747b03-1a68-5150-a4a2-6a4f3aad29bb', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8c75e1b31c94f4f0f963134dd7ed2fc8b021cea8589a802f3fa16e9e2f833a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a3c9278-f7df-56e1-aaea-5e14b39437fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47747b03-1a68-5150-a4a2-6a4f3aad29bb', 1), 'f8c75e1b31c94f4f0f963134dd7ed2fc8b021cea8589a802f3fa16e9e2f833a1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/16e8bc287bc7e9a2d9453dc03fc23889464d963c8ec90cde670b9d38be06a22c.mp3', 3422, '2026-09-13 23:57:48.111623', '38619f6cff69b6b06a4ef7065c242b7c126dd09946447daa28ac56c60e8ce05f', 'validated', '{"audio_key":"16e8bc287bc7e9a2d9453dc03fc23889464d963c8ec90cde670b9d38be06a22c","entity_key":"d_formal_negotiation_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38619f6cff69b6b06a4ef7065c242b7c126dd09946447daa28ac56c60e8ce05f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/16e8bc287bc7e9a2d9453dc03fc23889464d963c8ec90cde670b9d38be06a22c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_01:2 -> audio/generated/ko-KR/dialogues/211b446cb55f8468689a7f842ca172c57206678d46044f0eab334bccba3c11fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e1d97d5-2ce6-52be-8794-4afa557ace30', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4379ceca2694c19eb041f91529164418eb956d9f563103098b951237ee85e10d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('647089a9-29b5-5a1b-bd89-d9cd84e3c6a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e1d97d5-2ce6-52be-8794-4afa557ace30', 1), '4379ceca2694c19eb041f91529164418eb956d9f563103098b951237ee85e10d',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/211b446cb55f8468689a7f842ca172c57206678d46044f0eab334bccba3c11fe.mp3', 4310, '2026-09-13 23:57:49.556051', '55a94d9feafc71da899ddbff6276eaaf4b076eb59153c38741797e6d820c72cc', 'validated', '{"audio_key":"211b446cb55f8468689a7f842ca172c57206678d46044f0eab334bccba3c11fe","entity_key":"d_summarizing_and_mediation_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55a94d9feafc71da899ddbff6276eaaf4b076eb59153c38741797e6d820c72cc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/211b446cb55f8468689a7f842ca172c57206678d46044f0eab334bccba3c11fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_01:1 -> audio/generated/ko-KR/dialogues/289a0edfb099ceebe2befebf440047bb02d9d25be3ab36379763ac321ad3b15e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb45a9bf-633b-5b81-9f8b-a6841f6cd601', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1e1deaa1c9b635a80e7cba3649cab754c5b7a3ec3d77f3d1641f44c4fe9321a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cf1434d-c360-557c-867f-0715e8c6442c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb45a9bf-633b-5b81-9f8b-a6841f6cd601', 1), 'b1e1deaa1c9b635a80e7cba3649cab754c5b7a3ec3d77f3d1641f44c4fe9321a',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/289a0edfb099ceebe2befebf440047bb02d9d25be3ab36379763ac321ad3b15e.mp3', 2533, '2026-09-13 23:57:49.411853', 'ed18e6bce6bf8133a07fbc8f60f4cd3339adc942a2f7c2276b84739db67a6b48', 'validated', '{"audio_key":"289a0edfb099ceebe2befebf440047bb02d9d25be3ab36379763ac321ad3b15e","entity_key":"d_evidence_and_inference_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed18e6bce6bf8133a07fbc8f60f4cd3339adc942a2f7c2276b84739db67a6b48","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/289a0edfb099ceebe2befebf440047bb02d9d25be3ab36379763ac321ad3b15e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_02:1 -> audio/generated/ko-KR/dialogues/299f58f6df256b62f9a404077a20fa27ce3d941ea3b7fc3974f79b30a48bb3d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ecbd8ae-3b68-5033-a27b-7b98504f5723', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615301400e0337fbcd580495b9edfed646058490ed9432e4db6c560133209b22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c887cfb9-cd9f-5dfe-9f2f-882a0e644903', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ecbd8ae-3b68-5033-a27b-7b98504f5723', 1), '615301400e0337fbcd580495b9edfed646058490ed9432e4db6c560133209b22',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/299f58f6df256b62f9a404077a20fa27ce3d941ea3b7fc3974f79b30a48bb3d5.mp3', 2742, '2026-09-13 23:57:50.561073', '3c5e13e3eea8092a08fc790bf3507712137dcac44ae3bc4d223c704eaa425da4', 'validated', '{"audio_key":"299f58f6df256b62f9a404077a20fa27ce3d941ea3b7fc3974f79b30a48bb3d5","entity_key":"d_process_and_responsibility_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c5e13e3eea8092a08fc790bf3507712137dcac44ae3bc4d223c704eaa425da4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/299f58f6df256b62f9a404077a20fa27ce3d941ea3b7fc3974f79b30a48bb3d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:2 -> audio/generated/ko-KR/dialogues/2c5635fb5ee8abd8c9aed3f23f3c0ce6b9751c8048f21d03a1e785701db772af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca2d2a97-3554-5bed-bcaf-e97a119f2f11', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd015a9d96ae406eb24c5d164aad1cbc3286d65259258e8125f6b0d448e33d22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31581f66-12ca-5ae8-91be-563bce60c00a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca2d2a97-3554-5bed-bcaf-e97a119f2f11', 1), 'cd015a9d96ae406eb24c5d164aad1cbc3286d65259258e8125f6b0d448e33d22',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2c5635fb5ee8abd8c9aed3f23f3c0ce6b9751c8048f21d03a1e785701db772af.mp3', 3996, '2026-09-13 23:57:50.887415', '117dbcf5f6f120208fd1e44958be2b9b70c074a9de7b7692995960ec1aef0917', 'validated', '{"audio_key":"2c5635fb5ee8abd8c9aed3f23f3c0ce6b9751c8048f21d03a1e785701db772af","entity_key":"d_nuanced_stance_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"117dbcf5f6f120208fd1e44958be2b9b70c074a9de7b7692995960ec1aef0917","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2c5635fb5ee8abd8c9aed3f23f3c0ce6b9751c8048f21d03a1e785701db772af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_01:1 -> audio/generated/ko-KR/dialogues/2f02dea709afeb2b5737aef6fcc945b5b5a2286b6129e787569ec5970f01d6e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b04b6822-638a-5c23-b801-af017640a7db', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a45ef211bf2be3ec3104623387b1480c6a5975fc78d456a5cc39bf915706d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3332170-ca0a-51f2-b0f2-03117b1bc520', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b04b6822-638a-5c23-b801-af017640a7db', 1), '8a45ef211bf2be3ec3104623387b1480c6a5975fc78d456a5cc39bf915706d43',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2f02dea709afeb2b5737aef6fcc945b5b5a2286b6129e787569ec5970f01d6e5.mp3', 3657, '2026-09-13 23:57:51.886176', '62b52d63a7c5edfa0647704a0d393c4a9862278c2ec77527a487b663fa8299d7', 'validated', '{"audio_key":"2f02dea709afeb2b5737aef6fcc945b5b5a2286b6129e787569ec5970f01d6e5","entity_key":"d_source_comparison_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62b52d63a7c5edfa0647704a0d393c4a9862278c2ec77527a487b663fa8299d7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2f02dea709afeb2b5737aef6fcc945b5b5a2286b6129e787569ec5970f01d6e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_01:1 -> audio/generated/ko-KR/dialogues/34dc5cb295aa82eb63356e29d20058fae5b1250de08d89319e40c8967d6363fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d0efc89-afd5-5937-bebf-c9d564c4364a', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50effc0fb704785fcd3ba779c5f8d6c061d218a003138d1e8e0d0938845639ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c754163-d63e-5fcd-b507-f109bd98082a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d0efc89-afd5-5937-bebf-c9d564c4364a', 1), '50effc0fb704785fcd3ba779c5f8d6c061d218a003138d1e8e0d0938845639ac',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/34dc5cb295aa82eb63356e29d20058fae5b1250de08d89319e40c8967d6363fe.mp3', 2821, '2026-09-13 23:57:52.061099', 'f8cd0344cbac53e72402cb0c0146f9970e28eed2660b3734c3964e19265f612f', 'validated', '{"audio_key":"34dc5cb295aa82eb63356e29d20058fae5b1250de08d89319e40c8967d6363fe","entity_key":"d_b2_seoul_forum_capstone_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f8cd0344cbac53e72402cb0c0146f9970e28eed2660b3734c3964e19265f612f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/34dc5cb295aa82eb63356e29d20058fae5b1250de08d89319e40c8967d6363fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_01:2 -> audio/generated/ko-KR/dialogues/36821a361dc4f6e5c28fd8880bb2c0f1482e1b26f75352a0c4be9d4faa8ccb22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d07681b2-edb7-5786-bd71-2188eef7e8bc', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '479d7595aa124124cc95e81068eff26591c25dff91a63bae3fcc971eb1523aee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4caa0e0-4442-5cab-a52a-7caf19cd8fec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d07681b2-edb7-5786-bd71-2188eef7e8bc', 1), '479d7595aa124124cc95e81068eff26591c25dff91a63bae3fcc971eb1523aee',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/36821a361dc4f6e5c28fd8880bb2c0f1482e1b26f75352a0c4be9d4faa8ccb22.mp3', 3761, '2026-09-13 23:57:53.176435', 'b36585fa7b2e2463ba8f2d709c5d24ad6fe430e8667946b8a61327209041d4dd', 'validated', '{"audio_key":"36821a361dc4f6e5c28fd8880bb2c0f1482e1b26f75352a0c4be9d4faa8ccb22","entity_key":"d_b2_seoul_forum_capstone_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b36585fa7b2e2463ba8f2d709c5d24ad6fe430e8667946b8a61327209041d4dd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/36821a361dc4f6e5c28fd8880bb2c0f1482e1b26f75352a0c4be9d4faa8ccb22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_02:2 -> audio/generated/ko-KR/dialogues/3d30078befb4de85a4e99780e2e8fac332a701d55fcb54bb0fce8a8d3ac5fe20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8b24b73-cc4e-5c9f-b8e0-3a9e0d7dad51', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cfe99d98f5ea1c4be4c1cde73317b2932c67b6aa4b630eb0b81d64b79bde098'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4effa5f5-2448-51b3-ad6d-d00a4d5d5375', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8b24b73-cc4e-5c9f-b8e0-3a9e0d7dad51', 1), '1cfe99d98f5ea1c4be4c1cde73317b2932c67b6aa4b630eb0b81d64b79bde098',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3d30078befb4de85a4e99780e2e8fac332a701d55fcb54bb0fce8a8d3ac5fe20.mp3', 3422, '2026-09-13 23:57:53.386203', 'fb8cd2797bb09022cbd7e4f9d7ed470062835942a96c2ebe57b2d70f4e16bfb2', 'validated', '{"audio_key":"3d30078befb4de85a4e99780e2e8fac332a701d55fcb54bb0fce8a8d3ac5fe20","entity_key":"d_counterfactual_reflection_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb8cd2797bb09022cbd7e4f9d7ed470062835942a96c2ebe57b2d70f4e16bfb2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/3d30078befb4de85a4e99780e2e8fac332a701d55fcb54bb0fce8a8d3ac5fe20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_01:2 -> audio/generated/ko-KR/dialogues/44cdae240e7f810699d37ef113c612fc6c518ae4777ef0b9fc89edb21eb74482.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40c66d4d-d1fa-59f4-b495-a6eb03414963', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70c3a3a3744efecd03fb57e2e1bd595cc1f00e497862f3aae299e0ffa0eb1c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('175d2cf8-5525-502c-a784-a3ff0299282c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40c66d4d-d1fa-59f4-b495-a6eb03414963', 1), '70c3a3a3744efecd03fb57e2e1bd595cc1f00e497862f3aae299e0ffa0eb1c27',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/44cdae240e7f810699d37ef113c612fc6c518ae4777ef0b9fc89edb21eb74482.mp3', 2925, '2026-09-13 23:57:54.346433', '4fc5068a861c22e15e45121600346dab918e13ebca4626f4b6c45d85d55ef588', 'validated', '{"audio_key":"44cdae240e7f810699d37ef113c612fc6c518ae4777ef0b9fc89edb21eb74482","entity_key":"d_source_comparison_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4fc5068a861c22e15e45121600346dab918e13ebca4626f4b6c45d85d55ef588","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/44cdae240e7f810699d37ef113c612fc6c518ae4777ef0b9fc89edb21eb74482.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_01:4 -> audio/generated/ko-KR/dialogues/46f1c687eb6d1a92a37c6e8fd8de00ed489380c999089f06432178d2afc7a40b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7638bdad-c2f6-5e26-a5b3-4f03e3a59ae6', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b7a97616c3d35ee058de3dba44c684e3ff13fa09bf1bbe16a6a36e6187b95cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0627ebdf-9403-5f03-be76-f56b608f5f6a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7638bdad-c2f6-5e26-a5b3-4f03e3a59ae6', 1), '5b7a97616c3d35ee058de3dba44c684e3ff13fa09bf1bbe16a6a36e6187b95cc',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/46f1c687eb6d1a92a37c6e8fd8de00ed489380c999089f06432178d2afc7a40b.mp3', 4780, '2026-09-13 23:57:54.801024', '50178707932b026a8fb95615270a67fbf0c1e944196790d00bcb6f6f68aff873', 'validated', '{"audio_key":"46f1c687eb6d1a92a37c6e8fd8de00ed489380c999089f06432178d2afc7a40b","entity_key":"d_b2_seoul_forum_capstone_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50178707932b026a8fb95615270a67fbf0c1e944196790d00bcb6f6f68aff873","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/46f1c687eb6d1a92a37c6e8fd8de00ed489380c999089f06432178d2afc7a40b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_02:4 -> audio/generated/ko-KR/dialogues/4915741c56eba00f6a0e503217f44c136ca5a1562cbd8752c7d7ec5e9a66205a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9405b49-499a-5d3b-b3a4-6e1d2036bfc2', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c962da61e798192de411d06bdf6d7c6199b266ab7fd4f08b99e41b7ae9405f68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fc477c7-7d78-5e48-af7f-be1e3ab93cb6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9405b49-499a-5d3b-b3a4-6e1d2036bfc2', 1), 'c962da61e798192de411d06bdf6d7c6199b266ab7fd4f08b99e41b7ae9405f68',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4915741c56eba00f6a0e503217f44c136ca5a1562cbd8752c7d7ec5e9a66205a.mp3', 3474, '2026-09-13 23:57:55.672023', 'b1ceda1867f93aebc6307d81582ccc094e4912b1af0281f6fd7e063110ba174e', 'validated', '{"audio_key":"4915741c56eba00f6a0e503217f44c136ca5a1562cbd8752c7d7ec5e9a66205a","entity_key":"d_register_and_social_distance_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1ceda1867f93aebc6307d81582ccc094e4912b1af0281f6fd7e063110ba174e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/4915741c56eba00f6a0e503217f44c136ca5a1562cbd8752c7d7ec5e9a66205a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:4 -> audio/generated/ko-KR/dialogues/4c120befc2705a2b4d318c73fd821ae12fe93feddd2edc90337f781cc1ea23a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4a8ddb9-202b-5d4e-aeb8-85042a1caa99', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c2fa0adf5e782d52bc0764f033b937db52c111049b3aa64c3bf3356758fa3bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('447ba1b6-b898-589f-a41c-3ba400143067', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4a8ddb9-202b-5d4e-aeb8-85042a1caa99', 1), '7c2fa0adf5e782d52bc0764f033b937db52c111049b3aa64c3bf3356758fa3bf',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4c120befc2705a2b4d318c73fd821ae12fe93feddd2edc90337f781cc1ea23a2.mp3', 3422, '2026-09-13 23:57:56.060145', '24c39e5150792b2558239f8b4d3fb9a2084c434c7f5bf53976495c42e6be69bf', 'validated', '{"audio_key":"4c120befc2705a2b4d318c73fd821ae12fe93feddd2edc90337f781cc1ea23a2","entity_key":"d_nuanced_stance_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24c39e5150792b2558239f8b4d3fb9a2084c434c7f5bf53976495c42e6be69bf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4c120befc2705a2b4d318c73fd821ae12fe93feddd2edc90337f781cc1ea23a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_01:4 -> audio/generated/ko-KR/dialogues/510b60d454866d08453874203e3266bc0f629b776b10407a74a44c0340b2d71d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e23f3382-ffd1-5132-9bec-4fa7537db0d1', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2a910ac4859c20e5a276ab04ca84c21ec64275a530dd873fb95f6e66d809b2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2d7c28d-ecf3-5426-a574-a46b501b4baf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e23f3382-ffd1-5132-9bec-4fa7537db0d1', 1), 'a2a910ac4859c20e5a276ab04ca84c21ec64275a530dd873fb95f6e66d809b2c',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/510b60d454866d08453874203e3266bc0f629b776b10407a74a44c0340b2d71d.mp3', 2768, '2026-09-13 23:57:56.906907', 'd4c218314b6ca1cf3d2792e9c491c7e00e4b6e5d5695618ae256993c75a21f62', 'validated', '{"audio_key":"510b60d454866d08453874203e3266bc0f629b776b10407a74a44c0340b2d71d","entity_key":"d_process_and_responsibility_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4c218314b6ca1cf3d2792e9c491c7e00e4b6e5d5695618ae256993c75a21f62","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/510b60d454866d08453874203e3266bc0f629b776b10407a74a44c0340b2d71d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_01:3 -> audio/generated/ko-KR/dialogues/524410df5472154bc44c04cba3e2b58fd89273d32cdcc9c45ffc6092736027e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd64ff39-d0b3-5e6e-98f3-4daf9934c85d', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfb5a7193661812de22870bae90ffb70b5fe54925f62759d559352fb462489d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4eba0a1b-6aa6-54a4-a559-81ae7b1e3fe1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd64ff39-d0b3-5e6e-98f3-4daf9934c85d', 1), 'cfb5a7193661812de22870bae90ffb70b5fe54925f62759d559352fb462489d0',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/524410df5472154bc44c04cba3e2b58fd89273d32cdcc9c45ffc6092736027e4.mp3', 1854, '2026-09-13 23:57:57.140901', '35e6d36955c64a87f5855454519c6e22462df4c6eba9e56272fc390a2cf3cd3d', 'validated', '{"audio_key":"524410df5472154bc44c04cba3e2b58fd89273d32cdcc9c45ffc6092736027e4","entity_key":"d_counterfactual_reflection_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"35e6d36955c64a87f5855454519c6e22462df4c6eba9e56272fc390a2cf3cd3d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/524410df5472154bc44c04cba3e2b58fd89273d32cdcc9c45ffc6092736027e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_01:2 -> audio/generated/ko-KR/dialogues/536b0077ed2abe26887d3b102174516e3499be1b70ce896b0c0e08759e55d42c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7d0d470-68ee-50ea-8a25-73b35a21e8be', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd015586925c1462488d3985429eb5ad06a68b7016867564c103129874e0e51b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67c19b34-0a9a-54e9-aa9c-a16ef5e1f81b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7d0d470-68ee-50ea-8a25-73b35a21e8be', 1), 'dd015586925c1462488d3985429eb5ad06a68b7016867564c103129874e0e51b',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/536b0077ed2abe26887d3b102174516e3499be1b70ce896b0c0e08759e55d42c.mp3', 4858, '2026-09-13 23:57:58.364336', '5b5b75e1010b6e35f5e6d441782056eb659376c0b3f85aacee6ef2c663795329', 'validated', '{"audio_key":"536b0077ed2abe26887d3b102174516e3499be1b70ce896b0c0e08759e55d42c","entity_key":"d_process_and_responsibility_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b5b75e1010b6e35f5e6d441782056eb659376c0b3f85aacee6ef2c663795329","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/536b0077ed2abe26887d3b102174516e3499be1b70ce896b0c0e08759e55d42c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:2 -> audio/generated/ko-KR/dialogues/53cdb2cb7b3d3dfcc5633d58aff5485dc61966e69faf275c48f101d8b87a98cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f06ad4e-5be2-5741-8794-9cf2d34e8825', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0daa0c8769cf864454d74d7cbcab5ce6279898da51898408f7c49188fdc6dd21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6b92fe1-12e4-5a32-bea5-615999e1f2d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f06ad4e-5be2-5741-8794-9cf2d34e8825', 1), '0daa0c8769cf864454d74d7cbcab5ce6279898da51898408f7c49188fdc6dd21',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/53cdb2cb7b3d3dfcc5633d58aff5485dc61966e69faf275c48f101d8b87a98cb.mp3', 4440, '2026-09-13 23:57:58.474244', '88030bce38302144d7fa4f2d4116b9e1dc78d46b5c37a0d138202a87ad36acc2', 'validated', '{"audio_key":"53cdb2cb7b3d3dfcc5633d58aff5485dc61966e69faf275c48f101d8b87a98cb","entity_key":"d_concession_and_disagreement_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"88030bce38302144d7fa4f2d4116b9e1dc78d46b5c37a0d138202a87ad36acc2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/53cdb2cb7b3d3dfcc5633d58aff5485dc61966e69faf275c48f101d8b87a98cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_02:4 -> audio/generated/ko-KR/dialogues/57d71350649b0acfaeeb7ff848f8efdf95f1e44a0743e6c8eb75b58e9a62c9ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a226eb4f-1d20-5c40-a177-a22c120be295', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f639200d9c6c0cf079af8324a328a475adac1e1fd2fd4e0c434436651c730108'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99073c23-27fe-5606-a842-850fea2f4290', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a226eb4f-1d20-5c40-a177-a22c120be295', 1), 'f639200d9c6c0cf079af8324a328a475adac1e1fd2fd4e0c434436651c730108',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/57d71350649b0acfaeeb7ff848f8efdf95f1e44a0743e6c8eb75b58e9a62c9ff.mp3', 5459, '2026-09-13 23:57:59.834760', 'c1fc3070eaf294e4a9aa4a69fa05b319d2f6b3dfd1b7735b5e4ffd1670f5acfe', 'validated', '{"audio_key":"57d71350649b0acfaeeb7ff848f8efdf95f1e44a0743e6c8eb75b58e9a62c9ff","entity_key":"d_b2_seoul_forum_capstone_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1fc3070eaf294e4a9aa4a69fa05b319d2f6b3dfd1b7735b5e4ffd1670f5acfe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/57d71350649b0acfaeeb7ff848f8efdf95f1e44a0743e6c8eb75b58e9a62c9ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_02:2 -> audio/generated/ko-KR/dialogues/601a2df5795edb6b8f023eaf1aa1c57fca0fe0a6c59d934c1f8e115105041831.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7e3e0afc-4317-53ea-aee5-e88dd30a0d7e', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de64d9f0ebee048fdcbe308b6914065d7bd357b9bd6c64ae802baf21ad9856e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ca1a807-7466-5626-8a36-38de38318d08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7e3e0afc-4317-53ea-aee5-e88dd30a0d7e', 1), 'de64d9f0ebee048fdcbe308b6914065d7bd357b9bd6c64ae802baf21ad9856e2',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/601a2df5795edb6b8f023eaf1aa1c57fca0fe0a6c59d934c1f8e115105041831.mp3', 3892, '2026-09-13 23:57:59.766481', '7eb2ecfc3318740298679b30698286ffd446e1fbe7bebb82bedf0070f521260e', 'validated', '{"audio_key":"601a2df5795edb6b8f023eaf1aa1c57fca0fe0a6c59d934c1f8e115105041831","entity_key":"d_process_and_responsibility_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7eb2ecfc3318740298679b30698286ffd446e1fbe7bebb82bedf0070f521260e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/601a2df5795edb6b8f023eaf1aa1c57fca0fe0a6c59d934c1f8e115105041831.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_02:3 -> audio/generated/ko-KR/dialogues/618a79670262b984f479a21ea042c75af6611cbf19711f787fd6048348132d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('00632e9a-b8c5-5c35-80d7-70e31aed4267', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5ceca7b2b3775d714fb739b7affcb5583729a006d920ac0bc16b2288516849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0774561-19de-5e41-b388-25f34ca8ecf9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('00632e9a-b8c5-5c35-80d7-70e31aed4267', 1), '0f5ceca7b2b3775d714fb739b7affcb5583729a006d920ac0bc16b2288516849',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/618a79670262b984f479a21ea042c75af6611cbf19711f787fd6048348132d0f.mp3', 2089, '2026-09-13 23:58:00.843427', '01f02e92703089dff21b0c43aa2d9f142cc99906420360dd3eccb28b7e57bad4', 'validated', '{"audio_key":"618a79670262b984f479a21ea042c75af6611cbf19711f787fd6048348132d0f","entity_key":"d_counterfactual_reflection_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01f02e92703089dff21b0c43aa2d9f142cc99906420360dd3eccb28b7e57bad4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/618a79670262b984f479a21ea042c75af6611cbf19711f787fd6048348132d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_01:4 -> audio/generated/ko-KR/dialogues/6605b21c20c4582c60d6ff4d38027a8e98488b365977e6dc46272e5c9e519759.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('381974be-674f-5fa4-ad88-aa8de8e676d3', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d38e643e67fc045e0bccc07330e3198cc4299d691b871a9a4a014eb0323ab8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5077fd40-c77b-58d5-b66a-0acc7fc7cbd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('381974be-674f-5fa4-ad88-aa8de8e676d3', 1), '9d38e643e67fc045e0bccc07330e3198cc4299d691b871a9a4a014eb0323ab8a',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6605b21c20c4582c60d6ff4d38027a8e98488b365977e6dc46272e5c9e519759.mp3', 3369, '2026-09-13 23:58:01.098134', '1cc8beea4b847afabb96852202b8b42a71df5ddd1e6b2721722e831ed582d5b9', 'validated', '{"audio_key":"6605b21c20c4582c60d6ff4d38027a8e98488b365977e6dc46272e5c9e519759","entity_key":"d_summarizing_and_mediation_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cc8beea4b847afabb96852202b8b42a71df5ddd1e6b2721722e831ed582d5b9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6605b21c20c4582c60d6ff4d38027a8e98488b365977e6dc46272e5c9e519759.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:4 -> audio/generated/ko-KR/dialogues/6da8329d7589d2ec580ea102f8666ed592e1d033c3ab86eacc02ba96db618e02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('459b19cd-4255-5de3-83c6-b0e3c2bd56e3', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca758e587f12d28c45a109237a1dbe130d53ef1b0cb8c991cb5190694199ce06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4494673d-d4ac-5226-a433-03b3fff656ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('459b19cd-4255-5de3-83c6-b0e3c2bd56e3', 1), 'ca758e587f12d28c45a109237a1dbe130d53ef1b0cb8c991cb5190694199ce06',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6da8329d7589d2ec580ea102f8666ed592e1d033c3ab86eacc02ba96db618e02.mp3', 4440, '2026-09-13 23:58:02.200129', 'adeb1965c6889c8dcc332b1261adcfb60cd3800a7ff34fd6802a885d981d4a43', 'validated', '{"audio_key":"6da8329d7589d2ec580ea102f8666ed592e1d033c3ab86eacc02ba96db618e02","entity_key":"d_concession_and_disagreement_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"adeb1965c6889c8dcc332b1261adcfb60cd3800a7ff34fd6802a885d981d4a43","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6da8329d7589d2ec580ea102f8666ed592e1d033c3ab86eacc02ba96db618e02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_01:1 -> audio/generated/ko-KR/dialogues/6e2f7895fd4d922fb10f40565aa0cb671aab4a9cfdddc36eaf0548500991462d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5245511f-6bc9-5818-a07d-c9cd7adde859', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38be92b5dc0fb4250ebfbf95924aa326af7ab4c3b1765ccddcf0778b9b08a737'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53c927c8-6f2c-5212-9bed-2990b4a3ee75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5245511f-6bc9-5818-a07d-c9cd7adde859', 1), '38be92b5dc0fb4250ebfbf95924aa326af7ab4c3b1765ccddcf0778b9b08a737',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6e2f7895fd4d922fb10f40565aa0cb671aab4a9cfdddc36eaf0548500991462d.mp3', 3160, '2026-09-13 23:58:02.316269', 'f46caa4f744153145545a1a3b8a3f1f7826ee814c315f6b398882b2001503012', 'validated', '{"audio_key":"6e2f7895fd4d922fb10f40565aa0cb671aab4a9cfdddc36eaf0548500991462d","entity_key":"d_summarizing_and_mediation_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f46caa4f744153145545a1a3b8a3f1f7826ee814c315f6b398882b2001503012","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6e2f7895fd4d922fb10f40565aa0cb671aab4a9cfdddc36eaf0548500991462d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:1 -> audio/generated/ko-KR/dialogues/6f0bd0f4e04eb72883b0ce2e15c2f3a510700cf78646aa1e7c3bb973d86a2584.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed48909c-1005-56a3-a73b-1e5973d92db3', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f0ea67245ea16184efd0083435c20cc3e1d69dae49636adb6766da7d8d170f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd72db56-8b20-5863-a54d-5d4d31456042', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed48909c-1005-56a3-a73b-1e5973d92db3', 1), '3f0ea67245ea16184efd0083435c20cc3e1d69dae49636adb6766da7d8d170f5',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6f0bd0f4e04eb72883b0ce2e15c2f3a510700cf78646aa1e7c3bb973d86a2584.mp3', 1906, '2026-09-13 23:58:03.259427', '2818ceda74b25d16c2e38ba144257e805c1365da6170aef107f493ca57125c88', 'validated', '{"audio_key":"6f0bd0f4e04eb72883b0ce2e15c2f3a510700cf78646aa1e7c3bb973d86a2584","entity_key":"d_nuanced_stance_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2818ceda74b25d16c2e38ba144257e805c1365da6170aef107f493ca57125c88","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6f0bd0f4e04eb72883b0ce2e15c2f3a510700cf78646aa1e7c3bb973d86a2584.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_02:1 -> audio/generated/ko-KR/dialogues/7144b5a91c2b71f4b103b7293573163ee7dcfc984acbd7bec979611b01f524ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('25133d40-fb7a-57d7-95ef-438a7eb2e508', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6da5c28d975da9075682044e8d9dac85945dc0d33bbc025a9497c8cd26991222'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed14f1e9-c52f-54eb-8d9a-a4e581e74422', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('25133d40-fb7a-57d7-95ef-438a7eb2e508', 1), '6da5c28d975da9075682044e8d9dac85945dc0d33bbc025a9497c8cd26991222',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7144b5a91c2b71f4b103b7293573163ee7dcfc984acbd7bec979611b01f524ce.mp3', 2324, '2026-09-13 23:58:03.475293', '038c3555ce0c43c62dd233b4bde8e2565e6743b8f0706b78c4ffc363743ee737', 'validated', '{"audio_key":"7144b5a91c2b71f4b103b7293573163ee7dcfc984acbd7bec979611b01f524ce","entity_key":"d_register_and_social_distance_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"038c3555ce0c43c62dd233b4bde8e2565e6743b8f0706b78c4ffc363743ee737","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7144b5a91c2b71f4b103b7293573163ee7dcfc984acbd7bec979611b01f524ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_02:3 -> audio/generated/ko-KR/dialogues/7767e9a0a38b1cdd35f0a74b0c18cc6cc3d708dacd47eac1c8f1407b6b7a3b0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ca00dbb-0c4e-5640-be8b-830f199d02e5', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ff32d94173c0a24e27f7a8e250886cf70b74781598c6f8250221f651209ef34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e9c622e-b262-5418-bbaa-d3335b69fc8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ca00dbb-0c4e-5640-be8b-830f199d02e5', 1), '3ff32d94173c0a24e27f7a8e250886cf70b74781598c6f8250221f651209ef34',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7767e9a0a38b1cdd35f0a74b0c18cc6cc3d708dacd47eac1c8f1407b6b7a3b0f.mp3', 2037, '2026-09-13 23:58:04.350283', '4c1ba5a92ddd522fe5cb90fd227d62f7ac570854224e2613d8a40c0ad552dae9', 'validated', '{"audio_key":"7767e9a0a38b1cdd35f0a74b0c18cc6cc3d708dacd47eac1c8f1407b6b7a3b0f","entity_key":"d_summarizing_and_mediation_02:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4c1ba5a92ddd522fe5cb90fd227d62f7ac570854224e2613d8a40c0ad552dae9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7767e9a0a38b1cdd35f0a74b0c18cc6cc3d708dacd47eac1c8f1407b6b7a3b0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:4 -> audio/generated/ko-KR/dialogues/77be516ab71dd751431ca84dda9e2fbc6400f61330dedb3ce6666192df6fdbc2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8b8fd8d-64db-59c0-904f-7b633b7f067c', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '575d7dc0e71aa6cfafa26f6a2b52b25fae1850e614354b9bfb34316e536876a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af741049-ff4a-5d3e-b0ab-7c0043ed5dae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8b8fd8d-64db-59c0-904f-7b633b7f067c', 1), '575d7dc0e71aa6cfafa26f6a2b52b25fae1850e614354b9bfb34316e536876a8',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/77be516ab71dd751431ca84dda9e2fbc6400f61330dedb3ce6666192df6fdbc2.mp3', 3186, '2026-09-13 23:58:04.666295', 'a660e667ddfdc0f9a651163b734767895be5649fb4758705b4072131723073d7', 'validated', '{"audio_key":"77be516ab71dd751431ca84dda9e2fbc6400f61330dedb3ce6666192df6fdbc2","entity_key":"d_formal_negotiation_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a660e667ddfdc0f9a651163b734767895be5649fb4758705b4072131723073d7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/77be516ab71dd751431ca84dda9e2fbc6400f61330dedb3ce6666192df6fdbc2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:1 -> audio/generated/ko-KR/dialogues/814dc34a9485b40e683ad6fcab514804c96426945f0e267bb20b13198c5d5b9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c723eaca-a2bf-5b78-bf37-c61eee52d097', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b35b3b30a8abfe3ded51323f1b51dcd58d5fbde68edd5ac8a6463d72fb9c3d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db5fcedc-90a9-5a5a-a812-cf20d116f5bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c723eaca-a2bf-5b78-bf37-c61eee52d097', 1), 'b35b3b30a8abfe3ded51323f1b51dcd58d5fbde68edd5ac8a6463d72fb9c3d0f',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/814dc34a9485b40e683ad6fcab514804c96426945f0e267bb20b13198c5d5b9a.mp3', 3004, '2026-09-13 23:58:05.544302', '676033960acb1bd265c1d56de209b4bce58b31dd78d73ee6e7d9137d7f808e2f', 'validated', '{"audio_key":"814dc34a9485b40e683ad6fcab514804c96426945f0e267bb20b13198c5d5b9a","entity_key":"d_concession_and_disagreement_01:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"676033960acb1bd265c1d56de209b4bce58b31dd78d73ee6e7d9137d7f808e2f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/814dc34a9485b40e683ad6fcab514804c96426945f0e267bb20b13198c5d5b9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_02:1 -> audio/generated/ko-KR/dialogues/8ab55018a97c2a233b5df659fde8c8a557efccb0b6cd0d5f7ccac63bb85e9d0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27ac04af-9fe5-5b3d-b71a-0a850d3842d3', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71b2deed74cf54ab11fefd6c6776e57a07e4fef5bf4178c80e5316d703d740a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e7f8c83-b095-548e-9c11-722f81d758e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27ac04af-9fe5-5b3d-b71a-0a850d3842d3', 1), '71b2deed74cf54ab11fefd6c6776e57a07e4fef5bf4178c80e5316d703d740a2',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8ab55018a97c2a233b5df659fde8c8a557efccb0b6cd0d5f7ccac63bb85e9d0d.mp3', 2351, '2026-09-13 23:58:05.770112', '5991465333b726e9e36cf5d77145a2a123c4bd857090870fc5fe48bdcb2d286b', 'validated', '{"audio_key":"8ab55018a97c2a233b5df659fde8c8a557efccb0b6cd0d5f7ccac63bb85e9d0d","entity_key":"d_counterfactual_reflection_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5991465333b726e9e36cf5d77145a2a123c4bd857090870fc5fe48bdcb2d286b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/8ab55018a97c2a233b5df659fde8c8a557efccb0b6cd0d5f7ccac63bb85e9d0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_01:2 -> audio/generated/ko-KR/dialogues/8e80e6a7690b87a08eccd2bef8e66834ed45564030bc3b3039ebfc4a799b4aa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60e64c10-4f14-5095-8fca-dabe80776426', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '226203142c7382c987e1b216f8ed5cef61c022b36f8f9d0f875d5c1c79b94386'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d30075de-6dcf-5b9e-b63d-10e2bc059306', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60e64c10-4f14-5095-8fca-dabe80776426', 1), '226203142c7382c987e1b216f8ed5cef61c022b36f8f9d0f875d5c1c79b94386',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8e80e6a7690b87a08eccd2bef8e66834ed45564030bc3b3039ebfc4a799b4aa6.mp3', 3474, '2026-09-13 23:58:06.804097', '6d76464dfea5b3efa9418b099eb2987678c6116e704929d59db3f7af53c2a6d6', 'validated', '{"audio_key":"8e80e6a7690b87a08eccd2bef8e66834ed45564030bc3b3039ebfc4a799b4aa6","entity_key":"d_counterfactual_reflection_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d76464dfea5b3efa9418b099eb2987678c6116e704929d59db3f7af53c2a6d6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/8e80e6a7690b87a08eccd2bef8e66834ed45564030bc3b3039ebfc4a799b4aa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:3 -> audio/generated/ko-KR/dialogues/907ef19ded6ce4b53acc32073c07f0ba89f2db054311fb3390b37f1a7beacb82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e075be5-d129-571b-9de3-d1df12f3ceb6', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b62e45dc7562e26af5fcd7224d67528772fa092b28468fabc6dca0f43f066fa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a49085ef-d305-59f6-bf8f-8f412f77ace9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e075be5-d129-571b-9de3-d1df12f3ceb6', 1), 'b62e45dc7562e26af5fcd7224d67528772fa092b28468fabc6dca0f43f066fa1',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/907ef19ded6ce4b53acc32073c07f0ba89f2db054311fb3390b37f1a7beacb82.mp3', 2455, '2026-09-13 23:58:06.934963', '010e38cb250c8729a8bb2d989069ea8aa12f2307961f48803ca936a70324a7a0', 'validated', '{"audio_key":"907ef19ded6ce4b53acc32073c07f0ba89f2db054311fb3390b37f1a7beacb82","entity_key":"d_nuanced_stance_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"010e38cb250c8729a8bb2d989069ea8aa12f2307961f48803ca936a70324a7a0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/907ef19ded6ce4b53acc32073c07f0ba89f2db054311fb3390b37f1a7beacb82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_02:3 -> audio/generated/ko-KR/dialogues/92446a8e1bab29d26bc0e3ae07caef2043c81a7839ed621932aa35afce242ce1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d71adc50-60ee-53d0-9872-2098518510d5', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946e74c9453c1695336cbf8e257b761b6f6d6c1428294a505387d613a3553502'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1756fcce-820b-5021-961e-00cefdb9d0cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d71adc50-60ee-53d0-9872-2098518510d5', 1), '946e74c9453c1695336cbf8e257b761b6f6d6c1428294a505387d613a3553502',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/92446a8e1bab29d26bc0e3ae07caef2043c81a7839ed621932aa35afce242ce1.mp3', 2272, '2026-09-13 23:58:07.932114', 'e5561708f3eed86467f263634149497c6548dae3b63a06cbd291a04ae8c46175', 'validated', '{"audio_key":"92446a8e1bab29d26bc0e3ae07caef2043c81a7839ed621932aa35afce242ce1","entity_key":"d_source_comparison_02:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5561708f3eed86467f263634149497c6548dae3b63a06cbd291a04ae8c46175","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/92446a8e1bab29d26bc0e3ae07caef2043c81a7839ed621932aa35afce242ce1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_02:1 -> audio/generated/ko-KR/dialogues/925bb0f285dfff34eb4b0557a1671d3e412ed592942811a4263ddbea2012ba7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca6aaa7d-50e8-59e8-85fb-c4657c3de8eb', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e56f01702bcff4438fb739c9f71a1cc579f23ced20495097fcbcf8ced07068db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8530e820-862b-5083-8333-f0763ecd71fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca6aaa7d-50e8-59e8-85fb-c4657c3de8eb', 1), 'e56f01702bcff4438fb739c9f71a1cc579f23ced20495097fcbcf8ced07068db',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/925bb0f285dfff34eb4b0557a1671d3e412ed592942811a4263ddbea2012ba7c.mp3', 3892, '2026-09-13 23:58:08.213254', '231e94cd30398573f5545f851abc625cb3ff622f03efd1ed50ea220314f00d46', 'validated', '{"audio_key":"925bb0f285dfff34eb4b0557a1671d3e412ed592942811a4263ddbea2012ba7c","entity_key":"d_b2_seoul_forum_capstone_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231e94cd30398573f5545f851abc625cb3ff622f03efd1ed50ea220314f00d46","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/925bb0f285dfff34eb4b0557a1671d3e412ed592942811a4263ddbea2012ba7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_01:3 -> audio/generated/ko-KR/dialogues/95145f4182b4b9f56f72a3edfc8e74b871443fb3c40c9acc1185aa70a64ce782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7c9ab86-1f9b-5079-aa9d-f9b11b2ba759', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b229ea46f6d0008aa529029b8fba42a17308e84f53c7389497f3b78a470991d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2d968d6-be34-5943-b2e4-d6ea401c9bd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7c9ab86-1f9b-5079-aa9d-f9b11b2ba759', 1), 'b229ea46f6d0008aa529029b8fba42a17308e84f53c7389497f3b78a470991d1',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/95145f4182b4b9f56f72a3edfc8e74b871443fb3c40c9acc1185aa70a64ce782.mp3', 1906, '2026-09-13 23:58:08.969481', '87a8d9f5685a564e6edbdf96ad6326955cbc321f94132bc7c86e0e39f7225d43', 'validated', '{"audio_key":"95145f4182b4b9f56f72a3edfc8e74b871443fb3c40c9acc1185aa70a64ce782","entity_key":"d_source_comparison_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"87a8d9f5685a564e6edbdf96ad6326955cbc321f94132bc7c86e0e39f7225d43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/95145f4182b4b9f56f72a3edfc8e74b871443fb3c40c9acc1185aa70a64ce782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_01:4 -> audio/generated/ko-KR/dialogues/9681ea88961d566dc824655b5c107411f4b82955587ac18e5c4f7988f8625724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3223051b-22e2-570f-bbfb-901d739d48e4', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57603746efac1775c9cb7ec1b2cecdf5a605c38208c1c87111b8312ec6e1556c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308b7158-748a-5f72-918e-acde45d34c85', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3223051b-22e2-570f-bbfb-901d739d48e4', 1), '57603746efac1775c9cb7ec1b2cecdf5a605c38208c1c87111b8312ec6e1556c',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9681ea88961d566dc824655b5c107411f4b82955587ac18e5c4f7988f8625724.mp3', 2533, '2026-09-13 23:58:09.308811', '9790d26108ffb9e749ace91520f96a9aa439e717e986c6310bf375c8eff6ad10', 'validated', '{"audio_key":"9681ea88961d566dc824655b5c107411f4b82955587ac18e5c4f7988f8625724","entity_key":"d_counterfactual_reflection_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9790d26108ffb9e749ace91520f96a9aa439e717e986c6310bf375c8eff6ad10","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9681ea88961d566dc824655b5c107411f4b82955587ac18e5c4f7988f8625724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_seoul_forum_capstone_02:3 -> audio/generated/ko-KR/dialogues/9905359df196cce17da576c0529e9d240fd0b262b83805edd14ccef4b320ef8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a7c4103-18c4-5341-b11c-7a2763bdfa94', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_seoul_forum_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7192489f597074979872d546f294884663588acd5972c0f2c33c110ded33f645'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f020380c-e55a-5257-9887-9f5df99cb648', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a7c4103-18c4-5341-b11c-7a2763bdfa94', 1), '7192489f597074979872d546f294884663588acd5972c0f2c33c110ded33f645',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9905359df196cce17da576c0529e9d240fd0b262b83805edd14ccef4b320ef8c.mp3', 3004, '2026-09-13 23:58:10.191364', '69487f712eca792593ed2039385790b4fa17db18b152851cac1e2ec2b9cc35f6', 'validated', '{"audio_key":"9905359df196cce17da576c0529e9d240fd0b262b83805edd14ccef4b320ef8c","entity_key":"d_b2_seoul_forum_capstone_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69487f712eca792593ed2039385790b4fa17db18b152851cac1e2ec2b9cc35f6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9905359df196cce17da576c0529e9d240fd0b262b83805edd14ccef4b320ef8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:3 -> audio/generated/ko-KR/dialogues/9ba4200609fa8799e04074a87395c761f96c38a45d84bc6988508c168f6247c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7518852a-f9f9-593f-a184-f108500e825f', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00f16fbdfc8d2af3687597754c2ea6b975c4f789a6cfdff6d54acbdaca48a6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb218ac4-b113-59d6-8931-6b6dd48c14c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7518852a-f9f9-593f-a184-f108500e825f', 1), 'b00f16fbdfc8d2af3687597754c2ea6b975c4f789a6cfdff6d54acbdaca48a6f',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9ba4200609fa8799e04074a87395c761f96c38a45d84bc6988508c168f6247c6.mp3', 2220, '2026-09-13 23:58:10.399944', '5fbddcfcaa5aaa383975c8cfa57aa372d2e47cbefed0b9949b61ff1a04b8ccbd', 'validated', '{"audio_key":"9ba4200609fa8799e04074a87395c761f96c38a45d84bc6988508c168f6247c6","entity_key":"d_concession_and_disagreement_01:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fbddcfcaa5aaa383975c8cfa57aa372d2e47cbefed0b9949b61ff1a04b8ccbd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/9ba4200609fa8799e04074a87395c761f96c38a45d84bc6988508c168f6247c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:4 -> audio/generated/ko-KR/dialogues/9d02cfb6615418c70a694a5afe3d6e71b86a235bb9d0e40cd53e45d6b193d36e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f131bda4-f3a7-58e3-9e8a-4f190e0214d4', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef2c80b841cf7e4536d01e937466772a72e564bbdbf74d40e743ae833c6a58ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('910186ef-3bf1-5a51-81c2-6b1e10aa9e2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f131bda4-f3a7-58e3-9e8a-4f190e0214d4', 1), 'ef2c80b841cf7e4536d01e937466772a72e564bbdbf74d40e743ae833c6a58ad',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9d02cfb6615418c70a694a5afe3d6e71b86a235bb9d0e40cd53e45d6b193d36e.mp3', 3709, '2026-09-13 23:58:11.461378', '4fe28e8c3084a629a1a6aab6ca3a214838a76510e742d6bc88d24545b3b39a1e', 'validated', '{"audio_key":"9d02cfb6615418c70a694a5afe3d6e71b86a235bb9d0e40cd53e45d6b193d36e","entity_key":"d_concession_and_disagreement_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4fe28e8c3084a629a1a6aab6ca3a214838a76510e742d6bc88d24545b3b39a1e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9d02cfb6615418c70a694a5afe3d6e71b86a235bb9d0e40cd53e45d6b193d36e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_01:4 -> audio/generated/ko-KR/dialogues/9d3ae06aedbb929fc81977f9325ce8d6c54512d566df9e8f689397408047f564.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbf4fd2f-526b-5036-9779-d8e0918961c1', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8c842ebcd381183ae4eb9059649f86a702a371d70f4d7f435ef71396fb1d898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a2fe80c-d210-596a-b9c4-9c28badc5ad3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbf4fd2f-526b-5036-9779-d8e0918961c1', 1), 'e8c842ebcd381183ae4eb9059649f86a702a371d70f4d7f435ef71396fb1d898',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9d3ae06aedbb929fc81977f9325ce8d6c54512d566df9e8f689397408047f564.mp3', 2586, '2026-09-13 23:58:11.565990', 'c4af7c9e804994fead060cef591c8fba8943fe262abfa45c1b3398d405579c23', 'validated', '{"audio_key":"9d3ae06aedbb929fc81977f9325ce8d6c54512d566df9e8f689397408047f564","entity_key":"d_evidence_and_inference_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4af7c9e804994fead060cef591c8fba8943fe262abfa45c1b3398d405579c23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/9d3ae06aedbb929fc81977f9325ce8d6c54512d566df9e8f689397408047f564.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:3 -> audio/generated/ko-KR/dialogues/a1ddff10e97a3e6f0fc6038b4eb3704fe3d34a85a338c8fde244c88e5c874443.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1121aca5-c64b-5485-9e46-0b56c0166ac0', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a18746d3391c23316691877eb7e03df8e77e09ffdebc6e27520649b1b67ccb30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f453b7a4-bf0d-54f8-940d-4846af0a7215', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1121aca5-c64b-5485-9e46-0b56c0166ac0', 1), 'a18746d3391c23316691877eb7e03df8e77e09ffdebc6e27520649b1b67ccb30',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a1ddff10e97a3e6f0fc6038b4eb3704fe3d34a85a338c8fde244c88e5c874443.mp3', 2089, '2026-09-13 23:58:12.531232', '75617703dbb0738eb7bc8854b32a4d56bfe6a29f2ad3f6e71a27563ff2301d7e', 'validated', '{"audio_key":"a1ddff10e97a3e6f0fc6038b4eb3704fe3d34a85a338c8fde244c88e5c874443","entity_key":"d_nuanced_stance_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75617703dbb0738eb7bc8854b32a4d56bfe6a29f2ad3f6e71a27563ff2301d7e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a1ddff10e97a3e6f0fc6038b4eb3704fe3d34a85a338c8fde244c88e5c874443.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_02:2 -> audio/generated/ko-KR/dialogues/a365e129f50ec2efe9dc9e931e10da84458b8ae64bce7121ebcf4f3063f88a16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8d61296-655c-567a-bc06-574e53ab7276', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8387c0fc3f5d1508176714e8c67e6f5024e832ba432aea4541a8f2ff9a38eb8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ac342e-ac22-5805-afec-6e48e99157c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8d61296-655c-567a-bc06-574e53ab7276', 1), '8387c0fc3f5d1508176714e8c67e6f5024e832ba432aea4541a8f2ff9a38eb8c',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a365e129f50ec2efe9dc9e931e10da84458b8ae64bce7121ebcf4f3063f88a16.mp3', 2638, '2026-09-13 23:58:12.724172', 'b2d6b3614c9cae0707d9b925392acbeabbb1d22282b6811575e7f68795f7bb7b', 'validated', '{"audio_key":"a365e129f50ec2efe9dc9e931e10da84458b8ae64bce7121ebcf4f3063f88a16","entity_key":"d_evidence_and_inference_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2d6b3614c9cae0707d9b925392acbeabbb1d22282b6811575e7f68795f7bb7b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a365e129f50ec2efe9dc9e931e10da84458b8ae64bce7121ebcf4f3063f88a16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:3 -> audio/generated/ko-KR/dialogues/a4ee3e881279c98bdd5ccff047e65abf8fc97afa1595390082571b13b8846dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c1a77e33-e187-57f8-9dda-307d4e055634', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd1f6246a87ce7eea7b312e3e8b163f548883f96cf7d4472af82dd2c863c86dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('084ac454-1426-5a3a-98ed-c60adac287d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c1a77e33-e187-57f8-9dda-307d4e055634', 1), 'dd1f6246a87ce7eea7b312e3e8b163f548883f96cf7d4472af82dd2c863c86dc',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a4ee3e881279c98bdd5ccff047e65abf8fc97afa1595390082571b13b8846dbc.mp3', 3186, '2026-09-13 23:58:13.752616', 'b42f8536a6e1a325a883ac4eebaaf637c6c3ed87059f6e598dc2e5dff80ff83c', 'validated', '{"audio_key":"a4ee3e881279c98bdd5ccff047e65abf8fc97afa1595390082571b13b8846dbc","entity_key":"d_formal_negotiation_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b42f8536a6e1a325a883ac4eebaaf637c6c3ed87059f6e598dc2e5dff80ff83c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/a4ee3e881279c98bdd5ccff047e65abf8fc97afa1595390082571b13b8846dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_01:3 -> audio/generated/ko-KR/dialogues/a9f3afdd7a22c399b0b9078025747d75429ee401d36d6e6cfc5076a4e989531f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33474dde-c078-541d-8f40-7fd21dddcbb5', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2a476deb2303b79fa26fad48bbaa09275c18fa93c76af6e7e62eeae0f8587da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be249000-096d-5818-b009-b677cc55cd8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33474dde-c078-541d-8f40-7fd21dddcbb5', 1), 'b2a476deb2303b79fa26fad48bbaa09275c18fa93c76af6e7e62eeae0f8587da',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a9f3afdd7a22c399b0b9078025747d75429ee401d36d6e6cfc5076a4e989531f.mp3', 2220, '2026-09-13 23:58:13.825673', '3121f6b1243ccafa7ec6c053bf0f23c5ee6f87df712dd00ff325f6433e390e28', 'validated', '{"audio_key":"a9f3afdd7a22c399b0b9078025747d75429ee401d36d6e6cfc5076a4e989531f","entity_key":"d_register_and_social_distance_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3121f6b1243ccafa7ec6c053bf0f23c5ee6f87df712dd00ff325f6433e390e28","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a9f3afdd7a22c399b0b9078025747d75429ee401d36d6e6cfc5076a4e989531f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_02:2 -> audio/generated/ko-KR/dialogues/aaff1547af20948a9ed33cad00f558c6677535dfb799429b266ee80a6df60e2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6919b7a7-57b3-5dd3-bd61-7ac948fcebaa', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d53593e8a814d3689343fd7f4cab06c4985e61c277408531ca4ed6af02a945'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6f8e5fa-0dd6-5f7f-acf0-d610461f690b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6919b7a7-57b3-5dd3-bd61-7ac948fcebaa', 1), 'c2d53593e8a814d3689343fd7f4cab06c4985e61c277408531ca4ed6af02a945',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/aaff1547af20948a9ed33cad00f558c6677535dfb799429b266ee80a6df60e2b.mp3', 2638, '2026-09-13 23:58:14.926083', 'a8620b832c33073421b961594899cb3eabb8ad7d5163a1eff5ce49b67e3d29da', 'validated', '{"audio_key":"aaff1547af20948a9ed33cad00f558c6677535dfb799429b266ee80a6df60e2b","entity_key":"d_source_comparison_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8620b832c33073421b961594899cb3eabb8ad7d5163a1eff5ce49b67e3d29da","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/aaff1547af20948a9ed33cad00f558c6677535dfb799429b266ee80a6df60e2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_02:1 -> audio/generated/ko-KR/dialogues/ab0cf863b785cd5e5722edff99196f2002e4e25cb4ea8dc4a92fbab59d4bcc1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37c1a8de-3819-55c1-9d07-e7f9816cb5a7', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e0a4d97b464249a9281ec324f8cc197336ca6a267ac3b5350fabb3c790e6083'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5811e6b8-fea1-572c-a08d-d5f76fde2cc8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37c1a8de-3819-55c1-9d07-e7f9816cb5a7', 1), '2e0a4d97b464249a9281ec324f8cc197336ca6a267ac3b5350fabb3c790e6083',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab0cf863b785cd5e5722edff99196f2002e4e25cb4ea8dc4a92fbab59d4bcc1f.mp3', 2925, '2026-09-13 23:58:14.979318', '0ded7447d54b1e33a40de38bac1ac760fe9528c2d753f8deec92e73ad92bba8e', 'validated', '{"audio_key":"ab0cf863b785cd5e5722edff99196f2002e4e25cb4ea8dc4a92fbab59d4bcc1f","entity_key":"d_summarizing_and_mediation_02:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0ded7447d54b1e33a40de38bac1ac760fe9528c2d753f8deec92e73ad92bba8e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ab0cf863b785cd5e5722edff99196f2002e4e25cb4ea8dc4a92fbab59d4bcc1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_01:1 -> audio/generated/ko-KR/dialogues/ac3b812d87e2d6306c46353f05e3092c816227d64dd3b1f0279c24915205afe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec1fdc71-eeef-5555-a403-852bf41287d4', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2eb20f9ed182adf676c48d11e3bcd7b5bbc356906cfdf8f924742d99742b6bd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c430d06d-72e7-5f4a-881b-5d74f55e2074', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec1fdc71-eeef-5555-a403-852bf41287d4', 1), '2eb20f9ed182adf676c48d11e3bcd7b5bbc356906cfdf8f924742d99742b6bd0',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ac3b812d87e2d6306c46353f05e3092c816227d64dd3b1f0279c24915205afe6.mp3', 2272, '2026-09-13 23:58:16.030074', '83f9bf76316efd195711c2e4eb2dd2369b64b936a0d10309b0000e55f6befb0c', 'validated', '{"audio_key":"ac3b812d87e2d6306c46353f05e3092c816227d64dd3b1f0279c24915205afe6","entity_key":"d_process_and_responsibility_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"83f9bf76316efd195711c2e4eb2dd2369b64b936a0d10309b0000e55f6befb0c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ac3b812d87e2d6306c46353f05e3092c816227d64dd3b1f0279c24915205afe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:4 -> audio/generated/ko-KR/dialogues/ae50088aac981effbb9c8cbd024a87b4cd3276d4fb68d2b3f2683c49351a9f78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb08e226-7b4c-5730-a7b8-52db29a3aaee', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b24aec1ba461fceaca775dcc8f57ebed91d4c53c4f0890d9cb1dd93bbe230d6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62b18d94-3b8b-540f-a9f2-63c129daed4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb08e226-7b4c-5730-a7b8-52db29a3aaee', 1), 'b24aec1ba461fceaca775dcc8f57ebed91d4c53c4f0890d9cb1dd93bbe230d6d',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ae50088aac981effbb9c8cbd024a87b4cd3276d4fb68d2b3f2683c49351a9f78.mp3', 3239, '2026-09-13 23:58:16.200104', 'ee259a339f7ce9067f3bf880ddec054de5af90f5061570837479c40337ac2679', 'validated', '{"audio_key":"ae50088aac981effbb9c8cbd024a87b4cd3276d4fb68d2b3f2683c49351a9f78","entity_key":"d_formal_negotiation_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee259a339f7ce9067f3bf880ddec054de5af90f5061570837479c40337ac2679","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ae50088aac981effbb9c8cbd024a87b4cd3276d4fb68d2b3f2683c49351a9f78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_02:4 -> audio/generated/ko-KR/dialogues/af9da000ce8ea5351762c357323d29e2276e544bdafefab735867c4712be7e89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6bd8090f-561b-514d-9127-d4d10d60d943', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '258bc08c1f61b2f2cd5800d15b012f1adb0c26f450e07e037618724800f02288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8633744b-2ebb-55f5-818b-f2d23df5f637', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6bd8090f-561b-514d-9127-d4d10d60d943', 1), '258bc08c1f61b2f2cd5800d15b012f1adb0c26f450e07e037618724800f02288',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/af9da000ce8ea5351762c357323d29e2276e544bdafefab735867c4712be7e89.mp3', 3004, '2026-09-13 23:58:17.192519', '34fab4641574dc7c30d6f0a45fb7e992e2d518394b54cb83d337127a84400cbd', 'validated', '{"audio_key":"af9da000ce8ea5351762c357323d29e2276e544bdafefab735867c4712be7e89","entity_key":"d_summarizing_and_mediation_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34fab4641574dc7c30d6f0a45fb7e992e2d518394b54cb83d337127a84400cbd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/af9da000ce8ea5351762c357323d29e2276e544bdafefab735867c4712be7e89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_02:1 -> audio/generated/ko-KR/dialogues/b19e2a8709a734ec31dcc5799f168e78dc44cce0f9e773bafa9522f40ce43728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('116bb49c-2370-5383-9b02-63456812e098', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc704ecd1660e0a8dd41d951d732c1bc7d745b1d6a9aa87a2c6ca29405496fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97f4a77e-7238-5b22-b722-d86c541d03bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('116bb49c-2370-5383-9b02-63456812e098', 1), 'cc704ecd1660e0a8dd41d951d732c1bc7d745b1d6a9aa87a2c6ca29405496fe2',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b19e2a8709a734ec31dcc5799f168e78dc44cce0f9e773bafa9522f40ce43728.mp3', 4597, '2026-09-13 23:58:17.597006', 'e8af8df7fb263cfa2f4efe53694fe739b1f248fe021111a8aea32c5c936dc7ba', 'validated', '{"audio_key":"b19e2a8709a734ec31dcc5799f168e78dc44cce0f9e773bafa9522f40ce43728","entity_key":"d_source_comparison_02:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8af8df7fb263cfa2f4efe53694fe739b1f248fe021111a8aea32c5c936dc7ba","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b19e2a8709a734ec31dcc5799f168e78dc44cce0f9e773bafa9522f40ce43728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_and_mediation_02:2 -> audio/generated/ko-KR/dialogues/b1a0fbf23adf15b0936c4fef65dc4b005d981a2ed8f2eacace24f5335304da8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f1232e2-c190-544d-8195-0f219124d7a9', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_and_mediation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f99581aa780155d81b70a20608c9df495e491b33d7fde4977a6dd938bacf9b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0920535e-681c-55e9-8fac-17dec95df5fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f1232e2-c190-544d-8195-0f219124d7a9', 1), '4f99581aa780155d81b70a20608c9df495e491b33d7fde4977a6dd938bacf9b6',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b1a0fbf23adf15b0936c4fef65dc4b005d981a2ed8f2eacace24f5335304da8c.mp3', 3996, '2026-09-13 23:58:18.513143', '67f8c7526f21bf6a6354a2992bfee46c921eb66acc1593dfbc76e745d25c971e', 'validated', '{"audio_key":"b1a0fbf23adf15b0936c4fef65dc4b005d981a2ed8f2eacace24f5335304da8c","entity_key":"d_summarizing_and_mediation_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"67f8c7526f21bf6a6354a2992bfee46c921eb66acc1593dfbc76e745d25c971e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b1a0fbf23adf15b0936c4fef65dc4b005d981a2ed8f2eacace24f5335304da8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:1 -> audio/generated/ko-KR/dialogues/b2af152d1ed1c7e712fdf344b77cd4e45610761fbe6f1ae567c8e0a5bc574d47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('810958be-de4d-531b-a831-240ee8d52e2a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '679dee219b39dc630000f50238149bb8668edb10c01e2db629a41db593056afa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5004f3f2-ae38-5e32-b61b-f262741bd0e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('810958be-de4d-531b-a831-240ee8d52e2a', 1), '679dee219b39dc630000f50238149bb8668edb10c01e2db629a41db593056afa',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b2af152d1ed1c7e712fdf344b77cd4e45610761fbe6f1ae567c8e0a5bc574d47.mp3', 3108, '2026-09-13 23:58:18.810355', '4ef1b5670476bfd64aa69de5d3a89829f811b21183832a40b3f12d39e3d9fee5', 'validated', '{"audio_key":"b2af152d1ed1c7e712fdf344b77cd4e45610761fbe6f1ae567c8e0a5bc574d47","entity_key":"d_nuanced_stance_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ef1b5670476bfd64aa69de5d3a89829f811b21183832a40b3f12d39e3d9fee5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b2af152d1ed1c7e712fdf344b77cd4e45610761fbe6f1ae567c8e0a5bc574d47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:2 -> audio/generated/ko-KR/dialogues/b5b6ccaffdf6b0ffabf5496a5eba5c632170250ff7b9e2d791aad9a597042f23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8e8500e-0895-50e0-aa52-8c87313cc1d4', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ad5323b8846e39c1c4db56251f2cd9d239491aa5e8ac6bbdca036fa9f0a4f5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('978203da-1e4a-5788-9e7c-10faef4c2d24', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8e8500e-0895-50e0-aa52-8c87313cc1d4', 1), '9ad5323b8846e39c1c4db56251f2cd9d239491aa5e8ac6bbdca036fa9f0a4f5d',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b5b6ccaffdf6b0ffabf5496a5eba5c632170250ff7b9e2d791aad9a597042f23.mp3', 3787, '2026-09-13 23:58:19.783454', '995403a78b7d7c5119e364ce4aa64e85708e2a8ce80bd47451cfe82b2c116af8', 'validated', '{"audio_key":"b5b6ccaffdf6b0ffabf5496a5eba5c632170250ff7b9e2d791aad9a597042f23","entity_key":"d_concession_and_disagreement_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"995403a78b7d7c5119e364ce4aa64e85708e2a8ce80bd47451cfe82b2c116af8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b5b6ccaffdf6b0ffabf5496a5eba5c632170250ff7b9e2d791aad9a597042f23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_01:3 -> audio/generated/ko-KR/dialogues/be26492828818776a2ce05c38f151f757da10df0ddcc3cf88959e03de4432459.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('791026d1-864c-512b-bafa-99557c35b9e8', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '189c4e7d2b72554aa24b3fad6a694a8d76c4fa005e4b781f6a6ab92f2efa5030'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80af61e0-5de1-50cd-87d7-cc15da4c535e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('791026d1-864c-512b-bafa-99557c35b9e8', 1), '189c4e7d2b72554aa24b3fad6a694a8d76c4fa005e4b781f6a6ab92f2efa5030',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/be26492828818776a2ce05c38f151f757da10df0ddcc3cf88959e03de4432459.mp3', 2507, '2026-09-13 23:58:19.933350', '374ce4684d320a196e599abe0f995636e2b86c8c3801748a923015cbba03ee1b', 'validated', '{"audio_key":"be26492828818776a2ce05c38f151f757da10df0ddcc3cf88959e03de4432459","entity_key":"d_process_and_responsibility_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"374ce4684d320a196e599abe0f995636e2b86c8c3801748a923015cbba03ee1b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/be26492828818776a2ce05c38f151f757da10df0ddcc3cf88959e03de4432459.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_01:2 -> audio/generated/ko-KR/dialogues/c52948d5d1a9db0065dd89306a7a3509b39a658c9887567f0472fd2386616a54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d1f7144-2692-593f-8f1c-ec0d733c29e3', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '524495be0db51b548277969efe8fc423985f348d74d458e4902f8ad479d6a933'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0c3872-45aa-5ece-87db-e7ef9e54a0ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d1f7144-2692-593f-8f1c-ec0d733c29e3', 1), '524495be0db51b548277969efe8fc423985f348d74d458e4902f8ad479d6a933',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c52948d5d1a9db0065dd89306a7a3509b39a658c9887567f0472fd2386616a54.mp3', 5276, '2026-09-13 23:58:21.251481', 'acd22d0be215f9813ae4a4489dc5afe2b6f08fb87e9916a8a5d077117983b263', 'validated', '{"audio_key":"c52948d5d1a9db0065dd89306a7a3509b39a658c9887567f0472fd2386616a54","entity_key":"d_evidence_and_inference_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acd22d0be215f9813ae4a4489dc5afe2b6f08fb87e9916a8a5d077117983b263","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c52948d5d1a9db0065dd89306a7a3509b39a658c9887567f0472fd2386616a54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_01:2 -> audio/generated/ko-KR/dialogues/c6d379194a8cb8acd3c8ad5371bc9ae1aacecd67975dd508562a714005ff29c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ffe819da-a18e-5ae7-b84f-36c6205be334', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6ef3c95b301f066767fb5872baa2de40f6727c8aa1e90be5190cc464897ff4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1ba7278-6d0e-559e-8cc5-4bfa56666dc6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ffe819da-a18e-5ae7-b84f-36c6205be334', 1), 'af6ef3c95b301f066767fb5872baa2de40f6727c8aa1e90be5190cc464897ff4',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c6d379194a8cb8acd3c8ad5371bc9ae1aacecd67975dd508562a714005ff29c0.mp3', 4911, '2026-09-13 23:58:21.355200', '36fcdbf4237ee03b9ec1091600bbe311559267d21cfdacc41c5202c5f92d1f4c', 'validated', '{"audio_key":"c6d379194a8cb8acd3c8ad5371bc9ae1aacecd67975dd508562a714005ff29c0","entity_key":"d_register_and_social_distance_01:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36fcdbf4237ee03b9ec1091600bbe311559267d21cfdacc41c5202c5f92d1f4c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c6d379194a8cb8acd3c8ad5371bc9ae1aacecd67975dd508562a714005ff29c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_02:3 -> audio/generated/ko-KR/dialogues/cb38a22201b475da89304f498bab4bd187bfcbc0a20669340022f67bc040e300.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26349075-6bb7-51bd-88f1-8bb310eec2d0', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a398286d56e9ce696168c914a07940c17a7d00a606edfdb15f84121ed316be1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13c19ddb-6053-5550-b66d-d117de5f3815', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26349075-6bb7-51bd-88f1-8bb310eec2d0', 1), '0a398286d56e9ce696168c914a07940c17a7d00a606edfdb15f84121ed316be1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cb38a22201b475da89304f498bab4bd187bfcbc0a20669340022f67bc040e300.mp3', 2403, '2026-09-13 23:58:22.336019', 'a516fcb16c1d0d59602b4de7f1db2f6d1de924f0f0468efa77d54a12d5ba577c', 'validated', '{"audio_key":"cb38a22201b475da89304f498bab4bd187bfcbc0a20669340022f67bc040e300","entity_key":"d_process_and_responsibility_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a516fcb16c1d0d59602b4de7f1db2f6d1de924f0f0468efa77d54a12d5ba577c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/cb38a22201b475da89304f498bab4bd187bfcbc0a20669340022f67bc040e300.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:2 -> audio/generated/ko-KR/dialogues/cbd8b86da162fc6f17cfae2f3dd09fd8279d24a5a8f7cbfa36823f422821d2d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a09adea-f730-5105-9fcf-9044eab4dd68', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ced42abc06f4b7327fa4867b89fa39be860be25c1db935579d116bb2199a6d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ce6eebc-14c1-5fd0-991c-6f43fd9b2d27', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a09adea-f730-5105-9fcf-9044eab4dd68', 1), '1ced42abc06f4b7327fa4867b89fa39be860be25c1db935579d116bb2199a6d1',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cbd8b86da162fc6f17cfae2f3dd09fd8279d24a5a8f7cbfa36823f422821d2d6.mp3', 4623, '2026-09-13 23:58:22.798387', '4b849a44d4f12b2888b4766adc13f59683a189ae5d844bf6160ac91ce8a45be9', 'validated', '{"audio_key":"cbd8b86da162fc6f17cfae2f3dd09fd8279d24a5a8f7cbfa36823f422821d2d6","entity_key":"d_nuanced_stance_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b849a44d4f12b2888b4766adc13f59683a189ae5d844bf6160ac91ce8a45be9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/cbd8b86da162fc6f17cfae2f3dd09fd8279d24a5a8f7cbfa36823f422821d2d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_02:2 -> audio/generated/ko-KR/dialogues/d630288486ba8e3994c9146ba4b6b7413b26794f4b50035393731d2bc84bdaf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4d8fab8-fb16-59d8-999d-9498ab4d6c48', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59b10c6d0b9193c85a7ae7b996b3d0806ed839f95b7e48322dd6635bd00ecf2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a21622a-4b01-5048-8715-f1b00cb3571d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4d8fab8-fb16-59d8-999d-9498ab4d6c48', 1), '59b10c6d0b9193c85a7ae7b996b3d0806ed839f95b7e48322dd6635bd00ecf2e',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d630288486ba8e3994c9146ba4b6b7413b26794f4b50035393731d2bc84bdaf2.mp3', 5433, '2026-09-13 23:58:23.836893', '8a4940346c1bd8eed27db2e2deb0a3b122b78ff272981740000726961ca384a7', 'validated', '{"audio_key":"d630288486ba8e3994c9146ba4b6b7413b26794f4b50035393731d2bc84bdaf2","entity_key":"d_register_and_social_distance_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a4940346c1bd8eed27db2e2deb0a3b122b78ff272981740000726961ca384a7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d630288486ba8e3994c9146ba4b6b7413b26794f4b50035393731d2bc84bdaf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_02:4 -> audio/generated/ko-KR/dialogues/d713cbb907924e0162be73fbcdc194a73a0e920dd6c6c60a8ac0dc7577c21c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22936926-901b-5c7f-a337-d966d83004c4', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a33bcea368fab82d7ab46f54ec801e4d1c1160375884b3c7ce42cf9e685f46c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d521568-c8c2-59ee-bec8-251c24494506', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22936926-901b-5c7f-a337-d966d83004c4', 1), 'a33bcea368fab82d7ab46f54ec801e4d1c1160375884b3c7ce42cf9e685f46c7',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d713cbb907924e0162be73fbcdc194a73a0e920dd6c6c60a8ac0dc7577c21c2d.mp3', 3761, '2026-09-13 23:58:24.073859', '7efafa04688d5901cb16ea53cc3699751870b2271cdd5b21e88b1255b9911abb', 'validated', '{"audio_key":"d713cbb907924e0162be73fbcdc194a73a0e920dd6c6c60a8ac0dc7577c21c2d","entity_key":"d_evidence_and_inference_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7efafa04688d5901cb16ea53cc3699751870b2271cdd5b21e88b1255b9911abb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d713cbb907924e0162be73fbcdc194a73a0e920dd6c6c60a8ac0dc7577c21c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_and_responsibility_02:4 -> audio/generated/ko-KR/dialogues/dc12843caa37d3f4410a9f47d69c8ca7a593ce85d5db147690c2590fcfeeccd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1008008a-64ed-54dc-ba21-df72836e6f8d', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_and_responsibility_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1db5ef1ea4f716d3c0c8f99f54f89400736ce3b5615c8a00ada274939ced61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d13d7766-1ff2-5562-892c-040f1a060a89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1008008a-64ed-54dc-ba21-df72836e6f8d', 1), '9e1db5ef1ea4f716d3c0c8f99f54f89400736ce3b5615c8a00ada274939ced61',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dc12843caa37d3f4410a9f47d69c8ca7a593ce85d5db147690c2590fcfeeccd6.mp3', 3996, '2026-09-13 23:58:25.147074', 'ba28ce2f0d6c71446dcb4d9a5147ee43aaa9b2edf2e1a19c4f7e5308209d6768', 'validated', '{"audio_key":"dc12843caa37d3f4410a9f47d69c8ca7a593ce85d5db147690c2590fcfeeccd6","entity_key":"d_process_and_responsibility_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba28ce2f0d6c71446dcb4d9a5147ee43aaa9b2edf2e1a19c4f7e5308209d6768","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/dc12843caa37d3f4410a9f47d69c8ca7a593ce85d5db147690c2590fcfeeccd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_01:3 -> audio/generated/ko-KR/dialogues/decd9ec6b489552aec50d6cf70d037ac40650c775f861d6f9ecb785e45721ddd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('207bec2d-fe79-5eb1-a034-f9964941225c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7475a2ba758308fcf338b711362fb0f3a6034790f57ba020a33699a740267aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82e1bd72-0a91-5d18-9194-dfea27fe19a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('207bec2d-fe79-5eb1-a034-f9964941225c', 1), 'f7475a2ba758308fcf338b711362fb0f3a6034790f57ba020a33699a740267aa',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/decd9ec6b489552aec50d6cf70d037ac40650c775f861d6f9ecb785e45721ddd.mp3', 3056, '2026-09-13 23:58:25.310964', '3222a6b749ecada85b025442b58bd31ec8320534d98fc79841a1346a677a501e', 'validated', '{"audio_key":"decd9ec6b489552aec50d6cf70d037ac40650c775f861d6f9ecb785e45721ddd","entity_key":"d_evidence_and_inference_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3222a6b749ecada85b025442b58bd31ec8320534d98fc79841a1346a677a501e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/decd9ec6b489552aec50d6cf70d037ac40650c775f861d6f9ecb785e45721ddd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:4 -> audio/generated/ko-KR/dialogues/dff2ddf3564a06b6f7ac76364d937069c6faaf7b32778f15558fac139b86681e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d71cf577-0be8-58f4-a667-00f87b283683', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88210976b93aaf7b519459916a2b6575df636f4ec3917536fc26881d6eda2152'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59e18c7c-f963-55c5-8ef1-f0471d3d20e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d71cf577-0be8-58f4-a667-00f87b283683', 1), '88210976b93aaf7b519459916a2b6575df636f4ec3917536fc26881d6eda2152',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dff2ddf3564a06b6f7ac76364d937069c6faaf7b32778f15558fac139b86681e.mp3', 3369, '2026-09-13 23:58:26.368322', '6618b42d2b929c712c7db76012e7bde96047797929a2c2e90a98b29e7c9f1094', 'validated', '{"audio_key":"dff2ddf3564a06b6f7ac76364d937069c6faaf7b32778f15558fac139b86681e","entity_key":"d_nuanced_stance_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6618b42d2b929c712c7db76012e7bde96047797929a2c2e90a98b29e7c9f1094","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/dff2ddf3564a06b6f7ac76364d937069c6faaf7b32778f15558fac139b86681e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:2 -> audio/generated/ko-KR/dialogues/e3feb36458ea87a31a69a71a3d8a26564add93f8a3995af56fbb81e3b97cfc0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43ec82bf-d5d0-562d-8a32-0647a3143477', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f39693824dfd0ee2086bc6c16fcf7983112547d8e1ab18c27b1e7ff11ac26e67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1109b42a-726c-51f0-8b40-2246ee41dcbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43ec82bf-d5d0-562d-8a32-0647a3143477', 1), 'f39693824dfd0ee2086bc6c16fcf7983112547d8e1ab18c27b1e7ff11ac26e67',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e3feb36458ea87a31a69a71a3d8a26564add93f8a3995af56fbb81e3b97cfc0d.mp3', 3578, '2026-09-13 23:58:26.577734', 'c3f75178e3b2682840a86e07bf1d4b9f131ccd7a4909cadd28566aa68922220d', 'validated', '{"audio_key":"e3feb36458ea87a31a69a71a3d8a26564add93f8a3995af56fbb81e3b97cfc0d","entity_key":"d_formal_negotiation_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3f75178e3b2682840a86e07bf1d4b9f131ccd7a4909cadd28566aa68922220d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e3feb36458ea87a31a69a71a3d8a26564add93f8a3995af56fbb81e3b97cfc0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_02:3 -> audio/generated/ko-KR/dialogues/e739b9d0924e1819db9d9b03ced6b9578ccbe95e1f508c2c7c269cacafd6a427.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f906bd73-4e36-5aa9-b3ca-cb5002ca94d4', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db1d3d02f29b58764cc8c778e0153566d3dfa1684aecb1b2bd391df89029a3ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5a898f0-e616-5613-8439-3307ea55357d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f906bd73-4e36-5aa9-b3ca-cb5002ca94d4', 1), 'db1d3d02f29b58764cc8c778e0153566d3dfa1684aecb1b2bd391df89029a3ce',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e739b9d0924e1819db9d9b03ced6b9578ccbe95e1f508c2c7c269cacafd6a427.mp3', 2351, '2026-09-13 23:58:27.472937', '2c5d1b9b10382218401931f20a1b0e5ae6143e721a9e522c1130e1a3643b3129', 'validated', '{"audio_key":"e739b9d0924e1819db9d9b03ced6b9578ccbe95e1f508c2c7c269cacafd6a427","entity_key":"d_register_and_social_distance_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c5d1b9b10382218401931f20a1b0e5ae6143e721a9e522c1130e1a3643b3129","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/e739b9d0924e1819db9d9b03ced6b9578ccbe95e1f508c2c7c269cacafd6a427.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_01:1 -> audio/generated/ko-KR/dialogues/e8c4a2faa5e14d7b12631a8969a2674f286b763a1e0ec0ad58178ff24f8f904d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('983a666e-d558-5eeb-9852-0881b8ddad57', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7052e8adc0390b4aacb60922be32b8d4cb0e634c368cb458f03a28411c9a303'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59b0cffb-26a9-5ebd-9c8d-2c9590798199', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('983a666e-d558-5eeb-9852-0881b8ddad57', 1), 'd7052e8adc0390b4aacb60922be32b8d4cb0e634c368cb458f03a28411c9a303',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e8c4a2faa5e14d7b12631a8969a2674f286b763a1e0ec0ad58178ff24f8f904d.mp3', 3369, '2026-09-13 23:58:27.831338', '1e803b15b6706b8793bd05f801ee4435d09e72088d409b32522157ceea656819', 'validated', '{"audio_key":"e8c4a2faa5e14d7b12631a8969a2674f286b763a1e0ec0ad58178ff24f8f904d","entity_key":"d_counterfactual_reflection_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1e803b15b6706b8793bd05f801ee4435d09e72088d409b32522157ceea656819","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e8c4a2faa5e14d7b12631a8969a2674f286b763a1e0ec0ad58178ff24f8f904d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:1 -> audio/generated/ko-KR/dialogues/e91eb5fccb56715eebdfe939d7b359b8ec1be60c67550482a9342e355532cbe5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a1a075a-d5a9-5182-b052-333122d5d87d', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abf36108a09c476f145573cedc1551f95c25e4bf14277dd8ef4c6dd0c1d25afc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c3fd1ea-2435-5a87-b9b8-96e39184ef29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a1a075a-d5a9-5182-b052-333122d5d87d', 1), 'abf36108a09c476f145573cedc1551f95c25e4bf14277dd8ef4c6dd0c1d25afc',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e91eb5fccb56715eebdfe939d7b359b8ec1be60c67550482a9342e355532cbe5.mp3', 3422, '2026-09-13 23:58:28.692182', '9b08eead8c0f57eb0226beb2b34ef66c5ff04a369d3de06d99d9f39ae24714e4', 'validated', '{"audio_key":"e91eb5fccb56715eebdfe939d7b359b8ec1be60c67550482a9342e355532cbe5","entity_key":"d_formal_negotiation_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9b08eead8c0f57eb0226beb2b34ef66c5ff04a369d3de06d99d9f39ae24714e4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e91eb5fccb56715eebdfe939d7b359b8ec1be60c67550482a9342e355532cbe5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_inference_02:3 -> audio/generated/ko-KR/dialogues/eb630e8ff8ec27ab37adbd75fdecf13bdbe0c00e84339a1ff32d093d81664837.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('934f2ce8-3f9a-58f1-82f3-396593357a5a', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_inference_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2513fecf221b982a22a974579ea9fffd082be59295f036292409d3ad70c6ea26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ef36b89-3007-58cf-9bc7-6125ade2322a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('934f2ce8-3f9a-58f1-82f3-396593357a5a', 1), '2513fecf221b982a22a974579ea9fffd082be59295f036292409d3ad70c6ea26',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/eb630e8ff8ec27ab37adbd75fdecf13bdbe0c00e84339a1ff32d093d81664837.mp3', 2168, '2026-09-13 23:58:28.915029', '85b91ff07c03e8a9cb8ba0e6d240cb6cfab818ce943c421de867727055e42c3e', 'validated', '{"audio_key":"eb630e8ff8ec27ab37adbd75fdecf13bdbe0c00e84339a1ff32d093d81664837","entity_key":"d_evidence_and_inference_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85b91ff07c03e8a9cb8ba0e6d240cb6cfab818ce943c421de867727055e42c3e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/eb630e8ff8ec27ab37adbd75fdecf13bdbe0c00e84339a1ff32d093d81664837.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_01:1 -> audio/generated/ko-KR/dialogues/ec68c36b9d3c6fa74f2b8e7e5bd918b784ad899e5d903f0aaadb8cff42f76f40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce47a562-d4a2-51a5-9abe-6aa6aa90fbf7', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '220dea8c0d07de677d326df13d79af3d81616673d67a7663796c8ccc1eb2eefa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('319e6ad4-f5b0-563d-8f67-2457389194dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce47a562-d4a2-51a5-9abe-6aa6aa90fbf7', 1), '220dea8c0d07de677d326df13d79af3d81616673d67a7663796c8ccc1eb2eefa',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ec68c36b9d3c6fa74f2b8e7e5bd918b784ad899e5d903f0aaadb8cff42f76f40.mp3', 4075, '2026-09-13 23:58:29.993973', '2de6054a41747bc16141f3dd1861095639f3aacfe7d239dcc4dbe16f1af0b733', 'validated', '{"audio_key":"ec68c36b9d3c6fa74f2b8e7e5bd918b784ad899e5d903f0aaadb8cff42f76f40","entity_key":"d_register_and_social_distance_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2de6054a41747bc16141f3dd1861095639f3aacfe7d239dcc4dbe16f1af0b733","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ec68c36b9d3c6fa74f2b8e7e5bd918b784ad899e5d903f0aaadb8cff42f76f40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:2 -> audio/generated/ko-KR/dialogues/f11c4ebc9d3f4d16ea3afd24c2c8ca1ec22fc1363d4dda54e7fb5af568283221.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('620cb2fa-b85a-5ba3-9833-2a51d11daf34', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b4088dccb2bf2b9869fd25bc0449d7688f2776a315ebb038c3791f1693a6bb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22b0a7ff-2a13-5a1c-9059-a589231bb6c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('620cb2fa-b85a-5ba3-9833-2a51d11daf34', 1), '2b4088dccb2bf2b9869fd25bc0449d7688f2776a315ebb038c3791f1693a6bb4',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f11c4ebc9d3f4d16ea3afd24c2c8ca1ec22fc1363d4dda54e7fb5af568283221.mp3', 1933, '2026-09-13 23:58:30.018287', '61d0805e61cb415cd4c3d5e5877b546d2ceb810c17101a3f4c63924cf5c57ca1', 'validated', '{"audio_key":"f11c4ebc9d3f4d16ea3afd24c2c8ca1ec22fc1363d4dda54e7fb5af568283221","entity_key":"d_formal_negotiation_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61d0805e61cb415cd4c3d5e5877b546d2ceb810c17101a3f4c63924cf5c57ca1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/f11c4ebc9d3f4d16ea3afd24c2c8ca1ec22fc1363d4dda54e7fb5af568283221.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_comparison_02:4 -> audio/generated/ko-KR/dialogues/f3ad08b67dd7165aa1d63ded61109e2d337c5735469339f1bfca8e71f5156f17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d13cd38-8ab6-52ad-9233-9883dad60203', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_comparison_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '747dac1cafcf07aa26d9bf6bcdf302e11387a109e0a7e7fc1893f27ef8b1bd48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6645c452-f496-507d-af16-d15ca97b4a6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d13cd38-8ab6-52ad-9233-9883dad60203', 1), '747dac1cafcf07aa26d9bf6bcdf302e11387a109e0a7e7fc1893f27ef8b1bd48',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f3ad08b67dd7165aa1d63ded61109e2d337c5735469339f1bfca8e71f5156f17.mp3', 4832, '2026-09-13 23:58:31.418366', 'b37bd7a88ee44bcd5e795bf56538c29834545832c660551c1c9ab19304d974f2', 'validated', '{"audio_key":"f3ad08b67dd7165aa1d63ded61109e2d337c5735469339f1bfca8e71f5156f17","entity_key":"d_source_comparison_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b37bd7a88ee44bcd5e795bf56538c29834545832c660551c1c9ab19304d974f2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f3ad08b67dd7165aa1d63ded61109e2d337c5735469339f1bfca8e71f5156f17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reflection_02:4 -> audio/generated/ko-KR/dialogues/f6098d3b8aad25c3185d2e084236bfb8143c323fbe0e1cca899a1b2cf5d9a7a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c16707fd-81d0-547d-aa73-3b1bb8241288', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reflection_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90465a3f36d83d8ac49cf5e42b6a9a8a44a2640a42e132cdc470aa2ac266880d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76cd2efc-5673-593d-8f9e-6f0b16920c18', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c16707fd-81d0-547d-aa73-3b1bb8241288', 1), '90465a3f36d83d8ac49cf5e42b6a9a8a44a2640a42e132cdc470aa2ac266880d',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f6098d3b8aad25c3185d2e084236bfb8143c323fbe0e1cca899a1b2cf5d9a7a6.mp3', 2455, '2026-09-13 23:58:31.137601', '50d95753983d14ae982024259bd7413fb0b227bd8d4db6e8c35fb9c68e35adc0', 'validated', '{"audio_key":"f6098d3b8aad25c3185d2e084236bfb8143c323fbe0e1cca899a1b2cf5d9a7a6","entity_key":"d_counterfactual_reflection_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50d95753983d14ae982024259bd7413fb0b227bd8d4db6e8c35fb9c68e35adc0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f6098d3b8aad25c3185d2e084236bfb8143c323fbe0e1cca899a1b2cf5d9a7a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_social_distance_01:4 -> audio/generated/ko-KR/dialogues/f82b00013a19e64992237ee0e606998718f8dc6f1e76ae8d817a92d5461d9f1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a366c0df-237e-58a5-ada2-f17b985e4bb4', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_social_distance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ec813889be63b7ec2981c79443771f42da815d4d46f16cf165cf9073eed816a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56758dfa-8135-5db9-8b15-21497a491e2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a366c0df-237e-58a5-ada2-f17b985e4bb4', 1), '7ec813889be63b7ec2981c79443771f42da815d4d46f16cf165cf9073eed816a',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f82b00013a19e64992237ee0e606998718f8dc6f1e76ae8d817a92d5461d9f1d.mp3', 3604, '2026-09-13 23:58:32.396078', '48bd465f32536549990c588597a0336b019507200946724e2f6eff217615bc7a', 'validated', '{"audio_key":"f82b00013a19e64992237ee0e606998718f8dc6f1e76ae8d817a92d5461d9f1d","entity_key":"d_register_and_social_distance_01:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48bd465f32536549990c588597a0336b019507200946724e2f6eff217615bc7a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f82b00013a19e64992237ee0e606998718f8dc6f1e76ae8d817a92d5461d9f1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:3 -> audio/generated/ko-KR/dialogues/ff2bb19eeac4e16798b24d504920d8d4edbff0cf158cc1536ba78b2e8f60b542.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53428e52-3cc4-5f19-baf8-6ad13ea13c0c', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e40df736cfc5db18e959b234a16ad53d5d476692f6eaca175cb7676132078f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b8f58ae-369c-5ad3-abea-cfda4be71d70', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53428e52-3cc4-5f19-baf8-6ad13ea13c0c', 1), '9e40df736cfc5db18e959b234a16ad53d5d476692f6eaca175cb7676132078f1',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ff2bb19eeac4e16798b24d504920d8d4edbff0cf158cc1536ba78b2e8f60b542.mp3', 3004, '2026-09-13 23:58:32.594888', 'f48b1c93dffb09af8a228ae91a5ca607944444b4970bc707c293ab1fcfebd8a9', 'validated', '{"audio_key":"ff2bb19eeac4e16798b24d504920d8d4edbff0cf158cc1536ba78b2e8f60b542","entity_key":"d_formal_negotiation_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f48b1c93dffb09af8a228ae91a5ca607944444b4970bc707c293ab1fcfebd8a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ff2bb19eeac4e16798b24d504920d8d4edbff0cf158cc1536ba78b2e8f60b542.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_01 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcee23e-9a14-581a-95ab-96a84f91fa75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"lx_evidence_and_inference_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_01 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b4cf93d-5efb-5894-9a0e-b9771ef289c8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d72728a-d249-5da7-a6a0-95ff2c08e831', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b4cf93d-5efb-5894-9a0e-b9771ef289c8', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"wf_evidence_and_inference_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_06 -> audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('873a86ab-8a7c-5f7f-8812-0d3e1289891d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fddd910f8ac8ddb6aa47435ba9fe3bd254f346e8de8ad38a5e02730d76173308'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1483c1c-0393-56fc-8284-0e3b3b5ddc1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('873a86ab-8a7c-5f7f-8812-0d3e1289891d', 1), 'fddd910f8ac8ddb6aa47435ba9fe3bd254f346e8de8ad38a5e02730d76173308',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3', 1253, '2026-09-13 23:58:33.414896', 'ac29ccfb129a78cd83b70c925939c54b56347e22f7ab804946b31283b3aed1a5', 'validated', '{"audio_key":"05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2","entity_key":"lx_b2_seoul_forum_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac29ccfb129a78cd83b70c925939c54b56347e22f7ab804946b31283b3aed1a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_06 -> audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b49e6fbb-5e70-58fe-81d9-4b1435db71af', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fddd910f8ac8ddb6aa47435ba9fe3bd254f346e8de8ad38a5e02730d76173308'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d8c045f-43d1-5c1c-b7fd-fac5a0dd45c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b49e6fbb-5e70-58fe-81d9-4b1435db71af', 1), 'fddd910f8ac8ddb6aa47435ba9fe3bd254f346e8de8ad38a5e02730d76173308',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3', 1253, '2026-09-13 23:58:33.414896', 'ac29ccfb129a78cd83b70c925939c54b56347e22f7ab804946b31283b3aed1a5', 'validated', '{"audio_key":"05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2","entity_key":"wf_b2_seoul_forum_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac29ccfb129a78cd83b70c925939c54b56347e22f7ab804946b31283b3aed1a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05fe877b29356d791c7a3d672fa884d72b2dc02d997da568dd5da77f8dbbeab2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_05 -> audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b45e565-c899-57f1-a943-110fd3d0a760', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b302c912e92db47d2280a76503756d251f5f3106449b060c23ea33267ec62ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbbdbbc0-f37a-5633-819e-c2f6763f705d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b45e565-c899-57f1-a943-110fd3d0a760', 1), '5b302c912e92db47d2280a76503756d251f5f3106449b060c23ea33267ec62ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3', 1149, '2026-09-13 23:58:33.602574', '76e9e3fb2070a1e150bfac73452b385dd494244ba30a99bec6c38a947647f1bf', 'validated', '{"audio_key":"0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8","entity_key":"lx_counterfactual_reflection_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76e9e3fb2070a1e150bfac73452b385dd494244ba30a99bec6c38a947647f1bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_05 -> audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a390950-429a-5d43-9db7-09ad33b04938', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b302c912e92db47d2280a76503756d251f5f3106449b060c23ea33267ec62ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5f6b159-35ca-506f-92ed-7bcebdbebfc1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a390950-429a-5d43-9db7-09ad33b04938', 1), '5b302c912e92db47d2280a76503756d251f5f3106449b060c23ea33267ec62ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3', 1149, '2026-09-13 23:58:33.602574', '76e9e3fb2070a1e150bfac73452b385dd494244ba30a99bec6c38a947647f1bf', 'validated', '{"audio_key":"0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8","entity_key":"wf_counterfactual_reflection_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76e9e3fb2070a1e150bfac73452b385dd494244ba30a99bec6c38a947647f1bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83603a4b7d6dfec24e22fa74cd9df4a304d9bc2fcab7f406153fa383e179e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_04 -> audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('920c8d0c-7986-55d4-bb9f-f180cdfb2724', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bea2936c94aed0807c97b0097b1ef94558fbc2aeecadcd6c23008b7f2e64f2e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f68ba95-fe0f-5e12-94ab-610b52e013ac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('920c8d0c-7986-55d4-bb9f-f180cdfb2724', 1), 'bea2936c94aed0807c97b0097b1ef94558fbc2aeecadcd6c23008b7f2e64f2e5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3', 1149, '2026-09-13 23:58:34.441074', 'bf300e025085cdeac2742936ed67d964baea4ca327a5d364bf19075cb44c69d0', 'validated', '{"audio_key":"0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be","entity_key":"lx_evidence_and_inference_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bf300e025085cdeac2742936ed67d964baea4ca327a5d364bf19075cb44c69d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_04 -> audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9699ace4-4631-5dbf-90bd-f23abda92fef', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bea2936c94aed0807c97b0097b1ef94558fbc2aeecadcd6c23008b7f2e64f2e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668d5072-c5fe-5028-9daf-118ded49b217', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9699ace4-4631-5dbf-90bd-f23abda92fef', 1), 'bea2936c94aed0807c97b0097b1ef94558fbc2aeecadcd6c23008b7f2e64f2e5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3', 1149, '2026-09-13 23:58:34.441074', 'bf300e025085cdeac2742936ed67d964baea4ca327a5d364bf19075cb44c69d0', 'validated', '{"audio_key":"0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be","entity_key":"wf_evidence_and_inference_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bf300e025085cdeac2742936ed67d964baea4ca327a5d364bf19075cb44c69d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ac16822a6646c0811169ec0aab9e4343c84f96f17c0bb28a08b43c7a7b3b4be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_05 -> audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d60cb14-e04e-5e04-aead-06b266d0c267', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a7c5e90-1a9d-5c6f-8a69-ba1fec2ae66f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d60cb14-e04e-5e04-aead-06b266d0c267', 1), 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3', 1018, '2026-09-13 23:58:34.596233', '12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e', 'validated', '{"audio_key":"0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec","entity_key":"lx_formal_negotiation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_05 -> audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4e5d511-3415-57d3-b551-d9b6eb5042a9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6db69d24-5a95-52be-8bb4-cdba3641810f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4e5d511-3415-57d3-b551-d9b6eb5042a9', 1), 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3', 1018, '2026-09-13 23:58:34.596233', '12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e', 'validated', '{"audio_key":"0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec","entity_key":"wf_formal_negotiation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_04 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24b1347-dd43-5c39-99eb-231943a18255', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"lx_register_and_social_distance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_04 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cdee6e64-cd87-544b-a7e1-ccf29074db8a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaa32fcf-2451-5867-9669-3220ba536281', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cdee6e64-cd87-544b-a7e1-ccf29074db8a', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"wf_register_and_social_distance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_04 -> audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f912bab-38b6-5a10-8b55-80da43ab1506', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9da0c101918bdb5bca82b81f6f4a8e82e64c3a3939b879a1e06c43482daee0ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd5329cb-8ced-5c0e-8736-bcdf19f48527', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f912bab-38b6-5a10-8b55-80da43ab1506', 1), '9da0c101918bdb5bca82b81f6f4a8e82e64c3a3939b879a1e06c43482daee0ec',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3', 1253, '2026-09-13 23:58:35.460052', '4e7c12381de233f6b708c6d3012906e3211ed2195c3c7fc7876d2673d088c2e3', 'validated', '{"audio_key":"21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba","entity_key":"lx_source_comparison_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e7c12381de233f6b708c6d3012906e3211ed2195c3c7fc7876d2673d088c2e3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_04 -> audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c1671e9-19b6-57d6-8ae0-508aa7dc180b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9da0c101918bdb5bca82b81f6f4a8e82e64c3a3939b879a1e06c43482daee0ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83516f9f-d002-5535-a389-a65f559392da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c1671e9-19b6-57d6-8ae0-508aa7dc180b', 1), '9da0c101918bdb5bca82b81f6f4a8e82e64c3a3939b879a1e06c43482daee0ec',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3', 1253, '2026-09-13 23:58:35.460052', '4e7c12381de233f6b708c6d3012906e3211ed2195c3c7fc7876d2673d088c2e3', 'validated', '{"audio_key":"21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba","entity_key":"wf_source_comparison_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e7c12381de233f6b708c6d3012906e3211ed2195c3c7fc7876d2673d088c2e3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21cbe6173eb850dd3c24126959f316b3d7ab774a6bebfd584c2e4534455be1ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_06 -> audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72f1cab7-c1e0-5d50-9c2b-3b3fb318ea68', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d7814c03bcba4e6d9c5e5ca94f654df080b29b2a77c25f00accf62ac2f6e74a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9babe476-b8fd-5046-8557-7026a05def18', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72f1cab7-c1e0-5d50-9c2b-3b3fb318ea68', 1), '3d7814c03bcba4e6d9c5e5ca94f654df080b29b2a77c25f00accf62ac2f6e74a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3', 1071, '2026-09-13 23:58:35.582735', 'edcee477366b3217f623946560ed5f0847e1900b95f5e6677526ef9f61cd742e', 'validated', '{"audio_key":"23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce","entity_key":"lx_source_comparison_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"edcee477366b3217f623946560ed5f0847e1900b95f5e6677526ef9f61cd742e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_06 -> audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a58ccf9-4b61-5322-908c-8847617004ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d7814c03bcba4e6d9c5e5ca94f654df080b29b2a77c25f00accf62ac2f6e74a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4f0e2ca-5261-56c8-a176-f5c46031038d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a58ccf9-4b61-5322-908c-8847617004ec', 1), '3d7814c03bcba4e6d9c5e5ca94f654df080b29b2a77c25f00accf62ac2f6e74a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3', 1071, '2026-09-13 23:58:35.582735', 'edcee477366b3217f623946560ed5f0847e1900b95f5e6677526ef9f61cd742e', 'validated', '{"audio_key":"23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce","entity_key":"wf_source_comparison_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"edcee477366b3217f623946560ed5f0847e1900b95f5e6677526ef9f61cd742e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/23796bd4250b3fdae2a85df6315373101ac7f40a59f5ad0afd14374cafb0bcce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_03 -> audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7dcee612-2195-58df-8298-a51b417256ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2ec2487-f211-55dc-b107-9b58cf9a7bf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7dcee612-2195-58df-8298-a51b417256ec', 1), 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3', 966, '2026-09-13 23:58:36.526161', 'bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c', 'validated', '{"audio_key":"238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8","entity_key":"lx_register_and_social_distance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_03 -> audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('885705cd-41f5-5c1c-8b56-0b5908352534', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2d8d180-37a9-5c3f-a2db-f303ae935836', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('885705cd-41f5-5c1c-8b56-0b5908352534', 1), 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3', 966, '2026-09-13 23:58:36.526161', 'bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c', 'validated', '{"audio_key":"238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8","entity_key":"wf_register_and_social_distance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_04 -> audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a6600a29-9faf-5e65-a7d0-ec5c874edd06', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cde64634d38c7c3503f5c9ba0212762df802d46496c3dbb7fa54de84e660b9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ea75297-1283-56a6-b492-18a15afb8b0f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a6600a29-9faf-5e65-a7d0-ec5c874edd06', 1), '5cde64634d38c7c3503f5c9ba0212762df802d46496c3dbb7fa54de84e660b9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3', 1149, '2026-09-13 23:58:36.572902', '55e630167c187a9c4f8fbfe6a3e6e81454698c47dea8827e470050b526681fd0', 'validated', '{"audio_key":"247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552","entity_key":"lx_process_and_responsibility_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e630167c187a9c4f8fbfe6a3e6e81454698c47dea8827e470050b526681fd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_04 -> audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c8c0a8a-5d22-5b14-93e6-6628d1dcb0a5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cde64634d38c7c3503f5c9ba0212762df802d46496c3dbb7fa54de84e660b9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e43e0ad-d262-5d26-8e8a-be5468ff816b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c8c0a8a-5d22-5b14-93e6-6628d1dcb0a5', 1), '5cde64634d38c7c3503f5c9ba0212762df802d46496c3dbb7fa54de84e660b9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3', 1149, '2026-09-13 23:58:36.572902', '55e630167c187a9c4f8fbfe6a3e6e81454698c47dea8827e470050b526681fd0', 'validated', '{"audio_key":"247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552","entity_key":"wf_process_and_responsibility_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e630167c187a9c4f8fbfe6a3e6e81454698c47dea8827e470050b526681fd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/247cae6cc256a88f95c1bcd3d52517d0d40c259d7d23b22031a2988f0b50c552.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_03 -> audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1c4ec705-1681-576d-a41e-81667ed3ebfe', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca42812fa8a548c9290dd3e70172dc683a86a0b0a2efcf34a93a1cb8e12e5a1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1f14492-a0bd-537c-b5c6-6a2dc28433bc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1c4ec705-1681-576d-a41e-81667ed3ebfe', 1), 'ca42812fa8a548c9290dd3e70172dc683a86a0b0a2efcf34a93a1cb8e12e5a1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3', 1201, '2026-09-13 23:58:37.523159', '31a0dd053eeb841b7949739005e9bdb7596047b11e83ed7dd157bd7e0ed32693', 'validated', '{"audio_key":"2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624","entity_key":"lx_b2_seoul_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31a0dd053eeb841b7949739005e9bdb7596047b11e83ed7dd157bd7e0ed32693","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_03 -> audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bd8281f3-f747-59a2-b324-4f4726d9baa6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca42812fa8a548c9290dd3e70172dc683a86a0b0a2efcf34a93a1cb8e12e5a1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02a404a9-cc38-5c37-aad9-5710e2703154', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bd8281f3-f747-59a2-b324-4f4726d9baa6', 1), 'ca42812fa8a548c9290dd3e70172dc683a86a0b0a2efcf34a93a1cb8e12e5a1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3', 1201, '2026-09-13 23:58:37.523159', '31a0dd053eeb841b7949739005e9bdb7596047b11e83ed7dd157bd7e0ed32693', 'validated', '{"audio_key":"2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624","entity_key":"wf_b2_seoul_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31a0dd053eeb841b7949739005e9bdb7596047b11e83ed7dd157bd7e0ed32693","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2bbbf08716e47bbae7edc3885e4bb815af3646c419da3e79fd5c9f863fe5b624.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_05 -> audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4109c19a-0b9a-5563-9349-ebd2226559c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd05519a08807c875f5f7497fd87fa8753a1215bedeb8e1d9f3fcf1bf981c69b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('137035ef-726b-5c23-9230-697388c55fb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4109c19a-0b9a-5563-9349-ebd2226559c4', 1), 'cd05519a08807c875f5f7497fd87fa8753a1215bedeb8e1d9f3fcf1bf981c69b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3', 1201, '2026-09-13 23:58:37.559782', '1ca829d9d69d85e997946c7ccdadb33dd5ca1aa8b3bc1182de69539dfd7885ef', 'validated', '{"audio_key":"2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a","entity_key":"lx_register_and_social_distance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ca829d9d69d85e997946c7ccdadb33dd5ca1aa8b3bc1182de69539dfd7885ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_05 -> audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('41a5c4c2-410b-505a-aa08-f85d13ded24d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd05519a08807c875f5f7497fd87fa8753a1215bedeb8e1d9f3fcf1bf981c69b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abf72c66-4703-50c5-aacb-ae08d55d457f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('41a5c4c2-410b-505a-aa08-f85d13ded24d', 1), 'cd05519a08807c875f5f7497fd87fa8753a1215bedeb8e1d9f3fcf1bf981c69b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3', 1201, '2026-09-13 23:58:37.559782', '1ca829d9d69d85e997946c7ccdadb33dd5ca1aa8b3bc1182de69539dfd7885ef', 'validated', '{"audio_key":"2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a","entity_key":"wf_register_and_social_distance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ca829d9d69d85e997946c7ccdadb33dd5ca1aa8b3bc1182de69539dfd7885ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2d419c858b901d3b929d86cbe068ded1df32761e33c7d80490596f26c268c28a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_06 -> audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('646b8ec9-447f-5c61-9eaa-917a935a9a74', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee3ddfe5bea82960587b3f6a4f9fe34a744eaeca1cb5e61c06aa7f9b33ae3708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8939dce4-7d69-5781-925b-bde68abac6c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('646b8ec9-447f-5c61-9eaa-917a935a9a74', 1), 'ee3ddfe5bea82960587b3f6a4f9fe34a744eaeca1cb5e61c06aa7f9b33ae3708',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3', 1201, '2026-09-13 23:58:38.554827', 'df15a9704e9b30de56f20a38154303a06841de730d328d342d59e865fb60ba65', 'validated', '{"audio_key":"32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf","entity_key":"lx_process_and_responsibility_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df15a9704e9b30de56f20a38154303a06841de730d328d342d59e865fb60ba65","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_06 -> audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7d61aaa-2dfc-5087-804a-31ab6a4046fe', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee3ddfe5bea82960587b3f6a4f9fe34a744eaeca1cb5e61c06aa7f9b33ae3708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd8d6314-e8da-5ecf-804a-4b994bd8b329', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7d61aaa-2dfc-5087-804a-31ab6a4046fe', 1), 'ee3ddfe5bea82960587b3f6a4f9fe34a744eaeca1cb5e61c06aa7f9b33ae3708',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3', 1201, '2026-09-13 23:58:38.554827', 'df15a9704e9b30de56f20a38154303a06841de730d328d342d59e865fb60ba65', 'validated', '{"audio_key":"32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf","entity_key":"wf_process_and_responsibility_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df15a9704e9b30de56f20a38154303a06841de730d328d342d59e865fb60ba65","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/32d09773ee21f2591ca20835e4b082dc0bdeeed0a55a6327290ab0986e2838bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_01 -> audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92e8ec37-54b7-511e-a095-d21c9d96d62b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4b3cd46d567fb67886ab5c9f0fb423716a5a3a1d5c76985e8d96b312d52531a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c59f1669-29c6-5ed3-80d7-53aa819894b3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92e8ec37-54b7-511e-a095-d21c9d96d62b', 1), 'b4b3cd46d567fb67886ab5c9f0fb423716a5a3a1d5c76985e8d96b312d52531a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3', 862, '2026-09-13 23:58:38.578165', '11f48d24bbf145df5f6d998d7089e998517083544e451c4505a8c317ea481c28', 'validated', '{"audio_key":"369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa","entity_key":"lx_summarizing_and_mediation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11f48d24bbf145df5f6d998d7089e998517083544e451c4505a8c317ea481c28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_01 -> audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('624f5a9a-5edf-5bb2-a2e9-94c0f9a6d432', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4b3cd46d567fb67886ab5c9f0fb423716a5a3a1d5c76985e8d96b312d52531a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b4c4ebd-6921-5340-b3d9-da8c8f443504', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('624f5a9a-5edf-5bb2-a2e9-94c0f9a6d432', 1), 'b4b3cd46d567fb67886ab5c9f0fb423716a5a3a1d5c76985e8d96b312d52531a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3', 862, '2026-09-13 23:58:38.578165', '11f48d24bbf145df5f6d998d7089e998517083544e451c4505a8c317ea481c28', 'validated', '{"audio_key":"369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa","entity_key":"wf_summarizing_and_mediation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11f48d24bbf145df5f6d998d7089e998517083544e451c4505a8c317ea481c28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/369dfeb17db319462217c6f6224bdcd5e3970f6866cd60d2ca32f9d496c94aaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_01 -> audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eda107a6-9f53-55e2-938d-4dc30d223144', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7e17205-0e83-5a0a-943b-336881ae3094', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eda107a6-9f53-55e2-938d-4dc30d223144', 1), '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3', 1018, '2026-09-13 23:58:39.534858', '14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25', 'validated', '{"audio_key":"391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72","entity_key":"lx_process_and_responsibility_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_01 -> audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32abce29-448f-5a6e-baac-b2814ff5ea41', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2b70ce4-f3f9-5dce-aeca-7532adba7d38', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32abce29-448f-5a6e-baac-b2814ff5ea41', 1), '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3', 1018, '2026-09-13 23:58:39.534858', '14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25', 'validated', '{"audio_key":"391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72","entity_key":"wf_process_and_responsibility_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_02 -> audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ff41453b-7ebb-5169-a94b-dfa321d06115', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01a64adf7f1500650cfd1c9ee519488d9ab9b81cdac71e2d96df6a2537ad40bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4f1cc5a-a991-5ca3-a7d2-7d582a987b6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ff41453b-7ebb-5169-a94b-dfa321d06115', 1), '01a64adf7f1500650cfd1c9ee519488d9ab9b81cdac71e2d96df6a2537ad40bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3', 1097, '2026-09-13 23:58:39.572165', '918280cb512621a8c68d8e57b678ed7bdcd43d324a4ab0cf1d356044e66d5c9d', 'validated', '{"audio_key":"42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e","entity_key":"lx_source_comparison_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"918280cb512621a8c68d8e57b678ed7bdcd43d324a4ab0cf1d356044e66d5c9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_02 -> audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5bc923fe-b24f-587d-9aaf-f6d0501a5a44', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01a64adf7f1500650cfd1c9ee519488d9ab9b81cdac71e2d96df6a2537ad40bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8812316f-1e3e-5a88-9e42-c1e2dc7b16af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5bc923fe-b24f-587d-9aaf-f6d0501a5a44', 1), '01a64adf7f1500650cfd1c9ee519488d9ab9b81cdac71e2d96df6a2537ad40bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3', 1097, '2026-09-13 23:58:39.572165', '918280cb512621a8c68d8e57b678ed7bdcd43d324a4ab0cf1d356044e66d5c9d', 'validated', '{"audio_key":"42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e","entity_key":"wf_source_comparison_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"918280cb512621a8c68d8e57b678ed7bdcd43d324a4ab0cf1d356044e66d5c9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/42a26c80442ce29a997d8aba30133145944745d334d6f93542d35f7a6ccd126e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_03 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cbcbe20-622a-502b-8025-a0dea8d9b22a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"lx_concession_and_disagreement_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_03 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('65898816-8895-54aa-8813-f22a679786a4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bfd30c9-07e1-53c1-b927-f19f43395b18', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('65898816-8895-54aa-8813-f22a679786a4', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"wf_concession_and_disagreement_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_01 -> audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d8d80dda-4f8f-5078-8d5e-1fd5652dd2c9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a146bc1db8a47a35e28a0f0137b5ffeb3312507bdc9afed70389ca91315a593a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('347616dc-1bea-50d1-b8d9-468f9669353c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d8d80dda-4f8f-5078-8d5e-1fd5652dd2c9', 1), 'a146bc1db8a47a35e28a0f0137b5ffeb3312507bdc9afed70389ca91315a593a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3', 1097, '2026-09-13 23:58:40.567087', '86580850a446bbe9134e5274d7c5bc8284fdcb9ab0cca8a61fd2dd6775b81dde', 'validated', '{"audio_key":"449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5","entity_key":"lx_counterfactual_reflection_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86580850a446bbe9134e5274d7c5bc8284fdcb9ab0cca8a61fd2dd6775b81dde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_01 -> audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('59d9eacd-8ed2-50fc-989d-1f0960955c0d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a146bc1db8a47a35e28a0f0137b5ffeb3312507bdc9afed70389ca91315a593a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae04f32c-a348-5ccf-8c40-683da267213e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('59d9eacd-8ed2-50fc-989d-1f0960955c0d', 1), 'a146bc1db8a47a35e28a0f0137b5ffeb3312507bdc9afed70389ca91315a593a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3', 1097, '2026-09-13 23:58:40.567087', '86580850a446bbe9134e5274d7c5bc8284fdcb9ab0cca8a61fd2dd6775b81dde', 'validated', '{"audio_key":"449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5","entity_key":"wf_counterfactual_reflection_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86580850a446bbe9134e5274d7c5bc8284fdcb9ab0cca8a61fd2dd6775b81dde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/449ff94b03577a89a2dc82580471c55ff11ff0515c7909197d9d02571d848bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_03 -> audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f2aef378-e82c-567b-ac27-382897c4f92b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9591efee50ae8207d6a4f3cc2fe7130d1944dcc2822551ddbf8cfedc08a941f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f36ca72-c635-53d6-9ee6-b9b60e558283', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f2aef378-e82c-567b-ac27-382897c4f92b', 1), '9591efee50ae8207d6a4f3cc2fe7130d1944dcc2822551ddbf8cfedc08a941f1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3', 1018, '2026-09-13 23:58:41.572351', '8515a51ca36ef27e1bd00cace046f6042e0f2aa93bdd5ff849c87ed6db9cd42b', 'validated', '{"audio_key":"47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4","entity_key":"lx_evidence_and_inference_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8515a51ca36ef27e1bd00cace046f6042e0f2aa93bdd5ff849c87ed6db9cd42b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_03 -> audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aa83aa62-4b62-58c5-8354-fbf9d1ed25da', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9591efee50ae8207d6a4f3cc2fe7130d1944dcc2822551ddbf8cfedc08a941f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1470c87d-56e4-5fa7-a0ce-74468a359270', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aa83aa62-4b62-58c5-8354-fbf9d1ed25da', 1), '9591efee50ae8207d6a4f3cc2fe7130d1944dcc2822551ddbf8cfedc08a941f1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3', 1018, '2026-09-13 23:58:41.572351', '8515a51ca36ef27e1bd00cace046f6042e0f2aa93bdd5ff849c87ed6db9cd42b', 'validated', '{"audio_key":"47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4","entity_key":"wf_evidence_and_inference_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8515a51ca36ef27e1bd00cace046f6042e0f2aa93bdd5ff849c87ed6db9cd42b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/47d697b6df54a934bc9b809c9fd853e6f454ce0c9602ca2154b6266dd7edc8e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_03 -> audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1074090e-31d0-5a04-a7fe-eda387114ed0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16a11a99-43c1-5271-b248-3989c5cb7804', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1074090e-31d0-5a04-a7fe-eda387114ed0', 1), 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3', 966, '2026-09-13 23:58:41.535467', '4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02', 'validated', '{"audio_key":"4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a","entity_key":"lx_process_and_responsibility_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_03 -> audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('21d0bba0-6ee9-50c8-b2f4-e2624a2eb12c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daad57ca-daa9-53ff-b3a9-9210ba2116ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('21d0bba0-6ee9-50c8-b2f4-e2624a2eb12c', 1), 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3', 966, '2026-09-13 23:58:41.535467', '4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02', 'validated', '{"audio_key":"4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a","entity_key":"wf_process_and_responsibility_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_02 -> audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0c971ad0-a21e-5818-b060-d01d900134b2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae0b472e631ddef724071fd6dbc8c89351d9ed5e6536d7054e03a96a275b654c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5273066e-2d1c-5807-a345-08a9200c986d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0c971ad0-a21e-5818-b060-d01d900134b2', 1), 'ae0b472e631ddef724071fd6dbc8c89351d9ed5e6536d7054e03a96a275b654c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3', 966, '2026-09-13 23:58:42.574974', '38361791374fde931aa41366b1140755ff137fc250d73994ab78566759bf35bd', 'validated', '{"audio_key":"4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11","entity_key":"lx_process_and_responsibility_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38361791374fde931aa41366b1140755ff137fc250d73994ab78566759bf35bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_02 -> audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa21c95d-7f9d-5cf1-8d96-52d2540caf08', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae0b472e631ddef724071fd6dbc8c89351d9ed5e6536d7054e03a96a275b654c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d46cdf16-97fc-5c1b-bd7b-908ea5a1fc60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa21c95d-7f9d-5cf1-8d96-52d2540caf08', 1), 'ae0b472e631ddef724071fd6dbc8c89351d9ed5e6536d7054e03a96a275b654c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3', 966, '2026-09-13 23:58:42.574974', '38361791374fde931aa41366b1140755ff137fc250d73994ab78566759bf35bd', 'validated', '{"audio_key":"4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11","entity_key":"wf_process_and_responsibility_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38361791374fde931aa41366b1140755ff137fc250d73994ab78566759bf35bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4dc2a1cc145375a0df9cf3a5f2e4bccbf82cb553aef411f6552eb0a9a58c7b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_01 -> audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c2c515a-2611-5dd8-a303-de730d316ea9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46ec31ac83038c423d821402f366a4d251176054ce4533e8a9541f54f62c7f15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41d30cab-e069-5c6e-800e-10ce537c1d9a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c2c515a-2611-5dd8-a303-de730d316ea9', 1), '46ec31ac83038c423d821402f366a4d251176054ce4533e8a9541f54f62c7f15',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3', 1071, '2026-09-13 23:58:42.550134', 'd596cba65737e937d9e6aa5e99cbf19d4b7a7357747179a7934079e0f69747ad', 'validated', '{"audio_key":"4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a","entity_key":"lx_b2_seoul_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d596cba65737e937d9e6aa5e99cbf19d4b7a7357747179a7934079e0f69747ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_01 -> audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1fa682c5-8b89-5a89-8fd5-dc97d0793d20', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46ec31ac83038c423d821402f366a4d251176054ce4533e8a9541f54f62c7f15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56a0ce1a-4fe8-544b-a62f-3f31a4e241f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1fa682c5-8b89-5a89-8fd5-dc97d0793d20', 1), '46ec31ac83038c423d821402f366a4d251176054ce4533e8a9541f54f62c7f15',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3', 1071, '2026-09-13 23:58:42.550134', 'd596cba65737e937d9e6aa5e99cbf19d4b7a7357747179a7934079e0f69747ad', 'validated', '{"audio_key":"4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a","entity_key":"wf_b2_seoul_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d596cba65737e937d9e6aa5e99cbf19d4b7a7357747179a7934079e0f69747ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4f83c67af3f49310f1b410e98802b729f7c917e80edcd5a96244acad24bffa1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_02 -> audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aa89c1c0-2759-502e-99da-cd9c0120850e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba7bffee6411c7ee061886fd6ce129dfad838610d3e3d2dda4b13f8d14327fa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8650e9f9-a59a-51c2-895c-8127bad1afc5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aa89c1c0-2759-502e-99da-cd9c0120850e', 1), 'ba7bffee6411c7ee061886fd6ce129dfad838610d3e3d2dda4b13f8d14327fa1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3', 1149, '2026-09-13 23:58:43.522366', 'bd273e56a7be23e2c08ce7bc43a839612973a398a965693b02258a15cb8b31f6', 'validated', '{"audio_key":"576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e","entity_key":"lx_formal_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bd273e56a7be23e2c08ce7bc43a839612973a398a965693b02258a15cb8b31f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_02 -> audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('881fcc29-a815-5470-8ac6-44d9f69804ed', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba7bffee6411c7ee061886fd6ce129dfad838610d3e3d2dda4b13f8d14327fa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0714a032-c1f5-57c8-9dd6-34201b647b4f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('881fcc29-a815-5470-8ac6-44d9f69804ed', 1), 'ba7bffee6411c7ee061886fd6ce129dfad838610d3e3d2dda4b13f8d14327fa1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3', 1149, '2026-09-13 23:58:43.522366', 'bd273e56a7be23e2c08ce7bc43a839612973a398a965693b02258a15cb8b31f6', 'validated', '{"audio_key":"576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e","entity_key":"wf_formal_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bd273e56a7be23e2c08ce7bc43a839612973a398a965693b02258a15cb8b31f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/576ca432b64ae1aa195c2e3a88409ee41f78fbc66421bfff7414f29579083b6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_06 -> audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('59467c1e-50a5-5cb0-898a-b4614a8af9b6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be450cd050f63487281e93f8c13e9eb7c6024a52e26e6b511f1a40b7ce48b461'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6749d249-b4d6-5119-ab26-29f46ccefa48', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('59467c1e-50a5-5cb0-898a-b4614a8af9b6', 1), 'be450cd050f63487281e93f8c13e9eb7c6024a52e26e6b511f1a40b7ce48b461',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3', 1097, '2026-09-13 23:58:43.571249', '1cf37b6b711ee8a09ab1b7d946434eb0cd9a18ccf7368dc7c577f61cdac6f975', 'validated', '{"audio_key":"58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14","entity_key":"lx_nuanced_stance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cf37b6b711ee8a09ab1b7d946434eb0cd9a18ccf7368dc7c577f61cdac6f975","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_06 -> audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6477e788-607e-598b-a577-f5a47d7d9666', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be450cd050f63487281e93f8c13e9eb7c6024a52e26e6b511f1a40b7ce48b461'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bff5e00e-e5af-5cf6-b298-a520e9aac945', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6477e788-607e-598b-a577-f5a47d7d9666', 1), 'be450cd050f63487281e93f8c13e9eb7c6024a52e26e6b511f1a40b7ce48b461',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3', 1097, '2026-09-13 23:58:43.571249', '1cf37b6b711ee8a09ab1b7d946434eb0cd9a18ccf7368dc7c577f61cdac6f975', 'validated', '{"audio_key":"58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14","entity_key":"wf_nuanced_stance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cf37b6b711ee8a09ab1b7d946434eb0cd9a18ccf7368dc7c577f61cdac6f975","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/58c7c5f0518531b938b999c92fdf639c87859f1a2fe0974640361f6cb4d1fb14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_06 -> audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dd45ea1e-06af-5431-9c97-7bd756a34f40', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34776c1c-1e22-54f4-9b34-118f208e1c87', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dd45ea1e-06af-5431-9c97-7bd756a34f40', 1), '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3', 1097, '2026-09-13 22:59:58.646676', '183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869', 'validated', '{"audio_key":"5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e","entity_key":"lx_register_and_social_distance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_06 -> audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d076013-37cf-5620-ba99-9a0c416ba1d6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f7377d5-2880-53cb-95b7-1edba029927d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d076013-37cf-5620-ba99-9a0c416ba1d6', 1), '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3', 1097, '2026-09-13 22:59:58.646676', '183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869', 'validated', '{"audio_key":"5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e","entity_key":"wf_register_and_social_distance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_01 -> audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73055f10-f059-5916-a889-2813d1538961', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc7be34a-9bf3-5f5c-bdde-9fce7eab092d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73055f10-f059-5916-a889-2813d1538961', 1), '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3', 1018, '2026-09-13 22:59:58.704812', '59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64', 'validated', '{"audio_key":"5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57","entity_key":"lx_formal_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_01 -> audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb523678-87b8-5d7c-922c-906d29b7774e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11558c24-5400-51ab-852f-f1ab5ff5d439', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb523678-87b8-5d7c-922c-906d29b7774e', 1), '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3', 1018, '2026-09-13 22:59:58.704812', '59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64', 'validated', '{"audio_key":"5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57","entity_key":"wf_formal_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_01 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bbdce8b-ee72-5c78-991b-50e57d476e37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"lx_source_comparison_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_01 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00d566ae-ea2c-560e-a02d-b47068196710', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a29266d5-37f7-5d90-83a5-aa728fc99db6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00d566ae-ea2c-560e-a02d-b47068196710', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"wf_source_comparison_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_04 -> audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e2dc792-580e-5238-8d0a-0b3159ee3c5d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91f7f1a47f7bae933a3af4c73ffb2339126de0d4d2c950f82d026db56ceaa70b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f245fb1d-a539-5f34-bd9e-dbf749b06cce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e2dc792-580e-5238-8d0a-0b3159ee3c5d', 1), '91f7f1a47f7bae933a3af4c73ffb2339126de0d4d2c950f82d026db56ceaa70b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3', 914, '2026-09-13 23:58:44.543685', '8f105eae3918e780ebd22f94ad32e7f8185e2401fb486904bee98c4ea1ab4770', 'validated', '{"audio_key":"674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a","entity_key":"lx_concession_and_disagreement_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8f105eae3918e780ebd22f94ad32e7f8185e2401fb486904bee98c4ea1ab4770","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_04 -> audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d595de3-fcfb-5077-b888-2c14e772f504', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91f7f1a47f7bae933a3af4c73ffb2339126de0d4d2c950f82d026db56ceaa70b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53823109-eaa2-552d-b9af-8334cfe54522', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d595de3-fcfb-5077-b888-2c14e772f504', 1), '91f7f1a47f7bae933a3af4c73ffb2339126de0d4d2c950f82d026db56ceaa70b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3', 914, '2026-09-13 23:58:44.543685', '8f105eae3918e780ebd22f94ad32e7f8185e2401fb486904bee98c4ea1ab4770', 'validated', '{"audio_key":"674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a","entity_key":"wf_concession_and_disagreement_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8f105eae3918e780ebd22f94ad32e7f8185e2401fb486904bee98c4ea1ab4770","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/674a7ee71abdaf1238dfc7447dcda7dc88f716ba432d84d7a570666f88c75d8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_06 -> audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82c201a5-a432-5f5a-914e-6d3d95501a98', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a21126b92e8cb846b96926cbb9ae123410e76a22ff29c88b217a68372c75dc9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e915d6fc-e25c-5266-88cf-cf9e649d95cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82c201a5-a432-5f5a-914e-6d3d95501a98', 1), 'a21126b92e8cb846b96926cbb9ae123410e76a22ff29c88b217a68372c75dc9b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3', 1253, '2026-09-13 23:58:44.620122', '9d3bd4aefa377aa7d299cf13e40b2c81c3d9057ddc14d8897bc8bc9f4d156d5f', 'validated', '{"audio_key":"6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b","entity_key":"lx_summarizing_and_mediation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d3bd4aefa377aa7d299cf13e40b2c81c3d9057ddc14d8897bc8bc9f4d156d5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_06 -> audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('228d2602-dc5b-5239-b742-6b7beb907242', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a21126b92e8cb846b96926cbb9ae123410e76a22ff29c88b217a68372c75dc9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('527dbf09-88cc-5495-9d08-635c9b98c067', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('228d2602-dc5b-5239-b742-6b7beb907242', 1), 'a21126b92e8cb846b96926cbb9ae123410e76a22ff29c88b217a68372c75dc9b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3', 1253, '2026-09-13 23:58:44.620122', '9d3bd4aefa377aa7d299cf13e40b2c81c3d9057ddc14d8897bc8bc9f4d156d5f', 'validated', '{"audio_key":"6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b","entity_key":"wf_summarizing_and_mediation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d3bd4aefa377aa7d299cf13e40b2c81c3d9057ddc14d8897bc8bc9f4d156d5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b86b99a0e1afd12bcf1e0685d2708a6d198182e609cf2d1043cc810fa40ca0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_06 -> audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8d1b1e6-b71e-53e2-b591-3dbf2794db90', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83d5e68b51bfed5c4a0af05ce1349488fa47c8a84a7c6a42f72516b4ff917605'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6e8cce0-3c3e-5086-8131-041fb37ea138', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8d1b1e6-b71e-53e2-b591-3dbf2794db90', 1), '83d5e68b51bfed5c4a0af05ce1349488fa47c8a84a7c6a42f72516b4ff917605',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3', 1280, '2026-09-13 23:58:45.540145', 'ea0a6d2f03a5005df2f3f2fee7781f45e0aaa3596d7b69290453fdb33a09b1fc', 'validated', '{"audio_key":"762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a","entity_key":"lx_counterfactual_reflection_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ea0a6d2f03a5005df2f3f2fee7781f45e0aaa3596d7b69290453fdb33a09b1fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_06 -> audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3673ea03-4b15-596d-ab89-c7f18c9e9ee5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83d5e68b51bfed5c4a0af05ce1349488fa47c8a84a7c6a42f72516b4ff917605'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e078d28-9b28-5cd6-b95c-60a785c9c489', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3673ea03-4b15-596d-ab89-c7f18c9e9ee5', 1), '83d5e68b51bfed5c4a0af05ce1349488fa47c8a84a7c6a42f72516b4ff917605',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3', 1280, '2026-09-13 23:58:45.540145', 'ea0a6d2f03a5005df2f3f2fee7781f45e0aaa3596d7b69290453fdb33a09b1fc', 'validated', '{"audio_key":"762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a","entity_key":"wf_counterfactual_reflection_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ea0a6d2f03a5005df2f3f2fee7781f45e0aaa3596d7b69290453fdb33a09b1fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/762f8492fb3ad124b66d46351866e48325c729c9d754e4dfc74d1f56b845fc3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_02 -> audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d352903e-28e3-56a2-9228-f279ed82d44f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b56fa54-7318-511f-ac16-b6760e397fbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d352903e-28e3-56a2-9228-f279ed82d44f', 1), '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3', 966, '2026-09-13 23:00:03.026903', '72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823', 'validated', '{"audio_key":"76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e","entity_key":"lx_counterfactual_reflection_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_02 -> audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4ada3ca2-4d08-50d8-8e2f-f458a142e599', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8978e35a-1b66-5360-a83c-36aa2eb99bca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4ada3ca2-4d08-50d8-8e2f-f458a142e599', 1), '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3', 966, '2026-09-13 23:00:03.026903', '72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823', 'validated', '{"audio_key":"76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e","entity_key":"wf_counterfactual_reflection_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_05 -> audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1024635c-bbe6-55fc-9621-f8124c7e02b0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5518dc49fcb84589609e0587db097792e76386aab0c51881b748cd61e332e7bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60834028-8c68-5845-b4c4-acc0c449aee0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1024635c-bbe6-55fc-9621-f8124c7e02b0', 1), '5518dc49fcb84589609e0587db097792e76386aab0c51881b748cd61e332e7bd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3', 1149, '2026-09-13 23:58:45.609533', 'd040463c6924eec44cfa7fd7d59babfae47d034ffb3489c79e9c9ed8ba2c8b07', 'validated', '{"audio_key":"88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070","entity_key":"lx_nuanced_stance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d040463c6924eec44cfa7fd7d59babfae47d034ffb3489c79e9c9ed8ba2c8b07","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_05 -> audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5cee951f-0b61-5fbc-aeb8-928016291c51', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5518dc49fcb84589609e0587db097792e76386aab0c51881b748cd61e332e7bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58e5d371-69bb-5810-84da-396d462b6ffd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5cee951f-0b61-5fbc-aeb8-928016291c51', 1), '5518dc49fcb84589609e0587db097792e76386aab0c51881b748cd61e332e7bd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3', 1149, '2026-09-13 23:58:45.609533', 'd040463c6924eec44cfa7fd7d59babfae47d034ffb3489c79e9c9ed8ba2c8b07', 'validated', '{"audio_key":"88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070","entity_key":"wf_nuanced_stance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d040463c6924eec44cfa7fd7d59babfae47d034ffb3489c79e9c9ed8ba2c8b07","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88bb2d4d75daf4dc15504b3bd65af1ae3c87b78c6f8796e9cf396e095f17e070.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_05 -> audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1cb056b-c81c-5809-9425-a9b3621f0f22', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a114acdd602f63e77165e61feaeef5ab46dd9774f7b853477019cb60e1b0738c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c0ddd65-cbfc-5338-8c2b-d01791cdaa86', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1cb056b-c81c-5809-9425-a9b3621f0f22', 1), 'a114acdd602f63e77165e61feaeef5ab46dd9774f7b853477019cb60e1b0738c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3', 1201, '2026-09-13 23:58:46.545777', '21080b08b86c327204570bd66af896e89c7350a7bde937361e83d245a1fe07e2', 'validated', '{"audio_key":"8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e","entity_key":"lx_source_comparison_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21080b08b86c327204570bd66af896e89c7350a7bde937361e83d245a1fe07e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_05 -> audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('714b65c9-10d2-5598-ba18-1b519ced1a75', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a114acdd602f63e77165e61feaeef5ab46dd9774f7b853477019cb60e1b0738c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd817626-2082-5526-9878-fd417eb19a9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('714b65c9-10d2-5598-ba18-1b519ced1a75', 1), 'a114acdd602f63e77165e61feaeef5ab46dd9774f7b853477019cb60e1b0738c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3', 1201, '2026-09-13 23:58:46.545777', '21080b08b86c327204570bd66af896e89c7350a7bde937361e83d245a1fe07e2', 'validated', '{"audio_key":"8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e","entity_key":"wf_source_comparison_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21080b08b86c327204570bd66af896e89c7350a7bde937361e83d245a1fe07e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8bff79bc0c0deaeb8a7df8b56a50f9475b9ac0deeb46d0ff083728ca1227273e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_03 -> audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('639771f2-99d9-5657-853b-ba525017b2c8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c841042a-b9e9-5b96-a650-5cfcc75f5570', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('639771f2-99d9-5657-853b-ba525017b2c8', 1), '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3', 1071, '2026-09-13 23:00:06.219872', 'c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c', 'validated', '{"audio_key":"8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f","entity_key":"lx_counterfactual_reflection_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_03 -> audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b53e46eb-bafc-5691-8a12-7ff039634d52', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ebd7542-6c4b-5c71-a695-57b5d0361bbf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b53e46eb-bafc-5691-8a12-7ff039634d52', 1), '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3', 1071, '2026-09-13 23:00:06.219872', 'c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c', 'validated', '{"audio_key":"8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f","entity_key":"wf_counterfactual_reflection_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_05 -> audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd9069e9-c7a3-5dbe-8b59-c9f3b20b7ffd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6ebc38b-fc1e-56ed-91f4-21ffdcf5f94c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd9069e9-c7a3-5dbe-8b59-c9f3b20b7ffd', 1), 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3', 1280, '2026-09-13 23:58:46.597922', '183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6', 'validated', '{"audio_key":"8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b","entity_key":"lx_summarizing_and_mediation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_05 -> audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc394548-28a4-5be6-84d9-15f87159f510', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('125fb7e6-d358-548e-9003-78e927af2033', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc394548-28a4-5be6-84d9-15f87159f510', 1), 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3', 1280, '2026-09-13 23:58:46.597922', '183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6', 'validated', '{"audio_key":"8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b","entity_key":"wf_summarizing_and_mediation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_05 -> audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c378d12-158b-5e35-bfe2-180a0e911f46', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094159cf7cfb899d3245d3e95bb5e0671d9be4cc266d6674f82a18b04e9afad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f52cd68-d731-57c6-ba56-6f8f88576122', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c378d12-158b-5e35-bfe2-180a0e911f46', 1), '094159cf7cfb899d3245d3e95bb5e0671d9be4cc266d6674f82a18b04e9afad7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3', 1201, '2026-09-13 23:58:47.530959', '2fbbbb954b81738028def780c138355bbe5b11bbbedbda965388f0c302344e72', 'validated', '{"audio_key":"902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770","entity_key":"lx_b2_seoul_forum_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2fbbbb954b81738028def780c138355bbe5b11bbbedbda965388f0c302344e72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_05 -> audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2330931a-dcc9-5ab9-8153-578d739ccab4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094159cf7cfb899d3245d3e95bb5e0671d9be4cc266d6674f82a18b04e9afad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfb94219-86b5-50cc-850e-0c68eee61b77', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2330931a-dcc9-5ab9-8153-578d739ccab4', 1), '094159cf7cfb899d3245d3e95bb5e0671d9be4cc266d6674f82a18b04e9afad7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3', 1201, '2026-09-13 23:58:47.530959', '2fbbbb954b81738028def780c138355bbe5b11bbbedbda965388f0c302344e72', 'validated', '{"audio_key":"902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770","entity_key":"wf_b2_seoul_forum_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2fbbbb954b81738028def780c138355bbe5b11bbbedbda965388f0c302344e72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/902082d60837e114913910b5a6b5bf13450e41c0efced12fc9c901209b691770.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_05 -> audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d11fc53-2026-5229-b605-92193eb43ee9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '690f52550f5e93ca5f2c491bd887c038a2ca5e4389e5b9f953dd34b572968da6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8f836ed-5208-5f21-ac28-a13e170a0bdd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d11fc53-2026-5229-b605-92193eb43ee9', 1), '690f52550f5e93ca5f2c491bd887c038a2ca5e4389e5b9f953dd34b572968da6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3', 1097, '2026-09-13 23:58:47.585161', '149fbf60e500b4dcff21ab5a82a4f9bbd868cb54a767c87fa915edeabcf13d29', 'validated', '{"audio_key":"9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd","entity_key":"lx_evidence_and_inference_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"149fbf60e500b4dcff21ab5a82a4f9bbd868cb54a767c87fa915edeabcf13d29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_05 -> audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a046be3e-9533-5119-a1cc-93f1bfe3ab1c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '690f52550f5e93ca5f2c491bd887c038a2ca5e4389e5b9f953dd34b572968da6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6f470c5-f4c6-583d-85e3-d914c8a731b7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a046be3e-9533-5119-a1cc-93f1bfe3ab1c', 1), '690f52550f5e93ca5f2c491bd887c038a2ca5e4389e5b9f953dd34b572968da6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3', 1097, '2026-09-13 23:58:47.585161', '149fbf60e500b4dcff21ab5a82a4f9bbd868cb54a767c87fa915edeabcf13d29', 'validated', '{"audio_key":"9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd","entity_key":"wf_evidence_and_inference_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"149fbf60e500b4dcff21ab5a82a4f9bbd868cb54a767c87fa915edeabcf13d29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9283ba44159c742899ddc142a7bee82cc54fff7e188549faaf128ec2e9dae7cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_03 -> audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5887f91-9dfa-53fb-a2c8-8b02cfc75851', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b41caa49fef042da7ee9cbd98cb70f614426f2568ac1b70c2e2de98a5bc64e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47f6d967-9b73-5b13-8af0-426a1cebd3b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5887f91-9dfa-53fb-a2c8-8b02cfc75851', 1), '8b41caa49fef042da7ee9cbd98cb70f614426f2568ac1b70c2e2de98a5bc64e9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3', 1018, '2026-09-13 23:58:48.510543', 'f6e94cb98688500992a971af323d48366addfa0b1d04b974630fd7122b1df20a', 'validated', '{"audio_key":"9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942","entity_key":"lx_summarizing_and_mediation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f6e94cb98688500992a971af323d48366addfa0b1d04b974630fd7122b1df20a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_03 -> audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ac890050-ebf0-5b8c-9651-e1f1d89d54f6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b41caa49fef042da7ee9cbd98cb70f614426f2568ac1b70c2e2de98a5bc64e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7faedb6-e8cf-5c5e-9b9c-ee8ec1519b56', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ac890050-ebf0-5b8c-9651-e1f1d89d54f6', 1), '8b41caa49fef042da7ee9cbd98cb70f614426f2568ac1b70c2e2de98a5bc64e9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3', 1018, '2026-09-13 23:58:48.510543', 'f6e94cb98688500992a971af323d48366addfa0b1d04b974630fd7122b1df20a', 'validated', '{"audio_key":"9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942","entity_key":"wf_summarizing_and_mediation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f6e94cb98688500992a971af323d48366addfa0b1d04b974630fd7122b1df20a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9444853a89e38acfebfa804b0aee6755090e477cbb29c4fac1372f9824b54942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_06 -> audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f473819c-3819-5332-a0db-adaa4aa9e5d0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5416a63b867d95b7312211a92b4465381bb1bfab0a403e492dde1c8d34662be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65c5e376-3f38-5132-ab7c-03882cb71f4b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f473819c-3819-5332-a0db-adaa4aa9e5d0', 1), 'b5416a63b867d95b7312211a92b4465381bb1bfab0a403e492dde1c8d34662be',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3', 1149, '2026-09-13 23:58:48.584339', '0ed875d1e8ac9e26b5f9a45246d0ded7f64a834d68abccc257cd98cc89a453f6', 'validated', '{"audio_key":"9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0","entity_key":"lx_evidence_and_inference_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ed875d1e8ac9e26b5f9a45246d0ded7f64a834d68abccc257cd98cc89a453f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_06 -> audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('34a20d63-b03d-591b-81ea-9326432b163f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5416a63b867d95b7312211a92b4465381bb1bfab0a403e492dde1c8d34662be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9811dd7d-4414-54aa-831d-350a67a9d9c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('34a20d63-b03d-591b-81ea-9326432b163f', 1), 'b5416a63b867d95b7312211a92b4465381bb1bfab0a403e492dde1c8d34662be',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3', 1149, '2026-09-13 23:58:48.584339', '0ed875d1e8ac9e26b5f9a45246d0ded7f64a834d68abccc257cd98cc89a453f6', 'validated', '{"audio_key":"9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0","entity_key":"wf_evidence_and_inference_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ed875d1e8ac9e26b5f9a45246d0ded7f64a834d68abccc257cd98cc89a453f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9eb7c522e5f75bb5836bc57b12ebcc98a8eda535267fbdbe19d3282c0791d8a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_02 -> audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db328108-61bf-5678-ac3d-d6b8982cf3b5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72e4ffcdcf0c1dabe2c50c674410a77d3084fce7f7ba7b171ba8c2580e689e5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5265898-233c-56e9-8b1e-4218c43317a7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db328108-61bf-5678-ac3d-d6b8982cf3b5', 1), '72e4ffcdcf0c1dabe2c50c674410a77d3084fce7f7ba7b171ba8c2580e689e5f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3', 1018, '2026-09-13 23:58:49.496922', 'ddf4282add21c05d0ea3145357307a294ce0e2214484bc3e01e13f94eabef2c8', 'validated', '{"audio_key":"a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165","entity_key":"lx_nuanced_stance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ddf4282add21c05d0ea3145357307a294ce0e2214484bc3e01e13f94eabef2c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_02 -> audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b458a763-e48b-5dbd-b32b-507fbfdfefe8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72e4ffcdcf0c1dabe2c50c674410a77d3084fce7f7ba7b171ba8c2580e689e5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b8905cd-703e-52fa-8d00-2bf2e0c0b53f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b458a763-e48b-5dbd-b32b-507fbfdfefe8', 1), '72e4ffcdcf0c1dabe2c50c674410a77d3084fce7f7ba7b171ba8c2580e689e5f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3', 1018, '2026-09-13 23:58:49.496922', 'ddf4282add21c05d0ea3145357307a294ce0e2214484bc3e01e13f94eabef2c8', 'validated', '{"audio_key":"a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165","entity_key":"wf_nuanced_stance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ddf4282add21c05d0ea3145357307a294ce0e2214484bc3e01e13f94eabef2c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0d06a139aa4d9bc8b5c91d6311c2cd8a99f63538851882e117a729026dd2165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_01 -> audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('887581b1-3470-56d1-97d7-808722711773', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313416dc1509fceb95fd454e99c5c056b66e5a5902991d20776d35dd44e700b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('242108cc-0d90-55eb-a3d2-783671b708ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('887581b1-3470-56d1-97d7-808722711773', 1), '313416dc1509fceb95fd454e99c5c056b66e5a5902991d20776d35dd44e700b6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3', 966, '2026-09-13 23:58:49.647175', '596bfa77af2a9760870fdc3d333023c64c4aa1b0b8723a587e64dcc9d09ae83f', 'validated', '{"audio_key":"a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5","entity_key":"lx_nuanced_stance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"596bfa77af2a9760870fdc3d333023c64c4aa1b0b8723a587e64dcc9d09ae83f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_01 -> audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bc803cbb-ec0f-599c-a9b3-7a5d62c1543a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313416dc1509fceb95fd454e99c5c056b66e5a5902991d20776d35dd44e700b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8887f018-1df7-52ea-a96b-3af9e22d8f4d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bc803cbb-ec0f-599c-a9b3-7a5d62c1543a', 1), '313416dc1509fceb95fd454e99c5c056b66e5a5902991d20776d35dd44e700b6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3', 966, '2026-09-13 23:58:49.647175', '596bfa77af2a9760870fdc3d333023c64c4aa1b0b8723a587e64dcc9d09ae83f', 'validated', '{"audio_key":"a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5","entity_key":"wf_nuanced_stance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"596bfa77af2a9760870fdc3d333023c64c4aa1b0b8723a587e64dcc9d09ae83f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a1dfcd649e148619d76564b9008ef2d2178ea769535ef9a0f4445d4a5bb9a8e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_02 -> audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('025a2b77-1c7d-5aec-946b-540afb53cef7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfcf5c2d-9b37-5da5-b6c9-b81cb256dcd9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('025a2b77-1c7d-5aec-946b-540afb53cef7', 1), '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3', 1071, '2026-09-13 23:58:50.496634', 'b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c', 'validated', '{"audio_key":"a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75","entity_key":"lx_register_and_social_distance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_02 -> audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d53351b0-2c2c-5046-b439-f521748ad687', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e02922cb-5b7d-5079-a015-338caf5c50ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d53351b0-2c2c-5046-b439-f521748ad687', 1), '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3', 1071, '2026-09-13 23:58:50.496634', 'b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c', 'validated', '{"audio_key":"a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75","entity_key":"wf_register_and_social_distance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_inference_02 -> audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb397b74-348a-55ba-b959-c000f6ba47de', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_inference_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20a68ba59bfb0aedc92ef1a46d7f8433ae4e98fbfd52762a3b75ab49e14e677b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29260a2e-4d6a-53db-9420-c51bf3e44102', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb397b74-348a-55ba-b959-c000f6ba47de', 1), '20a68ba59bfb0aedc92ef1a46d7f8433ae4e98fbfd52762a3b75ab49e14e677b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3', 1018, '2026-09-13 23:58:50.636059', 'df8bdd0cd050ad4a3f729b5177d18cfffe852ecd48bd6ed071ac8918e6e9efe8', 'validated', '{"audio_key":"b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a","entity_key":"lx_evidence_and_inference_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df8bdd0cd050ad4a3f729b5177d18cfffe852ecd48bd6ed071ac8918e6e9efe8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_inference_02 -> audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3c240c1b-f3df-55ce-bf1a-52e6cb9a1a6e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_inference_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20a68ba59bfb0aedc92ef1a46d7f8433ae4e98fbfd52762a3b75ab49e14e677b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee933d8d-42a6-5c3d-b9b4-ab00fc4a2449', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3c240c1b-f3df-55ce-bf1a-52e6cb9a1a6e', 1), '20a68ba59bfb0aedc92ef1a46d7f8433ae4e98fbfd52762a3b75ab49e14e677b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3', 1018, '2026-09-13 23:58:50.636059', 'df8bdd0cd050ad4a3f729b5177d18cfffe852ecd48bd6ed071ac8918e6e9efe8', 'validated', '{"audio_key":"b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a","entity_key":"wf_evidence_and_inference_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df8bdd0cd050ad4a3f729b5177d18cfffe852ecd48bd6ed071ac8918e6e9efe8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b133f9302c668800eae5ff2eb67c0fc6ae373beedfd78e0a9de01f314ff0736a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_04 -> audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('99008e7e-769f-590f-af1b-876dc49cb13c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b53a03fb69e532df421fc6064463248da9b9b8e38515939fc1313a0c6ac7d93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0ec73e8-dd4a-54a1-9a66-80b843699032', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('99008e7e-769f-590f-af1b-876dc49cb13c', 1), '7b53a03fb69e532df421fc6064463248da9b9b8e38515939fc1313a0c6ac7d93',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3', 1253, '2026-09-13 23:58:51.508811', 'c9563ae94bf7048a3cf8b63900c18df0e1c06796b67e3ce7449528f80a44f251', 'validated', '{"audio_key":"b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7","entity_key":"lx_summarizing_and_mediation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c9563ae94bf7048a3cf8b63900c18df0e1c06796b67e3ce7449528f80a44f251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_04 -> audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3cd2ebeb-8e76-5969-9973-21b1ad4c8086', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b53a03fb69e532df421fc6064463248da9b9b8e38515939fc1313a0c6ac7d93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('156e5358-9c1a-514a-9995-da7c2cbb3bf0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3cd2ebeb-8e76-5969-9973-21b1ad4c8086', 1), '7b53a03fb69e532df421fc6064463248da9b9b8e38515939fc1313a0c6ac7d93',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3', 1253, '2026-09-13 23:58:51.508811', 'c9563ae94bf7048a3cf8b63900c18df0e1c06796b67e3ce7449528f80a44f251', 'validated', '{"audio_key":"b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7","entity_key":"wf_summarizing_and_mediation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c9563ae94bf7048a3cf8b63900c18df0e1c06796b67e3ce7449528f80a44f251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b2fc1b03af19bc63c6cc0f0aceb5d0fa1b665d85858b321ba5f261fa300849a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_and_responsibility_05 -> audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57055159-797f-5adb-9546-7c0f8ccc1edc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_and_responsibility_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c450a96f491c1b8d2e1801f7560b5da475d727fe4d4cc3d7b83e307611aa9e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77a55fb5-083e-5b26-a486-4a446f90d8a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57055159-797f-5adb-9546-7c0f8ccc1edc', 1), '9c450a96f491c1b8d2e1801f7560b5da475d727fe4d4cc3d7b83e307611aa9e8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3', 1149, '2026-09-13 23:58:51.622064', '32e355245c7dea24f2e45d89628b44e83624e6adc7cc51745ffbc64ed97a25f0', 'validated', '{"audio_key":"b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96","entity_key":"lx_process_and_responsibility_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32e355245c7dea24f2e45d89628b44e83624e6adc7cc51745ffbc64ed97a25f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_and_responsibility_05 -> audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('419c9816-ee96-5971-a00d-596d4766bab6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_and_responsibility_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c450a96f491c1b8d2e1801f7560b5da475d727fe4d4cc3d7b83e307611aa9e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08d7a674-ec88-58b0-bf1f-508b72265d88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('419c9816-ee96-5971-a00d-596d4766bab6', 1), '9c450a96f491c1b8d2e1801f7560b5da475d727fe4d4cc3d7b83e307611aa9e8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3', 1149, '2026-09-13 23:58:51.622064', '32e355245c7dea24f2e45d89628b44e83624e6adc7cc51745ffbc64ed97a25f0', 'validated', '{"audio_key":"b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96","entity_key":"wf_process_and_responsibility_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32e355245c7dea24f2e45d89628b44e83624e6adc7cc51745ffbc64ed97a25f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b3955b975dceeb597803faaa8a96c887a7ff02b1c28a316e2a4425eaf0d91b96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_04 -> audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c51ab928-e430-5d19-8f96-9bc42ec93855', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('122f3dab-da86-5cd5-ab1c-05f4eb4dbb8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c51ab928-e430-5d19-8f96-9bc42ec93855', 1), '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3', 914, '2026-09-13 23:58:52.487673', '408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf', 'validated', '{"audio_key":"b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33","entity_key":"lx_formal_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_04 -> audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c830653b-72c9-52ca-b9ac-d9180d0219b8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a6e20c8-053c-5981-bab6-32d11b3b8b26', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c830653b-72c9-52ca-b9ac-d9180d0219b8', 1), '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3', 914, '2026-09-13 23:58:52.487673', '408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf', 'validated', '{"audio_key":"b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33","entity_key":"wf_formal_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_02 -> audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('809584c9-f953-54db-97f4-03e74fc5c83a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ab69550623afc4f97d6e5b336625f2453acd6259c7540831746f948080b090e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4feaf52-cbd5-5808-b676-22531cecae38', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('809584c9-f953-54db-97f4-03e74fc5c83a', 1), '4ab69550623afc4f97d6e5b336625f2453acd6259c7540831746f948080b090e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3', 1097, '2026-09-13 23:58:52.618087', 'a38ca911f433d5d407ad845538bf54a5021bf54c9fbd169c6f203642aaa5b5d9', 'validated', '{"audio_key":"b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba","entity_key":"lx_concession_and_disagreement_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a38ca911f433d5d407ad845538bf54a5021bf54c9fbd169c6f203642aaa5b5d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_02 -> audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f9b5d282-9623-54f7-bc2d-89a39daeeee2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ab69550623afc4f97d6e5b336625f2453acd6259c7540831746f948080b090e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36f91544-80e9-5ad3-a3e5-170380941610', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f9b5d282-9623-54f7-bc2d-89a39daeeee2', 1), '4ab69550623afc4f97d6e5b336625f2453acd6259c7540831746f948080b090e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3', 1097, '2026-09-13 23:58:52.618087', 'a38ca911f433d5d407ad845538bf54a5021bf54c9fbd169c6f203642aaa5b5d9', 'validated', '{"audio_key":"b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba","entity_key":"wf_concession_and_disagreement_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a38ca911f433d5d407ad845538bf54a5021bf54c9fbd169c6f203642aaa5b5d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b91e07da623f9c9903c620354cb5fcc8725b803b826de20677f67e9a00172cba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_social_distance_01 -> audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15985a89-fa5d-538a-9934-e7cca246af2a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_social_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20ccac42590056d649aa446755871272702a9a153f7364d7fcd2f8ff8aa539e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac9180fb-70ff-52c1-897b-61488d446f55', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15985a89-fa5d-538a-9934-e7cca246af2a', 1), '20ccac42590056d649aa446755871272702a9a153f7364d7fcd2f8ff8aa539e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3', 1071, '2026-09-13 23:58:53.488633', '9c7cfbd1356b1371410d4c286899cefb0ded41b7731a1e7f5b4a54786ee28b66', 'validated', '{"audio_key":"ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7","entity_key":"lx_register_and_social_distance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9c7cfbd1356b1371410d4c286899cefb0ded41b7731a1e7f5b4a54786ee28b66","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_social_distance_01 -> audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d25c499f-51e3-5687-b367-9d062e9b5af6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_social_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20ccac42590056d649aa446755871272702a9a153f7364d7fcd2f8ff8aa539e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24674fd3-e7d6-56df-aca3-e3751a8c08ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d25c499f-51e3-5687-b367-9d062e9b5af6', 1), '20ccac42590056d649aa446755871272702a9a153f7364d7fcd2f8ff8aa539e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3', 1071, '2026-09-13 23:58:53.488633', '9c7cfbd1356b1371410d4c286899cefb0ded41b7731a1e7f5b4a54786ee28b66', 'validated', '{"audio_key":"ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7","entity_key":"wf_register_and_social_distance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9c7cfbd1356b1371410d4c286899cefb0ded41b7731a1e7f5b4a54786ee28b66","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba2ff71d1d66f6d9fac70e78f037b51724e75b638ea84fa100238302cf7a78d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_06 -> audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c35d35a-de2c-5c68-85f3-150ea6042eeb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6879f7dae4dd26a4e1401fa20150cb87ae7f61715d30f8aca6920057cf6b6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80bf3a19-532b-5d4e-b3f2-92d9c2e42433', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c35d35a-de2c-5c68-85f3-150ea6042eeb', 1), '1c6879f7dae4dd26a4e1401fa20150cb87ae7f61715d30f8aca6920057cf6b6e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3', 1071, '2026-09-13 23:58:53.598725', 'd22d712a939b913dea9f2d87c36af3b57744c75d9126efb475173725cf996cd6', 'validated', '{"audio_key":"bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729","entity_key":"lx_concession_and_disagreement_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d22d712a939b913dea9f2d87c36af3b57744c75d9126efb475173725cf996cd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_06 -> audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ee9cd0b-fbf6-58e2-9f68-3e421906f13c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6879f7dae4dd26a4e1401fa20150cb87ae7f61715d30f8aca6920057cf6b6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73f5129b-56b2-5f31-867f-0424134f2531', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ee9cd0b-fbf6-58e2-9f68-3e421906f13c', 1), '1c6879f7dae4dd26a4e1401fa20150cb87ae7f61715d30f8aca6920057cf6b6e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3', 1071, '2026-09-13 23:58:53.598725', 'd22d712a939b913dea9f2d87c36af3b57744c75d9126efb475173725cf996cd6', 'validated', '{"audio_key":"bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729","entity_key":"wf_concession_and_disagreement_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d22d712a939b913dea9f2d87c36af3b57744c75d9126efb475173725cf996cd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bdf0479c08e0692883cce4511b7f62e0b587374b8675b1da16d366cdab88e729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_05 -> audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('374b8933-1257-5bad-8d42-8be4d774c1b5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8d9929edb24477e12225b0f8e2437004041f9c8a41004fc954182f8d9e19382'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e9b246e-f5a8-5545-876a-a05b3f7f2f65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('374b8933-1257-5bad-8d42-8be4d774c1b5', 1), 'e8d9929edb24477e12225b0f8e2437004041f9c8a41004fc954182f8d9e19382',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3', 1253, '2026-09-13 23:58:54.490563', '191971e3e9e94f6c4b5d5d20ee69f3524222fcba16f691087635e5952e330200', 'validated', '{"audio_key":"bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc","entity_key":"lx_concession_and_disagreement_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"191971e3e9e94f6c4b5d5d20ee69f3524222fcba16f691087635e5952e330200","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_05 -> audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ccc7a595-ed42-5262-8183-59f79f16f18d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8d9929edb24477e12225b0f8e2437004041f9c8a41004fc954182f8d9e19382'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49e7f187-2436-58a2-a483-17c321ccd608', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ccc7a595-ed42-5262-8183-59f79f16f18d', 1), 'e8d9929edb24477e12225b0f8e2437004041f9c8a41004fc954182f8d9e19382',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3', 1253, '2026-09-13 23:58:54.490563', '191971e3e9e94f6c4b5d5d20ee69f3524222fcba16f691087635e5952e330200', 'validated', '{"audio_key":"bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc","entity_key":"wf_concession_and_disagreement_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"191971e3e9e94f6c4b5d5d20ee69f3524222fcba16f691087635e5952e330200","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf886b7c75d662bfc8f6d20401916bef90bf99f52ff15a57d1b003ab90e8b1bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_02 -> audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('37e83128-ae24-5efb-b46c-01b6f208f79a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaea55bff60093748aab254beb1263df81013402437076b0ff86164cbd1dec4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdb8ffa4-4750-5681-9cc9-9fb7ced6f007', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('37e83128-ae24-5efb-b46c-01b6f208f79a', 1), 'eaea55bff60093748aab254beb1263df81013402437076b0ff86164cbd1dec4b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3', 1018, '2026-09-13 23:58:54.598307', 'a207450a7776a99fa34ca8391fb74b399eea8e19d7aec752aa99fa0a3caefbf9', 'validated', '{"audio_key":"bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d","entity_key":"lx_b2_seoul_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a207450a7776a99fa34ca8391fb74b399eea8e19d7aec752aa99fa0a3caefbf9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_02 -> audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ff5bf38-3bc1-5aa2-8827-836a6a200873', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaea55bff60093748aab254beb1263df81013402437076b0ff86164cbd1dec4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('335b734c-676b-5f51-bd79-0a00ce6cfba4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ff5bf38-3bc1-5aa2-8827-836a6a200873', 1), 'eaea55bff60093748aab254beb1263df81013402437076b0ff86164cbd1dec4b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3', 1018, '2026-09-13 23:58:54.598307', 'a207450a7776a99fa34ca8391fb74b399eea8e19d7aec752aa99fa0a3caefbf9', 'validated', '{"audio_key":"bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d","entity_key":"wf_b2_seoul_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a207450a7776a99fa34ca8391fb74b399eea8e19d7aec752aa99fa0a3caefbf9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bfcbf7f8a43810a9c7e4cc8ab62960abcd877e67c86683380693e7c13c1f6d6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_03 -> audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d41d6627-841e-5a19-bea2-6c6182353768', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f84e8fa740c2324b35badca26196e958259e4a84bdd36e1dd7646cf2fba55b1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32cbba85-01eb-5bcf-b662-026283157a36', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d41d6627-841e-5a19-bea2-6c6182353768', 1), 'f84e8fa740c2324b35badca26196e958259e4a84bdd36e1dd7646cf2fba55b1f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3', 1488, '2026-09-13 23:58:55.539643', '79f607c6880122c84355b5382a5fbc8c47391bf825b00e8b78c7c008a3a6a0f5', 'validated', '{"audio_key":"c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce","entity_key":"lx_nuanced_stance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"79f607c6880122c84355b5382a5fbc8c47391bf825b00e8b78c7c008a3a6a0f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_03 -> audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ebd3039b-9d15-5e55-bbc0-ac7313c3999c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f84e8fa740c2324b35badca26196e958259e4a84bdd36e1dd7646cf2fba55b1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3f41026-5044-5fff-b60b-527df81feb4e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ebd3039b-9d15-5e55-bbc0-ac7313c3999c', 1), 'f84e8fa740c2324b35badca26196e958259e4a84bdd36e1dd7646cf2fba55b1f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3', 1488, '2026-09-13 23:58:55.539643', '79f607c6880122c84355b5382a5fbc8c47391bf825b00e8b78c7c008a3a6a0f5', 'validated', '{"audio_key":"c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce","entity_key":"wf_nuanced_stance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"79f607c6880122c84355b5382a5fbc8c47391bf825b00e8b78c7c008a3a6a0f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c163bb73cb50b4eb1a73aefa33e7112b1ace05f59655cf8b36e47f96291773ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reflection_04 -> audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28a66a5f-4b56-5d39-885b-b75d6bfdfb69', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00089b71-a3d3-5c59-bac6-f6b8aaa9d213', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28a66a5f-4b56-5d39-885b-b75d6bfdfb69', 1), '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3', 1018, '2026-09-13 22:25:10.115767', 'a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69', 'validated', '{"audio_key":"ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8","entity_key":"lx_counterfactual_reflection_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reflection_04 -> audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f37b7bef-29ad-5579-a1b6-d5d7444f6deb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('457f9c0b-66e1-59cf-b529-66dd9f49b567', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f37b7bef-29ad-5579-a1b6-d5d7444f6deb', 1), '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3', 1018, '2026-09-13 22:25:10.115767', 'a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69', 'validated', '{"audio_key":"ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8","entity_key":"wf_counterfactual_reflection_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_04 -> audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36b308f8-dbf9-50a5-b7e0-bc069e4c3304', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e838f2c339a35ddb7b62be5811145121be9a165cbf7b109659a29f838e2d67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aa97450-4875-5ca0-a408-34f3f9f34c64', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36b308f8-dbf9-50a5-b7e0-bc069e4c3304', 1), '89e838f2c339a35ddb7b62be5811145121be9a165cbf7b109659a29f838e2d67',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3', 1018, '2026-09-13 23:58:55.613150', '1e1a148e0b4d53bee7a2f38cbb19cf92634ce6a590c760f39fc1223cd5b69f87', 'validated', '{"audio_key":"cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87","entity_key":"lx_nuanced_stance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1e1a148e0b4d53bee7a2f38cbb19cf92634ce6a590c760f39fc1223cd5b69f87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_04 -> audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('106252dd-6128-5962-bbc7-56a73f6a3f9b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e838f2c339a35ddb7b62be5811145121be9a165cbf7b109659a29f838e2d67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a33e1991-77f2-556f-aab6-c8986538185c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('106252dd-6128-5962-bbc7-56a73f6a3f9b', 1), '89e838f2c339a35ddb7b62be5811145121be9a165cbf7b109659a29f838e2d67',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3', 1018, '2026-09-13 23:58:55.613150', '1e1a148e0b4d53bee7a2f38cbb19cf92634ce6a590c760f39fc1223cd5b69f87', 'validated', '{"audio_key":"cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87","entity_key":"wf_nuanced_stance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1e1a148e0b4d53bee7a2f38cbb19cf92634ce6a590c760f39fc1223cd5b69f87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfe7fd7b2235095a57f2d825981010310d14fc3ddae64da998b37b086d379f87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_01 -> audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('628d67b5-2b21-533e-b85e-0facb46ebe98', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3226597a4296c34d3b6342da4d72d04c8960bc540accdd9ddb1e5aae8390d312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c401f5c9-b545-53f4-9930-0eafd2bf3aaf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('628d67b5-2b21-533e-b85e-0facb46ebe98', 1), '3226597a4296c34d3b6342da4d72d04c8960bc540accdd9ddb1e5aae8390d312',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3', 1253, '2026-09-13 23:58:56.556230', '4b2969f7df8e020004fdf6f5aaf631c7406e9a79d1e3ee9eaa03be52a42853f8', 'validated', '{"audio_key":"e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7","entity_key":"lx_concession_and_disagreement_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b2969f7df8e020004fdf6f5aaf631c7406e9a79d1e3ee9eaa03be52a42853f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_01 -> audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88624392-db2d-55f2-8c59-d5c465f164a5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3226597a4296c34d3b6342da4d72d04c8960bc540accdd9ddb1e5aae8390d312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b86c34c-e339-57cd-ae6f-a637be7f8b51', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88624392-db2d-55f2-8c59-d5c465f164a5', 1), '3226597a4296c34d3b6342da4d72d04c8960bc540accdd9ddb1e5aae8390d312',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3', 1253, '2026-09-13 23:58:56.556230', '4b2969f7df8e020004fdf6f5aaf631c7406e9a79d1e3ee9eaa03be52a42853f8', 'validated', '{"audio_key":"e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7","entity_key":"wf_concession_and_disagreement_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b2969f7df8e020004fdf6f5aaf631c7406e9a79d1e3ee9eaa03be52a42853f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e81f42b86dd52e5ab2cda502155caf09930939115f639e2309f5ae9f2937f5b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_06 -> audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d98e2dc-3dd8-554a-9a15-60b339d2c8c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b822ac1f688f702b83021839a39de59d98f0380b4f48a84471de2f23d1a2716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5006cbf2-60b2-5a33-9fe5-d7dff6245f6f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d98e2dc-3dd8-554a-9a15-60b339d2c8c4', 1), '3b822ac1f688f702b83021839a39de59d98f0380b4f48a84471de2f23d1a2716',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3', 1201, '2026-09-13 23:58:56.589079', 'b6f86f9b250fa417c014c10f784c519962f3f8951549e65f684243c7678d90d7', 'validated', '{"audio_key":"ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737","entity_key":"lx_formal_negotiation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b6f86f9b250fa417c014c10f784c519962f3f8951549e65f684243c7678d90d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_06 -> audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c7f915c-daf3-598b-936b-734b66e29f8d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b822ac1f688f702b83021839a39de59d98f0380b4f48a84471de2f23d1a2716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9df6f7b9-f289-53fb-851e-8d2e52e7db4d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c7f915c-daf3-598b-936b-734b66e29f8d', 1), '3b822ac1f688f702b83021839a39de59d98f0380b4f48a84471de2f23d1a2716',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3', 1201, '2026-09-13 23:58:56.589079', 'b6f86f9b250fa417c014c10f784c519962f3f8951549e65f684243c7678d90d7', 'validated', '{"audio_key":"ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737","entity_key":"wf_formal_negotiation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b6f86f9b250fa417c014c10f784c519962f3f8951549e65f684243c7678d90d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ec4a96b67200d18e0b76142b665ba23655c0f9f9f74b4d267d705ad1e61a3737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_03 -> audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e07567a3-48a7-5e53-ad74-80d0094a0a73', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9d9b2409af6d15f625b0fca6c9fbdbb3b24e795033ffdd86af4b77584d8f880'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78c959e4-56b7-5ca8-a099-38edb345778e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e07567a3-48a7-5e53-ad74-80d0094a0a73', 1), 'b9d9b2409af6d15f625b0fca6c9fbdbb3b24e795033ffdd86af4b77584d8f880',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3', 966, '2026-09-13 23:58:57.559992', 'e1ddf8d88f74deb04a4c81c1a605e6a321bd7e19570577426fcbcc61bbf90614', 'validated', '{"audio_key":"f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1","entity_key":"lx_formal_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1ddf8d88f74deb04a4c81c1a605e6a321bd7e19570577426fcbcc61bbf90614","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_03 -> audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9bdda840-5eb6-5a27-97d2-83fffac3dc2d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9d9b2409af6d15f625b0fca6c9fbdbb3b24e795033ffdd86af4b77584d8f880'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64a075fc-3e48-50b1-b715-f1c16abd838a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9bdda840-5eb6-5a27-97d2-83fffac3dc2d', 1), 'b9d9b2409af6d15f625b0fca6c9fbdbb3b24e795033ffdd86af4b77584d8f880',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3', 966, '2026-09-13 23:58:57.559992', 'e1ddf8d88f74deb04a4c81c1a605e6a321bd7e19570577426fcbcc61bbf90614', 'validated', '{"audio_key":"f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1","entity_key":"wf_formal_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1ddf8d88f74deb04a4c81c1a605e6a321bd7e19570577426fcbcc61bbf90614","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3b3a52d464155754e4962cd06db056030340f364722126b4fdca3828eff47e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_comparison_03 -> audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a5db8a44-9df7-5243-a249-912205785803', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cebddfbc69e9faf8925b99f0eeb92c4d66715d0cf48a8ce56542865f1461874'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2111090c-2a35-506b-9cb6-20c268b142b3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a5db8a44-9df7-5243-a249-912205785803', 1), '7cebddfbc69e9faf8925b99f0eeb92c4d66715d0cf48a8ce56542865f1461874',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3', 914, '2026-09-13 23:58:57.557153', 'ffce0444b34a0328fa0117fbd24f350ffa3423dd875790ed612c8f344e89a5d3', 'validated', '{"audio_key":"f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db","entity_key":"lx_source_comparison_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ffce0444b34a0328fa0117fbd24f350ffa3423dd875790ed612c8f344e89a5d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_comparison_03 -> audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cccab2e7-3d71-5a7d-bc8c-9d0dbcc13344', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cebddfbc69e9faf8925b99f0eeb92c4d66715d0cf48a8ce56542865f1461874'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d79d184b-e5d3-5d13-8a29-f1006244e880', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cccab2e7-3d71-5a7d-bc8c-9d0dbcc13344', 1), '7cebddfbc69e9faf8925b99f0eeb92c4d66715d0cf48a8ce56542865f1461874',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3', 914, '2026-09-13 23:58:57.557153', 'ffce0444b34a0328fa0117fbd24f350ffa3423dd875790ed612c8f344e89a5d3', 'validated', '{"audio_key":"f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db","entity_key":"wf_source_comparison_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ffce0444b34a0328fa0117fbd24f350ffa3423dd875790ed612c8f344e89a5d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f4efe141225e8fb5c9520295ad9b8c9d0b509a23720fe59012eb7e16c89681db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_and_mediation_02 -> audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('715c64ec-7cb4-5ca7-b49c-08e34235b4fc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_and_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dcd4e43f9ff098330bba5bf9fdef947f5e4409b933d5a189a7468dfd5928c59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0d4a913-f97f-549b-96dc-90251bc0168e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('715c64ec-7cb4-5ca7-b49c-08e34235b4fc', 1), '5dcd4e43f9ff098330bba5bf9fdef947f5e4409b933d5a189a7468dfd5928c59',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3', 1071, '2026-09-13 23:58:58.561923', '8b4b309c8d551d7326b29bd3876a6e10cfd3e81a5715af90d2768ecb620400b1', 'validated', '{"audio_key":"fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b","entity_key":"lx_summarizing_and_mediation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b4b309c8d551d7326b29bd3876a6e10cfd3e81a5715af90d2768ecb620400b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_and_mediation_02 -> audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ada5251-dd6f-5694-848b-a873bcc5a6aa', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_and_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dcd4e43f9ff098330bba5bf9fdef947f5e4409b933d5a189a7468dfd5928c59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd00bf06-da4a-5dc0-a6eb-a51d3729f5e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ada5251-dd6f-5694-848b-a873bcc5a6aa', 1), '5dcd4e43f9ff098330bba5bf9fdef947f5e4409b933d5a189a7468dfd5928c59',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3', 1071, '2026-09-13 23:58:58.561923', '8b4b309c8d551d7326b29bd3876a6e10cfd3e81a5715af90d2768ecb620400b1', 'validated', '{"audio_key":"fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b","entity_key":"wf_summarizing_and_mediation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b4b309c8d551d7326b29bd3876a6e10cfd3e81a5715af90d2768ecb620400b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fcd8c47e064eed3997bcbae7abeedb8c64d7e4804cfd1ccd3b08e8a114da795b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_seoul_forum_capstone_04 -> audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8cebff3-765a-50e4-8c0f-6930d2912d41', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_seoul_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32ae423352d3ecfb0bc1b179907cea6ef35d832b0cc2c7b1713510473e26deca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcbde1d3-6dba-53d5-a44c-ccf80c87a46d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8cebff3-765a-50e4-8c0f-6930d2912d41', 1), '32ae423352d3ecfb0bc1b179907cea6ef35d832b0cc2c7b1713510473e26deca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3', 1149, '2026-09-13 23:58:58.574612', 'e107e2284078b70f7bab9b33f756e93504c2fa92c20f0b361e9d70541e13172d', 'validated', '{"audio_key":"fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877","entity_key":"lx_b2_seoul_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e107e2284078b70f7bab9b33f756e93504c2fa92c20f0b361e9d70541e13172d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_seoul_forum_capstone_04 -> audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3b97a80d-30f6-561d-9351-8168233c6b8e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_seoul_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32ae423352d3ecfb0bc1b179907cea6ef35d832b0cc2c7b1713510473e26deca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7540b9c8-f45c-5681-9ab7-43c6528904c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3b97a80d-30f6-561d-9351-8168233c6b8e', 1), '32ae423352d3ecfb0bc1b179907cea6ef35d832b0cc2c7b1713510473e26deca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3', 1149, '2026-09-13 23:58:58.574612', 'e107e2284078b70f7bab9b33f756e93504c2fa92c20f0b361e9d70541e13172d', 'validated', '{"audio_key":"fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877","entity_key":"wf_b2_seoul_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e107e2284078b70f7bab9b33f756e93504c2fa92c20f0b361e9d70541e13172d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fd11cfec720490e407468b1920716ce3760a90f13497be1e6fa0bafb35164877.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_seoul_forum_capstone_03 -> audio/generated/ko-KR/utterances/09fbe4b3786a69d252e1c5948a4130f37b1feebd09c48f0b694e04df6906a867.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4fb6f6d-2f42-5e8e-aef0-4b602d181711', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_seoul_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '705385c67477760edfa838570b8c0db26d02c0f97c94b81fc6d2368410b90541'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f66f2f9a-2696-5a15-aa0f-dcbba5d9f592', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4fb6f6d-2f42-5e8e-aef0-4b602d181711', 1), '705385c67477760edfa838570b8c0db26d02c0f97c94b81fc6d2368410b90541',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09fbe4b3786a69d252e1c5948a4130f37b1feebd09c48f0b694e04df6906a867.mp3', 4493, '2026-09-13 23:58:59.901169', '8b0ffb0f9c307a32969e212c74afbccd7416f6b9a8c09e8b7522203dde147a3f', 'validated', '{"audio_key":"09fbe4b3786a69d252e1c5948a4130f37b1feebd09c48f0b694e04df6906a867","entity_key":"u_b2_seoul_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b0ffb0f9c307a32969e212c74afbccd7416f6b9a8c09e8b7522203dde147a3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09fbe4b3786a69d252e1c5948a4130f37b1feebd09c48f0b694e04df6906a867.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_seoul_forum_capstone_04 -> audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('90420beb-8a08-5eca-a535-17658241ab77', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_seoul_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2e894130a0a9888c5a425ff681fe1b484f393a5ae799d942f1274948a3312e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1c68fb8-c436-5c74-a6f7-27de6c37e7fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('90420beb-8a08-5eca-a535-17658241ab77', 1), 'bf2e894130a0a9888c5a425ff681fe1b484f393a5ae799d942f1274948a3312e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3', 4858, '2026-09-13 23:59:00.003312', '827888b126a0c2b4735c0cbb4ed2cf5fce746b7d1b018441ca8b5686672b6d93', 'validated', '{"audio_key":"107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592","entity_key":"u_b2_seoul_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"827888b126a0c2b4735c0cbb4ed2cf5fce746b7d1b018441ca8b5686672b6d93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_seoul_forum_capstone_02_listen -> audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0efa3aa7-eddc-5d7e-a8ec-c55d8b066a06', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_seoul_forum_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2e894130a0a9888c5a425ff681fe1b484f393a5ae799d942f1274948a3312e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d93a2b2-9a7a-585f-8621-461d5a81658a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0efa3aa7-eddc-5d7e-a8ec-c55d8b066a06', 1), 'bf2e894130a0a9888c5a425ff681fe1b484f393a5ae799d942f1274948a3312e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3', 4858, '2026-09-13 23:59:00.003312', '827888b126a0c2b4735c0cbb4ed2cf5fce746b7d1b018441ca8b5686672b6d93', 'validated', '{"audio_key":"107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592","entity_key":"e_b2_seoul_forum_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"827888b126a0c2b4735c0cbb4ed2cf5fce746b7d1b018441ca8b5686672b6d93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/107ed33cecdd20c7d9bed54ec4f1ba6ab8554e5dcaf97fc125486b11959ff592.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_seoul_forum_capstone_02 -> audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('86224b2b-2677-5976-b115-f3d4d5c882a4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_seoul_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f144f9a16b585634086d87ae3ada78a5b4396cf873fa4154026ddfe0b651ead9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c976815-b7da-541d-8342-e47c9df43263', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('86224b2b-2677-5976-b115-f3d4d5c882a4', 1), 'f144f9a16b585634086d87ae3ada78a5b4396cf873fa4154026ddfe0b651ead9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3', 5564, '2026-09-13 23:59:01.421351', 'eb555f1b1a4c455c5358e52a65c1eccec024ea8ad1802600802f4b40c1cf70e6', 'validated', '{"audio_key":"13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218","entity_key":"u_b2_seoul_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb555f1b1a4c455c5358e52a65c1eccec024ea8ad1802600802f4b40c1cf70e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_seoul_forum_capstone_01_listen -> audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('567f169f-7b02-5cb3-ae19-2ee39e059964', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_seoul_forum_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f144f9a16b585634086d87ae3ada78a5b4396cf873fa4154026ddfe0b651ead9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a90c738-37f5-53e6-b516-16645d7406e6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('567f169f-7b02-5cb3-ae19-2ee39e059964', 1), 'f144f9a16b585634086d87ae3ada78a5b4396cf873fa4154026ddfe0b651ead9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3', 5564, '2026-09-13 23:59:01.421351', 'eb555f1b1a4c455c5358e52a65c1eccec024ea8ad1802600802f4b40c1cf70e6', 'validated', '{"audio_key":"13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218","entity_key":"e_b2_seoul_forum_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb555f1b1a4c455c5358e52a65c1eccec024ea8ad1802600802f4b40c1cf70e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/13fe206ec207046c81e3d09c703560aabd479465f11415d37266ef57aa7cd218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_inference_04 -> audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d708c68-3d8b-5f05-8206-6d43def14e68', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_inference_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db717dabb66ef1dd839fecb70f5da239af80b16d9a2d54f0afa38b3ce290e2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b914aafa-6337-5fe9-864e-03ca335f2881', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d708c68-3d8b-5f05-8206-6d43def14e68', 1), 'db717dabb66ef1dd839fecb70f5da239af80b16d9a2d54f0afa38b3ce290e2ee',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3', 4205, '2026-09-13 23:59:01.361781', 'bad4915f659ac975c2b8f50597bdac4e16e1645b0c1b005297fdc334078f0947', 'validated', '{"audio_key":"16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9","entity_key":"u_evidence_and_inference_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bad4915f659ac975c2b8f50597bdac4e16e1645b0c1b005297fdc334078f0947","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidence_and_inference_02_listen -> audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3ba56eb0-1e5f-511c-a346-e0a3c3f5c98c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidence_and_inference_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db717dabb66ef1dd839fecb70f5da239af80b16d9a2d54f0afa38b3ce290e2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ab4e34c-ee3c-5102-8d63-9e9cb54c184c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3ba56eb0-1e5f-511c-a346-e0a3c3f5c98c', 1), 'db717dabb66ef1dd839fecb70f5da239af80b16d9a2d54f0afa38b3ce290e2ee',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3', 4205, '2026-09-13 23:59:01.361781', 'bad4915f659ac975c2b8f50597bdac4e16e1645b0c1b005297fdc334078f0947', 'validated', '{"audio_key":"16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9","entity_key":"e_evidence_and_inference_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bad4915f659ac975c2b8f50597bdac4e16e1645b0c1b005297fdc334078f0947","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16bc3a2253aa5b55742291407c8a32919cd06b8c94220693b64ec1a5fc775eb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_and_mediation_02 -> audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a45623b-4003-529a-b2e4-4b4f7dd67c8d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_and_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eddc5a8349e54f588443e93b4be343024a959f85f20cfefbe4de645909f39ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('039de7dc-61ba-5e57-8ec1-0f1c42f4a3d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a45623b-4003-529a-b2e4-4b4f7dd67c8d', 1), '9eddc5a8349e54f588443e93b4be343024a959f85f20cfefbe4de645909f39ec',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3', 4911, '2026-09-13 23:59:03.066338', '1631cd87e9d4a76730138875920f8ff4f0cb2906e01193d74c710dbdf3844b62', 'validated', '{"audio_key":"18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb","entity_key":"u_summarizing_and_mediation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1631cd87e9d4a76730138875920f8ff4f0cb2906e01193d74c710dbdf3844b62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_summarizing_and_mediation_01_listen -> audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cbabd11e-8b54-53c6-aefa-a2d3586d0118', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_summarizing_and_mediation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eddc5a8349e54f588443e93b4be343024a959f85f20cfefbe4de645909f39ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13118ec6-7768-5945-b1ca-4ca538455c7b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cbabd11e-8b54-53c6-aefa-a2d3586d0118', 1), '9eddc5a8349e54f588443e93b4be343024a959f85f20cfefbe4de645909f39ec',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3', 4911, '2026-09-13 23:59:03.066338', '1631cd87e9d4a76730138875920f8ff4f0cb2906e01193d74c710dbdf3844b62', 'validated', '{"audio_key":"18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb","entity_key":"e_summarizing_and_mediation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1631cd87e9d4a76730138875920f8ff4f0cb2906e01193d74c710dbdf3844b62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/18fb5ba6fbf23622e48079f3da164c62c8e46399c1cfa5824d94ac2db53caabb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_comparison_01 -> audio/generated/ko-KR/utterances/232129cf3ba2bda06a1258eefdf3f98565152673e49ab9b935b34adab57063c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f36b5b18-49b7-5e95-88b1-97df80d3ddb1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f678aec4e3593bc2997d241cc52713d2fff6939f9e811d7e075cbc26663f0868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6cc32c3-ce2e-5ad0-b24d-228fefcf6996', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f36b5b18-49b7-5e95-88b1-97df80d3ddb1', 1), 'f678aec4e3593bc2997d241cc52713d2fff6939f9e811d7e075cbc26663f0868',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/232129cf3ba2bda06a1258eefdf3f98565152673e49ab9b935b34adab57063c6.mp3', 4414, '2026-09-13 23:59:02.802085', '80384b14ed42ec5a26e1b2397ae279b8c92bf40ae27f5fac2a151e0a0e006474', 'validated', '{"audio_key":"232129cf3ba2bda06a1258eefdf3f98565152673e49ab9b935b34adab57063c6","entity_key":"u_source_comparison_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80384b14ed42ec5a26e1b2397ae279b8c92bf40ae27f5fac2a151e0a0e006474","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/232129cf3ba2bda06a1258eefdf3f98565152673e49ab9b935b34adab57063c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_and_mediation_04 -> audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a761f54a-9c1f-55b2-98cf-e1d7803fb410', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_and_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1de735603aaa10335d3da75dba7d817fe1dc723ae98bfc1aef0bac15e4c073e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9502e733-7100-5183-ad84-f08e216cac23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a761f54a-9c1f-55b2-98cf-e1d7803fb410', 1), 'b1de735603aaa10335d3da75dba7d817fe1dc723ae98bfc1aef0bac15e4c073e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3', 5093, '2026-09-13 23:59:04.276294', '2d0c5da9dcee70656144e8f131337746ba5f09f493a6c587ee6cec4e894f8a81', 'validated', '{"audio_key":"23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396","entity_key":"u_summarizing_and_mediation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d0c5da9dcee70656144e8f131337746ba5f09f493a6c587ee6cec4e894f8a81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_summarizing_and_mediation_02_listen -> audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc8a2736-c22c-5838-87ba-6002cf60f1a1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_summarizing_and_mediation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1de735603aaa10335d3da75dba7d817fe1dc723ae98bfc1aef0bac15e4c073e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4d24b32-9eb8-5047-adf5-edba8b26b498', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc8a2736-c22c-5838-87ba-6002cf60f1a1', 1), 'b1de735603aaa10335d3da75dba7d817fe1dc723ae98bfc1aef0bac15e4c073e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3', 5093, '2026-09-13 23:59:04.276294', '2d0c5da9dcee70656144e8f131337746ba5f09f493a6c587ee6cec4e894f8a81', 'validated', '{"audio_key":"23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396","entity_key":"e_summarizing_and_mediation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d0c5da9dcee70656144e8f131337746ba5f09f493a6c587ee6cec4e894f8a81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/23f8f0ddf3cdf34e54beeabbd972c896b59e85e85dc95fc0addfea8c8d828396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_inference_03 -> audio/generated/ko-KR/utterances/242f62e7dc892eed4ee094448767908c813d804816f9913e5bc2db4afe259b25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd907a73-7820-5bf2-bf49-930f580f4368', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_inference_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cad3fb5e5d19e60fdf261490bef222f10a98bdbfec34cbeb1c72dccabd462ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1fe5f02-1dd9-589e-a10e-7b4f59f5ffd2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd907a73-7820-5bf2-bf49-930f580f4368', 1), '8cad3fb5e5d19e60fdf261490bef222f10a98bdbfec34cbeb1c72dccabd462ab',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/242f62e7dc892eed4ee094448767908c813d804816f9913e5bc2db4afe259b25.mp3', 3657, '2026-09-13 23:59:04.329333', '0e5fd4e20f1012cae5e820039c0288224fc4cffbf466e12255a744f5e0300427', 'validated', '{"audio_key":"242f62e7dc892eed4ee094448767908c813d804816f9913e5bc2db4afe259b25","entity_key":"u_evidence_and_inference_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e5fd4e20f1012cae5e820039c0288224fc4cffbf466e12255a744f5e0300427","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/242f62e7dc892eed4ee094448767908c813d804816f9913e5bc2db4afe259b25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_social_distance_03 -> audio/generated/ko-KR/utterances/384d8277a5ebdbf958849ed37776c9e745fa015d4b2655307697e524ef9adfa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea6509fc-8e24-599e-8e3a-bfd87998b368', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_social_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59107c814b80db7abed24a9957550e762d700c4064e32c1b3f753796f6ba379c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b8399f2-3a13-5f48-9d7d-e6ecac951093', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea6509fc-8e24-599e-8e3a-bfd87998b368', 1), '59107c814b80db7abed24a9957550e762d700c4064e32c1b3f753796f6ba379c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/384d8277a5ebdbf958849ed37776c9e745fa015d4b2655307697e524ef9adfa9.mp3', 4362, '2026-09-13 23:59:05.640881', '62996756bb9776be273a74abd550e0e5b128a7a2e46a15e63a20cdd2f1246943', 'validated', '{"audio_key":"384d8277a5ebdbf958849ed37776c9e745fa015d4b2655307697e524ef9adfa9","entity_key":"u_register_and_social_distance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62996756bb9776be273a74abd550e0e5b128a7a2e46a15e63a20cdd2f1246943","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/384d8277a5ebdbf958849ed37776c9e745fa015d4b2655307697e524ef9adfa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_and_responsibility_01 -> audio/generated/ko-KR/utterances/38ada6bc6427e17d1af541239191cb25b597c6bc47996d7181edd1eb23eca102.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4b6e481-c8b9-5fb4-93b1-6d4f03d54cbf', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_and_responsibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1527869a07be69acb0059dda52c3dd65311b1193401fd881733c659a95632e72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0553e3bc-9c7f-56f4-a819-dc92b2f06758', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4b6e481-c8b9-5fb4-93b1-6d4f03d54cbf', 1), '1527869a07be69acb0059dda52c3dd65311b1193401fd881733c659a95632e72',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/38ada6bc6427e17d1af541239191cb25b597c6bc47996d7181edd1eb23eca102.mp3', 4780, '2026-09-13 23:59:05.763887', 'c07ff1b9814dada5d47010ddb5b21fa3e70a2ed13f3a08bc40111a13d1513ee9', 'validated', '{"audio_key":"38ada6bc6427e17d1af541239191cb25b597c6bc47996d7181edd1eb23eca102","entity_key":"u_process_and_responsibility_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c07ff1b9814dada5d47010ddb5b21fa3e70a2ed13f3a08bc40111a13d1513ee9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/38ada6bc6427e17d1af541239191cb25b597c6bc47996d7181edd1eb23eca102.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_social_distance_02 -> audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9493b55c-ab50-5f3d-b7f8-91dc7ae6ef2c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_social_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37107977969a113d0c18d84111c9f2c2d5cbb68979c78627eacf64ffae990fca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a9ad5f5-eb42-5fbe-a303-9c06ae38c315', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9493b55c-ab50-5f3d-b7f8-91dc7ae6ef2c', 1), '37107977969a113d0c18d84111c9f2c2d5cbb68979c78627eacf64ffae990fca',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3', 4440, '2026-09-13 23:59:07.018394', '543b79613df2a246e0ba34ecd3500b8c073133ae920632e38d6500f31f0ba787', 'validated', '{"audio_key":"3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457","entity_key":"u_register_and_social_distance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"543b79613df2a246e0ba34ecd3500b8c073133ae920632e38d6500f31f0ba787","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_and_social_distance_01_listen -> audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ee54c8e9-2cee-560f-b9bd-fb3087b5a849', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_and_social_distance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37107977969a113d0c18d84111c9f2c2d5cbb68979c78627eacf64ffae990fca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e3ccad3-af5c-5d6e-9316-b2fc3c3875eb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ee54c8e9-2cee-560f-b9bd-fb3087b5a849', 1), '37107977969a113d0c18d84111c9f2c2d5cbb68979c78627eacf64ffae990fca',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3', 4440, '2026-09-13 23:59:07.018394', '543b79613df2a246e0ba34ecd3500b8c073133ae920632e38d6500f31f0ba787', 'validated', '{"audio_key":"3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457","entity_key":"e_register_and_social_distance_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"543b79613df2a246e0ba34ecd3500b8c073133ae920632e38d6500f31f0ba787","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3e60bf9cc3ad07daa4f2e4559d34dfbb09d27982eb23a296f398db726f647457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reflection_04 -> audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2215ea13-4f55-5d2e-8d59-b336aa98d96e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f292a29dd61b5264b49ddf5ad6e2158eef08702eb45959c0d6070ca0ae1ef0d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0602114c-f404-5c27-9f3c-cbc99da57b23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2215ea13-4f55-5d2e-8d59-b336aa98d96e', 1), 'f292a29dd61b5264b49ddf5ad6e2158eef08702eb45959c0d6070ca0ae1ef0d1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3', 4858, '2026-09-13 23:59:07.251270', '8ace5907a1b39f9f9ad8336d5c41e6e4a738b5f34cfe4525b00cd7218f67c3da', 'validated', '{"audio_key":"3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe","entity_key":"u_counterfactual_reflection_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ace5907a1b39f9f9ad8336d5c41e6e4a738b5f34cfe4525b00cd7218f67c3da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_reflection_02_listen -> audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c05a9443-0387-5419-8395-b471e12b13f3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_reflection_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f292a29dd61b5264b49ddf5ad6e2158eef08702eb45959c0d6070ca0ae1ef0d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f858df6-c107-5544-a034-4faca8479401', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c05a9443-0387-5419-8395-b471e12b13f3', 1), 'f292a29dd61b5264b49ddf5ad6e2158eef08702eb45959c0d6070ca0ae1ef0d1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3', 4858, '2026-09-13 23:59:07.251270', '8ace5907a1b39f9f9ad8336d5c41e6e4a738b5f34cfe4525b00cd7218f67c3da', 'validated', '{"audio_key":"3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe","entity_key":"e_counterfactual_reflection_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ace5907a1b39f9f9ad8336d5c41e6e4a738b5f34cfe4525b00cd7218f67c3da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3f68b3aed4ca0d7399f368c7ac49f2e67e7b26ebb57ddaec7c5885a468d1eefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_social_distance_04 -> audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da204f3c-06e8-5844-a92e-f0e1a8b893e5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_social_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '701d9ec5e7983e21af10799dd8a020d3a0a94dc05f17fc749bfe0969e24929d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308fc43e-103f-52f7-8bad-071842144d13', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da204f3c-06e8-5844-a92e-f0e1a8b893e5', 1), '701d9ec5e7983e21af10799dd8a020d3a0a94dc05f17fc749bfe0969e24929d4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3', 5433, '2026-09-13 23:59:08.513989', '770dc2aabfd8069e66acd42e0a4679e53853b96f99b7656e837e13b41c148f61', 'validated', '{"audio_key":"447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f","entity_key":"u_register_and_social_distance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"770dc2aabfd8069e66acd42e0a4679e53853b96f99b7656e837e13b41c148f61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_and_social_distance_02_listen -> audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7728dbf8-a4c7-577b-9db6-a4c682e95e6b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_and_social_distance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '701d9ec5e7983e21af10799dd8a020d3a0a94dc05f17fc749bfe0969e24929d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a01fcb6-c986-5ea7-b9b6-a92e939c7318', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7728dbf8-a4c7-577b-9db6-a4c682e95e6b', 1), '701d9ec5e7983e21af10799dd8a020d3a0a94dc05f17fc749bfe0969e24929d4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3', 5433, '2026-09-13 23:59:08.513989', '770dc2aabfd8069e66acd42e0a4679e53853b96f99b7656e837e13b41c148f61', 'validated', '{"audio_key":"447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f","entity_key":"e_register_and_social_distance_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"770dc2aabfd8069e66acd42e0a4679e53853b96f99b7656e837e13b41c148f61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/447172340d750b3d38282d835ff04740a41289756e65abc204dd18d9adce0a4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_comparison_03 -> audio/generated/ko-KR/utterances/47c6afbca249c65b73ca60bbbac581379b0f872b8bed1f33fff518bdfcaffa29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3aa2f9b0-5776-5019-8ab1-0d437168db26', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a300947563b273580f310766e4abfc7d6a97f620da9c1f7b20d7e190deb36a51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cae280b-8c6a-5f6a-9de0-e84ff4778266', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3aa2f9b0-5776-5019-8ab1-0d437168db26', 1), 'a300947563b273580f310766e4abfc7d6a97f620da9c1f7b20d7e190deb36a51',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/47c6afbca249c65b73ca60bbbac581379b0f872b8bed1f33fff518bdfcaffa29.mp3', 5093, '2026-09-13 23:59:08.720525', '35d62419126685706be0f30b0ade5d3f6a1d5cf06d010e050a82c5fbce773f24', 'validated', '{"audio_key":"47c6afbca249c65b73ca60bbbac581379b0f872b8bed1f33fff518bdfcaffa29","entity_key":"u_source_comparison_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35d62419126685706be0f30b0ade5d3f6a1d5cf06d010e050a82c5fbce773f24","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/47c6afbca249c65b73ca60bbbac581379b0f872b8bed1f33fff518bdfcaffa29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_04 -> audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ad09241-aa98-548a-b214-4fda8205b6e8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75a0019bf81dcc7cbdf0f7c1b61681148ef59949bfd78ac8c3b80851f934aa32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45aa8706-2e87-5779-81e1-a0098dabbfe5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ad09241-aa98-548a-b214-4fda8205b6e8', 1), '75a0019bf81dcc7cbdf0f7c1b61681148ef59949bfd78ac8c3b80851f934aa32',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3', 5381, '2026-09-13 23:59:10.054183', '641425e28e8983836d39a8a68db014e8d9b7bdfa819a5a83e9955ce96bbf13c0', 'validated', '{"audio_key":"4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba","entity_key":"u_concession_and_disagreement_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"641425e28e8983836d39a8a68db014e8d9b7bdfa819a5a83e9955ce96bbf13c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_disagreement_02_listen -> audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('00c64f04-4958-531b-b29b-d8ce67ca2034', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_disagreement_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75a0019bf81dcc7cbdf0f7c1b61681148ef59949bfd78ac8c3b80851f934aa32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601426cf-3272-537a-96f6-94f590aa2a51', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('00c64f04-4958-531b-b29b-d8ce67ca2034', 1), '75a0019bf81dcc7cbdf0f7c1b61681148ef59949bfd78ac8c3b80851f934aa32',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3', 5381, '2026-09-13 23:59:10.054183', '641425e28e8983836d39a8a68db014e8d9b7bdfa819a5a83e9955ce96bbf13c0', 'validated', '{"audio_key":"4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba","entity_key":"e_concession_and_disagreement_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"641425e28e8983836d39a8a68db014e8d9b7bdfa819a5a83e9955ce96bbf13c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4c4019b9b3bc2317507a17c254aa800999c0aeb122eb1d7e524eaa6a9fa3aaba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_and_responsibility_04 -> audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dd09ea64-c9d1-51af-a240-074e8da5c58a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_and_responsibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fe32c8050fd658ae87fbca566ccf9bd13f6dc41b9e8d78163585745a3675703'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('487c4894-3748-57cb-8f2a-f371151ae488', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dd09ea64-c9d1-51af-a240-074e8da5c58a', 1), '4fe32c8050fd658ae87fbca566ccf9bd13f6dc41b9e8d78163585745a3675703',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3', 3369, '2026-09-13 23:59:09.968900', '8ba4a19eb1d84bc1ed4b6c8a39129d6692714a27d069974dc89057d3dbca32fb', 'validated', '{"audio_key":"4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8","entity_key":"u_process_and_responsibility_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ba4a19eb1d84bc1ed4b6c8a39129d6692714a27d069974dc89057d3dbca32fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_process_and_responsibility_02_listen -> audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7f116921-a83b-57c6-8438-d4afeb91b890', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_process_and_responsibility_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fe32c8050fd658ae87fbca566ccf9bd13f6dc41b9e8d78163585745a3675703'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b71ed866-1829-5fd2-821a-ec9cf8c3b7df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7f116921-a83b-57c6-8438-d4afeb91b890', 1), '4fe32c8050fd658ae87fbca566ccf9bd13f6dc41b9e8d78163585745a3675703',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3', 3369, '2026-09-13 23:59:09.968900', '8ba4a19eb1d84bc1ed4b6c8a39129d6692714a27d069974dc89057d3dbca32fb', 'validated', '{"audio_key":"4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8","entity_key":"e_process_and_responsibility_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ba4a19eb1d84bc1ed4b6c8a39129d6692714a27d069974dc89057d3dbca32fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4d52eaf07a50dd7e98bbc5deb47be167b00f5a1269282e39135045ed79874da8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_01 -> audio/generated/ko-KR/utterances/4eba911b1619193fc35f7e694f63dd5b12a842231161469b3ba4d286d6da878f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8e8e7b51-6b87-5d93-b5e5-dafc85ab971b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fd32b74ff4ebed0326d3ebbaf8d1c833ce5f3497944b8807e421b01a71cf77c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af33d782-03c2-5532-90b3-30a0b612f34c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8e8e7b51-6b87-5d93-b5e5-dafc85ab971b', 1), '0fd32b74ff4ebed0326d3ebbaf8d1c833ce5f3497944b8807e421b01a71cf77c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4eba911b1619193fc35f7e694f63dd5b12a842231161469b3ba4d286d6da878f.mp3', 3657, '2026-09-13 23:59:11.252426', '735c2b33247f78662f0637784cfab0e71b5e08965cea1f24ac61d1e9f4113e12', 'validated', '{"audio_key":"4eba911b1619193fc35f7e694f63dd5b12a842231161469b3ba4d286d6da878f","entity_key":"u_formal_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"735c2b33247f78662f0637784cfab0e71b5e08965cea1f24ac61d1e9f4113e12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4eba911b1619193fc35f7e694f63dd5b12a842231161469b3ba4d286d6da878f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_comparison_04 -> audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a053b95-dcc9-5f5e-be31-8b528c29a7ff', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcda281fa3340ef39c9afd9579983f1c6c597e2a6d00f72cee9d6eaa1dfa83ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('424d51f2-d32b-548b-9c1c-3d1a699fc61b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a053b95-dcc9-5f5e-be31-8b528c29a7ff', 1), 'bcda281fa3340ef39c9afd9579983f1c6c597e2a6d00f72cee9d6eaa1dfa83ad',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3', 5746, '2026-09-13 23:59:11.537066', '9720016c34e25f3b2971aab2bffb77ee058e39efaaa1b751cdfd692bcdfacdbb', 'validated', '{"audio_key":"4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54","entity_key":"u_source_comparison_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9720016c34e25f3b2971aab2bffb77ee058e39efaaa1b751cdfd692bcdfacdbb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_source_comparison_02_listen -> audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ba1eb327-109f-5074-b754-76e93eeebc13', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_source_comparison_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcda281fa3340ef39c9afd9579983f1c6c597e2a6d00f72cee9d6eaa1dfa83ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55644127-159a-5081-926e-e3d86c285d68', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ba1eb327-109f-5074-b754-76e93eeebc13', 1), 'bcda281fa3340ef39c9afd9579983f1c6c597e2a6d00f72cee9d6eaa1dfa83ad',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3', 5746, '2026-09-13 23:59:11.537066', '9720016c34e25f3b2971aab2bffb77ee058e39efaaa1b751cdfd692bcdfacdbb', 'validated', '{"audio_key":"4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54","entity_key":"e_source_comparison_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9720016c34e25f3b2971aab2bffb77ee058e39efaaa1b751cdfd692bcdfacdbb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4ed09468aa89095be1d1e9aedff3e02f071d7643b8aa06680814731ada8dbf54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_02 -> audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f837522-2113-5582-8586-5af493bda78d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a03df33cea9347d82930842d7f364f2b6ae2f53d0b604768e199c245b5dace5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('387573ce-1644-56fa-b9ed-fff7715e22d7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f837522-2113-5582-8586-5af493bda78d', 1), '2a03df33cea9347d82930842d7f364f2b6ae2f53d0b604768e199c245b5dace5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3', 4623, '2026-09-13 23:59:12.636758', 'ece05ed669b30044f3e3d1e660e3f00c239b635cb62ff9f7d80bfed34fb56e47', 'validated', '{"audio_key":"50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e","entity_key":"u_formal_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ece05ed669b30044f3e3d1e660e3f00c239b635cb62ff9f7d80bfed34fb56e47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_01_listen -> audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('91c46ae5-01eb-5cdb-b799-93fa48bdbb15', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a03df33cea9347d82930842d7f364f2b6ae2f53d0b604768e199c245b5dace5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c91bccdb-9730-57f1-aa4d-8244e009aae2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('91c46ae5-01eb-5cdb-b799-93fa48bdbb15', 1), '2a03df33cea9347d82930842d7f364f2b6ae2f53d0b604768e199c245b5dace5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3', 4623, '2026-09-13 23:59:12.636758', 'ece05ed669b30044f3e3d1e660e3f00c239b635cb62ff9f7d80bfed34fb56e47', 'validated', '{"audio_key":"50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e","entity_key":"e_formal_negotiation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ece05ed669b30044f3e3d1e660e3f00c239b635cb62ff9f7d80bfed34fb56e47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/50f0020df8e81e70459460fa8c922c7666ac18c056657c353e7f3f990be6bf2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_social_distance_01 -> audio/generated/ko-KR/utterances/5237642bf93725f8b57a38aca236235e5c34d02311e387df562f5ae66d1a4a93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e69530d-0ed1-56ca-9d4c-cb7b94ec4271', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_social_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '282fe19c91f95c180cd64be25adb021ee9744952e67ae15c1c62b1d87cb17a7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd82375f-0c92-5f0d-b80c-4fd58ee9535a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e69530d-0ed1-56ca-9d4c-cb7b94ec4271', 1), '282fe19c91f95c180cd64be25adb021ee9744952e67ae15c1c62b1d87cb17a7a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5237642bf93725f8b57a38aca236235e5c34d02311e387df562f5ae66d1a4a93.mp3', 4545, '2026-09-13 23:59:12.945179', '18614993617073e4ba110dec2a0f91dc89d61d858015519d2176f5795813d5e9', 'validated', '{"audio_key":"5237642bf93725f8b57a38aca236235e5c34d02311e387df562f5ae66d1a4a93","entity_key":"u_register_and_social_distance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18614993617073e4ba110dec2a0f91dc89d61d858015519d2176f5795813d5e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5237642bf93725f8b57a38aca236235e5c34d02311e387df562f5ae66d1a4a93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reflection_01 -> audio/generated/ko-KR/utterances/5321ec4722116fadd359b043faa23ec3d9e1841c522584b31f24a160a217e631.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('11d7ec11-8eb6-5278-82a1-063a09c70a68', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd56814e79dc0ff447418a7435d2b5de7d56f77ad420b77fb1f8bc857b1e6439f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68103c02-2320-5155-9c9a-75dcae399d70', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('11d7ec11-8eb6-5278-82a1-063a09c70a68', 1), 'd56814e79dc0ff447418a7435d2b5de7d56f77ad420b77fb1f8bc857b1e6439f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5321ec4722116fadd359b043faa23ec3d9e1841c522584b31f24a160a217e631.mp3', 4858, '2026-09-13 23:59:14.056088', '2eda71129744a13fce67f940e5f1e10ceac256ebd0253caea5562d28b5ead11f', 'validated', '{"audio_key":"5321ec4722116fadd359b043faa23ec3d9e1841c522584b31f24a160a217e631","entity_key":"u_counterfactual_reflection_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2eda71129744a13fce67f940e5f1e10ceac256ebd0253caea5562d28b5ead11f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5321ec4722116fadd359b043faa23ec3d9e1841c522584b31f24a160a217e631.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_03 -> audio/generated/ko-KR/utterances/545971415f520148ca951f5cc0d48d9ada775ad7218584ce1d4c41dc1a973a47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7ce1ee8-9e47-572c-ab8f-bda7e4bfd981', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f2407aade2408bbfb4b37cea7155a8e15245bf4fb200c2ec1c21b7552c099fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('052db3cc-38ce-57c3-8159-2a5f06e8b1ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7ce1ee8-9e47-572c-ab8f-bda7e4bfd981', 1), '0f2407aade2408bbfb4b37cea7155a8e15245bf4fb200c2ec1c21b7552c099fe',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/545971415f520148ca951f5cc0d48d9ada775ad7218584ce1d4c41dc1a973a47.mp3', 3761, '2026-09-13 23:59:14.241571', '7dad9a191a97c19efc6f4bd38f785aad01a961448180fddcf320e616ca7b85ff', 'validated', '{"audio_key":"545971415f520148ca951f5cc0d48d9ada775ad7218584ce1d4c41dc1a973a47","entity_key":"u_concession_and_disagreement_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7dad9a191a97c19efc6f4bd38f785aad01a961448180fddcf320e616ca7b85ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/545971415f520148ca951f5cc0d48d9ada775ad7218584ce1d4c41dc1a973a47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_03 -> audio/generated/ko-KR/utterances/5b10195cbece482eb5cece9b48eb8f238acb6a00368224128e137ea4c3e3c229.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('90ced58a-0784-5a98-87d9-d0fe708124ac', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0ed201fe6ebb85b6f02e90add4ef264507834db64e98a35d9567dc8c6e8bd1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a28e8fcf-8207-5c09-a814-905f0b958b92', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('90ced58a-0784-5a98-87d9-d0fe708124ac', 1), 'a0ed201fe6ebb85b6f02e90add4ef264507834db64e98a35d9567dc8c6e8bd1c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5b10195cbece482eb5cece9b48eb8f238acb6a00368224128e137ea4c3e3c229.mp3', 5093, '2026-09-13 23:59:15.502007', 'fd78d4419aeabafbaf9b8f3bb42931748ce0cb4367686a27c2b9f80630d351e3', 'validated', '{"audio_key":"5b10195cbece482eb5cece9b48eb8f238acb6a00368224128e137ea4c3e3c229","entity_key":"u_nuanced_stance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fd78d4419aeabafbaf9b8f3bb42931748ce0cb4367686a27c2b9f80630d351e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5b10195cbece482eb5cece9b48eb8f238acb6a00368224128e137ea4c3e3c229.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_and_responsibility_02 -> audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('204782d9-fc23-5930-b960-071000ef5dcf', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_and_responsibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96c5c819589a9396ddcf9df539a980fabed278638881f474756cd597346ae0e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7d9cecf-83c0-58e7-80f2-1cdc9dc2a127', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('204782d9-fc23-5930-b960-071000ef5dcf', 1), '96c5c819589a9396ddcf9df539a980fabed278638881f474756cd597346ae0e2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3', 5250, '2026-09-13 23:59:15.712734', '417f0faef9ec068a06df3528b6b4347cd35077ad9c83d075d13c62b0cdee9c68', 'validated', '{"audio_key":"6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294","entity_key":"u_process_and_responsibility_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"417f0faef9ec068a06df3528b6b4347cd35077ad9c83d075d13c62b0cdee9c68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_process_and_responsibility_01_listen -> audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('02a0edf9-0b05-5aed-b9d8-a2bb9a21123f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_process_and_responsibility_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96c5c819589a9396ddcf9df539a980fabed278638881f474756cd597346ae0e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e96ddbe-8dbe-5d09-947e-5b167e00f104', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('02a0edf9-0b05-5aed-b9d8-a2bb9a21123f', 1), '96c5c819589a9396ddcf9df539a980fabed278638881f474756cd597346ae0e2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3', 5250, '2026-09-13 23:59:15.712734', '417f0faef9ec068a06df3528b6b4347cd35077ad9c83d075d13c62b0cdee9c68', 'validated', '{"audio_key":"6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294","entity_key":"e_process_and_responsibility_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"417f0faef9ec068a06df3528b6b4347cd35077ad9c83d075d13c62b0cdee9c68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6761d6efc868456ec05ede195b68dc48e06fb9c21a44fa8741b2a40bce322294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_01 -> audio/generated/ko-KR/utterances/708cfd2ac72cd5e175d75b97883f5870d5056465e107708b790d35708ebef525.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec1e44b0-fdb5-551c-8dc0-d8fef3931f36', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ab4ec5850cf4765c181c0fec0f16887ce0e28bf757f911318cc1de58f22658e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc6a895c-71c6-50e0-95b4-eb2433c5c3ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec1e44b0-fdb5-551c-8dc0-d8fef3931f36', 1), '8ab4ec5850cf4765c181c0fec0f16887ce0e28bf757f911318cc1de58f22658e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/708cfd2ac72cd5e175d75b97883f5870d5056465e107708b790d35708ebef525.mp3', 5041, '2026-09-13 23:59:16.949907', 'e3f6e7445c332caa1b80d6dc387661dee669ae1efc000ec36f9ac0f39c870d14', 'validated', '{"audio_key":"708cfd2ac72cd5e175d75b97883f5870d5056465e107708b790d35708ebef525","entity_key":"u_concession_and_disagreement_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3f6e7445c332caa1b80d6dc387661dee669ae1efc000ec36f9ac0f39c870d14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/708cfd2ac72cd5e175d75b97883f5870d5056465e107708b790d35708ebef525.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_and_mediation_03 -> audio/generated/ko-KR/utterances/70ab6fc493c4330ce1a412a5361258e3676e3f36ade75f8f834831e79e0c0ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c78633b5-614e-579d-b188-eacae7d73c43', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_and_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '298a1e5dd73cd3313bc1801d277cc29961c9fdee1d817387126c6b056d2a9568'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('514bbf57-9b61-540b-ac5d-55a282aac776', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c78633b5-614e-579d-b188-eacae7d73c43', 1), '298a1e5dd73cd3313bc1801d277cc29961c9fdee1d817387126c6b056d2a9568',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/70ab6fc493c4330ce1a412a5361258e3676e3f36ade75f8f834831e79e0c0ea5.mp3', 3343, '2026-09-13 23:59:16.951168', '85accf8535693baaa1d1abaa895b151165045ca152770e6c08b47235d90df527', 'validated', '{"audio_key":"70ab6fc493c4330ce1a412a5361258e3676e3f36ade75f8f834831e79e0c0ea5","entity_key":"u_summarizing_and_mediation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85accf8535693baaa1d1abaa895b151165045ca152770e6c08b47235d90df527","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/70ab6fc493c4330ce1a412a5361258e3676e3f36ade75f8f834831e79e0c0ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_01 -> audio/generated/ko-KR/utterances/77247d4b4c515b80d38f868a34348ba61634fe5eb5c1171cfa94fda4829ccd75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e99ecc8f-446a-5d73-a2ff-e3ec6c2db9e4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6384df734ca08ce40557a97a5ee56e6f8141cd6a96fdff96d936d4786d3fde8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edb4cd50-d6ad-5b8a-8479-d8de7f85dd8d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e99ecc8f-446a-5d73-a2ff-e3ec6c2db9e4', 1), 'f6384df734ca08ce40557a97a5ee56e6f8141cd6a96fdff96d936d4786d3fde8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/77247d4b4c515b80d38f868a34348ba61634fe5eb5c1171cfa94fda4829ccd75.mp3', 4858, '2026-09-13 23:59:18.387749', '811def5e27d2a5e7d1e7d3573db1727e6b952fce49d736f6f89ff07481a1fefa', 'validated', '{"audio_key":"77247d4b4c515b80d38f868a34348ba61634fe5eb5c1171cfa94fda4829ccd75","entity_key":"u_nuanced_stance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"811def5e27d2a5e7d1e7d3573db1727e6b952fce49d736f6f89ff07481a1fefa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/77247d4b4c515b80d38f868a34348ba61634fe5eb5c1171cfa94fda4829ccd75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_04 -> audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa87613e-8ce7-5eca-b41a-36ee26ed42fe', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a11fd9ab6e7e28774a8b70c875ecea69db606a513a382c08dd8186208039b06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('939ffda9-11e9-575c-879e-4acbb5fbd33b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa87613e-8ce7-5eca-b41a-36ee26ed42fe', 1), '4a11fd9ab6e7e28774a8b70c875ecea69db606a513a382c08dd8186208039b06',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3', 5276, '2026-09-13 23:59:18.439382', 'e8163b3c7b64ea5a9070ef854f29fac81091943213f59fc1bd45cbceca74e366', 'validated', '{"audio_key":"7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874","entity_key":"u_formal_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8163b3c7b64ea5a9070ef854f29fac81091943213f59fc1bd45cbceca74e366","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_02_listen -> audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c56915f2-77bf-5339-9304-10ffe60936d6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a11fd9ab6e7e28774a8b70c875ecea69db606a513a382c08dd8186208039b06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df992df0-c1a6-5d58-966d-3404b5b8ae51', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c56915f2-77bf-5339-9304-10ffe60936d6', 1), '4a11fd9ab6e7e28774a8b70c875ecea69db606a513a382c08dd8186208039b06',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3', 5276, '2026-09-13 23:59:18.439382', 'e8163b3c7b64ea5a9070ef854f29fac81091943213f59fc1bd45cbceca74e366', 'validated', '{"audio_key":"7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874","entity_key":"e_formal_negotiation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8163b3c7b64ea5a9070ef854f29fac81091943213f59fc1bd45cbceca74e366","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7e01fbe5bbdf32109fc897312a81d36aea1fb60eb4d925acb0b78ee4ed72c874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_comparison_02 -> audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('913df570-c663-5cda-953c-658744b97f66', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8733752391fd73d7213387a7246dec392b59fb1e04931fea1eaf76f2aec27569'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54ae9291-321b-5772-b092-a659916decfc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('913df570-c663-5cda-953c-658744b97f66', 1), '8733752391fd73d7213387a7246dec392b59fb1e04931fea1eaf76f2aec27569',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3', 5982, '2026-09-13 23:59:19.940135', 'cd4ce6befe1cc930d31bec62b1a47fc787eaed977d6dd2111531647924a18933', 'validated', '{"audio_key":"87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2","entity_key":"u_source_comparison_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd4ce6befe1cc930d31bec62b1a47fc787eaed977d6dd2111531647924a18933","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_source_comparison_01_listen -> audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1937e292-ec94-58fb-8147-a6ca4d37e883', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_source_comparison_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8733752391fd73d7213387a7246dec392b59fb1e04931fea1eaf76f2aec27569'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('351c739c-1152-5fec-a358-2722468858af', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1937e292-ec94-58fb-8147-a6ca4d37e883', 1), '8733752391fd73d7213387a7246dec392b59fb1e04931fea1eaf76f2aec27569',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3', 5982, '2026-09-13 23:59:19.940135', 'cd4ce6befe1cc930d31bec62b1a47fc787eaed977d6dd2111531647924a18933', 'validated', '{"audio_key":"87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2","entity_key":"e_source_comparison_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd4ce6befe1cc930d31bec62b1a47fc787eaed977d6dd2111531647924a18933","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/87eab78abeba4d0e75dda06e7c9bed71f3e98516a4a0b2891370d33131585ef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reflection_02 -> audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e3bf11c-5b67-5938-bd4d-37cb20100694', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d4c7f8605e82929dfbb21196a0ed66199d581f57fb6fba7e01b86edef30be4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('843c7adf-4140-53e0-850a-1227ab49e13d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e3bf11c-5b67-5938-bd4d-37cb20100694', 1), 'f2d4c7f8605e82929dfbb21196a0ed66199d581f57fb6fba7e01b86edef30be4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3', 4022, '2026-09-13 23:59:19.776039', '9550c9f472749b09f456795f0e5ca823e7a7db3f92eb6541fdb6e3986cbb045c', 'validated', '{"audio_key":"8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494","entity_key":"u_counterfactual_reflection_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9550c9f472749b09f456795f0e5ca823e7a7db3f92eb6541fdb6e3986cbb045c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_reflection_01_listen -> audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c89bffba-e4a5-5fcf-9d1b-1f4fe6d394c2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_reflection_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d4c7f8605e82929dfbb21196a0ed66199d581f57fb6fba7e01b86edef30be4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71db460b-4d54-5f79-8ecc-59f4da81a3ac', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c89bffba-e4a5-5fcf-9d1b-1f4fe6d394c2', 1), 'f2d4c7f8605e82929dfbb21196a0ed66199d581f57fb6fba7e01b86edef30be4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3', 4022, '2026-09-13 23:59:19.776039', '9550c9f472749b09f456795f0e5ca823e7a7db3f92eb6541fdb6e3986cbb045c', 'validated', '{"audio_key":"8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494","entity_key":"e_counterfactual_reflection_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9550c9f472749b09f456795f0e5ca823e7a7db3f92eb6541fdb6e3986cbb045c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8ddb77a11e7de1ca1ffe7c5e0684e47d077d64d43d706ece64325034582a9494.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_02 -> audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('34c4acca-8459-5615-9787-ee6b5f96b45f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d616632ecbf7d4d06abac38b321a63ebc4d1057185da4d2a172d0d39aec910'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2e008ed-b8e3-5fb2-b82d-cdd61865dbdf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('34c4acca-8459-5615-9787-ee6b5f96b45f', 1), '28d616632ecbf7d4d06abac38b321a63ebc4d1057185da4d2a172d0d39aec910',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3', 4075, '2026-09-13 23:59:21.108621', 'e0b7dfab22c5f7a46330bb7ff35e0a4050257bb0634c1b946f2fb809e3e70887', 'validated', '{"audio_key":"9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84","entity_key":"u_concession_and_disagreement_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0b7dfab22c5f7a46330bb7ff35e0a4050257bb0634c1b946f2fb809e3e70887","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_disagreement_01_listen -> audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('87a3b8da-8ef0-5f35-b0bf-cb0e7b8af14d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_disagreement_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d616632ecbf7d4d06abac38b321a63ebc4d1057185da4d2a172d0d39aec910'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52014062-6aa2-5466-8c47-ca5bd430f49d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('87a3b8da-8ef0-5f35-b0bf-cb0e7b8af14d', 1), '28d616632ecbf7d4d06abac38b321a63ebc4d1057185da4d2a172d0d39aec910',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3', 4075, '2026-09-13 23:59:21.108621', 'e0b7dfab22c5f7a46330bb7ff35e0a4050257bb0634c1b946f2fb809e3e70887', 'validated', '{"audio_key":"9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84","entity_key":"e_concession_and_disagreement_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0b7dfab22c5f7a46330bb7ff35e0a4050257bb0634c1b946f2fb809e3e70887","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9f1cf80ad53a1137abc3ddf8eb3075359dc9f274ee74f1deb4b1ef5899e32b84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reflection_03 -> audio/generated/ko-KR/utterances/a243111c74856a5bef89dd719cfbab47f18393458dd72543efc9535554f64984.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6e35cded-8f88-51cd-abe7-ac9538a21f30', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd476c97ec7061bd50e314fb0f81775de066baba2084955e23380a9e0a2eefa40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6557f368-a1f5-55a7-bf53-9f03db326a65', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6e35cded-8f88-51cd-abe7-ac9538a21f30', 1), 'd476c97ec7061bd50e314fb0f81775de066baba2084955e23380a9e0a2eefa40',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a243111c74856a5bef89dd719cfbab47f18393458dd72543efc9535554f64984.mp3', 3892, '2026-09-13 23:59:21.260978', 'd2540f6a6637db920acfb69a46bb9975fd41763cc4f846ae3c1ea4fda11da24f', 'validated', '{"audio_key":"a243111c74856a5bef89dd719cfbab47f18393458dd72543efc9535554f64984","entity_key":"u_counterfactual_reflection_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d2540f6a6637db920acfb69a46bb9975fd41763cc4f846ae3c1ea4fda11da24f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a243111c74856a5bef89dd719cfbab47f18393458dd72543efc9535554f64984.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_and_mediation_01 -> audio/generated/ko-KR/utterances/a4d5eebf82b18034144260ac69c8289e1d61a88885feaba71d3cae9021f0cbd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26b7c1e5-0f8a-5cc9-9d77-5790f2d2a51c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_and_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaa739ef32a527e2452e04d7527b1a48813564f09fcfd2a4a06115279313bf6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a6aefee-56f3-5d18-84b6-3b1f4314e696', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26b7c1e5-0f8a-5cc9-9d77-5790f2d2a51c', 1), 'eaa739ef32a527e2452e04d7527b1a48813564f09fcfd2a4a06115279313bf6b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a4d5eebf82b18034144260ac69c8289e1d61a88885feaba71d3cae9021f0cbd4.mp3', 4858, '2026-09-13 23:59:22.528084', '14a13dc25d42f70bdd55aedfe01988dd20d18b78ea35e2a558f97afa59b824a6', 'validated', '{"audio_key":"a4d5eebf82b18034144260ac69c8289e1d61a88885feaba71d3cae9021f0cbd4","entity_key":"u_summarizing_and_mediation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14a13dc25d42f70bdd55aedfe01988dd20d18b78ea35e2a558f97afa59b824a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a4d5eebf82b18034144260ac69c8289e1d61a88885feaba71d3cae9021f0cbd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_inference_01 -> audio/generated/ko-KR/utterances/a6b7e7f698b498dceda21957171507fb25065d7f3d930dfc3780c38c071d2589.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('986cdaa3-f215-570d-928c-d0f44b67b04a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_inference_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3153aacf64d8dadb815ab12ab286e302c803763a78cc48d3b4820f61943e5f6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d4ada5f-e292-5235-bddb-9118f3c9ab6c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('986cdaa3-f215-570d-928c-d0f44b67b04a', 1), '3153aacf64d8dadb815ab12ab286e302c803763a78cc48d3b4820f61943e5f6e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a6b7e7f698b498dceda21957171507fb25065d7f3d930dfc3780c38c071d2589.mp3', 4205, '2026-09-13 23:59:22.636922', 'da7fbfc4991285bff9b41aa08aab74c28a78bd2872d241d23fd97217784efe41', 'validated', '{"audio_key":"a6b7e7f698b498dceda21957171507fb25065d7f3d930dfc3780c38c071d2589","entity_key":"u_evidence_and_inference_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da7fbfc4991285bff9b41aa08aab74c28a78bd2872d241d23fd97217784efe41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a6b7e7f698b498dceda21957171507fb25065d7f3d930dfc3780c38c071d2589.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_inference_02 -> audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1af16fbd-fd8e-5dba-ba29-0e364e7ff1a6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_inference_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b813141cfd70672e9393dbf2aa9ad830c401c2bc3640359a53a643b7a82d678c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbeb7bf1-2533-5f3e-8ce8-586aa517cd67', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1af16fbd-fd8e-5dba-ba29-0e364e7ff1a6', 1), 'b813141cfd70672e9393dbf2aa9ad830c401c2bc3640359a53a643b7a82d678c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3', 3944, '2026-09-13 23:59:23.786196', '0980d01a44dc0095df64f103f0f7a332c048d7be61978b5180feb872d3eb40ab', 'validated', '{"audio_key":"b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1","entity_key":"u_evidence_and_inference_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0980d01a44dc0095df64f103f0f7a332c048d7be61978b5180feb872d3eb40ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidence_and_inference_01_listen -> audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc7cf174-455e-5193-9ae9-2ba159687c4b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidence_and_inference_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b813141cfd70672e9393dbf2aa9ad830c401c2bc3640359a53a643b7a82d678c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0896ab38-5024-58bf-9239-d69b2a66d665', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc7cf174-455e-5193-9ae9-2ba159687c4b', 1), 'b813141cfd70672e9393dbf2aa9ad830c401c2bc3640359a53a643b7a82d678c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3', 3944, '2026-09-13 23:59:23.786196', '0980d01a44dc0095df64f103f0f7a332c048d7be61978b5180feb872d3eb40ab', 'validated', '{"audio_key":"b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1","entity_key":"e_evidence_and_inference_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0980d01a44dc0095df64f103f0f7a332c048d7be61978b5180feb872d3eb40ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b1cc07c186c5f6cf64a16c66f56c9d4a3b93ce2b942dff4418a7fbd7b639eaf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_and_responsibility_03 -> audio/generated/ko-KR/utterances/d25a3291dd4dd0f47cd53a197f02e8d0af9ba1e08a08d00be1a8ad81d1cfb031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7ca6459b-bfdc-5134-aa19-136d6102de56', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_and_responsibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be2a35df65b5208dbd8893eb69ca8dbcf187de8a41fbc991ca784e536e6e345d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a8ce596-a4da-5e6e-a344-30ee6977b0e2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7ca6459b-bfdc-5134-aa19-136d6102de56', 1), 'be2a35df65b5208dbd8893eb69ca8dbcf187de8a41fbc991ca784e536e6e345d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d25a3291dd4dd0f47cd53a197f02e8d0af9ba1e08a08d00be1a8ad81d1cfb031.mp3', 4075, '2026-09-13 23:59:24.014052', '2a70566b92ac89799d6ad8193c185a07491da65ec855a71897adf4440409635e', 'validated', '{"audio_key":"d25a3291dd4dd0f47cd53a197f02e8d0af9ba1e08a08d00be1a8ad81d1cfb031","entity_key":"u_process_and_responsibility_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a70566b92ac89799d6ad8193c185a07491da65ec855a71897adf4440409635e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d25a3291dd4dd0f47cd53a197f02e8d0af9ba1e08a08d00be1a8ad81d1cfb031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_seoul_forum_capstone_01 -> audio/generated/ko-KR/utterances/d2b6f6d707b280ba673a43a5c354fb3bd2174ba848d8a3cdd0d5035745134037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9dee0df-854b-5c2e-b237-d72db27a4055', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_seoul_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df795209d3a25608b9777ecb5ba9e96eaed648cfa71df13e10b816454a55bda4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b17f2836-bdcb-5264-ba3e-e1f696d05463', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9dee0df-854b-5c2e-b237-d72db27a4055', 1), 'df795209d3a25608b9777ecb5ba9e96eaed648cfa71df13e10b816454a55bda4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d2b6f6d707b280ba673a43a5c354fb3bd2174ba848d8a3cdd0d5035745134037.mp3', 4728, '2026-09-13 23:59:25.236193', '1ff50e2dacf940059e6dce976ad88e234bb964ad8650d73770b1cb3fd053cf8f', 'validated', '{"audio_key":"d2b6f6d707b280ba673a43a5c354fb3bd2174ba848d8a3cdd0d5035745134037","entity_key":"u_b2_seoul_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ff50e2dacf940059e6dce976ad88e234bb964ad8650d73770b1cb3fd053cf8f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d2b6f6d707b280ba673a43a5c354fb3bd2174ba848d8a3cdd0d5035745134037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_02 -> audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc0a783c-ea6a-5c81-ba7e-c3eadd4face1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb573a89b3c71bc3b60e6232d1e986a62bf9791618670e484d84e4d12469ea9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22471069-d4a1-5685-a2cf-b1664866a0fc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc0a783c-ea6a-5c81-ba7e-c3eadd4face1', 1), 'eb573a89b3c71bc3b60e6232d1e986a62bf9791618670e484d84e4d12469ea9c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3', 4675, '2026-09-13 23:59:25.418251', 'd35904271a15f5bb1f26c107c4a26ec7e1df0620faa0f3b74341b8b0a0ac51de', 'validated', '{"audio_key":"daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9","entity_key":"u_nuanced_stance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d35904271a15f5bb1f26c107c4a26ec7e1df0620faa0f3b74341b8b0a0ac51de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nuanced_stance_01_listen -> audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a6fae25c-ba85-565c-a6eb-2c71f9ebd09d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nuanced_stance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb573a89b3c71bc3b60e6232d1e986a62bf9791618670e484d84e4d12469ea9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26eb74ef-b86e-5968-ae99-c88df0b754f8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a6fae25c-ba85-565c-a6eb-2c71f9ebd09d', 1), 'eb573a89b3c71bc3b60e6232d1e986a62bf9791618670e484d84e4d12469ea9c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3', 4675, '2026-09-13 23:59:25.418251', 'd35904271a15f5bb1f26c107c4a26ec7e1df0620faa0f3b74341b8b0a0ac51de', 'validated', '{"audio_key":"daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9","entity_key":"e_nuanced_stance_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d35904271a15f5bb1f26c107c4a26ec7e1df0620faa0f3b74341b8b0a0ac51de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/daf3ce99f6747783d0b731ef8ffb089e61fbb6b906957195efa849c99cc606a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_03 -> audio/generated/ko-KR/utterances/e7029819b0bb6a6b2caadb253fd055d2fd4dc86ce6fecc3387d388a1b99d56be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22ce492b-e82c-591c-9f23-7de2a149039a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f6959908c8e2e9c18ad40e9d840ee04beee1cd8ce098fcb1283411fe7484eca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d447e10e-312e-5210-9676-129b1b2ae679', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22ce492b-e82c-591c-9f23-7de2a149039a', 1), '2f6959908c8e2e9c18ad40e9d840ee04beee1cd8ce098fcb1283411fe7484eca',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e7029819b0bb6a6b2caadb253fd055d2fd4dc86ce6fecc3387d388a1b99d56be.mp3', 4493, '2026-09-13 23:59:26.551248', 'f779023d617c288c3301d69ae4b899302adfdf0a8bdc45a4cf097cfa518dd769', 'validated', '{"audio_key":"e7029819b0bb6a6b2caadb253fd055d2fd4dc86ce6fecc3387d388a1b99d56be","entity_key":"u_formal_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f779023d617c288c3301d69ae4b899302adfdf0a8bdc45a4cf097cfa518dd769","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e7029819b0bb6a6b2caadb253fd055d2fd4dc86ce6fecc3387d388a1b99d56be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_04 -> audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6fb62802-9566-5167-b186-d5342115df96', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47000acef52f721d56c1c2a943793849496e384c2be72dfe6c75cdd990ea9668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e3a1654-d306-5752-8748-73d34dcad20f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6fb62802-9566-5167-b186-d5342115df96', 1), '47000acef52f721d56c1c2a943793849496e384c2be72dfe6c75cdd990ea9668',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3', 3291, '2026-09-13 23:59:26.629965', 'ec2e48d7d6e9632443007b799d20a1b2f7fc41d6ab7f3522dd8d59b153f109f1', 'validated', '{"audio_key":"f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11","entity_key":"u_nuanced_stance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec2e48d7d6e9632443007b799d20a1b2f7fc41d6ab7f3522dd8d59b153f109f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nuanced_stance_02_listen -> audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cf23c32f-5940-510b-81df-ed0709e4dee9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nuanced_stance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47000acef52f721d56c1c2a943793849496e384c2be72dfe6c75cdd990ea9668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97eb8fa6-6c98-5696-b45c-bdc702bc5729', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cf23c32f-5940-510b-81df-ed0709e4dee9', 1), '47000acef52f721d56c1c2a943793849496e384c2be72dfe6c75cdd990ea9668',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3', 3291, '2026-09-13 23:59:26.629965', 'ec2e48d7d6e9632443007b799d20a1b2f7fc41d6ab7f3522dd8d59b153f109f1', 'validated', '{"audio_key":"f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11","entity_key":"e_nuanced_stance_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec2e48d7d6e9632443007b799d20a1b2f7fc41d6ab7f3522dd8d59b153f109f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f0f77da35f202a9655373c2d03249def82213ba31e71074d03165cdca4e56a11.mp3"}'
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

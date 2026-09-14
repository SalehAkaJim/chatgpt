-- Generated audio link import for it-IT C2
-- Source manifest: audio/manifests/it/C2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_high_stakes_debate_02:1 -> audio/generated/it-IT/dialogues/00330480cd18a9af1d413eb861d0e77ca0e099d9f5b483c8bddd43a42f750a7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06858b2e-3e0d-5bbb-99a8-f496276d399a', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ee445c1966046b0d8ae3befdb76bef3762c430ed4f1a312ac188340c996281d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b645164a-cc5d-559e-8e97-875d370668cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06858b2e-3e0d-5bbb-99a8-f496276d399a', 1), '9ee445c1966046b0d8ae3befdb76bef3762c430ed4f1a312ac188340c996281d',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/00330480cd18a9af1d413eb861d0e77ca0e099d9f5b483c8bddd43a42f750a7a.mp3', 2351, '2026-09-14 07:28:08.504306', '99922d252ec1ab81b8a6c3f7dede96b70c6e5a482bfe7c55af1752fbe6b47a16', 'validated', '{"audio_key":"00330480cd18a9af1d413eb861d0e77ca0e099d9f5b483c8bddd43a42f750a7a","entity_key":"d_high_stakes_debate_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"99922d252ec1ab81b8a6c3f7dede96b70c6e5a482bfe7c55af1752fbe6b47a16","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/00330480cd18a9af1d413eb861d0e77ca0e099d9f5b483c8bddd43a42f750a7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_01:1 -> audio/generated/it-IT/dialogues/032aa70ad45562a4bfdd5e874b5c4d9fb2e9596fd2649e04ab0570c64f1bc00c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17f35b37-166b-5035-9bb3-27527705b23b', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e8a3f401c5d7e33bcc9614b4e94c35d87f658c7e2822b76d352193f091825e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7182bd37-466d-5c1e-99b8-dfdfa8b1b4fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17f35b37-166b-5035-9bb3-27527705b23b', 1), '7e8a3f401c5d7e33bcc9614b4e94c35d87f658c7e2822b76d352193f091825e8',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/032aa70ad45562a4bfdd5e874b5c4d9fb2e9596fd2649e04ab0570c64f1bc00c.mp3', 2586, '2026-09-14 07:28:08.505272', 'f8f244a368278c845bb3c8eea41f5644d18447d1a5f8f8e0b72d7b4d6bfc27fc', 'validated', '{"audio_key":"032aa70ad45562a4bfdd5e874b5c4d9fb2e9596fd2649e04ab0570c64f1bc00c","entity_key":"d_irony_and_understatement_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8f244a368278c845bb3c8eea41f5644d18447d1a5f8f8e0b72d7b4d6bfc27fc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/032aa70ad45562a4bfdd5e874b5c4d9fb2e9596fd2649e04ab0570c64f1bc00c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_02:1 -> audio/generated/it-IT/dialogues/041148ad9190e86e83168f131c48f6ffd6fc41d409bed435f5b47f6af9bfa1bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('272fc624-af7b-5674-a98d-049735f31aea', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c399f55c314a62ac1af5549ef7fbfa140369e6086f0a025ae36d08c1604dcd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c78de7d4-f209-5f54-a19c-4d8792a61ac1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('272fc624-af7b-5674-a98d-049735f31aea', 1), '1c399f55c314a62ac1af5549ef7fbfa140369e6086f0a025ae36d08c1604dcd4',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/041148ad9190e86e83168f131c48f6ffd6fc41d409bed435f5b47f6af9bfa1bb.mp3', 3239, '2026-09-14 07:28:09.744263', 'a24d6f2638ba232449f1c90da5c1d52dc10f4929c8cd64ad593a369804e86a8b', 'validated', '{"audio_key":"041148ad9190e86e83168f131c48f6ffd6fc41d409bed435f5b47f6af9bfa1bb","entity_key":"d_inferential_precision_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"a24d6f2638ba232449f1c90da5c1d52dc10f4929c8cd64ad593a369804e86a8b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/041148ad9190e86e83168f131c48f6ffd6fc41d409bed435f5b47f6af9bfa1bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_02:4 -> audio/generated/it-IT/dialogues/0721df27794cff62aa9c3289e487b17aefaee81704a5d6f82ee48ea77fab86d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41e3a9d4-e323-57a4-a070-bbc2cf08d21f', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0d9910276afd06f47c98fb5e2981edf64bfcc5e1386a6f051a1900e138c98a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf73494d-bddd-50af-bc67-5ecfa66add7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41e3a9d4-e323-57a4-a070-bbc2cf08d21f', 1), 'd0d9910276afd06f47c98fb5e2981edf64bfcc5e1386a6f051a1900e138c98a7',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0721df27794cff62aa9c3289e487b17aefaee81704a5d6f82ee48ea77fab86d6.mp3', 2403, '2026-09-14 07:28:09.717376', '2f43bed2b708d7e610a88b6c7c7f916716e763acc0c4886d21a6bbb807f3ad1a', 'validated', '{"audio_key":"0721df27794cff62aa9c3289e487b17aefaee81704a5d6f82ee48ea77fab86d6","entity_key":"d_cultural_intertextuality_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2f43bed2b708d7e610a88b6c7c7f916716e763acc0c4886d21a6bbb807f3ad1a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/0721df27794cff62aa9c3289e487b17aefaee81704a5d6f82ee48ea77fab86d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_01:4 -> audio/generated/it-IT/dialogues/0d718031c7fec590992f9da0f175614fa1164fb7db8dfc8dbbe41e764ee7b704.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ebdf8f1d-38f3-5d03-a085-d96ef4c73e6d', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80603bc04df1470fcfab746d17926d8a162d53f9c11587cd71918772e174a1be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c04905f-b0a6-5d4f-94d8-cb7ec0f7c344', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ebdf8f1d-38f3-5d03-a085-d96ef4c73e6d', 1), '80603bc04df1470fcfab746d17926d8a162d53f9c11587cd71918772e174a1be',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0d718031c7fec590992f9da0f175614fa1164fb7db8dfc8dbbe41e764ee7b704.mp3', 3239, '2026-09-14 07:28:11.601516', 'd246c1ff6881d16005f47d52ab34f562faf39570233f0ffdd6232b4057024519', 'validated', '{"audio_key":"0d718031c7fec590992f9da0f175614fa1164fb7db8dfc8dbbe41e764ee7b704","entity_key":"d_irony_and_understatement_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d246c1ff6881d16005f47d52ab34f562faf39570233f0ffdd6232b4057024519","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0d718031c7fec590992f9da0f175614fa1164fb7db8dfc8dbbe41e764ee7b704.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_02:3 -> audio/generated/it-IT/dialogues/1162da9fc6cf230f024c0898615366d317f61214a802c81c529baa67d1cc1df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('97b05df9-5d40-5924-9c98-6672be02735b', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36b8e4cabace74e95b426f63ee26ff7ab68555641b1bf8321f9f4e3a86a2e1a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8bc16c0-fea7-5205-98ee-2b7741d41d8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('97b05df9-5d40-5924-9c98-6672be02735b', 1), '36b8e4cabace74e95b426f63ee26ff7ab68555641b1bf8321f9f4e3a86a2e1a1',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1162da9fc6cf230f024c0898615366d317f61214a802c81c529baa67d1cc1df4.mp3', 1854, '2026-09-14 07:28:11.082007', '5a5394c6730b5b5745434755f8aeffd138423701c41b513af4cd4374cb9ba6fb', 'validated', '{"audio_key":"1162da9fc6cf230f024c0898615366d317f61214a802c81c529baa67d1cc1df4","entity_key":"d_high_stakes_debate_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"5a5394c6730b5b5745434755f8aeffd138423701c41b513af4cd4374cb9ba6fb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/1162da9fc6cf230f024c0898615366d317f61214a802c81c529baa67d1cc1df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:2 -> audio/generated/it-IT/dialogues/14a53e2d9f37f55debb17f34e7af0b9698b0ebe731571a164073701e6cc581b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3856be8e-aca0-5478-8f0a-8bb4c66bd730', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a14c7e93a364cf9259012829305e3845e9a9f09de92ed3dd54d51e90393a5851'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f52bf9e6-af7d-58ad-8951-a8c11d592716', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3856be8e-aca0-5478-8f0a-8bb4c66bd730', 1), 'a14c7e93a364cf9259012829305e3845e9a9f09de92ed3dd54d51e90393a5851',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/14a53e2d9f37f55debb17f34e7af0b9698b0ebe731571a164073701e6cc581b0.mp3', 2742, '2026-09-14 07:28:12.518712', 'a9a1539f597ef32af197d7f9b699dce61713942acec5ce6f63a46f74197770b7', 'validated', '{"audio_key":"14a53e2d9f37f55debb17f34e7af0b9698b0ebe731571a164073701e6cc581b0","entity_key":"d_counterfactual_reasoning_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a9a1539f597ef32af197d7f9b699dce61713942acec5ce6f63a46f74197770b7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/14a53e2d9f37f55debb17f34e7af0b9698b0ebe731571a164073701e6cc581b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_02:1 -> audio/generated/it-IT/dialogues/17681b36e732f2342beca36a817412ee52bbe5d76643263fbb6ba4e2c4a65244.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26eb107e-f8c9-5d65-81ae-0a80368d82a2', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34f0b5c1c51197e4155c884a921376cbf4e531e38eb4ff31c38b39e57589b6ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80946dff-e7a3-51d3-a7da-b5090381e9ac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26eb107e-f8c9-5d65-81ae-0a80368d82a2', 1), '34f0b5c1c51197e4155c884a921376cbf4e531e38eb4ff31c38b39e57589b6ff',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/17681b36e732f2342beca36a817412ee52bbe5d76643263fbb6ba4e2c4a65244.mp3', 3004, '2026-09-14 07:28:12.897391', 'be7b7c40d8e3fd0e4622fa0a9bc173cdfd1b65efdf52d6d9ba2474a9f90baba8', 'validated', '{"audio_key":"17681b36e732f2342beca36a817412ee52bbe5d76643263fbb6ba4e2c4a65244","entity_key":"d_stylistic_editing_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"be7b7c40d8e3fd0e4622fa0a9bc173cdfd1b65efdf52d6d9ba2474a9f90baba8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/17681b36e732f2342beca36a817412ee52bbe5d76643263fbb6ba4e2c4a65244.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:3 -> audio/generated/it-IT/dialogues/1960322069fcd1dfdfd356dc64b36061531c8902fee61865421d83cd9808c448.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6eeb3095-ad2e-55b1-a105-43211820777c', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c98fccb1e88f28a946e11a46cdeffa6b627482af75379c0c5121758e0260df7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be25531d-ea7c-5280-8215-bd6fba1a94ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6eeb3095-ad2e-55b1-a105-43211820777c', 1), '5c98fccb1e88f28a946e11a46cdeffa6b627482af75379c0c5121758e0260df7',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1960322069fcd1dfdfd356dc64b36061531c8902fee61865421d83cd9808c448.mp3', 3422, '2026-09-14 07:28:13.795027', '5c44f99391f02f27b7bd7c35485d63bffbd3ebd7ac3d040c86e583a4b3b3a67a', 'validated', '{"audio_key":"1960322069fcd1dfdfd356dc64b36061531c8902fee61865421d83cd9808c448","entity_key":"d_counterfactual_reasoning_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"5c44f99391f02f27b7bd7c35485d63bffbd3ebd7ac3d040c86e583a4b3b3a67a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/1960322069fcd1dfdfd356dc64b36061531c8902fee61865421d83cd9808c448.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_01:1 -> audio/generated/it-IT/dialogues/1b218525c531c720e27eaa7b041e32f547316761d4cdf3472842af9928f73dd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2f3957e-d37c-55e7-9bf2-31d7973b0d0b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '006062290f9e9b2e333726b43078f2dabe34f60a9c694b5ebc391d75cbe00d46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5114ad91-17cd-5890-bc7c-6b32e415c8d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2f3957e-d37c-55e7-9bf2-31d7973b0d0b', 1), '006062290f9e9b2e333726b43078f2dabe34f60a9c694b5ebc391d75cbe00d46',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1b218525c531c720e27eaa7b041e32f547316761d4cdf3472842af9928f73dd2.mp3', 1854, '2026-09-14 07:28:14.147124', '16e8d5fee8123ddf745df22e3aa29d54ee0f41f68daa02138b183e5639514ae4', 'validated', '{"audio_key":"1b218525c531c720e27eaa7b041e32f547316761d4cdf3472842af9928f73dd2","entity_key":"d_cultural_intertextuality_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"16e8d5fee8123ddf745df22e3aa29d54ee0f41f68daa02138b183e5639514ae4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/1b218525c531c720e27eaa7b041e32f547316761d4cdf3472842af9928f73dd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_01:1 -> audio/generated/it-IT/dialogues/209b0584f64810bb18b95aa7d0140ba0a19b90c886ba45eaf029eb7f8ba77e2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1939d342-cf7c-5e25-94b0-72302076e0d0', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec9d95244edd91a89496a6c94e9037eaa88c6de3592c1de68f5c39b74b2c69bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f0bb0e8-3b04-5d3d-a64d-ac7b4a957d08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1939d342-cf7c-5e25-94b0-72302076e0d0', 1), 'ec9d95244edd91a89496a6c94e9037eaa88c6de3592c1de68f5c39b74b2c69bf',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/209b0584f64810bb18b95aa7d0140ba0a19b90c886ba45eaf029eb7f8ba77e2f.mp3', 3056, '2026-09-14 07:28:14.989563', '7d95aa66813ac847a6915605427288dfa2093646c56345de042850f90a284e67', 'validated', '{"audio_key":"209b0584f64810bb18b95aa7d0140ba0a19b90c886ba45eaf029eb7f8ba77e2f","entity_key":"d_inferential_precision_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"7d95aa66813ac847a6915605427288dfa2093646c56345de042850f90a284e67","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/209b0584f64810bb18b95aa7d0140ba0a19b90c886ba45eaf029eb7f8ba77e2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_02:2 -> audio/generated/it-IT/dialogues/292d625035d467890d4b56144fc06ae71e9fa31784c1665018270424ea09b9be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c84a863-35f3-5a09-a334-2dd86ad6ff2d', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12e744d4e2a5fc7912e85e0e45a43fbdba9abb4b4fa291938ab61b787ab1d4de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('914ce04a-1699-54ba-bc75-183940ab971c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c84a863-35f3-5a09-a334-2dd86ad6ff2d', 1), '12e744d4e2a5fc7912e85e0e45a43fbdba9abb4b4fa291938ab61b787ab1d4de',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/292d625035d467890d4b56144fc06ae71e9fa31784c1665018270424ea09b9be.mp3', 2873, '2026-09-14 07:28:15.445242', 'f831c98bbc840752593065977126aa3490070afbac070df33b61407cf20c4d25', 'validated', '{"audio_key":"292d625035d467890d4b56144fc06ae71e9fa31784c1665018270424ea09b9be","entity_key":"d_strategic_ambiguity_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f831c98bbc840752593065977126aa3490070afbac070df33b61407cf20c4d25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/292d625035d467890d4b56144fc06ae71e9fa31784c1665018270424ea09b9be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_01:1 -> audio/generated/it-IT/dialogues/2d83438e0062344f5f26de5d7b61138afb6ec90d9999209acff016ef01180835.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8af26ee5-7c37-55ee-b71e-1a9c60f76dca', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7537a75fb76aa3f8917f27aa0cf4973f624a2cc001fe4430376c76eef56ff3d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5f90c51-4dac-5947-892f-097fcf7fc198', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8af26ee5-7c37-55ee-b71e-1a9c60f76dca', 1), '7537a75fb76aa3f8917f27aa0cf4973f624a2cc001fe4430376c76eef56ff3d1',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2d83438e0062344f5f26de5d7b61138afb6ec90d9999209acff016ef01180835.mp3', 2168, '2026-09-14 07:28:16.045411', '3318eb0af220c860d1c9bc81dcd01a871133af36f46f32e32a722a5558cca407', 'validated', '{"audio_key":"2d83438e0062344f5f26de5d7b61138afb6ec90d9999209acff016ef01180835","entity_key":"d_academic_critique_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"3318eb0af220c860d1c9bc81dcd01a871133af36f46f32e32a722a5558cca407","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/2d83438e0062344f5f26de5d7b61138afb6ec90d9999209acff016ef01180835.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_01:3 -> audio/generated/it-IT/dialogues/2e0033612cd60af2e1f4ba22e15e756925938afbc9a3457115e4238f0fb77921.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9cc2431b-f00b-5a82-9f70-944d39b26cce', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e0863cd2eec8b4d28cbbfb28aec666bd41663072de80d6b27d113c9ac5c5d1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52acea64-ddb3-5bfa-9878-5c8b9c5040e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9cc2431b-f00b-5a82-9f70-944d39b26cce', 1), '6e0863cd2eec8b4d28cbbfb28aec666bd41663072de80d6b27d113c9ac5c5d1c',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2e0033612cd60af2e1f4ba22e15e756925938afbc9a3457115e4238f0fb77921.mp3', 2220, '2026-09-14 07:28:16.608899', '67fb061a7926696b8775d8ef12b832bc7af0d85f1d1968203c3008e292600305', 'validated', '{"audio_key":"2e0033612cd60af2e1f4ba22e15e756925938afbc9a3457115e4238f0fb77921","entity_key":"d_strategic_ambiguity_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"67fb061a7926696b8775d8ef12b832bc7af0d85f1d1968203c3008e292600305","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/2e0033612cd60af2e1f4ba22e15e756925938afbc9a3457115e4238f0fb77921.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_02:2 -> audio/generated/it-IT/dialogues/32ae368bf7ca30814390ad13d140185129e32b28ec26b241b27d4574f9f1bac0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('733bbc38-5f9b-5412-be5b-5b24420ae977', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b8fb524d4965e45a9f698dada382f9c744f534fbec01098c283caacda7d8dcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5df36e9-f502-5426-a5de-bfc877c220d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('733bbc38-5f9b-5412-be5b-5b24420ae977', 1), '1b8fb524d4965e45a9f698dada382f9c744f534fbec01098c283caacda7d8dcc',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/32ae368bf7ca30814390ad13d140185129e32b28ec26b241b27d4574f9f1bac0.mp3', 2272, '2026-09-14 07:28:17.172969', '240572b267cc7a1cdf26359dedc64610bc9df1c71d5e58812845ef0ed42bacaa', 'validated', '{"audio_key":"32ae368bf7ca30814390ad13d140185129e32b28ec26b241b27d4574f9f1bac0","entity_key":"d_institutional_register_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"240572b267cc7a1cdf26359dedc64610bc9df1c71d5e58812845ef0ed42bacaa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/32ae368bf7ca30814390ad13d140185129e32b28ec26b241b27d4574f9f1bac0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_01:4 -> audio/generated/it-IT/dialogues/35677ab2dd51ad196d4751152f66462357000bc653a3c41961ada4bc81f4b4f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d65429f0-7633-5790-9401-ee6ce7b71a2a', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44e0d28fd5d2219d78ae6a3faa46a5db25d88fb8cc68fdd2df0ef9136c9a74a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a724db-8dcd-5aa7-9397-58cff356cef3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d65429f0-7633-5790-9401-ee6ce7b71a2a', 1), '44e0d28fd5d2219d78ae6a3faa46a5db25d88fb8cc68fdd2df0ef9136c9a74a0',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/35677ab2dd51ad196d4751152f66462357000bc653a3c41961ada4bc81f4b4f4.mp3', 3369, '2026-09-14 07:28:17.868978', 'baf2d12c65bb4897cc94d51ef6a788bf31f458dbe7e719392554d1c3e957beeb', 'validated', '{"audio_key":"35677ab2dd51ad196d4751152f66462357000bc653a3c41961ada4bc81f4b4f4","entity_key":"d_academic_critique_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"baf2d12c65bb4897cc94d51ef6a788bf31f458dbe7e719392554d1c3e957beeb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/35677ab2dd51ad196d4751152f66462357000bc653a3c41961ada4bc81f4b4f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_02:3 -> audio/generated/it-IT/dialogues/38033f4d80e891d3262f76c9d59b8e9679f41fa612d0eb722d1e6c8131ba1d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5abc563-2f28-5008-b2df-6d847293d66a', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1ffcbeaa181c9dbfa3d4dcc347f044d3e547370f1acc3a30a50b3327dcd155c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2717636d-8c00-5d4b-86ff-0a60b55e77f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5abc563-2f28-5008-b2df-6d847293d66a', 1), 'b1ffcbeaa181c9dbfa3d4dcc347f044d3e547370f1acc3a30a50b3327dcd155c',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/38033f4d80e891d3262f76c9d59b8e9679f41fa612d0eb722d1e6c8131ba1d26.mp3', 2951, '2026-09-14 07:28:18.309251', 'c5f52323ded3eaf10f4b13fdb78076341355673d4fc50702a8725287e80bde9d', 'validated', '{"audio_key":"38033f4d80e891d3262f76c9d59b8e9679f41fa612d0eb722d1e6c8131ba1d26","entity_key":"d_stylistic_editing_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c5f52323ded3eaf10f4b13fdb78076341355673d4fc50702a8725287e80bde9d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/38033f4d80e891d3262f76c9d59b8e9679f41fa612d0eb722d1e6c8131ba1d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_02:4 -> audio/generated/it-IT/dialogues/3bd085cf57981e922665c046ddc4c2691723ff2c3538e5570a771a594778cbec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e5c0d29-a585-54fd-8d93-67fb05572395', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '340037907be3fcaee8ec62192e44b9f104aef374e9ed3f207303210141ed509c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9f47c68-8640-5915-a478-efd1e83ddc5e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e5c0d29-a585-54fd-8d93-67fb05572395', 1), '340037907be3fcaee8ec62192e44b9f104aef374e9ed3f207303210141ed509c',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3bd085cf57981e922665c046ddc4c2691723ff2c3538e5570a771a594778cbec.mp3', 3004, '2026-09-14 07:28:19.017066', '347bdd25dd1c04486f7d12d724f83c6ca3df3aa3c2a830a23328f84d3581a719', 'validated', '{"audio_key":"3bd085cf57981e922665c046ddc4c2691723ff2c3538e5570a771a594778cbec","entity_key":"d_academic_critique_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"347bdd25dd1c04486f7d12d724f83c6ca3df3aa3c2a830a23328f84d3581a719","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/3bd085cf57981e922665c046ddc4c2691723ff2c3538e5570a771a594778cbec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_02:4 -> audio/generated/it-IT/dialogues/3e8becf2e59c77d0bb107497fd09d75ad4dc9b0f82bf783d809df7a5d517d1f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b781f66-33f3-5a56-b608-8a7b6f6d40d6', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '273f39b2cf0ea797b84276fee379b6c8eab2cdd5b839d68c3bea69e846d76fd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f90c19e-6f25-5b2f-96f2-affb8191aec8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b781f66-33f3-5a56-b608-8a7b6f6d40d6', 1), '273f39b2cf0ea797b84276fee379b6c8eab2cdd5b839d68c3bea69e846d76fd8',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3e8becf2e59c77d0bb107497fd09d75ad4dc9b0f82bf783d809df7a5d517d1f7.mp3', 2768, '2026-09-14 07:28:19.553174', '0805a82e186bfb2b9ec82a3842445e1d2b5f8aa8baa3336a421deb36ee733e83', 'validated', '{"audio_key":"3e8becf2e59c77d0bb107497fd09d75ad4dc9b0f82bf783d809df7a5d517d1f7","entity_key":"d_high_stakes_debate_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0805a82e186bfb2b9ec82a3842445e1d2b5f8aa8baa3336a421deb36ee733e83","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/3e8becf2e59c77d0bb107497fd09d75ad4dc9b0f82bf783d809df7a5d517d1f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_02:3 -> audio/generated/it-IT/dialogues/430739514c7a0946c76d6912c99372b3997a9e06d33122eea5459f4420e08666.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c5ce87b-e613-5315-b451-b0ce7427a6b0', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c385972464fd2fddd841436c690ee762926339be519c975b72eaf504530438d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1623c4aa-9e3e-5d9c-9af5-2f3ddb171d79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c5ce87b-e613-5315-b451-b0ce7427a6b0', 1), '8c385972464fd2fddd841436c690ee762926339be519c975b72eaf504530438d',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/430739514c7a0946c76d6912c99372b3997a9e06d33122eea5459f4420e08666.mp3', 3578, '2026-09-14 07:28:20.299251', 'b95ab73751b2ea5217e8b9ec6fbef8868bd3b9d721515db2cd23eb10fd94ef26', 'validated', '{"audio_key":"430739514c7a0946c76d6912c99372b3997a9e06d33122eea5459f4420e08666","entity_key":"d_inferential_precision_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"b95ab73751b2ea5217e8b9ec6fbef8868bd3b9d721515db2cd23eb10fd94ef26","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/430739514c7a0946c76d6912c99372b3997a9e06d33122eea5459f4420e08666.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_02:3 -> audio/generated/it-IT/dialogues/45b19822721ffe29bd7856f4a2ace83baf086f1d1984302ffcc8e5b6dde820de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('900a55dd-314e-5a33-8c42-9b18e4ddb75a', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dc79e056bb94d205865d1bb07ad98f031d3860a875e54f35219e1360d9ba2de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd70af27-bef2-5513-966a-8d583e7586cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('900a55dd-314e-5a33-8c42-9b18e4ddb75a', 1), '0dc79e056bb94d205865d1bb07ad98f031d3860a875e54f35219e1360d9ba2de',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/45b19822721ffe29bd7856f4a2ace83baf086f1d1984302ffcc8e5b6dde820de.mp3', 1671, '2026-09-14 07:28:20.757099', 'dff0a89063ebaadec99e71fb49e8209e833d7d808805b192361a9eb57730e68e', 'validated', '{"audio_key":"45b19822721ffe29bd7856f4a2ace83baf086f1d1984302ffcc8e5b6dde820de","entity_key":"d_irony_and_understatement_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dff0a89063ebaadec99e71fb49e8209e833d7d808805b192361a9eb57730e68e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/45b19822721ffe29bd7856f4a2ace83baf086f1d1984302ffcc8e5b6dde820de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_01:3 -> audio/generated/it-IT/dialogues/470cf2b58f68ec52aafde3a75b9a0db95928e2b46a6824623aced480629d6fd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de9c7448-70bd-5f1f-9f92-042f69a340ac', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8f3570aad464d90114e302a67fe260c3ec3694d5f46333bccee30c3ae2ef5cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38e29762-9e83-5d4f-8205-c5efca7bfcfd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de9c7448-70bd-5f1f-9f92-042f69a340ac', 1), 'b8f3570aad464d90114e302a67fe260c3ec3694d5f46333bccee30c3ae2ef5cf',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/470cf2b58f68ec52aafde3a75b9a0db95928e2b46a6824623aced480629d6fd6.mp3', 2690, '2026-09-14 07:28:21.497150', 'c64ea9962a88dcb7e742e10eb5e36ad347d163353b9162ac57892a08a82ec92a', 'validated', '{"audio_key":"470cf2b58f68ec52aafde3a75b9a0db95928e2b46a6824623aced480629d6fd6","entity_key":"d_academic_critique_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"c64ea9962a88dcb7e742e10eb5e36ad347d163353b9162ac57892a08a82ec92a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/470cf2b58f68ec52aafde3a75b9a0db95928e2b46a6824623aced480629d6fd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_01:3 -> audio/generated/it-IT/dialogues/49b0045391b54454bfdd3295e220a34108e91df2101a8bf63fc8cbc88bdfaed5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('445ebeb4-117c-5db8-82d6-fedd4207aa74', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '988f94df27506e4a65353c6e77ebd1b812750d0681c37cbea13e434bfac804be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a31e447-4802-55f4-9b3f-c947cb954b4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('445ebeb4-117c-5db8-82d6-fedd4207aa74', 1), '988f94df27506e4a65353c6e77ebd1b812750d0681c37cbea13e434bfac804be',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/49b0045391b54454bfdd3295e220a34108e91df2101a8bf63fc8cbc88bdfaed5.mp3', 2272, '2026-09-14 07:28:21.835201', '6f2e3a98d33f02d762462e9ad328dd5ded4af970840fa60728417f4425fdbd28', 'validated', '{"audio_key":"49b0045391b54454bfdd3295e220a34108e91df2101a8bf63fc8cbc88bdfaed5","entity_key":"d_cultural_intertextuality_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"6f2e3a98d33f02d762462e9ad328dd5ded4af970840fa60728417f4425fdbd28","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/49b0045391b54454bfdd3295e220a34108e91df2101a8bf63fc8cbc88bdfaed5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_02:4 -> audio/generated/it-IT/dialogues/4c5f62f42cf7247213167a8566275d3afcbd9269b2fe0f7b13f4c6c94f3326b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da27dc6e-04e2-5e1e-ab72-b78baf1d4ffb', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b07b0986b531c6aaee20a2dabbdf063cd4bc3049e61bfcb9ed5236e92edf1e23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11f0ad5a-2236-5fc6-9562-5b84ddd6812c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da27dc6e-04e2-5e1e-ab72-b78baf1d4ffb', 1), 'b07b0986b531c6aaee20a2dabbdf063cd4bc3049e61bfcb9ed5236e92edf1e23',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4c5f62f42cf7247213167a8566275d3afcbd9269b2fe0f7b13f4c6c94f3326b7.mp3', 2690, '2026-09-14 07:28:22.615690', '374f0240c4822ad49c68d3ae12d453f34c42cea04cbdbecbfe63e22212506660', 'validated', '{"audio_key":"4c5f62f42cf7247213167a8566275d3afcbd9269b2fe0f7b13f4c6c94f3326b7","entity_key":"d_strategic_ambiguity_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"374f0240c4822ad49c68d3ae12d453f34c42cea04cbdbecbfe63e22212506660","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/4c5f62f42cf7247213167a8566275d3afcbd9269b2fe0f7b13f4c6c94f3326b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_02:4 -> audio/generated/it-IT/dialogues/5539714a7fa22455647a55cbaee740f3d60fe49dbb4cad1bcdcecfc06fb2caa0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65ec7752-6825-5c89-af84-761dd064fdc8', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bd5c5173ab308435c7d978a00fcae1ddb634f156e51145b8b09e41589ce3056'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82ed2b6f-93fd-5be2-8e37-f8d18c9319e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65ec7752-6825-5c89-af84-761dd064fdc8', 1), '0bd5c5173ab308435c7d978a00fcae1ddb634f156e51145b8b09e41589ce3056',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5539714a7fa22455647a55cbaee740f3d60fe49dbb4cad1bcdcecfc06fb2caa0.mp3', 3004, '2026-09-14 07:28:23.133601', 'ffd81917341c91883d1be537628a1556085425fb8c814e1ca29fe8d8a4a574c3', 'validated', '{"audio_key":"5539714a7fa22455647a55cbaee740f3d60fe49dbb4cad1bcdcecfc06fb2caa0","entity_key":"d_irony_and_understatement_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffd81917341c91883d1be537628a1556085425fb8c814e1ca29fe8d8a4a574c3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/5539714a7fa22455647a55cbaee740f3d60fe49dbb4cad1bcdcecfc06fb2caa0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_02:3 -> audio/generated/it-IT/dialogues/56aa864d13611fcb7ecd79169c753c87ddaf7572652f1ce031713e3718a7dc02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17dfdd79-364d-5988-9c0b-fe740708338b', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d418c8201272cc0b21149b64c648c17f30557ad5b03fa1ecb764dfcbcff6bd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaa6f287-1def-5936-a621-2c66451f0c49', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17dfdd79-364d-5988-9c0b-fe740708338b', 1), '1d418c8201272cc0b21149b64c648c17f30557ad5b03fa1ecb764dfcbcff6bd1',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/56aa864d13611fcb7ecd79169c753c87ddaf7572652f1ce031713e3718a7dc02.mp3', 2821, '2026-09-14 07:28:23.918044', 'd598ba07211ea51ce8bbd61db5e70363a428807e1b1b2c8aa961113aa7bc9e85', 'validated', '{"audio_key":"56aa864d13611fcb7ecd79169c753c87ddaf7572652f1ce031713e3718a7dc02","entity_key":"d_cultural_intertextuality_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"d598ba07211ea51ce8bbd61db5e70363a428807e1b1b2c8aa961113aa7bc9e85","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/56aa864d13611fcb7ecd79169c753c87ddaf7572652f1ce031713e3718a7dc02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_01:2 -> audio/generated/it-IT/dialogues/5a9d53ec8bc3e9aa1e56fabf14bc76a58445cda128df0278965cf4e3cbb1a3de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d810582-2982-536d-918b-293e89956aea', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f4a0ecca6d0b8fcbe943e2da564ce0c773e6ed46ee46492a92500a3ba8753f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efcc7c3c-734d-536e-ac26-e6e20c7ba052', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d810582-2982-536d-918b-293e89956aea', 1), '7f4a0ecca6d0b8fcbe943e2da564ce0c773e6ed46ee46492a92500a3ba8753f5',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5a9d53ec8bc3e9aa1e56fabf14bc76a58445cda128df0278965cf4e3cbb1a3de.mp3', 3239, '2026-09-14 07:28:24.400349', 'e9291c7a440b8feb744fc3f999eb1fd8aec25451d0b7f63c7f854777ff0671e5', 'validated', '{"audio_key":"5a9d53ec8bc3e9aa1e56fabf14bc76a58445cda128df0278965cf4e3cbb1a3de","entity_key":"d_high_stakes_debate_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e9291c7a440b8feb744fc3f999eb1fd8aec25451d0b7f63c7f854777ff0671e5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/5a9d53ec8bc3e9aa1e56fabf14bc76a58445cda128df0278965cf4e3cbb1a3de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_02:4 -> audio/generated/it-IT/dialogues/5f8286c9cdd3cd6455ed670c19888ff223c271879e9de8b66256aee168358d80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e0520c0-489a-5857-905b-591ab1546507', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd3867a73f79877e410d50fcb0b86a24e4cff8d0b0cd00a687b27478ba58f8eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63ba1edb-4db1-5cdf-a628-482debd1a505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e0520c0-489a-5857-905b-591ab1546507', 1), 'fd3867a73f79877e410d50fcb0b86a24e4cff8d0b0cd00a687b27478ba58f8eb',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5f8286c9cdd3cd6455ed670c19888ff223c271879e9de8b66256aee168358d80.mp3', 3186, '2026-09-14 07:28:25.077752', '4856d255585527260a9a192bb4b2c917f865719367bdac4383ba6ffccb75c019', 'validated', '{"audio_key":"5f8286c9cdd3cd6455ed670c19888ff223c271879e9de8b66256aee168358d80","entity_key":"d_c2_public_panel_capstone_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4856d255585527260a9a192bb4b2c917f865719367bdac4383ba6ffccb75c019","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/5f8286c9cdd3cd6455ed670c19888ff223c271879e9de8b66256aee168358d80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_02:1 -> audio/generated/it-IT/dialogues/6232bf752fbb3b0a5186a91b3288dc814f208ddb6d58d710255f8ffbc541ff4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8b08a8c-9ced-5e28-a3ba-b96505f423c3', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c1e81742de383ae04a02e8e7a84cb50f3775d4bc04369340fb422e97be727a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fe5b4bc-bace-5a77-87d4-ea1332d8e2c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8b08a8c-9ced-5e28-a3ba-b96505f423c3', 1), '9c1e81742de383ae04a02e8e7a84cb50f3775d4bc04369340fb422e97be727a5',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6232bf752fbb3b0a5186a91b3288dc814f208ddb6d58d710255f8ffbc541ff4d.mp3', 1933, '2026-09-14 07:28:25.434222', '3fbaaaf67455f9eac78b5bef70e1b76f60725c0be6025b38e5835ec403422715', 'validated', '{"audio_key":"6232bf752fbb3b0a5186a91b3288dc814f208ddb6d58d710255f8ffbc541ff4d","entity_key":"d_strategic_ambiguity_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3fbaaaf67455f9eac78b5bef70e1b76f60725c0be6025b38e5835ec403422715","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6232bf752fbb3b0a5186a91b3288dc814f208ddb6d58d710255f8ffbc541ff4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:4 -> audio/generated/it-IT/dialogues/6419bebfe3de751a1c661462a989724bb18c865d8e4b5e0e655d4b3be6d521f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90048a2b-d277-549e-bf10-83c5f919a26f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e3f6e35e8e1e4ec3af9d77894eab3c44ee5bef4892c47a4780532fa78c1b6c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb3a22a3-b535-5677-8f30-7d11a8b36a16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90048a2b-d277-549e-bf10-83c5f919a26f', 1), '7e3f6e35e8e1e4ec3af9d77894eab3c44ee5bef4892c47a4780532fa78c1b6c7',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6419bebfe3de751a1c661462a989724bb18c865d8e4b5e0e655d4b3be6d521f6.mp3', 3474, '2026-09-14 07:28:26.325728', '70eb1f4b6f5e549acff8ce730e7b25f5e8ac66f19f225a727a39b1b75eedc69e', 'validated', '{"audio_key":"6419bebfe3de751a1c661462a989724bb18c865d8e4b5e0e655d4b3be6d521f6","entity_key":"d_counterfactual_reasoning_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"70eb1f4b6f5e549acff8ce730e7b25f5e8ac66f19f225a727a39b1b75eedc69e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/6419bebfe3de751a1c661462a989724bb18c865d8e4b5e0e655d4b3be6d521f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_02:4 -> audio/generated/it-IT/dialogues/64530f66dd51bad8688c1e2442cd09258756a94a42151d84d1473f298d451fda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71ff9026-6141-5426-b30c-a8c057eb5452', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6afacad163a0f0a66aacca85b17f237a08a67874ca99031ce1b0c91bf724356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4681f286-90ce-5c97-baf2-0c23e3261c0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71ff9026-6141-5426-b30c-a8c057eb5452', 1), 'e6afacad163a0f0a66aacca85b17f237a08a67874ca99031ce1b0c91bf724356',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/64530f66dd51bad8688c1e2442cd09258756a94a42151d84d1473f298d451fda.mp3', 2455, '2026-09-14 07:28:26.545606', 'dbdfcc9534dfaa098339802fe432cd137f2a604824b2690089f7775c31fc1ec8', 'validated', '{"audio_key":"64530f66dd51bad8688c1e2442cd09258756a94a42151d84d1473f298d451fda","entity_key":"d_inferential_precision_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dbdfcc9534dfaa098339802fe432cd137f2a604824b2690089f7775c31fc1ec8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/64530f66dd51bad8688c1e2442cd09258756a94a42151d84d1473f298d451fda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_01:4 -> audio/generated/it-IT/dialogues/7398f8ddd2f6061724c7ff547ba031acdd5355d9c02fec69adc511260b9eb976.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a57800c-ae46-5790-ae4e-e36bfe5db197', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89592fbf3bde481fc9300dbe41c9d369a4cde319b32043459cc75320dc4deeda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a27ea3fc-e659-5689-b5db-b6be39984ded', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a57800c-ae46-5790-ae4e-e36bfe5db197', 1), '89592fbf3bde481fc9300dbe41c9d369a4cde319b32043459cc75320dc4deeda',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7398f8ddd2f6061724c7ff547ba031acdd5355d9c02fec69adc511260b9eb976.mp3', 3343, '2026-09-14 07:28:27.622359', '7a69e4d54deeaa76c4a103168f9e3286e6ccd97d8363ef516fac8207f2a24f0c', 'validated', '{"audio_key":"7398f8ddd2f6061724c7ff547ba031acdd5355d9c02fec69adc511260b9eb976","entity_key":"d_stylistic_editing_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a69e4d54deeaa76c4a103168f9e3286e6ccd97d8363ef516fac8207f2a24f0c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/7398f8ddd2f6061724c7ff547ba031acdd5355d9c02fec69adc511260b9eb976.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_01:4 -> audio/generated/it-IT/dialogues/7433eccf31d6bd637ff1088484dd7f0668cf18a497f5c57c6e1a239983e30b65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85ea135b-340b-517b-8c34-be9c9d0fe5eb', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccf181ffd6d69ea079aacc05ad4a9a381a2f12997b37f7599cb8600b963d4013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0f4e4d1-a903-5a2a-9574-5b98ea5a1d90', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85ea135b-340b-517b-8c34-be9c9d0fe5eb', 1), 'ccf181ffd6d69ea079aacc05ad4a9a381a2f12997b37f7599cb8600b963d4013',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7433eccf31d6bd637ff1088484dd7f0668cf18a497f5c57c6e1a239983e30b65.mp3', 4362, '2026-09-14 07:28:27.841213', '9524f6d2a49f85158b23a998324b51b732b42d20193eddaf4e79934d6e224ffd', 'validated', '{"audio_key":"7433eccf31d6bd637ff1088484dd7f0668cf18a497f5c57c6e1a239983e30b65","entity_key":"d_institutional_register_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9524f6d2a49f85158b23a998324b51b732b42d20193eddaf4e79934d6e224ffd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/7433eccf31d6bd637ff1088484dd7f0668cf18a497f5c57c6e1a239983e30b65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_02:1 -> audio/generated/it-IT/dialogues/75dc007f47eda8f32400d0b51a96c8d351e3946ae3d6f18cd5ec22d9d302f472.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d0d6aff-9a86-5134-9ced-40189c69a758', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2677b667833b399dbd2b27b36686496e25e8cb819579e5c9fdaf0d0ed74cf30e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b71b08d-2c9d-5d02-95a4-7fe59fc686ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d0d6aff-9a86-5134-9ced-40189c69a758', 1), '2677b667833b399dbd2b27b36686496e25e8cb819579e5c9fdaf0d0ed74cf30e',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/75dc007f47eda8f32400d0b51a96c8d351e3946ae3d6f18cd5ec22d9d302f472.mp3', 3186, '2026-09-14 07:28:28.817162', '5d0d293c61663bac5303c90dff9ee69516426fbea5c6498a891e42ff950fb5d6', 'validated', '{"audio_key":"75dc007f47eda8f32400d0b51a96c8d351e3946ae3d6f18cd5ec22d9d302f472","entity_key":"d_academic_critique_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"5d0d293c61663bac5303c90dff9ee69516426fbea5c6498a891e42ff950fb5d6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/75dc007f47eda8f32400d0b51a96c8d351e3946ae3d6f18cd5ec22d9d302f472.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_01:3 -> audio/generated/it-IT/dialogues/778532ec999eadf766d39b1e43a87fdf18b3f03b15cfd9642fbffba2bf473119.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4694566c-a4b7-5a47-bcd3-0e9a0c923293', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c7ae9cd19bb144f5ecd0d26d65dd4e0b213a1fe2ea3dd5c2418188a2a1ce65d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38796318-5bb6-5f4f-a551-ef341305fdca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4694566c-a4b7-5a47-bcd3-0e9a0c923293', 1), '5c7ae9cd19bb144f5ecd0d26d65dd4e0b213a1fe2ea3dd5c2418188a2a1ce65d',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/778532ec999eadf766d39b1e43a87fdf18b3f03b15cfd9642fbffba2bf473119.mp3', 1985, '2026-09-14 07:28:28.958275', '945a46e60a0535f805033d913f970ae70f49298c1f606753854efc49e93e4e88', 'validated', '{"audio_key":"778532ec999eadf766d39b1e43a87fdf18b3f03b15cfd9642fbffba2bf473119","entity_key":"d_stylistic_editing_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"945a46e60a0535f805033d913f970ae70f49298c1f606753854efc49e93e4e88","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/778532ec999eadf766d39b1e43a87fdf18b3f03b15cfd9642fbffba2bf473119.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:2 -> audio/generated/it-IT/dialogues/7e6118293120320675febffcc85f43527826ce6fd64dfdc862e4730d4636e1ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f46d4f57-9cad-5c9b-875c-c242aaef8849', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6123f3861384f68eece3f38a595080e789a7d8ae6d46acd6991d6525a3f6b6bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d751703f-0ec5-5db3-a201-2d2b22a1f9f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f46d4f57-9cad-5c9b-875c-c242aaef8849', 1), '6123f3861384f68eece3f38a595080e789a7d8ae6d46acd6991d6525a3f6b6bc',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7e6118293120320675febffcc85f43527826ce6fd64dfdc862e4730d4636e1ca.mp3', 3056, '2026-09-14 07:28:30.549192', 'b0192588c8a8f87f7ef053658a29f9bb4cb8415344f88869b4e97dea2b7c6a2b', 'validated', '{"audio_key":"7e6118293120320675febffcc85f43527826ce6fd64dfdc862e4730d4636e1ca","entity_key":"d_counterfactual_reasoning_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b0192588c8a8f87f7ef053658a29f9bb4cb8415344f88869b4e97dea2b7c6a2b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/7e6118293120320675febffcc85f43527826ce6fd64dfdc862e4730d4636e1ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_01:1 -> audio/generated/it-IT/dialogues/882bd22c66ada0283643015b841ba8a2c46f5da5c86b79b8cc5362197b3bd596.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0cb3732d-5966-5cb1-9a68-41a2e0d1118e', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92636208522477633f496a4337c24f4a719734de4e5fca97ab3ac682c26f2575'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03a36c0a-cd99-598a-bc7c-1ba9f642a6a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0cb3732d-5966-5cb1-9a68-41a2e0d1118e', 1), '92636208522477633f496a4337c24f4a719734de4e5fca97ab3ac682c26f2575',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/882bd22c66ada0283643015b841ba8a2c46f5da5c86b79b8cc5362197b3bd596.mp3', 2533, '2026-09-14 07:28:30.186312', '409adf97404ca764ba0d2d41757835391fc49a62b545a3c138bbb496e90abc84', 'validated', '{"audio_key":"882bd22c66ada0283643015b841ba8a2c46f5da5c86b79b8cc5362197b3bd596","entity_key":"d_institutional_register_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"409adf97404ca764ba0d2d41757835391fc49a62b545a3c138bbb496e90abc84","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/882bd22c66ada0283643015b841ba8a2c46f5da5c86b79b8cc5362197b3bd596.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_02:3 -> audio/generated/it-IT/dialogues/89f048d8125e86eb0e91f056ad5f95a70b489d98ce73c429a43d993228456f04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32ab29a9-93ed-55b8-ba22-16f3b358bdec', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f51ac0351b70f9db0bd94ac079537768115031ff01c893dd62141f360af64065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b7072fe-c8c5-5dd3-bc6f-5397eeffdff4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32ab29a9-93ed-55b8-ba22-16f3b358bdec', 1), 'f51ac0351b70f9db0bd94ac079537768115031ff01c893dd62141f360af64065',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/89f048d8125e86eb0e91f056ad5f95a70b489d98ce73c429a43d993228456f04.mp3', 3526, '2026-09-14 07:28:31.482639', 'd0cef968fda8d79b5acd013203f8340c7c8966cddd6b04d41511d41813862816', 'validated', '{"audio_key":"89f048d8125e86eb0e91f056ad5f95a70b489d98ce73c429a43d993228456f04","entity_key":"d_c2_public_panel_capstone_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d0cef968fda8d79b5acd013203f8340c7c8966cddd6b04d41511d41813862816","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/89f048d8125e86eb0e91f056ad5f95a70b489d98ce73c429a43d993228456f04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_02:1 -> audio/generated/it-IT/dialogues/8a7f7f7f437594be0375093b1b16766bf70d54675f9651866aba24dd336ffdec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79565f15-bf32-59e2-b2f5-18b5bcb189ed', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e410eff053974c22402e25d3be9f9ddef43ffe95036b4a895e0fd183a41557db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edfe2078-cb08-5138-9d82-000e3a271935', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79565f15-bf32-59e2-b2f5-18b5bcb189ed', 1), 'e410eff053974c22402e25d3be9f9ddef43ffe95036b4a895e0fd183a41557db',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8a7f7f7f437594be0375093b1b16766bf70d54675f9651866aba24dd336ffdec.mp3', 2533, '2026-09-14 07:28:31.641474', '98670049f1835e977e62bbbbad9d38e7da7ed22a3ba8f65a4e8a237620c44bcd', 'validated', '{"audio_key":"8a7f7f7f437594be0375093b1b16766bf70d54675f9651866aba24dd336ffdec","entity_key":"d_institutional_register_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"98670049f1835e977e62bbbbad9d38e7da7ed22a3ba8f65a4e8a237620c44bcd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/8a7f7f7f437594be0375093b1b16766bf70d54675f9651866aba24dd336ffdec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_01:2 -> audio/generated/it-IT/dialogues/8face7f9b6e6081ed2e636754c7f2fe270796334e3d8a8019473d15fe16941da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9a5587d-b169-5b1c-94bc-39857e671440', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c4f0d2f96f6d90b369e05b67a4a5ba7ef6f8e6c2123b97c064a72bfe0ec0b5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3140051-d854-521c-8f45-a02a9aed070a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9a5587d-b169-5b1c-94bc-39857e671440', 1), '8c4f0d2f96f6d90b369e05b67a4a5ba7ef6f8e6c2123b97c064a72bfe0ec0b5c',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8face7f9b6e6081ed2e636754c7f2fe270796334e3d8a8019473d15fe16941da.mp3', 4728, '2026-09-14 07:28:32.878611', '8eaf9119c1e21f71f2d9c95a5b702dbb051b4bc35a7a607d44865281e3d50836', 'validated', '{"audio_key":"8face7f9b6e6081ed2e636754c7f2fe270796334e3d8a8019473d15fe16941da","entity_key":"d_stylistic_editing_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eaf9119c1e21f71f2d9c95a5b702dbb051b4bc35a7a607d44865281e3d50836","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/8face7f9b6e6081ed2e636754c7f2fe270796334e3d8a8019473d15fe16941da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_02:4 -> audio/generated/it-IT/dialogues/972b6894896801167b470f5765da3ced533d8ab4adc2a848de4165e3255b2c33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b302486d-591c-5be0-8b8e-d36e099e203c', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f797ad96b077f53c0998c9c5ca3458fc785ceadb444345f4e0638e15824a0b8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f461ef57-9ee4-5860-90d7-784246b4edb3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b302486d-591c-5be0-8b8e-d36e099e203c', 1), 'f797ad96b077f53c0998c9c5ca3458fc785ceadb444345f4e0638e15824a0b8c',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/972b6894896801167b470f5765da3ced533d8ab4adc2a848de4165e3255b2c33.mp3', 2638, '2026-09-14 07:28:32.781337', '14b1e9ed4cab5d2eb69fa1605bf5c772cff23fec7f5f40834e93215181d92d20', 'validated', '{"audio_key":"972b6894896801167b470f5765da3ced533d8ab4adc2a848de4165e3255b2c33","entity_key":"d_institutional_register_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14b1e9ed4cab5d2eb69fa1605bf5c772cff23fec7f5f40834e93215181d92d20","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/972b6894896801167b470f5765da3ced533d8ab4adc2a848de4165e3255b2c33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_01:2 -> audio/generated/it-IT/dialogues/9b72868e5eb73dd6929fa98faac45153e46b913d0dfa092a8d4e6f5387331b41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0829ddff-435d-5a80-85cb-a344a0dbf328', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a452ca7ca9f370ce95f17968351b4608b2a568c114a4cab1eaa1a1813d3cfe0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a8d0e0f-d227-5c84-8ccb-34cb57bcff1c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0829ddff-435d-5a80-85cb-a344a0dbf328', 1), '0a452ca7ca9f370ce95f17968351b4608b2a568c114a4cab1eaa1a1813d3cfe0',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9b72868e5eb73dd6929fa98faac45153e46b913d0dfa092a8d4e6f5387331b41.mp3', 2089, '2026-09-14 07:28:33.848002', 'a645ea93803de0eb968a261010cc39c5f9c0081d46d39c8c84d596f0a24442b2', 'validated', '{"audio_key":"9b72868e5eb73dd6929fa98faac45153e46b913d0dfa092a8d4e6f5387331b41","entity_key":"d_academic_critique_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a645ea93803de0eb968a261010cc39c5f9c0081d46d39c8c84d596f0a24442b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/9b72868e5eb73dd6929fa98faac45153e46b913d0dfa092a8d4e6f5387331b41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_02:3 -> audio/generated/it-IT/dialogues/a09d619e929a475253b44943bb75273e46f06ba445abc4a147053bb5304b713a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30b1b6be-0432-53e0-b9a2-bb0125383a99', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fecc5e93f8712afcd86e3e16da692c1bb712c158d9ffeca05ca14ccefcf19686'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28439459-9847-59b5-bb3c-8e810a091d77', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30b1b6be-0432-53e0-b9a2-bb0125383a99', 1), 'fecc5e93f8712afcd86e3e16da692c1bb712c158d9ffeca05ca14ccefcf19686',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a09d619e929a475253b44943bb75273e46f06ba445abc4a147053bb5304b713a.mp3', 2037, '2026-09-14 07:28:33.910503', '738d0b352393041277f9d3a97674541141fc09dfa4d1f1f1bd6e4c498dead4e1', 'validated', '{"audio_key":"a09d619e929a475253b44943bb75273e46f06ba445abc4a147053bb5304b713a","entity_key":"d_strategic_ambiguity_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"738d0b352393041277f9d3a97674541141fc09dfa4d1f1f1bd6e4c498dead4e1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a09d619e929a475253b44943bb75273e46f06ba445abc4a147053bb5304b713a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_02:4 -> audio/generated/it-IT/dialogues/a0b46dc360ca925f6320a35ffc992b9712995a92a66ef204a4817fdbaa4a5cbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d02ed429-5dcb-5dc7-9b3c-6f64821f94ee', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d2fae2cab6f58b7acf8b3cbb45f3313f49c9008b581505224384d910bcfb655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6829074-a817-52b4-88c3-2156ab91bd76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d02ed429-5dcb-5dc7-9b3c-6f64821f94ee', 1), '6d2fae2cab6f58b7acf8b3cbb45f3313f49c9008b581505224384d910bcfb655',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a0b46dc360ca925f6320a35ffc992b9712995a92a66ef204a4817fdbaa4a5cbb.mp3', 2821, '2026-09-14 07:28:34.971018', '9d31474f35233648ef894ab8dd6d04d014ef986729e4719792c977b6529c020e', 'validated', '{"audio_key":"a0b46dc360ca925f6320a35ffc992b9712995a92a66ef204a4817fdbaa4a5cbb","entity_key":"d_stylistic_editing_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d31474f35233648ef894ab8dd6d04d014ef986729e4719792c977b6529c020e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a0b46dc360ca925f6320a35ffc992b9712995a92a66ef204a4817fdbaa4a5cbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_01:1 -> audio/generated/it-IT/dialogues/a1d0c994fb17c6990c37fe5fe9ea6ffc3a2e8ba545506b97fc95014083afbd42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3377961-2794-56be-9ac6-b801aeff5637', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77566b649749f3185be741bc0d395dfa4b6b9d2478549a0d46214b4a66421ee6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('650cc8ba-f7ac-545e-b23f-3c21d8e028ac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3377961-2794-56be-9ac6-b801aeff5637', 1), '77566b649749f3185be741bc0d395dfa4b6b9d2478549a0d46214b4a66421ee6',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a1d0c994fb17c6990c37fe5fe9ea6ffc3a2e8ba545506b97fc95014083afbd42.mp3', 2951, '2026-09-14 07:28:35.035535', '7a095c27fd749533db1403a6409f5ac2db878087bdc4830d3c4fe3237ff599cf', 'validated', '{"audio_key":"a1d0c994fb17c6990c37fe5fe9ea6ffc3a2e8ba545506b97fc95014083afbd42","entity_key":"d_stylistic_editing_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a095c27fd749533db1403a6409f5ac2db878087bdc4830d3c4fe3237ff599cf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/a1d0c994fb17c6990c37fe5fe9ea6ffc3a2e8ba545506b97fc95014083afbd42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_01:2 -> audio/generated/it-IT/dialogues/a1e7eadaf7d137f91e3f53bd1ae01f5c1dc40b1357a401a14a254e9f1c9ca247.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('071e43bb-6f4e-56e1-bbe8-7b7f811d821c', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7e025bab23f4c5f43af5e38238102832c6264f3710e56e3076b2d0728d2102e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea3ed63f-3d12-5314-a1cb-5dea2f114da4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('071e43bb-6f4e-56e1-bbe8-7b7f811d821c', 1), 'e7e025bab23f4c5f43af5e38238102832c6264f3710e56e3076b2d0728d2102e',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a1e7eadaf7d137f91e3f53bd1ae01f5c1dc40b1357a401a14a254e9f1c9ca247.mp3', 4205, '2026-09-14 07:28:36.255939', '34a895797bd52be561e8369462157d2aed088dbf485a781a0927e5dc56c7e071', 'validated', '{"audio_key":"a1e7eadaf7d137f91e3f53bd1ae01f5c1dc40b1357a401a14a254e9f1c9ca247","entity_key":"d_c2_public_panel_capstone_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34a895797bd52be561e8369462157d2aed088dbf485a781a0927e5dc56c7e071","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/a1e7eadaf7d137f91e3f53bd1ae01f5c1dc40b1357a401a14a254e9f1c9ca247.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_02:2 -> audio/generated/it-IT/dialogues/ada06eac68a24ca61ecd04a5da9e5747e562a867242e729ccd3dcb376c5b0f6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbd20f6d-e660-50f8-91fe-cd226a28e920', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41a2f633767c2d37f0ccb30136d284246ed37bc1c91124f6da5edf4458f97247'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c65a7828-fd58-5456-96b6-1057e37132bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbd20f6d-e660-50f8-91fe-cd226a28e920', 1), '41a2f633767c2d37f0ccb30136d284246ed37bc1c91124f6da5edf4458f97247',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ada06eac68a24ca61ecd04a5da9e5747e562a867242e729ccd3dcb376c5b0f6c.mp3', 1933, '2026-09-14 07:28:36.067836', '841aa888e23a7f88a9b59d09c01545bc117dfd738a4e078552cba83f157a9888', 'validated', '{"audio_key":"ada06eac68a24ca61ecd04a5da9e5747e562a867242e729ccd3dcb376c5b0f6c","entity_key":"d_cultural_intertextuality_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"841aa888e23a7f88a9b59d09c01545bc117dfd738a4e078552cba83f157a9888","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ada06eac68a24ca61ecd04a5da9e5747e562a867242e729ccd3dcb376c5b0f6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_02:2 -> audio/generated/it-IT/dialogues/ae1b1d883c3ff016956491e8262577aaae7e948a5d424d29749c77f8543db0f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0964db8a-19ad-5f8c-81d1-6ba3e3fafbab', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75fc1058b3e6f013ebf93c2fb44e1fe78f36c727a08f59f209ad1f43d5b1fcec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c02e106-36c9-5f44-8595-e2681e809bdf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0964db8a-19ad-5f8c-81d1-6ba3e3fafbab', 1), '75fc1058b3e6f013ebf93c2fb44e1fe78f36c727a08f59f209ad1f43d5b1fcec',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ae1b1d883c3ff016956491e8262577aaae7e948a5d424d29749c77f8543db0f3.mp3', 2324, '2026-09-14 07:28:37.206613', 'ae5cd355b195ff36b24ae0c034c92df18f4286732d26a7ae7613bea607c955d5', 'validated', '{"audio_key":"ae1b1d883c3ff016956491e8262577aaae7e948a5d424d29749c77f8543db0f3","entity_key":"d_irony_and_understatement_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae5cd355b195ff36b24ae0c034c92df18f4286732d26a7ae7613bea607c955d5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ae1b1d883c3ff016956491e8262577aaae7e948a5d424d29749c77f8543db0f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_02:2 -> audio/generated/it-IT/dialogues/af7645357910131a6782db5ed4b970977742bcb61c575d91b1e29eea070af3c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98841271-99d4-5cec-83e5-3c9900ce48f9', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e3907181975da7ec3f1c90467a334a170a6dffcd950a209888c1e46403ad360'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b17b2d86-cabc-5a10-b759-7cb6e5054af9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98841271-99d4-5cec-83e5-3c9900ce48f9', 1), '5e3907181975da7ec3f1c90467a334a170a6dffcd950a209888c1e46403ad360',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/af7645357910131a6782db5ed4b970977742bcb61c575d91b1e29eea070af3c8.mp3', 2115, '2026-09-14 07:28:37.365259', '1d5bd05723f9d341003de342ee801393eb05717eaaf1500d367f4f8ad26db45c', 'validated', '{"audio_key":"af7645357910131a6782db5ed4b970977742bcb61c575d91b1e29eea070af3c8","entity_key":"d_inferential_precision_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1d5bd05723f9d341003de342ee801393eb05717eaaf1500d367f4f8ad26db45c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/af7645357910131a6782db5ed4b970977742bcb61c575d91b1e29eea070af3c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:3 -> audio/generated/it-IT/dialogues/af8d55475060a0e37b0361fab6de4d999f2771b1dfeef0d53c2cb44af2562df0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f50b7ea1-2307-5d51-8d97-c62911b6c73c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '103bf47a9754a5e141c45825c5f9e3f3317a941d4a3300a7e52e67875f36a902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1356d8d-221f-5999-b6a8-81d77e8cd431', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f50b7ea1-2307-5d51-8d97-c62911b6c73c', 1), '103bf47a9754a5e141c45825c5f9e3f3317a941d4a3300a7e52e67875f36a902',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/af8d55475060a0e37b0361fab6de4d999f2771b1dfeef0d53c2cb44af2562df0.mp3', 1671, '2026-09-14 07:28:38.228977', '1865540d93c374f3ce86ca9e33c163c19eaac91241a62eda5d741093aeb5ba70', 'validated', '{"audio_key":"af8d55475060a0e37b0361fab6de4d999f2771b1dfeef0d53c2cb44af2562df0","entity_key":"d_counterfactual_reasoning_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"1865540d93c374f3ce86ca9e33c163c19eaac91241a62eda5d741093aeb5ba70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/af8d55475060a0e37b0361fab6de4d999f2771b1dfeef0d53c2cb44af2562df0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_01:3 -> audio/generated/it-IT/dialogues/b45e96fa1a141de334693c86d1eddb720749afd7b29066b8487d933f9081c79a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df7f42a8-c6b1-529a-867b-2e1c481221ec', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74f11e3f3074599c8bbc61c9068a31cbb6128c02e4654556f613a4528f1cb4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5392fb9b-557c-50d9-b736-7aa5fcc547e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df7f42a8-c6b1-529a-867b-2e1c481221ec', 1), '74f11e3f3074599c8bbc61c9068a31cbb6128c02e4654556f613a4528f1cb4ab',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b45e96fa1a141de334693c86d1eddb720749afd7b29066b8487d933f9081c79a.mp3', 1515, '2026-09-14 07:28:38.376139', 'a3fd82d69ca9b4eb48231f317d190795f91dfb8a36c7d93fd8195181342ea6c8', 'validated', '{"audio_key":"b45e96fa1a141de334693c86d1eddb720749afd7b29066b8487d933f9081c79a","entity_key":"d_high_stakes_debate_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"a3fd82d69ca9b4eb48231f317d190795f91dfb8a36c7d93fd8195181342ea6c8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b45e96fa1a141de334693c86d1eddb720749afd7b29066b8487d933f9081c79a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_02:1 -> audio/generated/it-IT/dialogues/b62cf28206185afbec35330d0206ca8a4680f8ea8a4179b754527eb33b8013c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c881218-1c49-5f77-ace0-051dc0319e22', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '051a34a7cff6a5851ef65df3c56f4f85222a428cd1d9d5833f56db676418e302'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b38c9a6b-5ac9-5079-a544-52eef3fee282', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c881218-1c49-5f77-ace0-051dc0319e22', 1), '051a34a7cff6a5851ef65df3c56f4f85222a428cd1d9d5833f56db676418e302',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b62cf28206185afbec35330d0206ca8a4680f8ea8a4179b754527eb33b8013c2.mp3', 2507, '2026-09-14 07:28:39.325251', 'df9cbc05857080197225fd8993dae3e7bf20e7db5a5d12b8f5208a2323ffc616', 'validated', '{"audio_key":"b62cf28206185afbec35330d0206ca8a4680f8ea8a4179b754527eb33b8013c2","entity_key":"d_irony_and_understatement_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"df9cbc05857080197225fd8993dae3e7bf20e7db5a5d12b8f5208a2323ffc616","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b62cf28206185afbec35330d0206ca8a4680f8ea8a4179b754527eb33b8013c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_02:3 -> audio/generated/it-IT/dialogues/baa2a230cbb9af809a4741753e5a973de290aeceebd00202c0be36681580fd9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('377e334a-a50c-5dad-afb0-ed9832f45ac8', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6565b55e9f076e6ca1dd54f268130104f2a50ef31297ab0068ee07210867b532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56afaf8a-3c18-593f-8dd2-a6bb8d691191', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('377e334a-a50c-5dad-afb0-ed9832f45ac8', 1), '6565b55e9f076e6ca1dd54f268130104f2a50ef31297ab0068ee07210867b532',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/baa2a230cbb9af809a4741753e5a973de290aeceebd00202c0be36681580fd9e.mp3', 2168, '2026-09-14 07:28:39.434338', 'fcc3498397f2bb333e371782bb26004a7cecceca4a337c3049f6382824d72e26', 'validated', '{"audio_key":"baa2a230cbb9af809a4741753e5a973de290aeceebd00202c0be36681580fd9e","entity_key":"d_institutional_register_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"fcc3498397f2bb333e371782bb26004a7cecceca4a337c3049f6382824d72e26","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/baa2a230cbb9af809a4741753e5a973de290aeceebd00202c0be36681580fd9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_01:3 -> audio/generated/it-IT/dialogues/bac29b696928a711f532c8f5a5c1ede6903c8d5e95e3a45dae3ce98fbb8ef78b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6e20d79-b4d7-51cb-a3f1-56b020416314', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b325e9e6ddd62cf42cd7cc3f66edc1fa95f6dd4113891ee79a5eb87d3f8f54c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d9c46be-15c3-5188-9c5c-c2e8e633f992', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6e20d79-b4d7-51cb-a3f1-56b020416314', 1), 'b325e9e6ddd62cf42cd7cc3f66edc1fa95f6dd4113891ee79a5eb87d3f8f54c9',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bac29b696928a711f532c8f5a5c1ede6903c8d5e95e3a45dae3ce98fbb8ef78b.mp3', 2951, '2026-09-14 07:28:40.465691', '48b40d7d3c76f5920557f7f5150d8b2fb24e5c7adfbc9355c6114c9cbb8db9fd', 'validated', '{"audio_key":"bac29b696928a711f532c8f5a5c1ede6903c8d5e95e3a45dae3ce98fbb8ef78b","entity_key":"d_c2_public_panel_capstone_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48b40d7d3c76f5920557f7f5150d8b2fb24e5c7adfbc9355c6114c9cbb8db9fd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/bac29b696928a711f532c8f5a5c1ede6903c8d5e95e3a45dae3ce98fbb8ef78b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_02:3 -> audio/generated/it-IT/dialogues/bae7336389033972161809638c65582b7240f4096d182186a07aab7fdcd7102d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b405aa9-3f79-5437-948e-f019c888b079', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90a8d404bfcdc5062a9eedb7816f80519af9a1cfbe0bd88c90576ad5839241e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b3ad164-de11-5d2d-8055-4697fa6c3fe4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b405aa9-3f79-5437-948e-f019c888b079', 1), '90a8d404bfcdc5062a9eedb7816f80519af9a1cfbe0bd88c90576ad5839241e9',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bae7336389033972161809638c65582b7240f4096d182186a07aab7fdcd7102d.mp3', 1697, '2026-09-14 07:28:40.468504', '6c0db735312b8874734fb314bdf354154bc413231149e2359eed6e2d50565e04', 'validated', '{"audio_key":"bae7336389033972161809638c65582b7240f4096d182186a07aab7fdcd7102d","entity_key":"d_academic_critique_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"6c0db735312b8874734fb314bdf354154bc413231149e2359eed6e2d50565e04","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/bae7336389033972161809638c65582b7240f4096d182186a07aab7fdcd7102d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:1 -> audio/generated/it-IT/dialogues/bb4025219ded9e33edc93ff9434c18b78372ae1c6aa2e94b0954f1582540792f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47361318-c94c-5540-8e52-b3744a934f32', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cd2cb882ead05d7aff706f97471a8771103e2497639249fc1a951679d5889fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ae86703-4d97-5dfe-b871-2e751cf164c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47361318-c94c-5540-8e52-b3744a934f32', 1), '7cd2cb882ead05d7aff706f97471a8771103e2497639249fc1a951679d5889fe',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bb4025219ded9e33edc93ff9434c18b78372ae1c6aa2e94b0954f1582540792f.mp3', 2351, '2026-09-14 07:28:41.575541', 'fa95f412954bae7735cc52a7421843e46400fcc4e74be85e5630221e74fa80ad', 'validated', '{"audio_key":"bb4025219ded9e33edc93ff9434c18b78372ae1c6aa2e94b0954f1582540792f","entity_key":"d_counterfactual_reasoning_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"fa95f412954bae7735cc52a7421843e46400fcc4e74be85e5630221e74fa80ad","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/bb4025219ded9e33edc93ff9434c18b78372ae1c6aa2e94b0954f1582540792f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_01:1 -> audio/generated/it-IT/dialogues/bd98fa3cfd5cb373162eb766e2386bda23140d2f3997e17e5d7831d9e759240d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e42f458b-8db6-593f-bcd9-95649dc805b2', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6000d77dab49dd8c2f346bb5f0254c9557d225380345eb9c4237aeb860373bd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51ca2fd5-1c5c-5a55-bbc5-49895a25af2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e42f458b-8db6-593f-bcd9-95649dc805b2', 1), '6000d77dab49dd8c2f346bb5f0254c9557d225380345eb9c4237aeb860373bd9',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bd98fa3cfd5cb373162eb766e2386bda23140d2f3997e17e5d7831d9e759240d.mp3', 3422, '2026-09-14 07:28:41.671621', 'a6226b7ff343952c41cb0b54a8e86fa966681f8e88730f4511149791e1fd4938', 'validated', '{"audio_key":"bd98fa3cfd5cb373162eb766e2386bda23140d2f3997e17e5d7831d9e759240d","entity_key":"d_strategic_ambiguity_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6226b7ff343952c41cb0b54a8e86fa966681f8e88730f4511149791e1fd4938","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/bd98fa3cfd5cb373162eb766e2386bda23140d2f3997e17e5d7831d9e759240d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_02:1 -> audio/generated/it-IT/dialogues/becbcaa505b842aefe8db6bdda14795b4e7f7c0fb06a09ac74a33c690b3d4ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9f5025f-721d-5489-8b09-2c1bc8fc9dec', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eb835a6820a4d0e5006819905229ae6798d58864bd4ee610d02ed7726a631ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd2b2398-9216-57cf-a806-6044e1e6cc53', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9f5025f-721d-5489-8b09-2c1bc8fc9dec', 1), '1eb835a6820a4d0e5006819905229ae6798d58864bd4ee610d02ed7726a631ab',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/becbcaa505b842aefe8db6bdda14795b4e7f7c0fb06a09ac74a33c690b3d4ce7.mp3', 2351, '2026-09-14 07:28:42.688495', '863fb719b5794868bdd8fbfcfaa7948a1adcdf6ddff16e1d923636957ffad0ab', 'validated', '{"audio_key":"becbcaa505b842aefe8db6bdda14795b4e7f7c0fb06a09ac74a33c690b3d4ce7","entity_key":"d_c2_public_panel_capstone_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"863fb719b5794868bdd8fbfcfaa7948a1adcdf6ddff16e1d923636957ffad0ab","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/becbcaa505b842aefe8db6bdda14795b4e7f7c0fb06a09ac74a33c690b3d4ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:4 -> audio/generated/it-IT/dialogues/c56bdd884e7d3c7f9d7915e2f3e8b492007cb5848427e218837b236e18f2a99c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2befbcec-aa8d-5b88-ac66-65fbaef8fb06', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbaad6cf0cd3ac77d80fcdc121ce92b57d1402200234f57e3db04eb1a68a3cbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31a25d54-d26a-561a-9dcc-d829c9328d7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2befbcec-aa8d-5b88-ac66-65fbaef8fb06', 1), 'dbaad6cf0cd3ac77d80fcdc121ce92b57d1402200234f57e3db04eb1a68a3cbe',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c56bdd884e7d3c7f9d7915e2f3e8b492007cb5848427e218837b236e18f2a99c.mp3', 2037, '2026-09-14 07:28:42.758076', 'cd6a7cb6e7d1d1cdc38b7288bee8587cbcae776b0a4a115ae1807c230a79883c', 'validated', '{"audio_key":"c56bdd884e7d3c7f9d7915e2f3e8b492007cb5848427e218837b236e18f2a99c","entity_key":"d_counterfactual_reasoning_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cd6a7cb6e7d1d1cdc38b7288bee8587cbcae776b0a4a115ae1807c230a79883c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c56bdd884e7d3c7f9d7915e2f3e8b492007cb5848427e218837b236e18f2a99c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_critique_02:2 -> audio/generated/it-IT/dialogues/c5a0223fe5fc2e26e16261835784640fc3aec0a0d66a964023b02afa3d83f66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01c52e66-49c2-5ba7-a8f6-7390c661b133', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_critique_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3338da3c0996d3825c8f8e36c7d7a49b288f6ddd199863b886a916dc4c05447'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaee7178-eeb5-59e0-83db-9edc386debd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01c52e66-49c2-5ba7-a8f6-7390c661b133', 1), 'b3338da3c0996d3825c8f8e36c7d7a49b288f6ddd199863b886a916dc4c05447',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c5a0223fe5fc2e26e16261835784640fc3aec0a0d66a964023b02afa3d83f66a.mp3', 2638, '2026-09-14 07:28:43.873606', 'c234fdaf63270a8daf14629c6900f6291c173a0acb754b00ae90cd8fba7cd71e', 'validated', '{"audio_key":"c5a0223fe5fc2e26e16261835784640fc3aec0a0d66a964023b02afa3d83f66a","entity_key":"d_academic_critique_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c234fdaf63270a8daf14629c6900f6291c173a0acb754b00ae90cd8fba7cd71e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c5a0223fe5fc2e26e16261835784640fc3aec0a0d66a964023b02afa3d83f66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_02:2 -> audio/generated/it-IT/dialogues/c66c39926481ce61670ab3bc883d70907e393f81c4d92de7a08a648da9c8018c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('048f7d10-28f4-5aad-93c6-c8e892286b0f', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac2639b5763bfda56cf1f590772f5b0f15f8c806a8efb7206559d79fa05e8db7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02f8af1e-28da-50d3-b581-cb3f1e9e57f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('048f7d10-28f4-5aad-93c6-c8e892286b0f', 1), 'ac2639b5763bfda56cf1f590772f5b0f15f8c806a8efb7206559d79fa05e8db7',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c66c39926481ce61670ab3bc883d70907e393f81c4d92de7a08a648da9c8018c.mp3', 2351, '2026-09-14 07:28:43.842797', 'd6d9b0103d9a0d05107983f1003980e55562f564c57dfe15e366d2bb98530bb5', 'validated', '{"audio_key":"c66c39926481ce61670ab3bc883d70907e393f81c4d92de7a08a648da9c8018c","entity_key":"d_c2_public_panel_capstone_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d9b0103d9a0d05107983f1003980e55562f564c57dfe15e366d2bb98530bb5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/c66c39926481ce61670ab3bc883d70907e393f81c4d92de7a08a648da9c8018c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_01:2 -> audio/generated/it-IT/dialogues/c7512560cc4dbbbe5c8bb9de8e72532a7759e7cfc16e9130c7cea785cdbd347f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6a67481-6a22-5304-96b6-8f58b6371376', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b69533af09fe3661b1765ac47a9ba4efc4514a22b38c2d03df77c47d3fbfb27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c279305e-9770-54fb-99e7-2e0f17c7b21a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6a67481-6a22-5304-96b6-8f58b6371376', 1), '3b69533af09fe3661b1765ac47a9ba4efc4514a22b38c2d03df77c47d3fbfb27',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c7512560cc4dbbbe5c8bb9de8e72532a7759e7cfc16e9130c7cea785cdbd347f.mp3', 3291, '2026-09-14 07:28:45.001480', '037b34f066d5629f1af7917df50917264c7333ac17dc8a81b9d17779204bf379', 'validated', '{"audio_key":"c7512560cc4dbbbe5c8bb9de8e72532a7759e7cfc16e9130c7cea785cdbd347f","entity_key":"d_irony_and_understatement_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"037b34f066d5629f1af7917df50917264c7333ac17dc8a81b9d17779204bf379","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/c7512560cc4dbbbe5c8bb9de8e72532a7759e7cfc16e9130c7cea785cdbd347f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_02:2 -> audio/generated/it-IT/dialogues/c799fa8d99ad74414b009171be69fa3d193cd8658b24cd84fed4fc94c52a040f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0547fe2-4acb-5b3d-98de-efdd42db7ed3', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1df744d602b5e40ff89c9bd8530f557c4bc80e2202b907aa25f2062a5e5a2ee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12deba5e-7457-56c8-8963-636fbc20d5c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0547fe2-4acb-5b3d-98de-efdd42db7ed3', 1), '1df744d602b5e40ff89c9bd8530f557c4bc80e2202b907aa25f2062a5e5a2ee0',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c799fa8d99ad74414b009171be69fa3d193cd8658b24cd84fed4fc94c52a040f.mp3', 3108, '2026-09-14 07:28:45.061780', 'd6af58f9c80f4e51e180a5bd90e1a561f2dad3904bead47bb84f70c6c3fe425e', 'validated', '{"audio_key":"c799fa8d99ad74414b009171be69fa3d193cd8658b24cd84fed4fc94c52a040f","entity_key":"d_high_stakes_debate_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d6af58f9c80f4e51e180a5bd90e1a561f2dad3904bead47bb84f70c6c3fe425e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c799fa8d99ad74414b009171be69fa3d193cd8658b24cd84fed4fc94c52a040f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_01:4 -> audio/generated/it-IT/dialogues/d257aefba211ec719947487e44843f59c06d7e0536f00be8e94db7210245741d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ab06870-179b-516e-8aba-4b18dbdba969', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df96f40d9a76dd2081fef35f4d83d9474b7aae81f43fc6944b780028b2b82872'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71a3f4ea-3d5a-5d58-b64c-b4e8f80ea836', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ab06870-179b-516e-8aba-4b18dbdba969', 1), 'df96f40d9a76dd2081fef35f4d83d9474b7aae81f43fc6944b780028b2b82872',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d257aefba211ec719947487e44843f59c06d7e0536f00be8e94db7210245741d.mp3', 3840, '2026-09-14 07:28:46.203050', '179cca6a8f6323e89759771874ad941f43251eba2ece1a3b679a1879afd9e80b', 'validated', '{"audio_key":"d257aefba211ec719947487e44843f59c06d7e0536f00be8e94db7210245741d","entity_key":"d_strategic_ambiguity_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"179cca6a8f6323e89759771874ad941f43251eba2ece1a3b679a1879afd9e80b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/d257aefba211ec719947487e44843f59c06d7e0536f00be8e94db7210245741d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_01:4 -> audio/generated/it-IT/dialogues/d2640902dceb33765219ec78b402bbd139b6b5b62739b511ae9b4e8b594966ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('195aa3f1-d451-53cd-a189-efe900068229', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7f53e7cf402cfaf629fa5d1337e26f3b1886b4d7ba47cc67cb8ae9ac0b311db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47975fe3-c86f-5915-8d4d-8c6e6efc03be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('195aa3f1-d451-53cd-a189-efe900068229', 1), 'f7f53e7cf402cfaf629fa5d1337e26f3b1886b4d7ba47cc67cb8ae9ac0b311db',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d2640902dceb33765219ec78b402bbd139b6b5b62739b511ae9b4e8b594966ef.mp3', 3761, '2026-09-14 07:28:46.270696', '34ac6f112952aac229c14d6ffa8ce8e5c0bda77f7da3cc85b4ad62480046fe8e', 'validated', '{"audio_key":"d2640902dceb33765219ec78b402bbd139b6b5b62739b511ae9b4e8b594966ef","entity_key":"d_c2_public_panel_capstone_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ac6f112952aac229c14d6ffa8ce8e5c0bda77f7da3cc85b4ad62480046fe8e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/d2640902dceb33765219ec78b402bbd139b6b5b62739b511ae9b4e8b594966ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_01:2 -> audio/generated/it-IT/dialogues/db56f6f22932867f705a5fe3d4078a43717ad4a921029a73129ed86a0ce0a23b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7b1e7d4-d0ac-5aad-a55a-b080c3460cdd', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3aa8fe8ca6ef70e63bac2c95bdff5df095d05f659dd528dbb6e0d20b714322a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce360390-fb1f-5eed-9eda-9937ecba229a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7b1e7d4-d0ac-5aad-a55a-b080c3460cdd', 1), 'b3aa8fe8ca6ef70e63bac2c95bdff5df095d05f659dd528dbb6e0d20b714322a',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/db56f6f22932867f705a5fe3d4078a43717ad4a921029a73129ed86a0ce0a23b.mp3', 4414, '2026-09-14 07:28:47.468052', '3e4134821eb812ab6ed3880cc467520c414e083aa9204cdfcc904aaf18332937', 'validated', '{"audio_key":"db56f6f22932867f705a5fe3d4078a43717ad4a921029a73129ed86a0ce0a23b","entity_key":"d_institutional_register_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e4134821eb812ab6ed3880cc467520c414e083aa9204cdfcc904aaf18332937","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/db56f6f22932867f705a5fe3d4078a43717ad4a921029a73129ed86a0ce0a23b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_01:3 -> audio/generated/it-IT/dialogues/e00158f8fba671b3ae7ac5e35e40fc1fa7478aa669144e38bddd58ad0f51a432.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd431986-4b1f-500d-8e2e-b3f1d2417a00', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '959e2b13070a7cce33df4b5ee7fd02556516825dddcc1965638aeb372102b206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96076a81-a397-5594-ae1b-8eac1ee5a782', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd431986-4b1f-500d-8e2e-b3f1d2417a00', 1), '959e2b13070a7cce33df4b5ee7fd02556516825dddcc1965638aeb372102b206',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e00158f8fba671b3ae7ac5e35e40fc1fa7478aa669144e38bddd58ad0f51a432.mp3', 2168, '2026-09-14 07:28:47.320921', '914936fab0ac7c34f88aac30943b73c23cb2953c0383cced6521fdfc3f500e08', 'validated', '{"audio_key":"e00158f8fba671b3ae7ac5e35e40fc1fa7478aa669144e38bddd58ad0f51a432","entity_key":"d_inferential_precision_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"914936fab0ac7c34f88aac30943b73c23cb2953c0383cced6521fdfc3f500e08","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e00158f8fba671b3ae7ac5e35e40fc1fa7478aa669144e38bddd58ad0f51a432.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_01:4 -> audio/generated/it-IT/dialogues/e1ea6446419a53cbaefe23474f5f970c462dac3c7a620649cd31f44865f56dbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23e86baf-9ae5-5072-b516-0897c57fa0ea', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83aadfe009c02fc445e78f933059900f606ad0fa3ff74fe7718392fdc48f7e18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64f800ae-ee1a-55e3-b650-15f2c6d71f8a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23e86baf-9ae5-5072-b516-0897c57fa0ea', 1), '83aadfe009c02fc445e78f933059900f606ad0fa3ff74fe7718392fdc48f7e18',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e1ea6446419a53cbaefe23474f5f970c462dac3c7a620649cd31f44865f56dbb.mp3', 2768, '2026-09-14 07:28:48.429075', '6aaeb7f59d52f360435c33b25248422bdb043c8795c4e9cab7bccf9513f8d168', 'validated', '{"audio_key":"e1ea6446419a53cbaefe23474f5f970c462dac3c7a620649cd31f44865f56dbb","entity_key":"d_inferential_precision_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6aaeb7f59d52f360435c33b25248422bdb043c8795c4e9cab7bccf9513f8d168","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e1ea6446419a53cbaefe23474f5f970c462dac3c7a620649cd31f44865f56dbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_01:2 -> audio/generated/it-IT/dialogues/e63dcf04a2b1964daf7cc600f57b498e2d6a24b51175c190b21d6dac352ee68c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d52bc4c4-04e2-5cd5-af31-a1575e2b1208', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4c333d9f4591a7a79561d180e9b165137bbf1886cba0b8c7085210106ddb8f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ec796dc-2283-5881-a6f2-3dfdd3428fbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d52bc4c4-04e2-5cd5-af31-a1575e2b1208', 1), 'c4c333d9f4591a7a79561d180e9b165137bbf1886cba0b8c7085210106ddb8f7',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e63dcf04a2b1964daf7cc600f57b498e2d6a24b51175c190b21d6dac352ee68c.mp3', 2690, '2026-09-14 07:28:48.571886', '575fbb5aa335a0d2385d8bb36eaa4b0107a9028726f289a20870913464af0417', 'validated', '{"audio_key":"e63dcf04a2b1964daf7cc600f57b498e2d6a24b51175c190b21d6dac352ee68c","entity_key":"d_strategic_ambiguity_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"575fbb5aa335a0d2385d8bb36eaa4b0107a9028726f289a20870913464af0417","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/e63dcf04a2b1964daf7cc600f57b498e2d6a24b51175c190b21d6dac352ee68c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_public_panel_capstone_01:1 -> audio/generated/it-IT/dialogues/ea375cde8f61fdeb220c19ff5b89c3b33b455dc3e6e71612e0dd9f531a0711ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('955ebdcd-91ca-5dba-b4c6-796e298d1a57', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_public_panel_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8cce9bdb9af150dc236a6551ebf40a5851bd629753dc28e6c20647d41e02667'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49ed8635-1b52-5e9e-bf69-231e2d1d6468', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('955ebdcd-91ca-5dba-b4c6-796e298d1a57', 1), 'd8cce9bdb9af150dc236a6551ebf40a5851bd629753dc28e6c20647d41e02667',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ea375cde8f61fdeb220c19ff5b89c3b33b455dc3e6e71612e0dd9f531a0711ac.mp3', 2768, '2026-09-14 07:28:49.598234', 'a9a6beea1b675f5e4ae23298d924f96b16750d92cc8849796ce317ebc5a7386d', 'validated', '{"audio_key":"ea375cde8f61fdeb220c19ff5b89c3b33b455dc3e6e71612e0dd9f531a0711ac","entity_key":"d_c2_public_panel_capstone_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9a6beea1b675f5e4ae23298d924f96b16750d92cc8849796ce317ebc5a7386d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ea375cde8f61fdeb220c19ff5b89c3b33b455dc3e6e71612e0dd9f531a0711ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:1 -> audio/generated/it-IT/dialogues/eabc25bf61ff8996fcc61db8f81ef08e55c28c5b8a0c06ab5bf54747e7b88302.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('020249be-8fac-5877-b043-3c534742523f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9912ad99db3db38d496db1de147b7afcc1bd471b128307af0249b51170fd7307'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22e023fd-1ebc-519b-ad60-85c2cfd92332', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('020249be-8fac-5877-b043-3c534742523f', 1), '9912ad99db3db38d496db1de147b7afcc1bd471b128307af0249b51170fd7307',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/eabc25bf61ff8996fcc61db8f81ef08e55c28c5b8a0c06ab5bf54747e7b88302.mp3', 3239, '2026-09-14 07:28:49.769788', '2843c474aa8cceb9fe46fc4c1afd45ae01988286da39e30ef5f0e4a5cfc0d0e1', 'validated', '{"audio_key":"eabc25bf61ff8996fcc61db8f81ef08e55c28c5b8a0c06ab5bf54747e7b88302","entity_key":"d_counterfactual_reasoning_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"2843c474aa8cceb9fe46fc4c1afd45ae01988286da39e30ef5f0e4a5cfc0d0e1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/eabc25bf61ff8996fcc61db8f81ef08e55c28c5b8a0c06ab5bf54747e7b88302.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_01:4 -> audio/generated/it-IT/dialogues/eaed763aecf63ac61ecc2154bd00b8bcbf360718681ab19b8f76e7b7ee4589e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ba8630b-d06b-52d0-b379-695e16b8c602', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f4771c8c797f9b1deb29966775945852bd8a5689e5a96a1ab705ed4c89c3084'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af9157ab-71cb-557c-b137-5d43293c65e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ba8630b-d06b-52d0-b379-695e16b8c602', 1), '6f4771c8c797f9b1deb29966775945852bd8a5689e5a96a1ab705ed4c89c3084',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/eaed763aecf63ac61ecc2154bd00b8bcbf360718681ab19b8f76e7b7ee4589e6.mp3', 2821, '2026-09-14 07:28:50.714148', '8767815ff76e84c5099d32b3b1db1510590812338c59b8484056f7b1c59a2865', 'validated', '{"audio_key":"eaed763aecf63ac61ecc2154bd00b8bcbf360718681ab19b8f76e7b7ee4589e6","entity_key":"d_cultural_intertextuality_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8767815ff76e84c5099d32b3b1db1510590812338c59b8484056f7b1c59a2865","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/eaed763aecf63ac61ecc2154bd00b8bcbf360718681ab19b8f76e7b7ee4589e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_02:1 -> audio/generated/it-IT/dialogues/ec413e53c2f9f71864db5cbc815dc2b0ff7b5171499fe62e613ca378eca57df8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a02fdc58-f165-5887-b851-827ed4ffc8fd', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c36a1471c9febb84aa4fb587bfb78bef094a2e8837ffcf546642ce86b16cd55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e213edb1-5368-556b-abd6-8d9379eec254', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a02fdc58-f165-5887-b851-827ed4ffc8fd', 1), '5c36a1471c9febb84aa4fb587bfb78bef094a2e8837ffcf546642ce86b16cd55',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ec413e53c2f9f71864db5cbc815dc2b0ff7b5171499fe62e613ca378eca57df8.mp3', 2455, '2026-09-14 07:28:50.829595', '85d57b35ed69643ea038a428c7d6bdfe16c59275f8db167c82768d0840c95de6', 'validated', '{"audio_key":"ec413e53c2f9f71864db5cbc815dc2b0ff7b5171499fe62e613ca378eca57df8","entity_key":"d_cultural_intertextuality_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"85d57b35ed69643ea038a428c7d6bdfe16c59275f8db167c82768d0840c95de6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ec413e53c2f9f71864db5cbc815dc2b0ff7b5171499fe62e613ca378eca57df8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_01:3 -> audio/generated/it-IT/dialogues/eeafb0bbc829b640329b17e129a31cb1696be6123b0be878b3c7322493626a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9aaa0a17-b97e-5e07-9852-798e3a8d1244', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9d5e2120703db553a6f367b9d8360567e0be5ae9fc6e38d613e08a669e4c8bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cca8a0e4-da66-5c5a-be9e-f6451e04e284', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9aaa0a17-b97e-5e07-9852-798e3a8d1244', 1), 'f9d5e2120703db553a6f367b9d8360567e0be5ae9fc6e38d613e08a669e4c8bd',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/eeafb0bbc829b640329b17e129a31cb1696be6123b0be878b3c7322493626a5e.mp3', 2455, '2026-09-14 07:28:51.812408', '7f507d5511bc3f76b570020d8579f7b153acda4f13e7e8038fa836206091a2cc', 'validated', '{"audio_key":"eeafb0bbc829b640329b17e129a31cb1696be6123b0be878b3c7322493626a5e","entity_key":"d_institutional_register_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f507d5511bc3f76b570020d8579f7b153acda4f13e7e8038fa836206091a2cc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/eeafb0bbc829b640329b17e129a31cb1696be6123b0be878b3c7322493626a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inferential_precision_01:2 -> audio/generated/it-IT/dialogues/f152142d0cb954325f8cca11ffc380c721a84f48cc3bf2c589a4ae65180060b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b4daa58-d5c1-546c-9f5c-4f8bf83edcd3', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inferential_precision_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88da381ed98e2a0b3927974f4c4a27a186f6cc6d3ef46d505703dd4aae048be3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6b3b837-d434-54e9-ae39-a5da128ffc4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b4daa58-d5c1-546c-9f5c-4f8bf83edcd3', 1), '88da381ed98e2a0b3927974f4c4a27a186f6cc6d3ef46d505703dd4aae048be3',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f152142d0cb954325f8cca11ffc380c721a84f48cc3bf2c589a4ae65180060b5.mp3', 2324, '2026-09-14 07:28:51.882104', 'f312fb3b6e94345308954fe881d8d3334f89b1c99bcbde2d1d1dc713de66b280', 'validated', '{"audio_key":"f152142d0cb954325f8cca11ffc380c721a84f48cc3bf2c589a4ae65180060b5","entity_key":"d_inferential_precision_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f312fb3b6e94345308954fe881d8d3334f89b1c99bcbde2d1d1dc713de66b280","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f152142d0cb954325f8cca11ffc380c721a84f48cc3bf2c589a4ae65180060b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_intertextuality_01:2 -> audio/generated/it-IT/dialogues/fa482da09554500698cd4b82a17e9f86b0c171e9822264efcfffa679b08c7272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdfbd378-e930-5cc5-a535-392faaa01ff7', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_intertextuality_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0693d2494ebcf504a3e2a951c12e390f26af6e96b19e5b9ce6705b294fdf800e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c88ea74e-c98d-58a5-89de-eecc905627ac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdfbd378-e930-5cc5-a535-392faaa01ff7', 1), '0693d2494ebcf504a3e2a951c12e390f26af6e96b19e5b9ce6705b294fdf800e',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fa482da09554500698cd4b82a17e9f86b0c171e9822264efcfffa679b08c7272.mp3', 3108, '2026-09-14 07:28:52.970774', '9d964f21df978ccfedf25bb31e9a3b1f6bc4ce9a10ea398b6164b50fe42dc7d9', 'validated', '{"audio_key":"fa482da09554500698cd4b82a17e9f86b0c171e9822264efcfffa679b08c7272","entity_key":"d_cultural_intertextuality_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9d964f21df978ccfedf25bb31e9a3b1f6bc4ce9a10ea398b6164b50fe42dc7d9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/fa482da09554500698cd4b82a17e9f86b0c171e9822264efcfffa679b08c7272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_01:1 -> audio/generated/it-IT/dialogues/fa59f39f20452675176fb93549bb5cbca617eba03bba0ce631a744b1c05c6ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67b7cdc6-b314-529a-a4da-640b3d4818d2', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc8995ff235691682ad8c7211ddb684809b2b032da040b9eaaa8423d43cfcea7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('844bcad9-4bc0-55d2-99ca-8ed0c11dbdac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67b7cdc6-b314-529a-a4da-640b3d4818d2', 1), 'bc8995ff235691682ad8c7211ddb684809b2b032da040b9eaaa8423d43cfcea7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fa59f39f20452675176fb93549bb5cbca617eba03bba0ce631a744b1c05c6ac5.mp3', 2821, '2026-09-14 07:28:53.034051', '0eda121b47d94385e41efcbbee9fa2c72482c376e10153a9ea1fe3657a62f9f1', 'validated', '{"audio_key":"fa59f39f20452675176fb93549bb5cbca617eba03bba0ce631a744b1c05c6ac5","entity_key":"d_high_stakes_debate_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"0eda121b47d94385e41efcbbee9fa2c72482c376e10153a9ea1fe3657a62f9f1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/fa59f39f20452675176fb93549bb5cbca617eba03bba0ce631a744b1c05c6ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stylistic_editing_02:2 -> audio/generated/it-IT/dialogues/fc7755579d396e586dc8b93ea5d3189c79c8dbdf94c77e1ecbcc6c649d3a79a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8ae26de-6e3b-502b-a0e8-871b233b3582', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stylistic_editing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '940f79966b4a78bf1db88624a0fd7788ecb7feeabb2958972b577dbf9f57d719'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24e9241d-e194-5026-81e7-93fad4f153c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8ae26de-6e3b-502b-a0e8-871b233b3582', 1), '940f79966b4a78bf1db88624a0fd7788ecb7feeabb2958972b577dbf9f57d719',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fc7755579d396e586dc8b93ea5d3189c79c8dbdf94c77e1ecbcc6c649d3a79a6.mp3', 2873, '2026-09-14 07:28:54.133539', '57bca2165d2497bd376c9dea148f2cd62b359786217a2f387452d199f4333abb', 'validated', '{"audio_key":"fc7755579d396e586dc8b93ea5d3189c79c8dbdf94c77e1ecbcc6c649d3a79a6","entity_key":"d_stylistic_editing_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bca2165d2497bd376c9dea148f2cd62b359786217a2f387452d199f4333abb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/fc7755579d396e586dc8b93ea5d3189c79c8dbdf94c77e1ecbcc6c649d3a79a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_and_understatement_01:3 -> audio/generated/it-IT/dialogues/fe211fad93026c652d347e719d9cd0a0f5053fe03674fddc4f334ce71ca098c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d38229d-4fa8-558f-b50c-737b66bc4ab3', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_and_understatement_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64415cc73605507378f3a33edda140ec842773ee0f552b7c286f9c16e4ed7a2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8be12b-48a9-58e7-94a4-90bf870c8d52', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d38229d-4fa8-558f-b50c-737b66bc4ab3', 1), '64415cc73605507378f3a33edda140ec842773ee0f552b7c286f9c16e4ed7a2e',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fe211fad93026c652d347e719d9cd0a0f5053fe03674fddc4f334ce71ca098c8.mp3', 2220, '2026-09-14 07:28:54.075372', 'bfc0991df814e862ee14acdaa25de2252e785b9f5a4c6ba4a899c2ee6dfb889b', 'validated', '{"audio_key":"fe211fad93026c652d347e719d9cd0a0f5053fe03674fddc4f334ce71ca098c8","entity_key":"d_irony_and_understatement_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bfc0991df814e862ee14acdaa25de2252e785b9f5a4c6ba4a899c2ee6dfb889b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/fe211fad93026c652d347e719d9cd0a0f5053fe03674fddc4f334ce71ca098c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_debate_01:4 -> audio/generated/it-IT/dialogues/fe5784b013b60abaa5446dd5cdcdfcd2f68bc5d726a782b2d52529d7d1a30601.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06c8e9da-cd4a-5cf1-ad7f-99cfbb150656', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_debate_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b0874f6b9764e3105ba77f7c28c8955169f0456d36fead3cefaa405b4dd4c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3a61816-0e8b-58c4-b73f-1adcca1ff0ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06c8e9da-cd4a-5cf1-ad7f-99cfbb150656', 1), '9b0874f6b9764e3105ba77f7c28c8955169f0456d36fead3cefaa405b4dd4c21',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fe5784b013b60abaa5446dd5cdcdfcd2f68bc5d726a782b2d52529d7d1a30601.mp3', 2037, '2026-09-14 07:28:55.184894', 'e488dd02fb23a4e475e593e5c46dca7cbeb3e0dce4e4248a66cbee7cb9277806', 'validated', '{"audio_key":"fe5784b013b60abaa5446dd5cdcdfcd2f68bc5d726a782b2d52529d7d1a30601","entity_key":"d_high_stakes_debate_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e488dd02fb23a4e475e593e5c46dca7cbeb3e0dce4e4248a66cbee7cb9277806","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/fe5784b013b60abaa5446dd5cdcdfcd2f68bc5d726a782b2d52529d7d1a30601.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_03 -> audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28b3af64-6b3f-50ba-99ca-6cb727a76c4f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebcd8438caccefc60492f860e16ec10c60686b9c0a156357e8c09d846225fe15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83cfd487-38db-5105-b17c-beb95b647e7b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28b3af64-6b3f-50ba-99ca-6cb727a76c4f', 1), 'ebcd8438caccefc60492f860e16ec10c60686b9c0a156357e8c09d846225fe15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3', 1071, '2026-09-14 07:28:55.155092', '3900e0c1f6a68e984e6dfa98844ae4c9578f098fcca802339f7d401117085418', 'validated', '{"audio_key":"025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6","entity_key":"lx_cultural_intertextuality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3900e0c1f6a68e984e6dfa98844ae4c9578f098fcca802339f7d401117085418","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_03 -> audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42106910-7dd4-50a6-a0f1-49280a458d4d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebcd8438caccefc60492f860e16ec10c60686b9c0a156357e8c09d846225fe15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('380db178-064a-5156-80db-479b0c6649bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42106910-7dd4-50a6-a0f1-49280a458d4d', 1), 'ebcd8438caccefc60492f860e16ec10c60686b9c0a156357e8c09d846225fe15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3', 1071, '2026-09-14 07:28:55.155092', '3900e0c1f6a68e984e6dfa98844ae4c9578f098fcca802339f7d401117085418', 'validated', '{"audio_key":"025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6","entity_key":"wf_cultural_intertextuality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3900e0c1f6a68e984e6dfa98844ae4c9578f098fcca802339f7d401117085418","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/025f72a690d2b5fd3cfa8d56e3626996bfea00f98fd443363929b9a0d869bdf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_05 -> audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0393a3a9-cc6a-5725-b293-b8c9d639027d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a63c01577d30c12ac22c58768d1ffafbbf60fadb4aa0ad8a7286eb7bb9ad841a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7836f46b-c101-5adf-aafb-87000e8a2a96', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0393a3a9-cc6a-5725-b293-b8c9d639027d', 1), 'a63c01577d30c12ac22c58768d1ffafbbf60fadb4aa0ad8a7286eb7bb9ad841a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3', 1280, '2026-09-14 07:28:56.195083', '8fee0dd863d6c750481e11cceb08d7ccbbf22fba95d1a932c985021b7a0f9095', 'validated', '{"audio_key":"0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766","entity_key":"lx_stylistic_editing_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8fee0dd863d6c750481e11cceb08d7ccbbf22fba95d1a932c985021b7a0f9095","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_05 -> audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('280a898d-fdd7-5b1b-aff7-380e80806a1c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a63c01577d30c12ac22c58768d1ffafbbf60fadb4aa0ad8a7286eb7bb9ad841a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25bddb3b-45c1-522d-939e-274e57bdda13', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('280a898d-fdd7-5b1b-aff7-380e80806a1c', 1), 'a63c01577d30c12ac22c58768d1ffafbbf60fadb4aa0ad8a7286eb7bb9ad841a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3', 1280, '2026-09-14 07:28:56.195083', '8fee0dd863d6c750481e11cceb08d7ccbbf22fba95d1a932c985021b7a0f9095', 'validated', '{"audio_key":"0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766","entity_key":"wf_stylistic_editing_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8fee0dd863d6c750481e11cceb08d7ccbbf22fba95d1a932c985021b7a0f9095","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0c6c434e828090f55cd5ea3dcdc293a34b56fcf9ec4efb516ed126dbc1152766.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_02 -> audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('77e30007-4604-52cd-8c66-89809d4574e7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd328a1100016ce7d48d499f98195ad9113182c2f9a86d19eaac5d380964b341a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0ef3081-9b8f-5462-ae2d-623171870bed', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('77e30007-4604-52cd-8c66-89809d4574e7', 1), 'd328a1100016ce7d48d499f98195ad9113182c2f9a86d19eaac5d380964b341a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3', 1097, '2026-09-14 07:28:56.137897', '617a37cc45389309305bcfd7c542443cea77f5371df0b53fbeff02395e743242', 'validated', '{"audio_key":"0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9","entity_key":"lx_c2_public_panel_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"617a37cc45389309305bcfd7c542443cea77f5371df0b53fbeff02395e743242","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_02 -> audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fef9e54a-88ab-5fe5-935a-2124862932d0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd328a1100016ce7d48d499f98195ad9113182c2f9a86d19eaac5d380964b341a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b022107-9b05-5675-94b0-68a11b62813c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fef9e54a-88ab-5fe5-935a-2124862932d0', 1), 'd328a1100016ce7d48d499f98195ad9113182c2f9a86d19eaac5d380964b341a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3', 1097, '2026-09-14 07:28:56.137897', '617a37cc45389309305bcfd7c542443cea77f5371df0b53fbeff02395e743242', 'validated', '{"audio_key":"0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9","entity_key":"wf_c2_public_panel_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"617a37cc45389309305bcfd7c542443cea77f5371df0b53fbeff02395e743242","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d0fae61f1371442131cc8548b185e3ac24faa8c0f07b6b9184114e3fb212aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_01 -> audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d5ad29d-0b2b-5df2-af22-c5388f7b88ea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '232df1b05d719aab7de98914b3621a3b720998b2811f74ed62893491a112cc4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dd775a5-98ae-5269-88f8-f65814e0229b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d5ad29d-0b2b-5df2-af22-c5388f7b88ea', 1), '232df1b05d719aab7de98914b3621a3b720998b2811f74ed62893491a112cc4b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3', 1332, '2026-09-14 07:28:57.135525', '5e7a3392be8fb775153524ec9b91731b78821f1e5315aaf86887e09ecff56ad3', 'validated', '{"audio_key":"0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3","entity_key":"lx_stylistic_editing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5e7a3392be8fb775153524ec9b91731b78821f1e5315aaf86887e09ecff56ad3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_01 -> audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cbde16b6-1fe6-57a5-986f-53e2b8e8ac78', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '232df1b05d719aab7de98914b3621a3b720998b2811f74ed62893491a112cc4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc8b8a6d-8551-52d7-bc92-17be2814a43c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cbde16b6-1fe6-57a5-986f-53e2b8e8ac78', 1), '232df1b05d719aab7de98914b3621a3b720998b2811f74ed62893491a112cc4b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3', 1332, '2026-09-14 07:28:57.135525', '5e7a3392be8fb775153524ec9b91731b78821f1e5315aaf86887e09ecff56ad3', 'validated', '{"audio_key":"0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3","entity_key":"wf_stylistic_editing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5e7a3392be8fb775153524ec9b91731b78821f1e5315aaf86887e09ecff56ad3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0e4cac546cf898ba33160f99cad071eb8f76efcbe2693bfe1ebc2b0f4477dee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_01 -> audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9dc0b64-d438-5d18-8883-42d3b6ae7381', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26fcd702dd9332b798d200cb55e030bb7531cc430d7335861032b79dee8e09df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6673461-b722-563c-a589-3175c98350fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9dc0b64-d438-5d18-8883-42d3b6ae7381', 1), '26fcd702dd9332b798d200cb55e030bb7531cc430d7335861032b79dee8e09df',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3', 966, '2026-09-14 07:28:57.130757', 'd4f223dd76bf680d2e424023a5dd92a56b104b83ae1474b4813355a511737429', 'validated', '{"audio_key":"0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0","entity_key":"lx_inferential_precision_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4f223dd76bf680d2e424023a5dd92a56b104b83ae1474b4813355a511737429","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_01 -> audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4bd4ce8b-1476-53c9-8bc8-92838ae39d69', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26fcd702dd9332b798d200cb55e030bb7531cc430d7335861032b79dee8e09df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41acb093-58fb-5c3b-b650-016bd08f8f7b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4bd4ce8b-1476-53c9-8bc8-92838ae39d69', 1), '26fcd702dd9332b798d200cb55e030bb7531cc430d7335861032b79dee8e09df',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3', 966, '2026-09-14 07:28:57.130757', 'd4f223dd76bf680d2e424023a5dd92a56b104b83ae1474b4813355a511737429', 'validated', '{"audio_key":"0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0","entity_key":"wf_inferential_precision_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4f223dd76bf680d2e424023a5dd92a56b104b83ae1474b4813355a511737429","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0e9401731fc47fb73a07326226d1130a1703bcf353e835d83f8a9e26a6d780f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_04 -> audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('44ad1048-d8fc-5482-9c24-aee2ab20be33', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79d6c57f1cff78e0d54ec336ce6050fd32722155e20b56c8d285f58f87966e6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb2a485a-45c9-5912-8d2a-56a67bb5ddcb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('44ad1048-d8fc-5482-9c24-aee2ab20be33', 1), '79d6c57f1cff78e0d54ec336ce6050fd32722155e20b56c8d285f58f87966e6e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3', 1097, '2026-09-14 07:28:58.085368', '12f29e50fa7add3a2fb46633a888d35a8e68f9feb79972bd93be1a38f63865b3', 'validated', '{"audio_key":"0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821","entity_key":"lx_institutional_register_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"12f29e50fa7add3a2fb46633a888d35a8e68f9feb79972bd93be1a38f63865b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_04 -> audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dae2ad4e-e0b1-54a5-9416-675f9e926a7d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79d6c57f1cff78e0d54ec336ce6050fd32722155e20b56c8d285f58f87966e6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('269542e7-58da-55c7-a3c0-024a68f92eb0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dae2ad4e-e0b1-54a5-9416-675f9e926a7d', 1), '79d6c57f1cff78e0d54ec336ce6050fd32722155e20b56c8d285f58f87966e6e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3', 1097, '2026-09-14 07:28:58.085368', '12f29e50fa7add3a2fb46633a888d35a8e68f9feb79972bd93be1a38f63865b3', 'validated', '{"audio_key":"0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821","entity_key":"wf_institutional_register_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"12f29e50fa7add3a2fb46633a888d35a8e68f9feb79972bd93be1a38f63865b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0ff5ba8cc6cf5d0d858d528a125215e4e9215e47e30c0d35902ad370404ac821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_06 -> audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('79fe9883-5e24-56b2-bdb8-a5ac00d4140e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54516f0cdb6358f020c36b12f7bf1bfe094b76847a6500be91c4f38b8c18de6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b78e4204-6618-5a98-9c39-b7e20ee7a249', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('79fe9883-5e24-56b2-bdb8-a5ac00d4140e', 1), '54516f0cdb6358f020c36b12f7bf1bfe094b76847a6500be91c4f38b8c18de6d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3', 1253, '2026-09-14 07:28:58.129772', 'ec9364d1b6b159536c5116bf8c60927a1f9e6c4e7f1367c581f86bcf367fa9c3', 'validated', '{"audio_key":"191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650","entity_key":"lx_irony_and_understatement_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec9364d1b6b159536c5116bf8c60927a1f9e6c4e7f1367c581f86bcf367fa9c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_06 -> audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3dfb1711-1133-51c1-8657-55fe99198355', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54516f0cdb6358f020c36b12f7bf1bfe094b76847a6500be91c4f38b8c18de6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c16983cb-0e73-5eb8-b435-329e47b19665', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3dfb1711-1133-51c1-8657-55fe99198355', 1), '54516f0cdb6358f020c36b12f7bf1bfe094b76847a6500be91c4f38b8c18de6d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3', 1253, '2026-09-14 07:28:58.129772', 'ec9364d1b6b159536c5116bf8c60927a1f9e6c4e7f1367c581f86bcf367fa9c3', 'validated', '{"audio_key":"191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650","entity_key":"wf_irony_and_understatement_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec9364d1b6b159536c5116bf8c60927a1f9e6c4e7f1367c581f86bcf367fa9c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/191e90891324545953e052cbdb2a0d5bdf2b0b0269e2a785930ef98593a6e650.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_04 -> audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8c796920-66af-555b-8bda-3ab7a7c04d76', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e226d4bd65fac2b4be6b2722f7cbe1bca4952cd77f8946e9a79743a29ee825'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad61b8aa-358a-5bc6-8325-d5afb8b0f530', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8c796920-66af-555b-8bda-3ab7a7c04d76', 1), '89e226d4bd65fac2b4be6b2722f7cbe1bca4952cd77f8946e9a79743a29ee825',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3', 1671, '2026-09-14 07:28:59.101428', 'c4b780baa1fec759192bf95dd4283eb295f13fec07ca389b6453b7030c470ffc', 'validated', '{"audio_key":"1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c","entity_key":"lx_c2_public_panel_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c4b780baa1fec759192bf95dd4283eb295f13fec07ca389b6453b7030c470ffc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_04 -> audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed854360-1294-5103-b4ab-c0446518138c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e226d4bd65fac2b4be6b2722f7cbe1bca4952cd77f8946e9a79743a29ee825'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80fda7c6-be76-574f-8494-05c70fb6e91d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed854360-1294-5103-b4ab-c0446518138c', 1), '89e226d4bd65fac2b4be6b2722f7cbe1bca4952cd77f8946e9a79743a29ee825',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3', 1671, '2026-09-14 07:28:59.101428', 'c4b780baa1fec759192bf95dd4283eb295f13fec07ca389b6453b7030c470ffc', 'validated', '{"audio_key":"1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c","entity_key":"wf_c2_public_panel_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c4b780baa1fec759192bf95dd4283eb295f13fec07ca389b6453b7030c470ffc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1b0dded4b0070bd4b4bb1211baaa0fb78df149359b5adceccb3287566adcb28c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_03 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c569ac0-e139-5f41-815e-c301e26d2221', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"lx_counterfactual_reasoning_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_03 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46db8e25-af4e-56f2-b6ce-37bcd0a11630', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ba9d98a-5fe7-5ba7-8ce4-b27e62b6e492', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46db8e25-af4e-56f2-b6ce-37bcd0a11630', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"wf_counterfactual_reasoning_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_04 -> audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ad36039b-9fb2-5c8d-8c72-22e3905900c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b08f586e2d52d27d453b85a220b667ead6b3c7108522ded3fb24c5cc14f6f0a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('badca1a5-954e-5e7d-a353-93d05d908e82', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ad36039b-9fb2-5c8d-8c72-22e3905900c7', 1), 'b08f586e2d52d27d453b85a220b667ead6b3c7108522ded3fb24c5cc14f6f0a8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3', 1436, '2026-09-14 07:28:59.118077', '3701af30ca5779a31b92d6dc73bc0170d65d38c3dbdc9fc888e3f4dc271b3e73', 'validated', '{"audio_key":"1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de","entity_key":"lx_inferential_precision_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3701af30ca5779a31b92d6dc73bc0170d65d38c3dbdc9fc888e3f4dc271b3e73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_04 -> audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1cd42f88-e0ec-5fa9-be81-9c6413115e2a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b08f586e2d52d27d453b85a220b667ead6b3c7108522ded3fb24c5cc14f6f0a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a87f6101-e06b-572c-973e-c7756897a1c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1cd42f88-e0ec-5fa9-be81-9c6413115e2a', 1), 'b08f586e2d52d27d453b85a220b667ead6b3c7108522ded3fb24c5cc14f6f0a8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3', 1436, '2026-09-14 07:28:59.118077', '3701af30ca5779a31b92d6dc73bc0170d65d38c3dbdc9fc888e3f4dc271b3e73', 'validated', '{"audio_key":"1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de","entity_key":"wf_inferential_precision_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3701af30ca5779a31b92d6dc73bc0170d65d38c3dbdc9fc888e3f4dc271b3e73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1ef9cd0b047e8d29b5c5dd2da3981c5137a4c7afb24e99f484d6092f1c8405de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_01 -> audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ff008fd-dcd2-5072-b98c-5ff04ce547cf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '705dedc6c22709efc1d01d19325a61d68c84cc1020050b71ec275166ba66332f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7b7ecfc-bb90-51fc-8142-94aca892dc78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ff008fd-dcd2-5072-b98c-5ff04ce547cf', 1), '705dedc6c22709efc1d01d19325a61d68c84cc1020050b71ec275166ba66332f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3', 1436, '2026-09-14 07:29:00.298959', '66300e433dac0ea6b8d05c0857ee9e5d25f76f67d09e2965b1a127c528fe4aef', 'validated', '{"audio_key":"20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350","entity_key":"lx_counterfactual_reasoning_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"66300e433dac0ea6b8d05c0857ee9e5d25f76f67d09e2965b1a127c528fe4aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_01 -> audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8896eb8c-8745-5ef1-8618-44b1fbb039b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '705dedc6c22709efc1d01d19325a61d68c84cc1020050b71ec275166ba66332f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65ef51e6-33c3-5ff7-921d-2cce8b6a9ded', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8896eb8c-8745-5ef1-8618-44b1fbb039b0', 1), '705dedc6c22709efc1d01d19325a61d68c84cc1020050b71ec275166ba66332f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3', 1436, '2026-09-14 07:29:00.298959', '66300e433dac0ea6b8d05c0857ee9e5d25f76f67d09e2965b1a127c528fe4aef', 'validated', '{"audio_key":"20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350","entity_key":"wf_counterfactual_reasoning_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"66300e433dac0ea6b8d05c0857ee9e5d25f76f67d09e2965b1a127c528fe4aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/20462235a1e01bf253ef039419a585415c1dd3d0687373ebf3c92dcbe9edf350.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_01 -> audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e101259e-03e3-5d6f-81d3-3ec7a1db4405', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a70c68d77c219683cd60436bdc7fda2e59fb1285e1286471c745f4b2acaf8dec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45ab53a1-e75a-54a7-b957-b267a8ac47e0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e101259e-03e3-5d6f-81d3-3ec7a1db4405', 1), 'a70c68d77c219683cd60436bdc7fda2e59fb1285e1286471c745f4b2acaf8dec',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3', 1071, '2026-09-14 07:29:00.058781', '8e0a6443cf542db708eddf2664de2e7d4db3e301dc80f95a66769db49e5be6ef', 'validated', '{"audio_key":"25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a","entity_key":"lx_cultural_intertextuality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8e0a6443cf542db708eddf2664de2e7d4db3e301dc80f95a66769db49e5be6ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_01 -> audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6af8ac0-898d-5b8f-8c76-c11d1b64162b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a70c68d77c219683cd60436bdc7fda2e59fb1285e1286471c745f4b2acaf8dec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9841351-a5ea-5661-be5e-13c26072577b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6af8ac0-898d-5b8f-8c76-c11d1b64162b', 1), 'a70c68d77c219683cd60436bdc7fda2e59fb1285e1286471c745f4b2acaf8dec',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3', 1071, '2026-09-14 07:29:00.058781', '8e0a6443cf542db708eddf2664de2e7d4db3e301dc80f95a66769db49e5be6ef', 'validated', '{"audio_key":"25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a","entity_key":"wf_cultural_intertextuality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8e0a6443cf542db708eddf2664de2e7d4db3e301dc80f95a66769db49e5be6ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/25cc3b3d74b68470fb1921629f447ea7d99c3c91f8c574687399fbce1df4d53a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_05 -> audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d919bf98-9d47-50bb-8654-fd2cac1a3f81', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b199c189becff62e9cfa7e85c0731c8303d25775a09835fcf818927c65c4f63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb7a41b5-98cc-555d-bcde-355ddb1bc1d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d919bf98-9d47-50bb-8654-fd2cac1a3f81', 1), '2b199c189becff62e9cfa7e85c0731c8303d25775a09835fcf818927c65c4f63',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3', 1071, '2026-09-14 07:29:01.049725', 'b4bb75fdde40f09c9f61b44a2cbe99c0d8e8f8aa4bb52bd4aa074a551230eb7a', 'validated', '{"audio_key":"272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857","entity_key":"lx_academic_critique_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b4bb75fdde40f09c9f61b44a2cbe99c0d8e8f8aa4bb52bd4aa074a551230eb7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_05 -> audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff8526e8-7fc5-5857-93bc-59bcbf54d3ec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b199c189becff62e9cfa7e85c0731c8303d25775a09835fcf818927c65c4f63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69b896f2-cbab-5e3a-8672-0f70398d7344', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff8526e8-7fc5-5857-93bc-59bcbf54d3ec', 1), '2b199c189becff62e9cfa7e85c0731c8303d25775a09835fcf818927c65c4f63',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3', 1071, '2026-09-14 07:29:01.049725', 'b4bb75fdde40f09c9f61b44a2cbe99c0d8e8f8aa4bb52bd4aa074a551230eb7a', 'validated', '{"audio_key":"272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857","entity_key":"wf_academic_critique_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b4bb75fdde40f09c9f61b44a2cbe99c0d8e8f8aa4bb52bd4aa074a551230eb7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/272ac0590a776187e1406f00557c54a96018ac5184324acc19d91cb1e560c857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_06 -> audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('adecfec8-b4c8-51cb-90d7-47e2634db0cb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4a1a813716fc02977dd7949fbe799d026ade89746bf5552efaa0322253ba05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b13490b6-c761-520e-809e-548b939cc9e0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('adecfec8-b4c8-51cb-90d7-47e2634db0cb', 1), 'b4a1a813716fc02977dd7949fbe799d026ade89746bf5552efaa0322253ba05f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3', 966, '2026-09-14 07:29:01.246559', 'dbf6b8d3f5e9f8d5af45a300301e925f041741645c354fcd6c5d0aff9687e68d', 'validated', '{"audio_key":"2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce","entity_key":"lx_high_stakes_debate_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dbf6b8d3f5e9f8d5af45a300301e925f041741645c354fcd6c5d0aff9687e68d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_06 -> audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa9ff1fd-aca4-51ec-9a97-be9e2bc45daa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4a1a813716fc02977dd7949fbe799d026ade89746bf5552efaa0322253ba05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c3091a1-7df1-5b89-9eb9-16d81b5beb31', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa9ff1fd-aca4-51ec-9a97-be9e2bc45daa', 1), 'b4a1a813716fc02977dd7949fbe799d026ade89746bf5552efaa0322253ba05f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3', 966, '2026-09-14 07:29:01.246559', 'dbf6b8d3f5e9f8d5af45a300301e925f041741645c354fcd6c5d0aff9687e68d', 'validated', '{"audio_key":"2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce","entity_key":"wf_high_stakes_debate_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dbf6b8d3f5e9f8d5af45a300301e925f041741645c354fcd6c5d0aff9687e68d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2c1efd5d0ea02086b077597f1aff97b8e087120568731d2efeab198236aa43ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_02 -> audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('01aacd6a-7af7-5d2c-a83b-7b61ed74deb3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6848270946fe812403d8cab8962344801f84e6686ebe559d1b2ebfb7e4feba8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37397731-d25d-5468-8765-7f15d5a05ebb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('01aacd6a-7af7-5d2c-a83b-7b61ed74deb3', 1), 'b6848270946fe812403d8cab8962344801f84e6686ebe559d1b2ebfb7e4feba8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3', 1332, '2026-09-14 07:29:02.032003', '649eaca2fb57d10d709390f9bdbd869d9f79e1e545c67a013fa086a9131c4119', 'validated', '{"audio_key":"3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561","entity_key":"lx_institutional_register_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"649eaca2fb57d10d709390f9bdbd869d9f79e1e545c67a013fa086a9131c4119","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_02 -> audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf188b83-9d42-5a4a-82cf-931aca5d59a5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6848270946fe812403d8cab8962344801f84e6686ebe559d1b2ebfb7e4feba8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('026ae951-9bcc-5ade-9fd8-500ca7354514', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf188b83-9d42-5a4a-82cf-931aca5d59a5', 1), 'b6848270946fe812403d8cab8962344801f84e6686ebe559d1b2ebfb7e4feba8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3', 1332, '2026-09-14 07:29:02.032003', '649eaca2fb57d10d709390f9bdbd869d9f79e1e545c67a013fa086a9131c4119', 'validated', '{"audio_key":"3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561","entity_key":"wf_institutional_register_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"649eaca2fb57d10d709390f9bdbd869d9f79e1e545c67a013fa086a9131c4119","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3972ef5d8940efe5b51f07647aa2f95811f6c75fbeae4951c049ab6cadfa2561.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_02 -> audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2a465c67-e1c5-5a58-9306-4eadfa7a7955', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '493b6b2797321b067e0558f284ca1af66b46cc24d7f814e83a8209661385cabf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca0ff918-c67a-5a45-bf3e-3d9d8ab4dbc2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2a465c67-e1c5-5a58-9306-4eadfa7a7955', 1), '493b6b2797321b067e0558f284ca1af66b46cc24d7f814e83a8209661385cabf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3', 1253, '2026-09-14 07:29:02.220471', '41b16d75b0142611564fce0dcf4cb7e8dbd592a8f6d9cf4e82461738a589f5c0', 'validated', '{"audio_key":"3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9","entity_key":"lx_strategic_ambiguity_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41b16d75b0142611564fce0dcf4cb7e8dbd592a8f6d9cf4e82461738a589f5c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_02 -> audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('719cd1ab-6c71-53db-9985-93edda05821e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '493b6b2797321b067e0558f284ca1af66b46cc24d7f814e83a8209661385cabf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f16785f-2f19-5dcc-8873-c4b1470194ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('719cd1ab-6c71-53db-9985-93edda05821e', 1), '493b6b2797321b067e0558f284ca1af66b46cc24d7f814e83a8209661385cabf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3', 1253, '2026-09-14 07:29:02.220471', '41b16d75b0142611564fce0dcf4cb7e8dbd592a8f6d9cf4e82461738a589f5c0', 'validated', '{"audio_key":"3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9","entity_key":"wf_strategic_ambiguity_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41b16d75b0142611564fce0dcf4cb7e8dbd592a8f6d9cf4e82461738a589f5c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3cbd97d73085a2ff4a880a4b80ca6bbaf19097822279625024a880140bc862c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_05 -> audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed17edc1-6d52-50d9-be4d-a91791bd5dea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f60e6521d7a3b754d87e61ca171f635af961d4e9504cdd84011451051907969e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc6f8c97-7547-57db-97d6-b9b33e20ed60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed17edc1-6d52-50d9-be4d-a91791bd5dea', 1), 'f60e6521d7a3b754d87e61ca171f635af961d4e9504cdd84011451051907969e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3', 1071, '2026-09-14 07:29:02.972994', '04fd69f06463a5e41d854005e8e3225fc62c12511e44a0dca0cc49d52830c2c0', 'validated', '{"audio_key":"531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a","entity_key":"lx_irony_and_understatement_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"04fd69f06463a5e41d854005e8e3225fc62c12511e44a0dca0cc49d52830c2c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_05 -> audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29fc714a-b6e2-5d74-b07c-183fc5a96641', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f60e6521d7a3b754d87e61ca171f635af961d4e9504cdd84011451051907969e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c211673-4459-5d1b-b077-716143b7e1e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29fc714a-b6e2-5d74-b07c-183fc5a96641', 1), 'f60e6521d7a3b754d87e61ca171f635af961d4e9504cdd84011451051907969e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3', 1071, '2026-09-14 07:29:02.972994', '04fd69f06463a5e41d854005e8e3225fc62c12511e44a0dca0cc49d52830c2c0', 'validated', '{"audio_key":"531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a","entity_key":"wf_irony_and_understatement_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"04fd69f06463a5e41d854005e8e3225fc62c12511e44a0dca0cc49d52830c2c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/531d175cab2af7d4eb0545e68950151b432a9c74f2fc396b91cef79f0a01af3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_04 -> audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0694c65f-8ed9-5b14-be8d-ed454b8d19f7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355e4614a485aa9d1e657ca7b247020891d36078ec32ea0f040435e89027c2c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ed168a5-72ea-5d95-8c59-cef3b06a2955', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0694c65f-8ed9-5b14-be8d-ed454b8d19f7', 1), '355e4614a485aa9d1e657ca7b247020891d36078ec32ea0f040435e89027c2c7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3', 1018, '2026-09-14 07:29:03.169342', 'ca7789cb8b62320bec7a508220c99ea5038f57c2565559788990aa4232c9f5c5', 'validated', '{"audio_key":"58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c","entity_key":"lx_high_stakes_debate_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca7789cb8b62320bec7a508220c99ea5038f57c2565559788990aa4232c9f5c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_04 -> audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4de68449-4dff-58d0-8ed9-88fd4e8ef7b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355e4614a485aa9d1e657ca7b247020891d36078ec32ea0f040435e89027c2c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ae875a2-432f-5a78-ac01-589bdde38e24', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4de68449-4dff-58d0-8ed9-88fd4e8ef7b0', 1), '355e4614a485aa9d1e657ca7b247020891d36078ec32ea0f040435e89027c2c7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3', 1018, '2026-09-14 07:29:03.169342', 'ca7789cb8b62320bec7a508220c99ea5038f57c2565559788990aa4232c9f5c5', 'validated', '{"audio_key":"58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c","entity_key":"wf_high_stakes_debate_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca7789cb8b62320bec7a508220c99ea5038f57c2565559788990aa4232c9f5c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58eb7d0068270ceeb3a84f507df55c946b808767aac7926641167c6158366c5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_03 -> audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa0b7d6a-8e27-5098-943a-8d3f787bfaf8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88af781023ce468676c6a8f07aa65977bf4473442521a74acb4471f7fe223969'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f6f6227-4492-56c4-8027-c2167e7a2fa2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa0b7d6a-8e27-5098-943a-8d3f787bfaf8', 1), '88af781023ce468676c6a8f07aa65977bf4473442521a74acb4471f7fe223969',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3', 1280, '2026-09-14 07:29:03.958399', '0a86c302f52a3f293553e5437aba5c8d202d83b5c4766b0d6ef519645bbb833f', 'validated', '{"audio_key":"5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3","entity_key":"lx_c2_public_panel_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a86c302f52a3f293553e5437aba5c8d202d83b5c4766b0d6ef519645bbb833f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_03 -> audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3db9b390-1089-5d71-accf-ef0b60f25663', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88af781023ce468676c6a8f07aa65977bf4473442521a74acb4471f7fe223969'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4efc59a9-c8e2-5bd5-ba21-63bac0e0abd8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3db9b390-1089-5d71-accf-ef0b60f25663', 1), '88af781023ce468676c6a8f07aa65977bf4473442521a74acb4471f7fe223969',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3', 1280, '2026-09-14 07:29:03.958399', '0a86c302f52a3f293553e5437aba5c8d202d83b5c4766b0d6ef519645bbb833f', 'validated', '{"audio_key":"5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3","entity_key":"wf_c2_public_panel_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a86c302f52a3f293553e5437aba5c8d202d83b5c4766b0d6ef519645bbb833f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5ed60250ada55f760d4824db79225117e2c7b29aa6056739123893c666f810c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_03 -> audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1691d56d-5b93-55b9-b64c-93975d201bad', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9eda3cbf9c6c72e28ba465d951826ce9a8c0a753553f85dfcdbf8bef58a017f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1483174e-f369-55a8-928c-33751b24cf32', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1691d56d-5b93-55b9-b64c-93975d201bad', 1), 'e9eda3cbf9c6c72e28ba465d951826ce9a8c0a753553f85dfcdbf8bef58a017f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3', 1097, '2026-09-14 07:29:04.162059', 'a21178bbd14e4e948d73bcfe70b7acdecfbb0e3d74afd9b2cda86575b331847d', 'validated', '{"audio_key":"60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c","entity_key":"lx_institutional_register_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a21178bbd14e4e948d73bcfe70b7acdecfbb0e3d74afd9b2cda86575b331847d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_03 -> audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f00a8e06-30bf-56a9-a4e7-292ad2e5f7b8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9eda3cbf9c6c72e28ba465d951826ce9a8c0a753553f85dfcdbf8bef58a017f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fac2e0a-8eb1-58df-bfd4-2bd03fdc29e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f00a8e06-30bf-56a9-a4e7-292ad2e5f7b8', 1), 'e9eda3cbf9c6c72e28ba465d951826ce9a8c0a753553f85dfcdbf8bef58a017f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3', 1097, '2026-09-14 07:29:04.162059', 'a21178bbd14e4e948d73bcfe70b7acdecfbb0e3d74afd9b2cda86575b331847d', 'validated', '{"audio_key":"60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c","entity_key":"wf_institutional_register_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a21178bbd14e4e948d73bcfe70b7acdecfbb0e3d74afd9b2cda86575b331847d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/60781ae56af0a7bc47e587b7773bf4779e43a20412c2fbe0626e6eb4ee8cff8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_05 -> audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e41c83ee-c95d-5504-bf5f-cea744a1ee8e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df28da4a4c04086f463f91eb9404de2d282b7e414457d78bcfbcd55bc4b45fdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6b7e2c6-24c0-536c-8bac-24a3456a1017', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e41c83ee-c95d-5504-bf5f-cea744a1ee8e', 1), 'df28da4a4c04086f463f91eb9404de2d282b7e414457d78bcfbcd55bc4b45fdf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3', 1488, '2026-09-14 07:29:04.937568', '770b104371ca394ae51b565de3714cc929c3b1a9e8d1255fa351ecaaf96c5efe', 'validated', '{"audio_key":"61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d","entity_key":"lx_counterfactual_reasoning_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"770b104371ca394ae51b565de3714cc929c3b1a9e8d1255fa351ecaaf96c5efe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_05 -> audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4c8310a-cf2a-504c-842a-17aca9ab7af3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df28da4a4c04086f463f91eb9404de2d282b7e414457d78bcfbcd55bc4b45fdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c19dc131-e585-578a-abbe-08b54ae40259', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4c8310a-cf2a-504c-842a-17aca9ab7af3', 1), 'df28da4a4c04086f463f91eb9404de2d282b7e414457d78bcfbcd55bc4b45fdf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3', 1488, '2026-09-14 07:29:04.937568', '770b104371ca394ae51b565de3714cc929c3b1a9e8d1255fa351ecaaf96c5efe', 'validated', '{"audio_key":"61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d","entity_key":"wf_counterfactual_reasoning_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"770b104371ca394ae51b565de3714cc929c3b1a9e8d1255fa351ecaaf96c5efe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/61542fcc5ddaabea832865a5756c755797c75d963533eb3648a966a4410e4e4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_05 -> audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3c613ca-1e84-53dc-bf31-ef35562366ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb4ab4e2d929496dbcc9dea3ba701be837a95bd4202287824b89d9f237d53423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35828b86-c3c7-576a-9063-ebdc401b0b6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3c613ca-1e84-53dc-bf31-ef35562366ff', 1), 'bb4ab4e2d929496dbcc9dea3ba701be837a95bd4202287824b89d9f237d53423',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3', 1280, '2026-09-14 07:29:05.120632', '771831619672171f3cbde1e1f34f80ad612e68d38ad67fb2e2aa19d28b7e5195', 'validated', '{"audio_key":"63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4","entity_key":"lx_high_stakes_debate_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"771831619672171f3cbde1e1f34f80ad612e68d38ad67fb2e2aa19d28b7e5195","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_05 -> audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7233ddfd-0acb-5759-af77-d6d36fcce6d7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb4ab4e2d929496dbcc9dea3ba701be837a95bd4202287824b89d9f237d53423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d429ed8f-4344-5ce2-bbb3-5123855c4e85', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7233ddfd-0acb-5759-af77-d6d36fcce6d7', 1), 'bb4ab4e2d929496dbcc9dea3ba701be837a95bd4202287824b89d9f237d53423',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3', 1280, '2026-09-14 07:29:05.120632', '771831619672171f3cbde1e1f34f80ad612e68d38ad67fb2e2aa19d28b7e5195', 'validated', '{"audio_key":"63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4","entity_key":"wf_high_stakes_debate_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"771831619672171f3cbde1e1f34f80ad612e68d38ad67fb2e2aa19d28b7e5195","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/63053134757ed53d3a51c6d9287679241827ceeeeeb549471982838a41f640a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_05 -> audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75293fe9-4c8b-51b4-a7d2-3cef688a2294', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c83fc4726170e0e50e96455e3cbc4ae08bca032c45482ec982c2d44ff45998e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28f39d33-d925-5307-add0-213dc8ef857e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75293fe9-4c8b-51b4-a7d2-3cef688a2294', 1), 'c83fc4726170e0e50e96455e3cbc4ae08bca032c45482ec982c2d44ff45998e1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3', 1253, '2026-09-14 07:29:05.907663', 'd2fd670f6d045a133057dab06d2a3e2809848d8186529c86c948930d58f1f538', 'validated', '{"audio_key":"660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f","entity_key":"lx_strategic_ambiguity_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d2fd670f6d045a133057dab06d2a3e2809848d8186529c86c948930d58f1f538","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_05 -> audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1a288ed5-ea05-578f-8888-72bb4969177c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c83fc4726170e0e50e96455e3cbc4ae08bca032c45482ec982c2d44ff45998e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b59e8e0e-0931-5b0a-a77c-3d984db5291b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1a288ed5-ea05-578f-8888-72bb4969177c', 1), 'c83fc4726170e0e50e96455e3cbc4ae08bca032c45482ec982c2d44ff45998e1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3', 1253, '2026-09-14 07:29:05.907663', 'd2fd670f6d045a133057dab06d2a3e2809848d8186529c86c948930d58f1f538', 'validated', '{"audio_key":"660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f","entity_key":"wf_strategic_ambiguity_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d2fd670f6d045a133057dab06d2a3e2809848d8186529c86c948930d58f1f538","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/660a34338b6ad18bc163ff1ec849db09abe06a1b1cebd8e4f8bcc62264787c8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_04 -> audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1af60cdc-6cf1-5d47-810e-424ec87fef80', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15b7e6f4dba0c4c0178a72c9629ba9604e39e65a03da52c212212f7049f9f368'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c80d43f6-7fef-5a06-b65c-7ceefdb4983e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1af60cdc-6cf1-5d47-810e-424ec87fef80', 1), '15b7e6f4dba0c4c0178a72c9629ba9604e39e65a03da52c212212f7049f9f368',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3', 1018, '2026-09-14 07:29:06.204533', '4024f68a3ce9aa0a45e27d3d611cdafb34b309aaca233a63415e30ced624f3ed', 'validated', '{"audio_key":"66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47","entity_key":"lx_academic_critique_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4024f68a3ce9aa0a45e27d3d611cdafb34b309aaca233a63415e30ced624f3ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_04 -> audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad0dd023-d908-56b9-90d2-f95ca9091a32', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15b7e6f4dba0c4c0178a72c9629ba9604e39e65a03da52c212212f7049f9f368'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('283dc936-f99e-5d7d-b9ca-5bbe608e7d0a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad0dd023-d908-56b9-90d2-f95ca9091a32', 1), '15b7e6f4dba0c4c0178a72c9629ba9604e39e65a03da52c212212f7049f9f368',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3', 1018, '2026-09-14 07:29:06.204533', '4024f68a3ce9aa0a45e27d3d611cdafb34b309aaca233a63415e30ced624f3ed', 'validated', '{"audio_key":"66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47","entity_key":"wf_academic_critique_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4024f68a3ce9aa0a45e27d3d611cdafb34b309aaca233a63415e30ced624f3ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/66b1f3f2fe5402a26d032a7f53bce5f5fc9ce2046245d9494a6eebb670a81d47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_02 -> audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9325ca68-b6e3-590f-9b07-d211a1592854', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad6d90b8bb90671f9b0215c7277f78018481b1d04bd973d80d572b717ca7403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9907da3-257d-50bb-a7ce-f045670b6f3f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9325ca68-b6e3-590f-9b07-d211a1592854', 1), 'aad6d90b8bb90671f9b0215c7277f78018481b1d04bd973d80d572b717ca7403',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3', 1097, '2026-09-14 07:29:06.905253', 'e0476a513569816557617431523392c922bfb3bc72455bee60e63e69cc97a38c', 'validated', '{"audio_key":"699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05","entity_key":"lx_inferential_precision_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e0476a513569816557617431523392c922bfb3bc72455bee60e63e69cc97a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_02 -> audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('30bf45ae-3fa8-5052-88b3-5a07a68c36c9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad6d90b8bb90671f9b0215c7277f78018481b1d04bd973d80d572b717ca7403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb08d069-abff-5cb0-b895-cbfc8e1cf3c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('30bf45ae-3fa8-5052-88b3-5a07a68c36c9', 1), 'aad6d90b8bb90671f9b0215c7277f78018481b1d04bd973d80d572b717ca7403',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3', 1097, '2026-09-14 07:29:06.905253', 'e0476a513569816557617431523392c922bfb3bc72455bee60e63e69cc97a38c', 'validated', '{"audio_key":"699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05","entity_key":"wf_inferential_precision_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e0476a513569816557617431523392c922bfb3bc72455bee60e63e69cc97a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/699524c5a349b2a350ab6f1d59b9dd3df7ea743690cab679937109751e64ae05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_06 -> audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c42f1960-6586-5041-831c-f4c24470b103', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7cc85f9983a0f5f4201da99eca289ad1fdda277980be3d6cb83567ccd117a3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d99f0a10-ee17-538f-a8db-6171202160b3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c42f1960-6586-5041-831c-f4c24470b103', 1), 'f7cc85f9983a0f5f4201da99eca289ad1fdda277980be3d6cb83567ccd117a3f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3', 1201, '2026-09-14 07:29:07.189565', '009d81711df21f7239a5fadc044e5ec11e5fd84e7830a47989db2b0d10e36346', 'validated', '{"audio_key":"6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899","entity_key":"lx_institutional_register_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"009d81711df21f7239a5fadc044e5ec11e5fd84e7830a47989db2b0d10e36346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_06 -> audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dd43e35b-d382-573b-9c5c-2fedf14f3fe2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7cc85f9983a0f5f4201da99eca289ad1fdda277980be3d6cb83567ccd117a3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a235b276-c7da-5aa7-8bda-b9b4fdfd180f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dd43e35b-d382-573b-9c5c-2fedf14f3fe2', 1), 'f7cc85f9983a0f5f4201da99eca289ad1fdda277980be3d6cb83567ccd117a3f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3', 1201, '2026-09-14 07:29:07.189565', '009d81711df21f7239a5fadc044e5ec11e5fd84e7830a47989db2b0d10e36346', 'validated', '{"audio_key":"6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899","entity_key":"wf_institutional_register_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"009d81711df21f7239a5fadc044e5ec11e5fd84e7830a47989db2b0d10e36346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c0e6b605ecd8a93b7cea622ef484bb3d32abed0ef04e9f86059cc45772ff899.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_01 -> audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e77d1909-766a-5d03-8802-6ac5688575d0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b96687d7224fe6f655d13d782be4349a367ef15942e2061c69a16aee7b258c0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b6905de-9672-5f94-a5f5-f1284f6df47e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e77d1909-766a-5d03-8802-6ac5688575d0', 1), 'b96687d7224fe6f655d13d782be4349a367ef15942e2061c69a16aee7b258c0d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3', 1071, '2026-09-14 07:29:07.855892', '6b99124b8c8673fba54131adcf4b46917b14fe714f6a415764aa8b69dd008854', 'validated', '{"audio_key":"6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d","entity_key":"lx_irony_and_understatement_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6b99124b8c8673fba54131adcf4b46917b14fe714f6a415764aa8b69dd008854","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_01 -> audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8dd844c8-9e07-5210-b386-715c42f19e77', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b96687d7224fe6f655d13d782be4349a367ef15942e2061c69a16aee7b258c0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c564e6b-6370-5906-82b7-9ac56c9fed02', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8dd844c8-9e07-5210-b386-715c42f19e77', 1), 'b96687d7224fe6f655d13d782be4349a367ef15942e2061c69a16aee7b258c0d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3', 1071, '2026-09-14 07:29:07.855892', '6b99124b8c8673fba54131adcf4b46917b14fe714f6a415764aa8b69dd008854', 'validated', '{"audio_key":"6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d","entity_key":"wf_irony_and_understatement_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6b99124b8c8673fba54131adcf4b46917b14fe714f6a415764aa8b69dd008854","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c9cce9ee0f320f3aa485c6bbe26fed9a5d1ee4a463c9eba3bbde405aeb0f37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_06 -> audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a51d6327-d827-53ed-a0e9-f75660a918d0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb47a6774fd0123a9323fd08c368e537518727458141fe75d32d012fbefcb1c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6290148a-844e-5af8-93bb-87da1bf5f84f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a51d6327-d827-53ed-a0e9-f75660a918d0', 1), 'eb47a6774fd0123a9323fd08c368e537518727458141fe75d32d012fbefcb1c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3', 966, '2026-09-14 07:29:08.144564', '496116df9456d47ffc20e1da30308efab734087347925432fc208ad5e1504466', 'validated', '{"audio_key":"6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c","entity_key":"lx_stylistic_editing_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"496116df9456d47ffc20e1da30308efab734087347925432fc208ad5e1504466","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_06 -> audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4dabe26-18d5-568f-bc62-26bf83fa1c50', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb47a6774fd0123a9323fd08c368e537518727458141fe75d32d012fbefcb1c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b564578d-8fec-588f-8bdf-59aaeeb91020', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4dabe26-18d5-568f-bc62-26bf83fa1c50', 1), 'eb47a6774fd0123a9323fd08c368e537518727458141fe75d32d012fbefcb1c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3', 966, '2026-09-14 07:29:08.144564', '496116df9456d47ffc20e1da30308efab734087347925432fc208ad5e1504466', 'validated', '{"audio_key":"6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c","entity_key":"wf_stylistic_editing_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"496116df9456d47ffc20e1da30308efab734087347925432fc208ad5e1504466","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6cb99e109abc353c53fa7f58cc3d74715b366c52ca2d7d00a4e8893d1429573c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_05 -> audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c73a1761-0184-5a5e-9b71-5d89c2d019f5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35138816041ad01e3e0a3340656ade35e6dd60c58b920ab079e4d03ac57cf364'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa3e4f1d-fc02-5b0b-98cb-8faa98f3f5ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c73a1761-0184-5a5e-9b71-5d89c2d019f5', 1), '35138816041ad01e3e0a3340656ade35e6dd60c58b920ab079e4d03ac57cf364',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3', 1201, '2026-09-14 07:29:08.817317', '8aba9fe8b95550bf8ea2b8092b6d8bcd02488ffd8490b14ab5bb456ff195d29c', 'validated', '{"audio_key":"7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5","entity_key":"lx_institutional_register_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8aba9fe8b95550bf8ea2b8092b6d8bcd02488ffd8490b14ab5bb456ff195d29c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_05 -> audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1b9715f8-ed38-5ba4-9c90-9c470b104a5e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35138816041ad01e3e0a3340656ade35e6dd60c58b920ab079e4d03ac57cf364'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60890b4b-547c-5004-a199-0e559bd2e3e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1b9715f8-ed38-5ba4-9c90-9c470b104a5e', 1), '35138816041ad01e3e0a3340656ade35e6dd60c58b920ab079e4d03ac57cf364',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3', 1201, '2026-09-14 07:29:08.817317', '8aba9fe8b95550bf8ea2b8092b6d8bcd02488ffd8490b14ab5bb456ff195d29c', 'validated', '{"audio_key":"7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5","entity_key":"wf_institutional_register_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8aba9fe8b95550bf8ea2b8092b6d8bcd02488ffd8490b14ab5bb456ff195d29c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7258fc15c1bc652b8caafb02af0da773ae7bdc6bd7cd835e2f4d464f309cd1f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_04 -> audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('685a28a6-b921-5026-958b-4c8a2b2f7421', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e07a9f755b70126674155b0eccbf3e7da3915c9f29d9b65e10a7d610088ccb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48414306-65d5-5a6c-92f7-fb8e468014b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('685a28a6-b921-5026-958b-4c8a2b2f7421', 1), '8e07a9f755b70126674155b0eccbf3e7da3915c9f29d9b65e10a7d610088ccb9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3', 1280, '2026-09-14 07:29:09.138995', '527a4d6c9967ddb0db2da23d1b92ca88c68c9feb725111ebd945169baf60b578', 'validated', '{"audio_key":"74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e","entity_key":"lx_irony_and_understatement_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"527a4d6c9967ddb0db2da23d1b92ca88c68c9feb725111ebd945169baf60b578","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_04 -> audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9e24546c-ee5e-5c0f-9e46-011d302c38aa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e07a9f755b70126674155b0eccbf3e7da3915c9f29d9b65e10a7d610088ccb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('555b038f-c00f-5932-8c21-ba7fcaa567ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9e24546c-ee5e-5c0f-9e46-011d302c38aa', 1), '8e07a9f755b70126674155b0eccbf3e7da3915c9f29d9b65e10a7d610088ccb9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3', 1280, '2026-09-14 07:29:09.138995', '527a4d6c9967ddb0db2da23d1b92ca88c68c9feb725111ebd945169baf60b578', 'validated', '{"audio_key":"74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e","entity_key":"wf_irony_and_understatement_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"527a4d6c9967ddb0db2da23d1b92ca88c68c9feb725111ebd945169baf60b578","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/74f03b2f37f711654a58b887625f1144311eb8f9f71b839f3d1bec1da565638e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_05 -> audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1eedbbd-9a86-5db1-8bf7-0af6aad8396f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1540e5e78ea8041b3be0d3982373de71536ccb524195f9d00f656dacd36be5ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96dceb48-0555-54ca-b04e-891cfd9f57cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1eedbbd-9a86-5db1-8bf7-0af6aad8396f', 1), '1540e5e78ea8041b3be0d3982373de71536ccb524195f9d00f656dacd36be5ed',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3', 1018, '2026-09-14 07:29:09.759513', '2c403a4580b5e14e54866802c3147fdb7062b6d6b5c25a42cfe9135b5043b4f3', 'validated', '{"audio_key":"78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043","entity_key":"lx_cultural_intertextuality_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2c403a4580b5e14e54866802c3147fdb7062b6d6b5c25a42cfe9135b5043b4f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_05 -> audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96922fa4-79f1-5d4a-b413-b7e6b3dfcf70', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1540e5e78ea8041b3be0d3982373de71536ccb524195f9d00f656dacd36be5ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9e871b5-09b9-58b8-8abb-e8a7adaa0ecd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96922fa4-79f1-5d4a-b413-b7e6b3dfcf70', 1), '1540e5e78ea8041b3be0d3982373de71536ccb524195f9d00f656dacd36be5ed',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3', 1018, '2026-09-14 07:29:09.759513', '2c403a4580b5e14e54866802c3147fdb7062b6d6b5c25a42cfe9135b5043b4f3', 'validated', '{"audio_key":"78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043","entity_key":"wf_cultural_intertextuality_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2c403a4580b5e14e54866802c3147fdb7062b6d6b5c25a42cfe9135b5043b4f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78546e2e7d320e0796894cdfe406eed8d1335bbde26578a192c37986701a7043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_03 -> audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ba02fb12-9b5e-5454-a5a2-8edd31c7c29b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f6bff94756f25cdf2f7eaca59d58fbf85bf9022f3014f0952e16b448a85000'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ec83a97-4c47-5502-b093-981e568651b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ba02fb12-9b5e-5454-a5a2-8edd31c7c29b', 1), 'a4f6bff94756f25cdf2f7eaca59d58fbf85bf9022f3014f0952e16b448a85000',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3', 1201, '2026-09-14 07:29:10.124699', 'e783bd8a7a680f7d3c4059c022746b06b0e0620c470d174565c66189aebaccd3', 'validated', '{"audio_key":"78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce","entity_key":"lx_high_stakes_debate_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e783bd8a7a680f7d3c4059c022746b06b0e0620c470d174565c66189aebaccd3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_03 -> audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aa458736-6874-5e5e-ba22-ce1e2eb9216d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f6bff94756f25cdf2f7eaca59d58fbf85bf9022f3014f0952e16b448a85000'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee3d57a8-1d19-59a1-8061-7288fc243fd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aa458736-6874-5e5e-ba22-ce1e2eb9216d', 1), 'a4f6bff94756f25cdf2f7eaca59d58fbf85bf9022f3014f0952e16b448a85000',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3', 1201, '2026-09-14 07:29:10.124699', 'e783bd8a7a680f7d3c4059c022746b06b0e0620c470d174565c66189aebaccd3', 'validated', '{"audio_key":"78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce","entity_key":"wf_high_stakes_debate_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e783bd8a7a680f7d3c4059c022746b06b0e0620c470d174565c66189aebaccd3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78ae4514b96c5d897fc2efdfc0c6e531d4ae6b2dd563129e479c8b3e03c9fbce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_01 -> audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8a0b8de-a49a-5039-8c37-dcc4cf817093', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bf4029a5fb3eeb3cf50a1095f5d2c3fb82fc05ba7c5e2f3e5ef5b9177ee668f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44565fa0-850c-545c-a4f2-56279b485ee1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8a0b8de-a49a-5039-8c37-dcc4cf817093', 1), '8bf4029a5fb3eeb3cf50a1095f5d2c3fb82fc05ba7c5e2f3e5ef5b9177ee668f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3', 1018, '2026-09-14 07:29:10.722126', '6a0bcaac34b6bbe1684a59a6c8cf1886fc6e0492a0af40581156378c5db1f340', 'validated', '{"audio_key":"792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a","entity_key":"lx_strategic_ambiguity_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6a0bcaac34b6bbe1684a59a6c8cf1886fc6e0492a0af40581156378c5db1f340","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_01 -> audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('589e45a7-0b31-595a-9dd7-3a31b76a5e6a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bf4029a5fb3eeb3cf50a1095f5d2c3fb82fc05ba7c5e2f3e5ef5b9177ee668f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da8585fe-c44e-50e8-951b-2ae0ec98ff5c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('589e45a7-0b31-595a-9dd7-3a31b76a5e6a', 1), '8bf4029a5fb3eeb3cf50a1095f5d2c3fb82fc05ba7c5e2f3e5ef5b9177ee668f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3', 1018, '2026-09-14 07:29:10.722126', '6a0bcaac34b6bbe1684a59a6c8cf1886fc6e0492a0af40581156378c5db1f340', 'validated', '{"audio_key":"792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a","entity_key":"wf_strategic_ambiguity_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6a0bcaac34b6bbe1684a59a6c8cf1886fc6e0492a0af40581156378c5db1f340","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/792ccfad70b0ab1e145c71c7eb3c07712e722e66bee9dfdb8ee86637e5a0386a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_04 -> audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eab3dc89-d196-5d3f-9d34-aa7d08161887', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ffda2a-dee7-52ae-9211-ab9c04923688', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eab3dc89-d196-5d3f-9d34-aa7d08161887', 1), '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3', 1018, '2026-09-14 03:26:54.772677', '437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5', 'validated', '{"audio_key":"7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3","entity_key":"lx_cultural_intertextuality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_04 -> audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('838190ea-e422-5678-9496-9e636ca7dd14', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('115ad778-e11c-555f-9fb7-d711a275b4bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('838190ea-e422-5678-9496-9e636ca7dd14', 1), '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3', 1018, '2026-09-14 03:26:54.772677', '437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5', 'validated', '{"audio_key":"7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3","entity_key":"wf_cultural_intertextuality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_02 -> audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b48a7f21-d585-59bb-b456-968e452e784f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9874e8b8b6a177b52dbecd9e8e392cc8c88c60ebf20552fe2bc29801d2265796'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1437ff2f-db90-50df-89ef-7863ece965c1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b48a7f21-d585-59bb-b456-968e452e784f', 1), '9874e8b8b6a177b52dbecd9e8e392cc8c88c60ebf20552fe2bc29801d2265796',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3', 1201, '2026-09-14 07:29:11.079883', '4282b3d0a833ef0b5eeacf0e6a5ec7386e565c252d8948fc8d24bcfcf1fbef56', 'validated', '{"audio_key":"7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d","entity_key":"lx_high_stakes_debate_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4282b3d0a833ef0b5eeacf0e6a5ec7386e565c252d8948fc8d24bcfcf1fbef56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_02 -> audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ede24d7f-8e0d-531b-8fce-6a497c5441b9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9874e8b8b6a177b52dbecd9e8e392cc8c88c60ebf20552fe2bc29801d2265796'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c145bf59-6a06-532b-a08e-ebbaab357042', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ede24d7f-8e0d-531b-8fce-6a497c5441b9', 1), '9874e8b8b6a177b52dbecd9e8e392cc8c88c60ebf20552fe2bc29801d2265796',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3', 1201, '2026-09-14 07:29:11.079883', '4282b3d0a833ef0b5eeacf0e6a5ec7386e565c252d8948fc8d24bcfcf1fbef56', 'validated', '{"audio_key":"7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d","entity_key":"wf_high_stakes_debate_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4282b3d0a833ef0b5eeacf0e6a5ec7386e565c252d8948fc8d24bcfcf1fbef56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7ba87a03894eb181ae1e4aa64e93853d9ed7d6e056b2a6f68f0bc518df102d4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_03 -> audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('600dc915-090f-5e1b-9457-98dc9c4527b5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eca0cb071520bc4a6dc01254113e0bc53950630bb7f05bcc4336934d41a30fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53e2db9c-661d-5469-baf1-38ad05f7fbe2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('600dc915-090f-5e1b-9457-98dc9c4527b5', 1), '4eca0cb071520bc4a6dc01254113e0bc53950630bb7f05bcc4336934d41a30fe',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3', 1253, '2026-09-14 07:29:11.690562', 'df395d7a938cd6fbc460d86c38f5100bb9b8514a53ba5f4a1fc1490925c002f1', 'validated', '{"audio_key":"7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b","entity_key":"lx_academic_critique_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"df395d7a938cd6fbc460d86c38f5100bb9b8514a53ba5f4a1fc1490925c002f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_03 -> audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1a65e3a1-3f97-5197-a0ef-c5f4568e18ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eca0cb071520bc4a6dc01254113e0bc53950630bb7f05bcc4336934d41a30fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfd3e775-b610-5a43-a157-47ddb311e404', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1a65e3a1-3f97-5197-a0ef-c5f4568e18ff', 1), '4eca0cb071520bc4a6dc01254113e0bc53950630bb7f05bcc4336934d41a30fe',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3', 1253, '2026-09-14 07:29:11.690562', 'df395d7a938cd6fbc460d86c38f5100bb9b8514a53ba5f4a1fc1490925c002f1', 'validated', '{"audio_key":"7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b","entity_key":"wf_academic_critique_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"df395d7a938cd6fbc460d86c38f5100bb9b8514a53ba5f4a1fc1490925c002f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e9863cf9e906a091151fe6a0faa078d0e9ac757d70ac0a2330e93bd456cd04b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_04 -> audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f571dd82-7816-5ddc-a2fe-4ea9ecd1bf83', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c605663a1f4916d4c8cb790a570cbb32b84edb68c472aec013de6b3e5ed1091'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d06145e-4cdd-5ace-b0aa-367c8fd10c20', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f571dd82-7816-5ddc-a2fe-4ea9ecd1bf83', 1), '8c605663a1f4916d4c8cb790a570cbb32b84edb68c472aec013de6b3e5ed1091',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3', 914, '2026-09-14 07:29:12.029136', '443da8e0de6d10ecec4038cb4423b486f8c8413a931fc48748389745e210f80a', 'validated', '{"audio_key":"8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165","entity_key":"lx_counterfactual_reasoning_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"443da8e0de6d10ecec4038cb4423b486f8c8413a931fc48748389745e210f80a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_04 -> audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a76c821-0489-5669-86a6-117f4a066272', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c605663a1f4916d4c8cb790a570cbb32b84edb68c472aec013de6b3e5ed1091'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a24a41f-1f52-5547-bf7d-44041b30e481', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a76c821-0489-5669-86a6-117f4a066272', 1), '8c605663a1f4916d4c8cb790a570cbb32b84edb68c472aec013de6b3e5ed1091',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3', 914, '2026-09-14 07:29:12.029136', '443da8e0de6d10ecec4038cb4423b486f8c8413a931fc48748389745e210f80a', 'validated', '{"audio_key":"8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165","entity_key":"wf_counterfactual_reasoning_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"443da8e0de6d10ecec4038cb4423b486f8c8413a931fc48748389745e210f80a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8324aadc13b26761894ff6679e2aa9a844522811d2be82d0b2732c1539ff3165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_06 -> audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e6b552a-b60a-5302-9bce-5a362e35cbfe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1719b9daa7dffe28cfb988ce319a9658cd0a3e51c46251d8e86350bb47b32fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16ec941c-c35f-5df0-9bbc-acc8b6b2f04c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e6b552a-b60a-5302-9bce-5a362e35cbfe', 1), 'b1719b9daa7dffe28cfb988ce319a9658cd0a3e51c46251d8e86350bb47b32fa',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3', 1253, '2026-09-14 07:29:12.661179', 'bd5ed2d0a654ba4919e7021df4a1488d110d18e273f18cb6ae1d7b0dec7556ba', 'validated', '{"audio_key":"8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65","entity_key":"lx_counterfactual_reasoning_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bd5ed2d0a654ba4919e7021df4a1488d110d18e273f18cb6ae1d7b0dec7556ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_06 -> audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a3f8e0f7-2d92-5ef5-9d34-a39a5e9e3f24', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1719b9daa7dffe28cfb988ce319a9658cd0a3e51c46251d8e86350bb47b32fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c72153d6-6db8-5cca-ba1b-6824a2a63831', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a3f8e0f7-2d92-5ef5-9d34-a39a5e9e3f24', 1), 'b1719b9daa7dffe28cfb988ce319a9658cd0a3e51c46251d8e86350bb47b32fa',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3', 1253, '2026-09-14 07:29:12.661179', 'bd5ed2d0a654ba4919e7021df4a1488d110d18e273f18cb6ae1d7b0dec7556ba', 'validated', '{"audio_key":"8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65","entity_key":"wf_counterfactual_reasoning_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bd5ed2d0a654ba4919e7021df4a1488d110d18e273f18cb6ae1d7b0dec7556ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8d8a662a2db0e88ed9cdc8fc64ecb771d5aa1f1f0ed221a6234a1e5ec4539e65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_06 -> audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a662c8a8-c830-5ae6-a267-7091e758502c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0eabd14ad40b55b4ea929353d67179cec51b89baef442918bc3b1ecf58af4d25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8374d01b-ded5-52c7-af66-60bc1cd4974e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a662c8a8-c830-5ae6-a267-7091e758502c', 1), '0eabd14ad40b55b4ea929353d67179cec51b89baef442918bc3b1ecf58af4d25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3', 1201, '2026-09-14 07:29:13.020772', 'f77af0b37c2a2e3a59da2acfeffe9b60b93c7e352b0fa0c762b5688e7a74927e', 'validated', '{"audio_key":"967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966","entity_key":"lx_cultural_intertextuality_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f77af0b37c2a2e3a59da2acfeffe9b60b93c7e352b0fa0c762b5688e7a74927e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_06 -> audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e660c77c-8f3b-50c3-b45c-ecdc1f19284f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0eabd14ad40b55b4ea929353d67179cec51b89baef442918bc3b1ecf58af4d25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('757e5e1f-d9c2-541c-b4e8-37ce679c799e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e660c77c-8f3b-50c3-b45c-ecdc1f19284f', 1), '0eabd14ad40b55b4ea929353d67179cec51b89baef442918bc3b1ecf58af4d25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3', 1201, '2026-09-14 07:29:13.020772', 'f77af0b37c2a2e3a59da2acfeffe9b60b93c7e352b0fa0c762b5688e7a74927e', 'validated', '{"audio_key":"967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966","entity_key":"wf_cultural_intertextuality_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f77af0b37c2a2e3a59da2acfeffe9b60b93c7e352b0fa0c762b5688e7a74927e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/967c820b4ece6702387f68daee99102f2c96998e281c7f82ba71ebef43ae0966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_06 -> audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0a2bb8b-ebb9-500f-8dec-947547304a28', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fde4f9ed910283e7807c004737d937d7e89e2e7568c8c613564d7591425322b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d349afe-ebf8-5157-bb1e-7786d48e2135', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0a2bb8b-ebb9-500f-8dec-947547304a28', 1), 'fde4f9ed910283e7807c004737d937d7e89e2e7568c8c613564d7591425322b3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3', 1149, '2026-09-14 07:29:13.641741', '347d9b88f37a7035bd9e8db18841cbfa2deca6303f6733507c286d1e7e598003', 'validated', '{"audio_key":"98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9","entity_key":"lx_inferential_precision_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"347d9b88f37a7035bd9e8db18841cbfa2deca6303f6733507c286d1e7e598003","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_06 -> audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ea1ccaf5-1a0c-504d-a6dc-f19cf7b923a1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fde4f9ed910283e7807c004737d937d7e89e2e7568c8c613564d7591425322b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4dbc480-89c9-53ee-b06c-11fd7c721fe6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ea1ccaf5-1a0c-504d-a6dc-f19cf7b923a1', 1), 'fde4f9ed910283e7807c004737d937d7e89e2e7568c8c613564d7591425322b3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3', 1149, '2026-09-14 07:29:13.641741', '347d9b88f37a7035bd9e8db18841cbfa2deca6303f6733507c286d1e7e598003', 'validated', '{"audio_key":"98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9","entity_key":"wf_inferential_precision_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"347d9b88f37a7035bd9e8db18841cbfa2deca6303f6733507c286d1e7e598003","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/98b845c3a6728911e81a408307febe64fcec1bbbb7aed268bb4c363fbeff03f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_01 -> audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13e158de-318e-53d0-909e-713dafe70e27', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51727e9c4e625ddfb289fd68133579e7ee3e8b182a54ada0124401a2b1b8d592'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ceb41d3-ca79-57fc-ba61-aa6b731d842e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13e158de-318e-53d0-909e-713dafe70e27', 1), '51727e9c4e625ddfb289fd68133579e7ee3e8b182a54ada0124401a2b1b8d592',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3', 1071, '2026-09-14 07:29:14.009678', '23aff0233c24f6d8d27d2914de85f9223bf281c06c7938d455cc0e0d238df949', 'validated', '{"audio_key":"acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20","entity_key":"lx_c2_public_panel_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23aff0233c24f6d8d27d2914de85f9223bf281c06c7938d455cc0e0d238df949","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_01 -> audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92de2dd4-f031-5080-b856-01c4a44cefe8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51727e9c4e625ddfb289fd68133579e7ee3e8b182a54ada0124401a2b1b8d592'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d44d1642-cb0f-55ab-8961-468a97944685', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92de2dd4-f031-5080-b856-01c4a44cefe8', 1), '51727e9c4e625ddfb289fd68133579e7ee3e8b182a54ada0124401a2b1b8d592',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3', 1071, '2026-09-14 07:29:14.009678', '23aff0233c24f6d8d27d2914de85f9223bf281c06c7938d455cc0e0d238df949', 'validated', '{"audio_key":"acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20","entity_key":"wf_c2_public_panel_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23aff0233c24f6d8d27d2914de85f9223bf281c06c7938d455cc0e0d238df949","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/acd83e401a7867402dab3b6f5fb9710d7ec2ea985eda8ff18f5b8b17afc76a20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_02 -> audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5186eeb7-d515-50aa-aaa4-8c133505747b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '413d9ce64a52539d17bac1a7a3a1afc0a79cba99664de3b078257188ebcd2d61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfebbec7-3ff8-5374-866f-e4f6b570eb18', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5186eeb7-d515-50aa-aaa4-8c133505747b', 1), '413d9ce64a52539d17bac1a7a3a1afc0a79cba99664de3b078257188ebcd2d61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3', 1436, '2026-09-14 07:29:14.635947', '610c198c9569371d091ab06c8682f16834f00646b7ec7a71c1df9f0c465a9d4b', 'validated', '{"audio_key":"b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845","entity_key":"lx_counterfactual_reasoning_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"610c198c9569371d091ab06c8682f16834f00646b7ec7a71c1df9f0c465a9d4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_02 -> audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73811f58-dd52-58d8-bb63-cb49073d4ff0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '413d9ce64a52539d17bac1a7a3a1afc0a79cba99664de3b078257188ebcd2d61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9cab718-1ba7-5b34-bd33-db7a02e750fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73811f58-dd52-58d8-bb63-cb49073d4ff0', 1), '413d9ce64a52539d17bac1a7a3a1afc0a79cba99664de3b078257188ebcd2d61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3', 1436, '2026-09-14 07:29:14.635947', '610c198c9569371d091ab06c8682f16834f00646b7ec7a71c1df9f0c465a9d4b', 'validated', '{"audio_key":"b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845","entity_key":"wf_counterfactual_reasoning_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"610c198c9569371d091ab06c8682f16834f00646b7ec7a71c1df9f0c465a9d4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b1b2291f0da32da06794784c710acf456be9944702c74ed1bc966ffea6f1d845.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_06 -> audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d112533-6752-53f0-bec5-f9b6771b59c9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ea4c39e55113a5e535984492d7773e6a4565dd1834c92fe88eca9cccf6923e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e499338-65f9-5517-a1de-03443c2221f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d112533-6752-53f0-bec5-f9b6771b59c9', 1), '5ea4c39e55113a5e535984492d7773e6a4565dd1834c92fe88eca9cccf6923e0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3', 1436, '2026-09-14 07:29:14.980721', '0d047f7a06cdcff5aeb8d15a9b478427d4bcee35db47bf30a4f5667528c88bf7', 'validated', '{"audio_key":"bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af","entity_key":"lx_academic_critique_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0d047f7a06cdcff5aeb8d15a9b478427d4bcee35db47bf30a4f5667528c88bf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_06 -> audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f77e458-b7ba-5a02-933a-7f138fc3274c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ea4c39e55113a5e535984492d7773e6a4565dd1834c92fe88eca9cccf6923e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3b96f8b-1944-59da-a84c-33d5c0253654', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f77e458-b7ba-5a02-933a-7f138fc3274c', 1), '5ea4c39e55113a5e535984492d7773e6a4565dd1834c92fe88eca9cccf6923e0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3', 1436, '2026-09-14 07:29:14.980721', '0d047f7a06cdcff5aeb8d15a9b478427d4bcee35db47bf30a4f5667528c88bf7', 'validated', '{"audio_key":"bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af","entity_key":"wf_academic_critique_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0d047f7a06cdcff5aeb8d15a9b478427d4bcee35db47bf30a4f5667528c88bf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bc71a1f047491f374a05fc74ea654ea14059d2be38d54b8ab69cb243ee99a5af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_03 -> audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f4cd5c19-742c-54ed-b89f-d8cb24b06997', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dc3a777177ebb89ad1d33eefcf9f9bc534e7e64afe817a18ab0ecc830346433'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb21ffbe-0ffc-5ef8-9570-fead0f02572c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f4cd5c19-742c-54ed-b89f-d8cb24b06997', 1), '3dc3a777177ebb89ad1d33eefcf9f9bc534e7e64afe817a18ab0ecc830346433',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3', 1280, '2026-09-14 07:29:15.638264', 'c4b44b345f5be5f946600a6f750bb4da643b171977a2d70bc5e35e455ca81de1', 'validated', '{"audio_key":"bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787","entity_key":"lx_strategic_ambiguity_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c4b44b345f5be5f946600a6f750bb4da643b171977a2d70bc5e35e455ca81de1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_03 -> audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('426a67f8-699c-54c7-9876-49c74790d2a0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dc3a777177ebb89ad1d33eefcf9f9bc534e7e64afe817a18ab0ecc830346433'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68cf27d2-2820-571d-b786-230b6a973e8b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('426a67f8-699c-54c7-9876-49c74790d2a0', 1), '3dc3a777177ebb89ad1d33eefcf9f9bc534e7e64afe817a18ab0ecc830346433',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3', 1280, '2026-09-14 07:29:15.638264', 'c4b44b345f5be5f946600a6f750bb4da643b171977a2d70bc5e35e455ca81de1', 'validated', '{"audio_key":"bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787","entity_key":"wf_strategic_ambiguity_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c4b44b345f5be5f946600a6f750bb4da643b171977a2d70bc5e35e455ca81de1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bf02f0685fc06fc384af741529cb7b2b7db6aa3ed1c58980ce960064e0fef787.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_02 -> audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2445893c-dc14-59c7-a171-f65e75d1ba1f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d168752ad38ac9216f7fb68cd5ef7bab628d807832acabcc53e76cc1e0ed44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b32058ac-41aa-5760-a123-9e5544549145', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2445893c-dc14-59c7-a171-f65e75d1ba1f', 1), '4d168752ad38ac9216f7fb68cd5ef7bab628d807832acabcc53e76cc1e0ed44f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3', 1018, '2026-09-14 07:29:15.949124', '200edec1724493b8583fa1f759c6481257ed45f37ef94568d5aa44c40b19254e', 'validated', '{"audio_key":"caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e","entity_key":"lx_stylistic_editing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"200edec1724493b8583fa1f759c6481257ed45f37ef94568d5aa44c40b19254e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_02 -> audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('550d06fe-61b0-538b-85ff-5fb25ad5828f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d168752ad38ac9216f7fb68cd5ef7bab628d807832acabcc53e76cc1e0ed44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a98a9e95-0967-52f8-8cc9-1aa675c721f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('550d06fe-61b0-538b-85ff-5fb25ad5828f', 1), '4d168752ad38ac9216f7fb68cd5ef7bab628d807832acabcc53e76cc1e0ed44f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3', 1018, '2026-09-14 07:29:15.949124', '200edec1724493b8583fa1f759c6481257ed45f37ef94568d5aa44c40b19254e', 'validated', '{"audio_key":"caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e","entity_key":"wf_stylistic_editing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"200edec1724493b8583fa1f759c6481257ed45f37ef94568d5aa44c40b19254e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/caad35c4f81d16e8ac28178124ae8abe702e70ced427ba7500f3f6273bd8885e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_06 -> audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cc4da436-0fb4-5526-aceb-d4b8651d8b3b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc041249e1244df7b3ae2f7721d190ead7409ca3ab6abe72428a9b57562e590d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae0c67de-aecd-5c3a-a604-4f7bee850155', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cc4da436-0fb4-5526-aceb-d4b8651d8b3b', 1), 'cc041249e1244df7b3ae2f7721d190ead7409ca3ab6abe72428a9b57562e590d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3', 1201, '2026-09-14 07:29:16.610781', '6549e8d847b12642819cc6291bdf1b86f18719e5452d33c027dc9aa6f540fb3f', 'validated', '{"audio_key":"cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b","entity_key":"lx_strategic_ambiguity_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6549e8d847b12642819cc6291bdf1b86f18719e5452d33c027dc9aa6f540fb3f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_06 -> audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80f29f31-ecd7-5cfc-901f-6215bccb44ac', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc041249e1244df7b3ae2f7721d190ead7409ca3ab6abe72428a9b57562e590d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad951c9a-90d5-5516-ab77-c8280f9bd2c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80f29f31-ecd7-5cfc-901f-6215bccb44ac', 1), 'cc041249e1244df7b3ae2f7721d190ead7409ca3ab6abe72428a9b57562e590d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3', 1201, '2026-09-14 07:29:16.610781', '6549e8d847b12642819cc6291bdf1b86f18719e5452d33c027dc9aa6f540fb3f', 'validated', '{"audio_key":"cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b","entity_key":"wf_strategic_ambiguity_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6549e8d847b12642819cc6291bdf1b86f18719e5452d33c027dc9aa6f540fb3f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cad9e9ee12e1da284df986cb16c7fc9e6fe5da7eb56aa34919d325f654918a0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_02 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4eff3cba-e1f6-5995-819d-23edfffcaa95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"lx_irony_and_understatement_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_02 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c802d611-312e-5f01-a82f-a63ba68d46e9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5f4c7a3-53ca-5484-adb1-38757c6b8ef2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c802d611-312e-5f01-a82f-a63ba68d46e9', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"wf_irony_and_understatement_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_05 -> audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27591ba9-7be6-56ac-96a3-d8cc630cae08', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8fa510ff6b789bf2295ab3e0715f27751c8538564e445be76e0d02726b630d20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4654fcdd-8d9e-533f-8958-0eadfcb28653', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27591ba9-7be6-56ac-96a3-d8cc630cae08', 1), '8fa510ff6b789bf2295ab3e0715f27751c8538564e445be76e0d02726b630d20',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3', 1253, '2026-09-14 07:29:17.052399', '689d055cbe6afcbd8e2046bd8c98c0daa3a36fb4a0189262a97453956b630062', 'validated', '{"audio_key":"cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1","entity_key":"lx_c2_public_panel_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"689d055cbe6afcbd8e2046bd8c98c0daa3a36fb4a0189262a97453956b630062","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_05 -> audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1a6352ef-5d27-556b-b1bf-cae24d74799d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8fa510ff6b789bf2295ab3e0715f27751c8538564e445be76e0d02726b630d20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15fab1a7-b57e-5ae5-af42-69e60e1ff84d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1a6352ef-5d27-556b-b1bf-cae24d74799d', 1), '8fa510ff6b789bf2295ab3e0715f27751c8538564e445be76e0d02726b630d20',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3', 1253, '2026-09-14 07:29:17.052399', '689d055cbe6afcbd8e2046bd8c98c0daa3a36fb4a0189262a97453956b630062', 'validated', '{"audio_key":"cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1","entity_key":"wf_c2_public_panel_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"689d055cbe6afcbd8e2046bd8c98c0daa3a36fb4a0189262a97453956b630062","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cdebc1b3fa70b5a8bd3c465b3de0346436b72dc5e9a5c33a1f65cdb5a4c0aac1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_05 -> audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a962a758-55ff-52e9-bcb0-70af2585a5d8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d90e08eded414553861d6d3a5a2ba85d14d02535ad339dd64ba273897f0f038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fa94d7a-cc1a-51de-8f0f-508e55efbbd1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a962a758-55ff-52e9-bcb0-70af2585a5d8', 1), '0d90e08eded414553861d6d3a5a2ba85d14d02535ad339dd64ba273897f0f038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3', 1332, '2026-09-14 07:29:17.593842', '4cbfd90a7bfa3b8bbd7f0c89966b0f106cb99e89096f685f0a13b9a8ac2937d4', 'validated', '{"audio_key":"cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e","entity_key":"lx_inferential_precision_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4cbfd90a7bfa3b8bbd7f0c89966b0f106cb99e89096f685f0a13b9a8ac2937d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_05 -> audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b39aaf4f-be81-5067-91c3-f830ffa1467c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d90e08eded414553861d6d3a5a2ba85d14d02535ad339dd64ba273897f0f038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d51c79a4-3c8a-565e-9d69-bc3798b4dcc0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b39aaf4f-be81-5067-91c3-f830ffa1467c', 1), '0d90e08eded414553861d6d3a5a2ba85d14d02535ad339dd64ba273897f0f038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3', 1332, '2026-09-14 07:29:17.593842', '4cbfd90a7bfa3b8bbd7f0c89966b0f106cb99e89096f685f0a13b9a8ac2937d4', 'validated', '{"audio_key":"cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e","entity_key":"wf_inferential_precision_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4cbfd90a7bfa3b8bbd7f0c89966b0f106cb99e89096f685f0a13b9a8ac2937d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cecd97f83eb151e827a01f4862110e28935f1c210d0c50801c3e14587ad86a2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_03 -> audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87d96735-aa8c-536c-9d61-8af2af04d181', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0587ffadac2998526b9764abe46da9730e357129debc50c0aa72254ec7af5b72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e9e5e9c-c981-5a20-ac62-3a1dbcc90f57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87d96735-aa8c-536c-9d61-8af2af04d181', 1), '0587ffadac2998526b9764abe46da9730e357129debc50c0aa72254ec7af5b72',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3', 1071, '2026-09-14 07:29:17.998593', '7f4f8deef5e3eeb12c933d3d0717320fe379260eeb186b63e09bb76d9e05d525', 'validated', '{"audio_key":"ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932","entity_key":"lx_stylistic_editing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7f4f8deef5e3eeb12c933d3d0717320fe379260eeb186b63e09bb76d9e05d525","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_03 -> audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d01f9ca6-6a6d-5dbe-9939-e63d93aebdd7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0587ffadac2998526b9764abe46da9730e357129debc50c0aa72254ec7af5b72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b50c403d-9f5a-5f8b-9ca1-0e75c3783e8f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d01f9ca6-6a6d-5dbe-9939-e63d93aebdd7', 1), '0587ffadac2998526b9764abe46da9730e357129debc50c0aa72254ec7af5b72',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3', 1071, '2026-09-14 07:29:17.998593', '7f4f8deef5e3eeb12c933d3d0717320fe379260eeb186b63e09bb76d9e05d525', 'validated', '{"audio_key":"ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932","entity_key":"wf_stylistic_editing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7f4f8deef5e3eeb12c933d3d0717320fe379260eeb186b63e09bb76d9e05d525","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ced5993ebf537933e95f374d218c41f9e2990a4589f7ee3cbef7face7624b932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inferential_precision_03 -> audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cbe32f19-11fd-502a-9163-9f6e5321e99f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inferential_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd373afa72335baf217ef1696823e01f8fa90b8987a8c4d37926c8d396b4c6779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6b572f3-4a3a-55a9-a214-5c3c58163cb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cbe32f19-11fd-502a-9163-9f6e5321e99f', 1), 'd373afa72335baf217ef1696823e01f8fa90b8987a8c4d37926c8d396b4c6779',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3', 1149, '2026-09-14 07:29:18.596213', 'f29c22bd0766dc5fcc5b328c282c1a512291cce39fd8268c78876eb079e5197b', 'validated', '{"audio_key":"d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3","entity_key":"lx_inferential_precision_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f29c22bd0766dc5fcc5b328c282c1a512291cce39fd8268c78876eb079e5197b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inferential_precision_03 -> audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('08e88f15-2c71-532b-b5e6-d633c56f6380', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inferential_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd373afa72335baf217ef1696823e01f8fa90b8987a8c4d37926c8d396b4c6779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('365deb4a-0ec2-5454-acd2-321eae5416d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('08e88f15-2c71-532b-b5e6-d633c56f6380', 1), 'd373afa72335baf217ef1696823e01f8fa90b8987a8c4d37926c8d396b4c6779',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3', 1149, '2026-09-14 07:29:18.596213', 'f29c22bd0766dc5fcc5b328c282c1a512291cce39fd8268c78876eb079e5197b', 'validated', '{"audio_key":"d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3","entity_key":"wf_inferential_precision_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f29c22bd0766dc5fcc5b328c282c1a512291cce39fd8268c78876eb079e5197b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d4ba9a088bf1b4769a169530915ee593aa10189a7ed43918a85a16060623eeb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_intertextuality_02 -> audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d6b643ae-a246-5a63-9e57-f3f12f628de4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3567e20ff43298d80ff3e6567eb9b0b0bb09b10629dc07bac9dd64a0c2d3bc0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81909877-d119-5efc-adbd-e70de5758179', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d6b643ae-a246-5a63-9e57-f3f12f628de4', 1), '3567e20ff43298d80ff3e6567eb9b0b0bb09b10629dc07bac9dd64a0c2d3bc0b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3', 1488, '2026-09-14 07:29:18.985179', '6f7d6e5e05dba1c827aae93d6c618aeaa1e4c1fd5ce7b3ee6fd1f07f8cb69518', 'validated', '{"audio_key":"d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40","entity_key":"lx_cultural_intertextuality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6f7d6e5e05dba1c827aae93d6c618aeaa1e4c1fd5ce7b3ee6fd1f07f8cb69518","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_intertextuality_02 -> audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a92bf08-63f2-59a4-89dc-fd3a62c92698', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3567e20ff43298d80ff3e6567eb9b0b0bb09b10629dc07bac9dd64a0c2d3bc0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ddc76eb-f413-5bdb-8511-600ada155e92', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a92bf08-63f2-59a4-89dc-fd3a62c92698', 1), '3567e20ff43298d80ff3e6567eb9b0b0bb09b10629dc07bac9dd64a0c2d3bc0b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3', 1488, '2026-09-14 07:29:18.985179', '6f7d6e5e05dba1c827aae93d6c618aeaa1e4c1fd5ce7b3ee6fd1f07f8cb69518', 'validated', '{"audio_key":"d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40","entity_key":"wf_cultural_intertextuality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6f7d6e5e05dba1c827aae93d6c618aeaa1e4c1fd5ce7b3ee6fd1f07f8cb69518","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d624298bc203f932ec89f6b332de43b56ff8b2a9db075ef4d9ff01b76f084e40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_04 -> audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc357642-ec60-5bc5-bff9-68df0339cd4f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ced6452bab1a9c5e9303d489046a95b0d7e157c0fafa2c6d89e48a63990cce15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2113b4f-f2de-54da-a1cb-91e5cd6da21e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc357642-ec60-5bc5-bff9-68df0339cd4f', 1), 'ced6452bab1a9c5e9303d489046a95b0d7e157c0fafa2c6d89e48a63990cce15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3', 1018, '2026-09-14 07:29:19.534175', '1f6831629f8b21b6df09fd7bcf471b440cc3978c3790e8dd82b27a7b047d4fa6', 'validated', '{"audio_key":"dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac","entity_key":"lx_strategic_ambiguity_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1f6831629f8b21b6df09fd7bcf471b440cc3978c3790e8dd82b27a7b047d4fa6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_04 -> audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1643c17-75fe-5a26-8457-f81400167cb8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ced6452bab1a9c5e9303d489046a95b0d7e157c0fafa2c6d89e48a63990cce15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fd301f1-3637-5dfc-92f2-bd8ae9eeabbc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1643c17-75fe-5a26-8457-f81400167cb8', 1), 'ced6452bab1a9c5e9303d489046a95b0d7e157c0fafa2c6d89e48a63990cce15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3', 1018, '2026-09-14 07:29:19.534175', '1f6831629f8b21b6df09fd7bcf471b440cc3978c3790e8dd82b27a7b047d4fa6', 'validated', '{"audio_key":"dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac","entity_key":"wf_strategic_ambiguity_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1f6831629f8b21b6df09fd7bcf471b440cc3978c3790e8dd82b27a7b047d4fa6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dcb298fe4c5de7cf13fa370d4a409d9e74f912c16f3fc552d0b3012bfa0760ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_01 -> audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('705489d0-1395-51b9-843f-6bf0c61611bf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67323aae9962a89eb0e96a7b5865b70f161dc7af99edc26826c513329674357e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b86bfe9e-a9f9-5f06-b854-a7113329d669', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('705489d0-1395-51b9-843f-6bf0c61611bf', 1), '67323aae9962a89eb0e96a7b5865b70f161dc7af99edc26826c513329674357e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3', 1201, '2026-09-14 07:29:19.970090', 'dd331c3f860501bb2f672c3a5f058e89645198dc23bab2395d6536d5f4436f8f', 'validated', '{"audio_key":"e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac","entity_key":"lx_academic_critique_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dd331c3f860501bb2f672c3a5f058e89645198dc23bab2395d6536d5f4436f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_01 -> audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0902cde1-a429-52d5-a4bf-6bc6ded2c421', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67323aae9962a89eb0e96a7b5865b70f161dc7af99edc26826c513329674357e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76e6796b-6b9a-53dc-ae16-181e06b272a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0902cde1-a429-52d5-a4bf-6bc6ded2c421', 1), '67323aae9962a89eb0e96a7b5865b70f161dc7af99edc26826c513329674357e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3', 1201, '2026-09-14 07:29:19.970090', 'dd331c3f860501bb2f672c3a5f058e89645198dc23bab2395d6536d5f4436f8f', 'validated', '{"audio_key":"e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac","entity_key":"wf_academic_critique_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dd331c3f860501bb2f672c3a5f058e89645198dc23bab2395d6536d5f4436f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e4e8bff61861cd1c11b58490118a71a9b2b76edcbaefdb3054b2600c20cf19ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_public_panel_capstone_06 -> audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('089e315c-4bfe-517b-b6e5-68384f692302', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_public_panel_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69defe41728d96fd1a4c449c5a35b2259530a901ec880eb58c4ee3848f64b127'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d49eb97-3e26-585e-8e30-93b131411c20', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('089e315c-4bfe-517b-b6e5-68384f692302', 1), '69defe41728d96fd1a4c449c5a35b2259530a901ec880eb58c4ee3848f64b127',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3', 1332, '2026-09-14 07:29:20.503810', 'd96f8c5c352ccb7ff73ef14ebe9a214f08c6f68401eae607362a3187a5d225d8', 'validated', '{"audio_key":"e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae","entity_key":"lx_c2_public_panel_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d96f8c5c352ccb7ff73ef14ebe9a214f08c6f68401eae607362a3187a5d225d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_public_panel_capstone_06 -> audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f6d3bb12-3343-5c4c-8960-559b66250224', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_public_panel_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69defe41728d96fd1a4c449c5a35b2259530a901ec880eb58c4ee3848f64b127'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bc57897-4a66-5813-8ded-f0b848795e19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f6d3bb12-3343-5c4c-8960-559b66250224', 1), '69defe41728d96fd1a4c449c5a35b2259530a901ec880eb58c4ee3848f64b127',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3', 1332, '2026-09-14 07:29:20.503810', 'd96f8c5c352ccb7ff73ef14ebe9a214f08c6f68401eae607362a3187a5d225d8', 'validated', '{"audio_key":"e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae","entity_key":"wf_c2_public_panel_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d96f8c5c352ccb7ff73ef14ebe9a214f08c6f68401eae607362a3187a5d225d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e67d8702c69bffe45f01a5acca5c246ce7d6fff99ff09f846582c0233111a7ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_and_understatement_03 -> audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73d70556-cc5a-516a-9fa5-7d9567b4af4f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_and_understatement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0f6cb390280e33d5166ef889e15505a65cebed58964cb39df5f172942bd0fb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bf2719e-3b9b-5ce7-9ac8-aea04c3b9018', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73d70556-cc5a-516a-9fa5-7d9567b4af4f', 1), 'b0f6cb390280e33d5166ef889e15505a65cebed58964cb39df5f172942bd0fb6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3', 1018, '2026-09-14 07:29:21.163721', '2c13e393aa5c775e1fd21cb2aeca867f6bbe2adb6ae39ddbfc2d30a620151bb1', 'validated', '{"audio_key":"e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169","entity_key":"lx_irony_and_understatement_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2c13e393aa5c775e1fd21cb2aeca867f6bbe2adb6ae39ddbfc2d30a620151bb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_and_understatement_03 -> audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12e1dda9-7dba-53f0-bcfb-8d46fa18f90c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_and_understatement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0f6cb390280e33d5166ef889e15505a65cebed58964cb39df5f172942bd0fb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bebecfd-b114-581c-9c68-cb667366ddbe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12e1dda9-7dba-53f0-bcfb-8d46fa18f90c', 1), 'b0f6cb390280e33d5166ef889e15505a65cebed58964cb39df5f172942bd0fb6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3', 1018, '2026-09-14 07:29:21.163721', '2c13e393aa5c775e1fd21cb2aeca867f6bbe2adb6ae39ddbfc2d30a620151bb1', 'validated', '{"audio_key":"e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169","entity_key":"wf_irony_and_understatement_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2c13e393aa5c775e1fd21cb2aeca867f6bbe2adb6ae39ddbfc2d30a620151bb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e8b89013189d4a7614bf8a52e7c658f4e5166a4b4d2c548a34a22bd84dbd4169.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_debate_01 -> audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d1e6f21-c3da-5e2d-8362-3fbc14b60f7d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_debate_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b46f692ae1abf13410e43d2878e4a7770a4b39c0fb6e63b63de7f818e6f8f57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25a8a27f-2cfb-5495-90de-3a0808a77f2f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d1e6f21-c3da-5e2d-8362-3fbc14b60f7d', 1), '9b46f692ae1abf13410e43d2878e4a7770a4b39c0fb6e63b63de7f818e6f8f57',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3', 1332, '2026-09-14 07:29:21.514583', '58431ba47953e97187f662c8c49f61a4ef009b55d2cdc17eab94fbb557b65c1e', 'validated', '{"audio_key":"e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69","entity_key":"lx_high_stakes_debate_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"58431ba47953e97187f662c8c49f61a4ef009b55d2cdc17eab94fbb557b65c1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_debate_01 -> audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d7472d9-6860-5052-be85-241933c567f4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_debate_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b46f692ae1abf13410e43d2878e4a7770a4b39c0fb6e63b63de7f818e6f8f57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('379e1362-d17c-5d90-b44b-ce768c2842c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d7472d9-6860-5052-be85-241933c567f4', 1), '9b46f692ae1abf13410e43d2878e4a7770a4b39c0fb6e63b63de7f818e6f8f57',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3', 1332, '2026-09-14 07:29:21.514583', '58431ba47953e97187f662c8c49f61a4ef009b55d2cdc17eab94fbb557b65c1e', 'validated', '{"audio_key":"e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69","entity_key":"wf_high_stakes_debate_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"58431ba47953e97187f662c8c49f61a4ef009b55d2cdc17eab94fbb557b65c1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e9c42b7e1d18588ba71dd77da984e54f7cfb5d81812b0a0961afa157ec2f1c69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_critique_02 -> audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9466f78-dd08-5621-8d82-2f378d1cdce2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0448b67c288f934392569d3310a0f62647e9b1fe885a5e49b480dfd16e132ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22bd05d2-cbce-5287-bae9-cd9d782f5962', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9466f78-dd08-5621-8d82-2f378d1cdce2', 1), '0448b67c288f934392569d3310a0f62647e9b1fe885a5e49b480dfd16e132ace',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3', 1149, '2026-09-14 07:29:22.109099', 'e4a84fca74c14a2ac1e48df345b136fd59580d4aff9178cd353a27186f030104', 'validated', '{"audio_key":"f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b","entity_key":"lx_academic_critique_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e4a84fca74c14a2ac1e48df345b136fd59580d4aff9178cd353a27186f030104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_critique_02 -> audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c9dadffb-5aae-59d3-b166-d8839bd176b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0448b67c288f934392569d3310a0f62647e9b1fe885a5e49b480dfd16e132ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42b7d1a0-f8dd-59e9-8a22-e409e598f16f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c9dadffb-5aae-59d3-b166-d8839bd176b0', 1), '0448b67c288f934392569d3310a0f62647e9b1fe885a5e49b480dfd16e132ace',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3', 1149, '2026-09-14 07:29:22.109099', 'e4a84fca74c14a2ac1e48df345b136fd59580d4aff9178cd353a27186f030104', 'validated', '{"audio_key":"f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b","entity_key":"wf_academic_critique_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e4a84fca74c14a2ac1e48df345b136fd59580d4aff9178cd353a27186f030104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5db53e5931e3fcd00be48514efb49c40393e67bf795c7ebd01ce53d2e85b79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_01 -> audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08eaeb8e-c6d4-5dbd-8670-d11c709cea4c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3a5019c8e7bb574ae4287ba03f9bb14fc5351b0d4508dabca737c686c00a15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('043e8acc-1e21-5f09-8fe0-e007295427aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08eaeb8e-c6d4-5dbd-8670-d11c709cea4c', 1), '9d3a5019c8e7bb574ae4287ba03f9bb14fc5351b0d4508dabca737c686c00a15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3', 1280, '2026-09-14 07:29:22.488083', 'ba26791eb5f8b8a075329ef91a0cb979835170b82069d0b6fec59ac3486be03e', 'validated', '{"audio_key":"f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4","entity_key":"lx_institutional_register_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ba26791eb5f8b8a075329ef91a0cb979835170b82069d0b6fec59ac3486be03e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_01 -> audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('af317de3-6d7c-5e94-a110-5dc56351e5e3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3a5019c8e7bb574ae4287ba03f9bb14fc5351b0d4508dabca737c686c00a15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71263ade-f4fb-5418-b682-d75d3c2e5ca6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('af317de3-6d7c-5e94-a110-5dc56351e5e3', 1), '9d3a5019c8e7bb574ae4287ba03f9bb14fc5351b0d4508dabca737c686c00a15',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3', 1280, '2026-09-14 07:29:22.488083', 'ba26791eb5f8b8a075329ef91a0cb979835170b82069d0b6fec59ac3486be03e', 'validated', '{"audio_key":"f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4","entity_key":"wf_institutional_register_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ba26791eb5f8b8a075329ef91a0cb979835170b82069d0b6fec59ac3486be03e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f9cfafb853bf690a7bc187d11e9f6159e221ece76741d93d80935c23839adfa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stylistic_editing_04 -> audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4e83fa2d-2106-5c81-80bf-f15f2b909f3e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stylistic_editing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff931398e92355573af2568a1fd802ef5e75224ee0c7f37cd94f3e98116a9132'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7c34c06-497e-565f-9500-9efb9ac8772e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4e83fa2d-2106-5c81-80bf-f15f2b909f3e', 1), 'ff931398e92355573af2568a1fd802ef5e75224ee0c7f37cd94f3e98116a9132',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3', 1071, '2026-09-14 07:29:23.085547', 'e43ddb1fa687c8b572db0c196a409cccc56b92c497785ea007dc5e62c59eea7e', 'validated', '{"audio_key":"ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32","entity_key":"lx_stylistic_editing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e43ddb1fa687c8b572db0c196a409cccc56b92c497785ea007dc5e62c59eea7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stylistic_editing_04 -> audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2c7a359e-8ac8-5721-ace4-031472128f9f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stylistic_editing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff931398e92355573af2568a1fd802ef5e75224ee0c7f37cd94f3e98116a9132'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('573a1317-f1dc-52bf-bd38-5beee4046676', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2c7a359e-8ac8-5721-ace4-031472128f9f', 1), 'ff931398e92355573af2568a1fd802ef5e75224ee0c7f37cd94f3e98116a9132',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3', 1071, '2026-09-14 07:29:23.085547', 'e43ddb1fa687c8b572db0c196a409cccc56b92c497785ea007dc5e62c59eea7e', 'validated', '{"audio_key":"ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32","entity_key":"wf_stylistic_editing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e43ddb1fa687c8b572db0c196a409cccc56b92c497785ea007dc5e62c59eea7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ff9cb1ffe371d41e5930bc69e9fbdc9661a8198874e096aba66ecc988f20db32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_public_panel_capstone_03 -> audio/generated/it-IT/utterances/04b74d75320b9fea738d6d9e89374f8c54448763700860f8bbbacf13b4c7e5bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5fe0ec49-287f-58c8-9ef9-19352db879bc', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_public_panel_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54bdb155f91dbe54df6864128d7b0f2eccf06da367a73dc1a73b9f6aa8644eef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f865a71-9b79-50d8-a9ed-239dfcd718b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5fe0ec49-287f-58c8-9ef9-19352db879bc', 1), '54bdb155f91dbe54df6864128d7b0f2eccf06da367a73dc1a73b9f6aa8644eef',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/04b74d75320b9fea738d6d9e89374f8c54448763700860f8bbbacf13b4c7e5bc.mp3', 4493, '2026-09-14 07:29:23.853615', 'f18ad9219d209e1366656f8f6c0d64b23bc9123e1e9ddd3cdf2143722f869865', 'validated', '{"audio_key":"04b74d75320b9fea738d6d9e89374f8c54448763700860f8bbbacf13b4c7e5bc","entity_key":"u_c2_public_panel_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f18ad9219d209e1366656f8f6c0d64b23bc9123e1e9ddd3cdf2143722f869865","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/04b74d75320b9fea738d6d9e89374f8c54448763700860f8bbbacf13b4c7e5bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_and_understatement_04 -> audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43e620b2-9620-5163-b573-fd4ca52cb66f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_and_understatement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54f845644c01941b9b8c869a3eea5bddd5b862bcd0fc48bc891ae928c8768dc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4230ca9c-5866-5f72-8ff3-057d927594b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43e620b2-9620-5163-b573-fd4ca52cb66f', 1), '54f845644c01941b9b8c869a3eea5bddd5b862bcd0fc48bc891ae928c8768dc4',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3', 3056, '2026-09-14 07:29:24.257731', '37fbd003b51f0157d27157db25f3aa1d73de14e1597bd7dba8bddaadb94186dc', 'validated', '{"audio_key":"08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829","entity_key":"u_irony_and_understatement_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37fbd003b51f0157d27157db25f3aa1d73de14e1597bd7dba8bddaadb94186dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_irony_and_understatement_02_listen -> audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8669a7e1-dc23-50aa-925e-88454cf8424a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_irony_and_understatement_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54f845644c01941b9b8c869a3eea5bddd5b862bcd0fc48bc891ae928c8768dc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bdff53d-d74f-5f1e-b92a-79304b747ee4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8669a7e1-dc23-50aa-925e-88454cf8424a', 1), '54f845644c01941b9b8c869a3eea5bddd5b862bcd0fc48bc891ae928c8768dc4',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3', 3056, '2026-09-14 07:29:24.257731', '37fbd003b51f0157d27157db25f3aa1d73de14e1597bd7dba8bddaadb94186dc', 'validated', '{"audio_key":"08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829","entity_key":"e_irony_and_understatement_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37fbd003b51f0157d27157db25f3aa1d73de14e1597bd7dba8bddaadb94186dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/08f1061c3ee4aeac0aa05cd70c419965b0fdc34a4dc19f809ec4e668c74b7829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_02 -> audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48c8fafb-79ad-5c94-bb8b-6ac4bfc061cd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afbe0d0c77aebdfb14d6490195f1414dbedb757cbfb0c7c9e17eca88b1276008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('882c4832-4df2-59c0-9853-2140a5248e43', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48c8fafb-79ad-5c94-bb8b-6ac4bfc061cd', 1), 'afbe0d0c77aebdfb14d6490195f1414dbedb757cbfb0c7c9e17eca88b1276008',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3', 3840, '2026-09-14 07:29:25.118575', 'b6e433d4a48a48507e15b790816cf39ec964994eee557cadf7f3a3d3c239f89b', 'validated', '{"audio_key":"386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb","entity_key":"u_strategic_ambiguity_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b6e433d4a48a48507e15b790816cf39ec964994eee557cadf7f3a3d3c239f89b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_strategic_ambiguity_01_listen -> audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f7566691-45a4-5006-b5aa-4434a794db5b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_strategic_ambiguity_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afbe0d0c77aebdfb14d6490195f1414dbedb757cbfb0c7c9e17eca88b1276008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c09d4bf-52f2-56b3-a47d-2daae043bf8c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f7566691-45a4-5006-b5aa-4434a794db5b', 1), 'afbe0d0c77aebdfb14d6490195f1414dbedb757cbfb0c7c9e17eca88b1276008',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3', 3840, '2026-09-14 07:29:25.118575', 'b6e433d4a48a48507e15b790816cf39ec964994eee557cadf7f3a3d3c239f89b', 'validated', '{"audio_key":"386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb","entity_key":"e_strategic_ambiguity_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b6e433d4a48a48507e15b790816cf39ec964994eee557cadf7f3a3d3c239f89b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/386dfeae5f977f347c731c203f255b6b39b6aa237da45c5546df05f40d58b9fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inferential_precision_03 -> audio/generated/it-IT/utterances/3ef4af4e66096caf62b44351a37c30a1c7807cf04fb95476762ed92536f2977c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9899e2a8-eb7f-5d34-a5a2-9b6bb71390b2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inferential_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a7a0a355d900c6de538d2392e0760a5950399ed481d116bda3570b25a261d98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba5a80f1-b53a-51af-8524-2c274095c9d8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9899e2a8-eb7f-5d34-a5a2-9b6bb71390b2', 1), '6a7a0a355d900c6de538d2392e0760a5950399ed481d116bda3570b25a261d98',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3ef4af4e66096caf62b44351a37c30a1c7807cf04fb95476762ed92536f2977c.mp3', 3474, '2026-09-14 07:29:25.505997', 'f9f1e35efe1b0a52ed17dec937f9ca08fd8059f2b3ca47cdb182ec52a11896f6', 'validated', '{"audio_key":"3ef4af4e66096caf62b44351a37c30a1c7807cf04fb95476762ed92536f2977c","entity_key":"u_inferential_precision_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f9f1e35efe1b0a52ed17dec937f9ca08fd8059f2b3ca47cdb182ec52a11896f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3ef4af4e66096caf62b44351a37c30a1c7807cf04fb95476762ed92536f2977c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_critique_01 -> audio/generated/it-IT/utterances/4dbd8ded54cb2e0df56da0dbeb57b07daff7221c6baac19f43da87301fc465dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5953c80-8223-53a4-943e-a9d2117911ed', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d608a661e827df22a7dda4e830362b1c5b96a1dccebcded7a7f500be4d23ec2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f37c1a02-9dad-545e-9eed-079dbea7ed99', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5953c80-8223-53a4-943e-a9d2117911ed', 1), '6d608a661e827df22a7dda4e830362b1c5b96a1dccebcded7a7f500be4d23ec2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4dbd8ded54cb2e0df56da0dbeb57b07daff7221c6baac19f43da87301fc465dd.mp3', 4597, '2026-09-14 07:29:26.453793', 'ad3cabc6f92f3e5c734cb19a40bf1c9996a52e460058f5d95095a6737eebfa7a', 'validated', '{"audio_key":"4dbd8ded54cb2e0df56da0dbeb57b07daff7221c6baac19f43da87301fc465dd","entity_key":"u_academic_critique_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ad3cabc6f92f3e5c734cb19a40bf1c9996a52e460058f5d95095a6737eebfa7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4dbd8ded54cb2e0df56da0dbeb57b07daff7221c6baac19f43da87301fc465dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_intertextuality_04 -> audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2c5d443-a238-5db3-aa9f-8c2bd1979eef', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef137768022cb6bc7ba0afccb8905bf43fe3210c7359b16e1452ea9709da00ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dac918c-a7db-5a5b-af08-59e5012f4f5a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2c5d443-a238-5db3-aa9f-8c2bd1979eef', 1), 'ef137768022cb6bc7ba0afccb8905bf43fe3210c7359b16e1452ea9709da00ad',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3', 3996, '2026-09-14 07:29:26.765484', 'a181dc33db9ab6af18f2a98ace041dfe3bb0742cfdd3e584fc0c463172bcca5e', 'validated', '{"audio_key":"5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32","entity_key":"u_cultural_intertextuality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a181dc33db9ab6af18f2a98ace041dfe3bb0742cfdd3e584fc0c463172bcca5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cultural_intertextuality_02_listen -> audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fbce63aa-e1ef-574a-9a3b-9153e6eb0d41', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cultural_intertextuality_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef137768022cb6bc7ba0afccb8905bf43fe3210c7359b16e1452ea9709da00ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('448a8508-7f40-5e43-8304-68705d7cbe33', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fbce63aa-e1ef-574a-9a3b-9153e6eb0d41', 1), 'ef137768022cb6bc7ba0afccb8905bf43fe3210c7359b16e1452ea9709da00ad',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3', 3996, '2026-09-14 07:29:26.765484', 'a181dc33db9ab6af18f2a98ace041dfe3bb0742cfdd3e584fc0c463172bcca5e', 'validated', '{"audio_key":"5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32","entity_key":"e_cultural_intertextuality_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a181dc33db9ab6af18f2a98ace041dfe3bb0742cfdd3e584fc0c463172bcca5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5849c8614aa6643931ea2a6d7c77a7ca7ca7b081061f4f0467d38814190e6d32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_02 -> audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4f94cd29-f628-51a2-b3e2-c0971d89dda4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec59a73c2cac218204a546cd08b7e4e8b18f428b862327c55d0da45cfe185a99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73747eb7-10b3-5d96-a4c5-44008a3d64e3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4f94cd29-f628-51a2-b3e2-c0971d89dda4', 1), 'ec59a73c2cac218204a546cd08b7e4e8b18f428b862327c55d0da45cfe185a99',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3', 3369, '2026-09-14 07:29:27.660288', '53997ae926272fab1406dc4c4f8f1b1472d52880acd094c8cab8ff8f1c64d703', 'validated', '{"audio_key":"597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86","entity_key":"u_institutional_register_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53997ae926272fab1406dc4c4f8f1b1472d52880acd094c8cab8ff8f1c64d703","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_register_01_listen -> audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('062913ae-1924-5272-b63b-adb984abf46d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_register_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec59a73c2cac218204a546cd08b7e4e8b18f428b862327c55d0da45cfe185a99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cf1f899-d203-5f93-bf50-8a99d430373b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('062913ae-1924-5272-b63b-adb984abf46d', 1), 'ec59a73c2cac218204a546cd08b7e4e8b18f428b862327c55d0da45cfe185a99',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3', 3369, '2026-09-14 07:29:27.660288', '53997ae926272fab1406dc4c4f8f1b1472d52880acd094c8cab8ff8f1c64d703', 'validated', '{"audio_key":"597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86","entity_key":"e_institutional_register_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53997ae926272fab1406dc4c4f8f1b1472d52880acd094c8cab8ff8f1c64d703","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/597e13a26ee2015120521c209667f9f198f801264e95739b619baa65654cca86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_debate_04 -> audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6e4b22f0-85f1-55bd-af9d-028e7d9a8373', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_debate_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62e2f74598c496775e9e8a5dac72f9e3b0b835612cca9d49df23bf1d23344775'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('438bec61-e22c-56bf-92a8-635f5a7b3a08', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6e4b22f0-85f1-55bd-af9d-028e7d9a8373', 1), '62e2f74598c496775e9e8a5dac72f9e3b0b835612cca9d49df23bf1d23344775',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3', 3526, '2026-09-14 07:29:27.999359', '5e3455e22da338dbc8c1f6b82cf85061439a66bce9e2cbb5c8a3afada803ec33', 'validated', '{"audio_key":"606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c","entity_key":"u_high_stakes_debate_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5e3455e22da338dbc8c1f6b82cf85061439a66bce9e2cbb5c8a3afada803ec33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_high_stakes_debate_02_listen -> audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9899ac45-336c-5bc4-9bb0-35013972253d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_high_stakes_debate_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62e2f74598c496775e9e8a5dac72f9e3b0b835612cca9d49df23bf1d23344775'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('660f3bb0-79e9-51ba-86de-aa624f150358', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9899ac45-336c-5bc4-9bb0-35013972253d', 1), '62e2f74598c496775e9e8a5dac72f9e3b0b835612cca9d49df23bf1d23344775',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3', 3526, '2026-09-14 07:29:27.999359', '5e3455e22da338dbc8c1f6b82cf85061439a66bce9e2cbb5c8a3afada803ec33', 'validated', '{"audio_key":"606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c","entity_key":"e_high_stakes_debate_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5e3455e22da338dbc8c1f6b82cf85061439a66bce9e2cbb5c8a3afada803ec33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/606e26ad87dcc671dbce6012e95e4a040c02eac2ba6936ebae49b977e13ca14c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_public_panel_capstone_01 -> audio/generated/it-IT/utterances/6bd2d24652a7509dd815c3f21dd9947421502daf5ee701e6442a4af4d584b39a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a2a8570-94cf-5157-bab7-8b7b401c8eea', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_public_panel_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4826a48bb557914ca3136e560b99abd604fffe8f29ee460f9321ffce1856402'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b35cd1ee-49c0-5d98-92cd-aafc3ffb3ad9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a2a8570-94cf-5157-bab7-8b7b401c8eea', 1), 'b4826a48bb557914ca3136e560b99abd604fffe8f29ee460f9321ffce1856402',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6bd2d24652a7509dd815c3f21dd9947421502daf5ee701e6442a4af4d584b39a.mp3', 4205, '2026-09-14 07:29:28.915262', '86c76ab4c7ce08fd6d3380b05e0c77fcacba9d3fff7e7c96bbfa6ed47a1b0ce4', 'validated', '{"audio_key":"6bd2d24652a7509dd815c3f21dd9947421502daf5ee701e6442a4af4d584b39a","entity_key":"u_c2_public_panel_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"86c76ab4c7ce08fd6d3380b05e0c77fcacba9d3fff7e7c96bbfa6ed47a1b0ce4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6bd2d24652a7509dd815c3f21dd9947421502daf5ee701e6442a4af4d584b39a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_04 -> audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('542005b2-99e3-54c3-ad17-c352bbdd3eee', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0da18a83418b3dcb3d36d3ba3090f7c2e5347315388c254b4761d348abdd0a42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65b9edf9-7671-55ff-aa22-2e3d0763e08b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('542005b2-99e3-54c3-ad17-c352bbdd3eee', 1), '0da18a83418b3dcb3d36d3ba3090f7c2e5347315388c254b4761d348abdd0a42',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3', 5328, '2026-09-14 07:29:29.476490', '1ff5550257d46d4141c9601aa5a563eb5ff7fd33997c5fdf815ecc18dfe1c468', 'validated', '{"audio_key":"6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c","entity_key":"u_counterfactual_reasoning_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ff5550257d46d4141c9601aa5a563eb5ff7fd33997c5fdf815ecc18dfe1c468","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_reasoning_02_listen -> audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a80a8767-b39e-533f-a477-bfdd6e036b7c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_reasoning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0da18a83418b3dcb3d36d3ba3090f7c2e5347315388c254b4761d348abdd0a42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22eaf43a-5ffb-579c-922e-aaea99e7148f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a80a8767-b39e-533f-a477-bfdd6e036b7c', 1), '0da18a83418b3dcb3d36d3ba3090f7c2e5347315388c254b4761d348abdd0a42',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3', 5328, '2026-09-14 07:29:29.476490', '1ff5550257d46d4141c9601aa5a563eb5ff7fd33997c5fdf815ecc18dfe1c468', 'validated', '{"audio_key":"6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c","entity_key":"e_counterfactual_reasoning_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ff5550257d46d4141c9601aa5a563eb5ff7fd33997c5fdf815ecc18dfe1c468","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6d1a2789e0b6c13f7bfaadd2c632490a0fec662d1aeec03d78328cb3f910d61c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_01 -> audio/generated/it-IT/utterances/77292aeb38cd8cb114207c9576f74746693f3aa6c1d6f8553edabb744498daf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f12860f4-93d5-5cb6-b5c5-d9c62770a534', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f539e8cf0986e928d0537560f4495711532410d030a69411f67f3aa4bf0fcddb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e7d14a6-bc0c-587e-ac9f-bd31d99a5dc4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f12860f4-93d5-5cb6-b5c5-d9c62770a534', 1), 'f539e8cf0986e928d0537560f4495711532410d030a69411f67f3aa4bf0fcddb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/77292aeb38cd8cb114207c9576f74746693f3aa6c1d6f8553edabb744498daf6.mp3', 4728, '2026-09-14 07:29:30.486476', '5e0df62cb10ae51da78778f66c86c7537604c88fdc81a443ff93e6c22f8b8fc9', 'validated', '{"audio_key":"77292aeb38cd8cb114207c9576f74746693f3aa6c1d6f8553edabb744498daf6","entity_key":"u_counterfactual_reasoning_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5e0df62cb10ae51da78778f66c86c7537604c88fdc81a443ff93e6c22f8b8fc9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/77292aeb38cd8cb114207c9576f74746693f3aa6c1d6f8553edabb744498daf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_03 -> audio/generated/it-IT/utterances/779fd5bfba2a5e0dcce2289f13d5dcc9d8c0dd2eb854244dc37b528af1f7ab9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b4be46f8-cdbd-5642-b459-e7c7f0106a24', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72cb8745ebd5d7931675b90778a18bc13dd42a75c9fa39099eed8acd16422706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e70447f1-8426-5e2f-acd5-0cd8c3b51bd2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b4be46f8-cdbd-5642-b459-e7c7f0106a24', 1), '72cb8745ebd5d7931675b90778a18bc13dd42a75c9fa39099eed8acd16422706',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/779fd5bfba2a5e0dcce2289f13d5dcc9d8c0dd2eb854244dc37b528af1f7ab9e.mp3', 4362, '2026-09-14 07:29:30.744698', '06e66c3bf9301ef8e52827d40e0a0c7e6a8b0236dbe8b7e51e6de7f948aad223', 'validated', '{"audio_key":"779fd5bfba2a5e0dcce2289f13d5dcc9d8c0dd2eb854244dc37b528af1f7ab9e","entity_key":"u_counterfactual_reasoning_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"06e66c3bf9301ef8e52827d40e0a0c7e6a8b0236dbe8b7e51e6de7f948aad223","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/779fd5bfba2a5e0dcce2289f13d5dcc9d8c0dd2eb854244dc37b528af1f7ab9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_critique_04 -> audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fce05312-6b6e-52f2-b030-df035d7725a1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed3d8a0395d2050daed46da03e6cd0bbab144e770597495e8c0ec88e9febf31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('283fbbc0-235d-53b5-b3e9-dcb3e53b03a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fce05312-6b6e-52f2-b030-df035d7725a1', 1), '9ed3d8a0395d2050daed46da03e6cd0bbab144e770597495e8c0ec88e9febf31',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3', 4414, '2026-09-14 07:29:31.809464', 'd51ba95fb797ee20118438d09471c875db5e27c27daddc4c42e8c668940fc156', 'validated', '{"audio_key":"833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2","entity_key":"u_academic_critique_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d51ba95fb797ee20118438d09471c875db5e27c27daddc4c42e8c668940fc156","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_academic_critique_02_listen -> audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('730747de-3c69-5477-a8a7-133c50874a50', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_academic_critique_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed3d8a0395d2050daed46da03e6cd0bbab144e770597495e8c0ec88e9febf31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cce7f5d-def7-5cec-b837-12befbbee36d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('730747de-3c69-5477-a8a7-133c50874a50', 1), '9ed3d8a0395d2050daed46da03e6cd0bbab144e770597495e8c0ec88e9febf31',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3', 4414, '2026-09-14 07:29:31.809464', 'd51ba95fb797ee20118438d09471c875db5e27c27daddc4c42e8c668940fc156', 'validated', '{"audio_key":"833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2","entity_key":"e_academic_critique_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d51ba95fb797ee20118438d09471c875db5e27c27daddc4c42e8c668940fc156","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/833ddaa2a9d40533af1e460b23c216fdb7274dfa2840bbc03566e84b1932fce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_03 -> audio/generated/it-IT/utterances/8e5bffe8550e3ac0e8bf996e03d3aecfa4164c0b11c2ce18ce8cbc9da9e4c365.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b7bb360-6572-50a0-9d51-67c9eebd2b0d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd984afbc0982fbfb07056d5025c7725cb9aa84bb3c9de80a6859f04968d9f343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1cdc896-8f06-5c61-b172-1a43bd1ad150', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b7bb360-6572-50a0-9d51-67c9eebd2b0d', 1), 'd984afbc0982fbfb07056d5025c7725cb9aa84bb3c9de80a6859f04968d9f343',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8e5bffe8550e3ac0e8bf996e03d3aecfa4164c0b11c2ce18ce8cbc9da9e4c365.mp3', 3369, '2026-09-14 07:29:31.920270', 'dfe3de00e75fe4c08639bacab92b3cffdd99708dcb77bef589b10b6d920df7a4', 'validated', '{"audio_key":"8e5bffe8550e3ac0e8bf996e03d3aecfa4164c0b11c2ce18ce8cbc9da9e4c365","entity_key":"u_institutional_register_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dfe3de00e75fe4c08639bacab92b3cffdd99708dcb77bef589b10b6d920df7a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8e5bffe8550e3ac0e8bf996e03d3aecfa4164c0b11c2ce18ce8cbc9da9e4c365.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_public_panel_capstone_02 -> audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('94fbf04b-c313-5cd0-b1ba-f9d5f4753dcb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_public_panel_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77251f172460829f9297fdbce74330b254e7cab1cf795981d5b1143d9b071678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('966bf584-33d3-505e-a582-6ff4c5a933a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('94fbf04b-c313-5cd0-b1ba-f9d5f4753dcb', 1), '77251f172460829f9297fdbce74330b254e7cab1cf795981d5b1143d9b071678',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3', 3108, '2026-09-14 07:29:32.995381', '01018ca503e07844cdeb1da3afd2cc9e12fb64032f1e15d41be9f6dd8e974f04', 'validated', '{"audio_key":"991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573","entity_key":"u_c2_public_panel_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"01018ca503e07844cdeb1da3afd2cc9e12fb64032f1e15d41be9f6dd8e974f04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_public_panel_capstone_01_listen -> audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d78e10e2-24ca-5669-ad64-56c6e4693099', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_public_panel_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77251f172460829f9297fdbce74330b254e7cab1cf795981d5b1143d9b071678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51621fc6-a2ec-5cb8-8560-8d401a7ad029', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d78e10e2-24ca-5669-ad64-56c6e4693099', 1), '77251f172460829f9297fdbce74330b254e7cab1cf795981d5b1143d9b071678',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3', 3108, '2026-09-14 07:29:32.995381', '01018ca503e07844cdeb1da3afd2cc9e12fb64032f1e15d41be9f6dd8e974f04', 'validated', '{"audio_key":"991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573","entity_key":"e_c2_public_panel_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"01018ca503e07844cdeb1da3afd2cc9e12fb64032f1e15d41be9f6dd8e974f04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/991314ba8e56ee89e98ba6576018271eba81c5fab2d3145336542b2ce7066573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_04 -> audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c84ab37-070b-5632-be15-67aaefc3d98e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca3119124ec5b7e19181166e4e71970390719033bcf79675ac7fc7157d3e6215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95305118-0fad-5918-92df-d95b18febc70', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c84ab37-070b-5632-be15-67aaefc3d98e', 1), 'ca3119124ec5b7e19181166e4e71970390719033bcf79675ac7fc7157d3e6215',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3', 5041, '2026-09-14 07:29:33.344255', 'f5e87f592d4df8b409e76a56730b491b7406a94f500e3a5af91fd8ed8a353307', 'validated', '{"audio_key":"99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c","entity_key":"u_institutional_register_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5e87f592d4df8b409e76a56730b491b7406a94f500e3a5af91fd8ed8a353307","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_register_02_listen -> audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aa7ab713-b087-5fae-a0e8-34a8ac9f8dc2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_register_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca3119124ec5b7e19181166e4e71970390719033bcf79675ac7fc7157d3e6215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a6f597d-978d-5398-9c93-b95e8d3b18df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aa7ab713-b087-5fae-a0e8-34a8ac9f8dc2', 1), 'ca3119124ec5b7e19181166e4e71970390719033bcf79675ac7fc7157d3e6215',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3', 5041, '2026-09-14 07:29:33.344255', 'f5e87f592d4df8b409e76a56730b491b7406a94f500e3a5af91fd8ed8a353307', 'validated', '{"audio_key":"99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c","entity_key":"e_institutional_register_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5e87f592d4df8b409e76a56730b491b7406a94f500e3a5af91fd8ed8a353307","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99dd4efca4be783d9c2cdd7218c0d1d0bd504055a6d1bb17a03d788b0bb3274c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stylistic_editing_01 -> audio/generated/it-IT/utterances/99ea308dff1076129c45ebbeaff817cca6c8b01e07f9c7d8c5004dde4b509bf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('23107ecf-4f7e-5bec-8532-994b5be8a37a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stylistic_editing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3f073afb88d9cd3c815ca9215f40fa8493c6a35df4834fed6654be16f7f8d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a6219e4-6b5a-5ad9-b760-14a40a698c2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('23107ecf-4f7e-5bec-8532-994b5be8a37a', 1), 'e3f073afb88d9cd3c815ca9215f40fa8493c6a35df4834fed6654be16f7f8d44',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99ea308dff1076129c45ebbeaff817cca6c8b01e07f9c7d8c5004dde4b509bf4.mp3', 3343, '2026-09-14 07:29:34.201829', 'f67057d723eb027c1d059aa019db6795a8387ca7e68623a6508ba8095ad3afc2', 'validated', '{"audio_key":"99ea308dff1076129c45ebbeaff817cca6c8b01e07f9c7d8c5004dde4b509bf4","entity_key":"u_stylistic_editing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f67057d723eb027c1d059aa019db6795a8387ca7e68623a6508ba8095ad3afc2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99ea308dff1076129c45ebbeaff817cca6c8b01e07f9c7d8c5004dde4b509bf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_04 -> audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1d87712-4c51-53e8-8af1-02ddcaf79e46', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81bdca802daf523eb4a443a765373d219545113cf164047e741afe72e9fe8835'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fd8b094-8a48-5e05-96c3-f4b1241525b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1d87712-4c51-53e8-8af1-02ddcaf79e46', 1), '81bdca802daf523eb4a443a765373d219545113cf164047e741afe72e9fe8835',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3', 3474, '2026-09-14 07:29:34.595975', '7d4756cad1fa4bc2c973e6eaf0887e39b66ad3e7e703d7358c72d8a5fb50d21b', 'validated', '{"audio_key":"9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31","entity_key":"u_strategic_ambiguity_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7d4756cad1fa4bc2c973e6eaf0887e39b66ad3e7e703d7358c72d8a5fb50d21b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_strategic_ambiguity_02_listen -> audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6e6eb537-ecf9-5a72-b042-aab6bce085ca', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_strategic_ambiguity_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81bdca802daf523eb4a443a765373d219545113cf164047e741afe72e9fe8835'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b790ee5-35d3-593f-84a7-4410295f1fce', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6e6eb537-ecf9-5a72-b042-aab6bce085ca', 1), '81bdca802daf523eb4a443a765373d219545113cf164047e741afe72e9fe8835',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3', 3474, '2026-09-14 07:29:34.595975', '7d4756cad1fa4bc2c973e6eaf0887e39b66ad3e7e703d7358c72d8a5fb50d21b', 'validated', '{"audio_key":"9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31","entity_key":"e_strategic_ambiguity_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7d4756cad1fa4bc2c973e6eaf0887e39b66ad3e7e703d7358c72d8a5fb50d21b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9d340ac78e11164b7a521021f162df7a2cadc58074a549ff393f734402eafb31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_and_understatement_02 -> audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a917644b-b3cc-504b-a2ca-d25aef40d713', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_and_understatement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f645b0076c5ae3b837b6633e9c674000eb7ef654e3ced9de83e33a155dc5b2cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5d60253-d1b0-5c39-89a1-4bd636a98c99', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a917644b-b3cc-504b-a2ca-d25aef40d713', 1), 'f645b0076c5ae3b837b6633e9c674000eb7ef654e3ced9de83e33a155dc5b2cc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3', 4440, '2026-09-14 07:29:35.551240', '909790ece7275cc8c8639a5db8c6580cbf4b996b78022346059eca3037bd953b', 'validated', '{"audio_key":"a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0","entity_key":"u_irony_and_understatement_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"909790ece7275cc8c8639a5db8c6580cbf4b996b78022346059eca3037bd953b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_irony_and_understatement_01_listen -> audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e6c9bbc7-8a40-524f-b934-8ec10dfce975', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_irony_and_understatement_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f645b0076c5ae3b837b6633e9c674000eb7ef654e3ced9de83e33a155dc5b2cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81bf0551-f717-5e3e-87a6-2b5688c38d2c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e6c9bbc7-8a40-524f-b934-8ec10dfce975', 1), 'f645b0076c5ae3b837b6633e9c674000eb7ef654e3ced9de83e33a155dc5b2cc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3', 4440, '2026-09-14 07:29:35.551240', '909790ece7275cc8c8639a5db8c6580cbf4b996b78022346059eca3037bd953b', 'validated', '{"audio_key":"a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0","entity_key":"e_irony_and_understatement_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"909790ece7275cc8c8639a5db8c6580cbf4b996b78022346059eca3037bd953b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a4b1f2522c27aea37231183e715a402d77b063f1f3f36b059f700aab028e70b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_critique_02 -> audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('837fa8de-2a56-5cdc-98ae-78907f7ac899', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d8dfa497f7d79a9cc44f8c56b51e75328ac20e7292e8be4d42750180f734c35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bdcae7b-8e39-5346-b89c-f60fa5ed6487', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('837fa8de-2a56-5cdc-98ae-78907f7ac899', 1), '8d8dfa497f7d79a9cc44f8c56b51e75328ac20e7292e8be4d42750180f734c35',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3', 3604, '2026-09-14 07:29:35.851708', '1df298d63f05d9eed9627e87cee29e965f916366b548c7ddb9386c0a0867ca04', 'validated', '{"audio_key":"a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688","entity_key":"u_academic_critique_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1df298d63f05d9eed9627e87cee29e965f916366b548c7ddb9386c0a0867ca04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_academic_critique_01_listen -> audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5c43bb92-f61a-5e59-b1c6-c1353dad3144', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_academic_critique_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d8dfa497f7d79a9cc44f8c56b51e75328ac20e7292e8be4d42750180f734c35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73a06a65-eec1-5a91-ba74-01e81fcc3ef0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5c43bb92-f61a-5e59-b1c6-c1353dad3144', 1), '8d8dfa497f7d79a9cc44f8c56b51e75328ac20e7292e8be4d42750180f734c35',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3', 3604, '2026-09-14 07:29:35.851708', '1df298d63f05d9eed9627e87cee29e965f916366b548c7ddb9386c0a0867ca04', 'validated', '{"audio_key":"a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688","entity_key":"e_academic_critique_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1df298d63f05d9eed9627e87cee29e965f916366b548c7ddb9386c0a0867ca04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a6504f786fdca919b8a9750464f17be501b59e885e7f08b7ca5166ef53f95688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_01 -> audio/generated/it-IT/utterances/a9cb30893943252c009b5740fc0a7bd3046057d4140cc9c657b337b16afe4392.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ef73746e-2f58-54e1-8b52-f8a05a29e9a7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afd29410a81b98ec3d539c54d921b22c81e987e9930aaf744924819ded104b27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('623cab10-cfc9-548c-b568-a14522615adc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ef73746e-2f58-54e1-8b52-f8a05a29e9a7', 1), 'afd29410a81b98ec3d539c54d921b22c81e987e9930aaf744924819ded104b27',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a9cb30893943252c009b5740fc0a7bd3046057d4140cc9c657b337b16afe4392.mp3', 4205, '2026-09-14 07:29:36.804905', '8c99c2514fe1e3e035fc4b458eb1a347adeaadb0f24adf00ae847d073ed122d2', 'validated', '{"audio_key":"a9cb30893943252c009b5740fc0a7bd3046057d4140cc9c657b337b16afe4392","entity_key":"u_institutional_register_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8c99c2514fe1e3e035fc4b458eb1a347adeaadb0f24adf00ae847d073ed122d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a9cb30893943252c009b5740fc0a7bd3046057d4140cc9c657b337b16afe4392.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_and_understatement_03 -> audio/generated/it-IT/utterances/ab892d440682fdfa7a34afffb86b9d0e713926f28a34e3147344eb1b446e62a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cc9c5a2b-44c9-5433-974e-71f9092aa5bf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_and_understatement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21d1d553481474bf675973cea1b0fd6120f216e74b031de958ce6ff06f2d4812'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e57e987-2f65-5601-9a09-b8bbe70a8425', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cc9c5a2b-44c9-5433-974e-71f9092aa5bf', 1), '21d1d553481474bf675973cea1b0fd6120f216e74b031de958ce6ff06f2d4812',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ab892d440682fdfa7a34afffb86b9d0e713926f28a34e3147344eb1b446e62a7.mp3', 3604, '2026-09-14 07:29:37.133209', '4ce7d40daaed5df3378a9de0ad0f1df0f0ef0e5b60acb9e9d6e5d9056afc469e', 'validated', '{"audio_key":"ab892d440682fdfa7a34afffb86b9d0e713926f28a34e3147344eb1b446e62a7","entity_key":"u_irony_and_understatement_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4ce7d40daaed5df3378a9de0ad0f1df0f0ef0e5b60acb9e9d6e5d9056afc469e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ab892d440682fdfa7a34afffb86b9d0e713926f28a34e3147344eb1b446e62a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_03 -> audio/generated/it-IT/utterances/af78e882ed127ce463e60c5b4b69671526de4b4f036be7a93773682a0181378d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('085b5818-4b88-5948-9ba4-d6c1fb9b3530', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3892f1d9125884db786dfeae69a0d7ba7bc8b139cf654bf3dab4d941d229df5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('654beec5-f6ac-501c-939b-90221ea33eb1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('085b5818-4b88-5948-9ba4-d6c1fb9b3530', 1), 'f3892f1d9125884db786dfeae69a0d7ba7bc8b139cf654bf3dab4d941d229df5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/af78e882ed127ce463e60c5b4b69671526de4b4f036be7a93773682a0181378d.mp3', 3056, '2026-09-14 07:29:37.987376', '960b77d9660a74dd16b6221347fba776e187ac8dfd99b553bb5cf3350975e0b3', 'validated', '{"audio_key":"af78e882ed127ce463e60c5b4b69671526de4b4f036be7a93773682a0181378d","entity_key":"u_strategic_ambiguity_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"960b77d9660a74dd16b6221347fba776e187ac8dfd99b553bb5cf3350975e0b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/af78e882ed127ce463e60c5b4b69671526de4b4f036be7a93773682a0181378d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_02 -> audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('87757d4f-b41b-56e0-a5c5-f7173b8715ff', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ed838767b165134992d9984c440437d9d38ba1abee5b010f245f85ac97ded97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c621bcb-e908-5b35-9ca6-6804310e9593', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('87757d4f-b41b-56e0-a5c5-f7173b8715ff', 1), '5ed838767b165134992d9984c440437d9d38ba1abee5b010f245f85ac97ded97',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3', 3840, '2026-09-14 07:29:38.435155', '21d1dbbd79ecea3373eb6cf01f24e7fda32bbd14044b7400c653d462beafda78', 'validated', '{"audio_key":"af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c","entity_key":"u_counterfactual_reasoning_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"21d1dbbd79ecea3373eb6cf01f24e7fda32bbd14044b7400c653d462beafda78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_reasoning_01_listen -> audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2c8b5dbc-6ab7-5102-a099-1483227a2232', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_reasoning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ed838767b165134992d9984c440437d9d38ba1abee5b010f245f85ac97ded97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88228b4c-1edc-5bee-9dce-3dab384e7afc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2c8b5dbc-6ab7-5102-a099-1483227a2232', 1), '5ed838767b165134992d9984c440437d9d38ba1abee5b010f245f85ac97ded97',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3', 3840, '2026-09-14 07:29:38.435155', '21d1dbbd79ecea3373eb6cf01f24e7fda32bbd14044b7400c653d462beafda78', 'validated', '{"audio_key":"af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c","entity_key":"e_counterfactual_reasoning_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"21d1dbbd79ecea3373eb6cf01f24e7fda32bbd14044b7400c653d462beafda78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/af94f09eade621f1f7ef6c0e4456cd9bf9d051e24f66c9dede45ed40f3730d4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stylistic_editing_04 -> audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cedccbcd-7924-5a09-b146-dcbf00179832', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stylistic_editing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f244a559f5c74e09ad686a07523f8abf2a85410dbbc1ab0f0daff8427e35e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3928e327-4431-5e9f-8ac7-4c43bc2f5b0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cedccbcd-7924-5a09-b146-dcbf00179832', 1), '7f244a559f5c74e09ad686a07523f8abf2a85410dbbc1ab0f0daff8427e35e82',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3', 4075, '2026-09-14 07:29:39.291108', 'ee924f977ef0256f596b9dd484fa30b4de41696cf607aec9cc3776118840965c', 'validated', '{"audio_key":"b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205","entity_key":"u_stylistic_editing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee924f977ef0256f596b9dd484fa30b4de41696cf607aec9cc3776118840965c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stylistic_editing_02_listen -> audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e21ae7c2-3618-50fd-bfd6-b6b98517c3e7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stylistic_editing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f244a559f5c74e09ad686a07523f8abf2a85410dbbc1ab0f0daff8427e35e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b20056a4-5b56-5d99-9d75-8bcb5b6f6be0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e21ae7c2-3618-50fd-bfd6-b6b98517c3e7', 1), '7f244a559f5c74e09ad686a07523f8abf2a85410dbbc1ab0f0daff8427e35e82',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3', 4075, '2026-09-14 07:29:39.291108', 'ee924f977ef0256f596b9dd484fa30b4de41696cf607aec9cc3776118840965c', 'validated', '{"audio_key":"b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205","entity_key":"e_stylistic_editing_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee924f977ef0256f596b9dd484fa30b4de41696cf607aec9cc3776118840965c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b39e1a9bc1596de8cc8922200fedbf21f4e03b6fbcd2328473dc98aa8a4b5205.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inferential_precision_02 -> audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('559adbfc-ff58-5d0d-9542-d92cdd0f8783', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inferential_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a98e92af3d9cf1433a2a340fc5753f75601da7c33305d1134ef3412a3592ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63694b9f-a513-5028-af8d-488763c9eca4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('559adbfc-ff58-5d0d-9542-d92cdd0f8783', 1), '62a98e92af3d9cf1433a2a340fc5753f75601da7c33305d1134ef3412a3592ff',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3', 4414, '2026-09-14 07:29:39.745820', 'ca8731da52a627f7a58abadd0994ee14bad63b14253c58476c9c00b34997410f', 'validated', '{"audio_key":"b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967","entity_key":"u_inferential_precision_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca8731da52a627f7a58abadd0994ee14bad63b14253c58476c9c00b34997410f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_inferential_precision_01_listen -> audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0e4fd61e-fe69-5ffe-ba8e-46c01157a9dd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_inferential_precision_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a98e92af3d9cf1433a2a340fc5753f75601da7c33305d1134ef3412a3592ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d0154f8-77df-52ee-a0f9-3bc4ac08413d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0e4fd61e-fe69-5ffe-ba8e-46c01157a9dd', 1), '62a98e92af3d9cf1433a2a340fc5753f75601da7c33305d1134ef3412a3592ff',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3', 4414, '2026-09-14 07:29:39.745820', 'ca8731da52a627f7a58abadd0994ee14bad63b14253c58476c9c00b34997410f', 'validated', '{"audio_key":"b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967","entity_key":"e_inferential_precision_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca8731da52a627f7a58abadd0994ee14bad63b14253c58476c9c00b34997410f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b7903789bb4fb9926a0f43fd1b5bb2575653a5938ec476b1cf72eacf4f5d1967.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_debate_03 -> audio/generated/it-IT/utterances/bae19d85e0cdcb789a077461166db52112e72d0aaee72ccc6b8a9e40271c317d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7149cc83-da1e-5aec-8031-22046948cef3', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_debate_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '210ce8305f5c4a31162327d2a81ed8ff74ae804e719fe4405069dd0d7120327f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ca0718-c3be-5119-be22-cb82d945712e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7149cc83-da1e-5aec-8031-22046948cef3', 1), '210ce8305f5c4a31162327d2a81ed8ff74ae804e719fe4405069dd0d7120327f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bae19d85e0cdcb789a077461166db52112e72d0aaee72ccc6b8a9e40271c317d.mp3', 3343, '2026-09-14 07:29:40.534655', 'a6afb679c3be598054e9d79c6c7129f1c0aecaed0b9ed1421b752446ae2eba6e', 'validated', '{"audio_key":"bae19d85e0cdcb789a077461166db52112e72d0aaee72ccc6b8a9e40271c317d","entity_key":"u_high_stakes_debate_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a6afb679c3be598054e9d79c6c7129f1c0aecaed0b9ed1421b752446ae2eba6e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bae19d85e0cdcb789a077461166db52112e72d0aaee72ccc6b8a9e40271c317d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_intertextuality_03 -> audio/generated/it-IT/utterances/c3a729b26f25be42f9d3734455f610fe7658388695fa9e01a251512c381b4245.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6784a484-6316-5cad-84c7-5ae8ff6ef59c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d15597b6491e88be5cde02743b7241533ba81fa7a3f191c592e86182eb57a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72383274-5550-50b5-b481-c4ddc479cdb0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6784a484-6316-5cad-84c7-5ae8ff6ef59c', 1), 'e6d15597b6491e88be5cde02743b7241533ba81fa7a3f191c592e86182eb57a2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c3a729b26f25be42f9d3734455f610fe7658388695fa9e01a251512c381b4245.mp3', 2690, '2026-09-14 07:29:40.826823', '68321e722a95d822d8470301800493630ded1e46e4136d833bdb46a7e904ae1b', 'validated', '{"audio_key":"c3a729b26f25be42f9d3734455f610fe7658388695fa9e01a251512c381b4245","entity_key":"u_cultural_intertextuality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"68321e722a95d822d8470301800493630ded1e46e4136d833bdb46a7e904ae1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c3a729b26f25be42f9d3734455f610fe7658388695fa9e01a251512c381b4245.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_critique_03 -> audio/generated/it-IT/utterances/c4f0cc3dc35b8ec61f451891ce3ae2c76eb77b2ac4adf8c0e53f5c548c5ca5a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e051943d-d6f3-5a2c-87e2-567e7ae5b4cf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '288c933ad5da9ea15f43079918f76aeee886591bdf980194a74be7b6ca4fac20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f20f9d8-ecaa-5e88-a749-23382dab1fa9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e051943d-d6f3-5a2c-87e2-567e7ae5b4cf', 1), '288c933ad5da9ea15f43079918f76aeee886591bdf980194a74be7b6ca4fac20',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c4f0cc3dc35b8ec61f451891ce3ae2c76eb77b2ac4adf8c0e53f5c548c5ca5a7.mp3', 3892, '2026-09-14 07:29:41.828334', '593c1b049aa40dba7c7713b9eff029eb526e1549e4ff98848e66805a4992a610', 'validated', '{"audio_key":"c4f0cc3dc35b8ec61f451891ce3ae2c76eb77b2ac4adf8c0e53f5c548c5ca5a7","entity_key":"u_academic_critique_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"593c1b049aa40dba7c7713b9eff029eb526e1549e4ff98848e66805a4992a610","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c4f0cc3dc35b8ec61f451891ce3ae2c76eb77b2ac4adf8c0e53f5c548c5ca5a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stylistic_editing_02 -> audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('287d16aa-40e4-58cd-bb07-25ba99c016b4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stylistic_editing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43dfb89ddf38d77ca32a26aab2f3f3bb422707465feb8a300cb1458eb5491512'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb7ea361-4475-5ace-a164-68eae49d5175', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('287d16aa-40e4-58cd-bb07-25ba99c016b4', 1), '43dfb89ddf38d77ca32a26aab2f3f3bb422707465feb8a300cb1458eb5491512',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3', 4310, '2026-09-14 07:29:42.105093', 'f077df2ea36721cf714019b1646daa08a594b86151b1830fc27dcb12953495c9', 'validated', '{"audio_key":"cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada","entity_key":"u_stylistic_editing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f077df2ea36721cf714019b1646daa08a594b86151b1830fc27dcb12953495c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stylistic_editing_01_listen -> audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c9c40b08-2f31-5559-a0f3-efb270cb4db6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stylistic_editing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43dfb89ddf38d77ca32a26aab2f3f3bb422707465feb8a300cb1458eb5491512'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('572636e0-d817-5473-a2ba-33134fb0e8cf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c9c40b08-2f31-5559-a0f3-efb270cb4db6', 1), '43dfb89ddf38d77ca32a26aab2f3f3bb422707465feb8a300cb1458eb5491512',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3', 4310, '2026-09-14 07:29:42.105093', 'f077df2ea36721cf714019b1646daa08a594b86151b1830fc27dcb12953495c9', 'validated', '{"audio_key":"cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada","entity_key":"e_stylistic_editing_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f077df2ea36721cf714019b1646daa08a594b86151b1830fc27dcb12953495c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cf97460267552e68f61672a0a1bcc503d9e8087db677a9a9067cadac49435ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_intertextuality_01 -> audio/generated/it-IT/utterances/d2148d881f145bfa3fb27e4b6269a786335f3fa9189f643706b4817127670c7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('954b4ed2-99f1-5c01-ab0c-21f6389a7a07', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a983c131d09ad1f443ecd6f4a91b656a08817dcc67d59b91efa2d921beae7dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('260d1b9c-aaf9-5556-8565-5c370b3394af', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('954b4ed2-99f1-5c01-ab0c-21f6389a7a07', 1), 'a983c131d09ad1f443ecd6f4a91b656a08817dcc67d59b91efa2d921beae7dce',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d2148d881f145bfa3fb27e4b6269a786335f3fa9189f643706b4817127670c7b.mp3', 3343, '2026-09-14 07:29:43.009033', 'd5ed0dd59cdcb9ee20568aaf8b4fd001b23b7c4e6975ac0dc12b0c0fefa58671', 'validated', '{"audio_key":"d2148d881f145bfa3fb27e4b6269a786335f3fa9189f643706b4817127670c7b","entity_key":"u_cultural_intertextuality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d5ed0dd59cdcb9ee20568aaf8b4fd001b23b7c4e6975ac0dc12b0c0fefa58671","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d2148d881f145bfa3fb27e4b6269a786335f3fa9189f643706b4817127670c7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_and_understatement_01 -> audio/generated/it-IT/utterances/daab966e0dae2b59f20ca76429572f57d61a63195a39c49bd110c2b3359b57c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b6e7d7d-57b0-51a6-b925-c6d587053b0a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_and_understatement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70492fc9703dc417b5f511bd982d8637220c7480d38238b92bc6e679813bfdd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('918b908f-930e-5ba7-8bc8-f72694d6d1ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b6e7d7d-57b0-51a6-b925-c6d587053b0a', 1), '70492fc9703dc417b5f511bd982d8637220c7480d38238b92bc6e679813bfdd4',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/daab966e0dae2b59f20ca76429572f57d61a63195a39c49bd110c2b3359b57c7.mp3', 3239, '2026-09-14 07:29:43.300270', '57c6b02b510ab32d6d6b5e3cdc7c350087f55e843b99802e7d3c5afd6260bf04', 'validated', '{"audio_key":"daab966e0dae2b59f20ca76429572f57d61a63195a39c49bd110c2b3359b57c7","entity_key":"u_irony_and_understatement_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57c6b02b510ab32d6d6b5e3cdc7c350087f55e843b99802e7d3c5afd6260bf04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/daab966e0dae2b59f20ca76429572f57d61a63195a39c49bd110c2b3359b57c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stylistic_editing_03 -> audio/generated/it-IT/utterances/de3102932c7b91181586532f8fc8bda4c1979f246915e3b45e580b47e1bf78cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f63be4a-7959-5317-9137-b5eb58efc3cd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stylistic_editing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88c09a281cdbccdb0ec4a59da2724925957253e07122443fbc662d631b0bd902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d27c1a55-6a48-5629-b4a4-5d6b23fd7ca8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f63be4a-7959-5317-9137-b5eb58efc3cd', 1), '88c09a281cdbccdb0ec4a59da2724925957253e07122443fbc662d631b0bd902',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/de3102932c7b91181586532f8fc8bda4c1979f246915e3b45e580b47e1bf78cf.mp3', 2533, '2026-09-14 07:29:44.119540', '772101af29d1688052f6e0711c1e88b23081ad6740e756edc28668a4591b636d', 'validated', '{"audio_key":"de3102932c7b91181586532f8fc8bda4c1979f246915e3b45e580b47e1bf78cf","entity_key":"u_stylistic_editing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"772101af29d1688052f6e0711c1e88b23081ad6740e756edc28668a4591b636d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/de3102932c7b91181586532f8fc8bda4c1979f246915e3b45e580b47e1bf78cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_debate_02 -> audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('871ce4a7-b873-500c-b18b-641f31ffe2e9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_debate_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8996337e0499e443a30886d27f3df62249adf3803b6f53251c091dfb4022956f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6955dc04-bfc9-5844-9dfd-b4e087408243', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('871ce4a7-b873-500c-b18b-641f31ffe2e9', 1), '8996337e0499e443a30886d27f3df62249adf3803b6f53251c091dfb4022956f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3', 4832, '2026-09-14 07:29:44.704979', 'e6f5f3c3710ed9b2f0a27c14901087cdda003447600b74b5ec771eb3a3ad7cad', 'validated', '{"audio_key":"e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155","entity_key":"u_high_stakes_debate_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e6f5f3c3710ed9b2f0a27c14901087cdda003447600b74b5ec771eb3a3ad7cad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_high_stakes_debate_01_listen -> audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('78932d62-bd6c-5fbe-9f85-dff89e62547e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_high_stakes_debate_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8996337e0499e443a30886d27f3df62249adf3803b6f53251c091dfb4022956f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fede656a-96b3-5b90-a5f2-326eff4d62f5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('78932d62-bd6c-5fbe-9f85-dff89e62547e', 1), '8996337e0499e443a30886d27f3df62249adf3803b6f53251c091dfb4022956f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3', 4832, '2026-09-14 07:29:44.704979', 'e6f5f3c3710ed9b2f0a27c14901087cdda003447600b74b5ec771eb3a3ad7cad', 'validated', '{"audio_key":"e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155","entity_key":"e_high_stakes_debate_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e6f5f3c3710ed9b2f0a27c14901087cdda003447600b74b5ec771eb3a3ad7cad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e20e5e29bde00567f0898c8a253b8cd718ecc3635d64ba96e4eab7b76b218155.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_intertextuality_02 -> audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1aabbb20-db62-594e-8a08-68ff4ac02ac5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c02cc11954644c3aba2b19691351a0d62ceefd06e742e58af99c19bd2b733598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6a22d0f-d87d-50b7-8a67-fb4a9834ea62', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1aabbb20-db62-594e-8a08-68ff4ac02ac5', 1), 'c02cc11954644c3aba2b19691351a0d62ceefd06e742e58af99c19bd2b733598',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3', 4205, '2026-09-14 07:29:45.415530', 'd79a9f93114ba98aa5e353ec12c45373d2f02546127c21a75b9cd68019cee2fd', 'validated', '{"audio_key":"f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085","entity_key":"u_cultural_intertextuality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d79a9f93114ba98aa5e353ec12c45373d2f02546127c21a75b9cd68019cee2fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cultural_intertextuality_01_listen -> audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('80c79d2b-dadf-5eac-b947-87753c92f63d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cultural_intertextuality_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c02cc11954644c3aba2b19691351a0d62ceefd06e742e58af99c19bd2b733598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2d89883-11f9-5869-a604-99da675b7aaa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('80c79d2b-dadf-5eac-b947-87753c92f63d', 1), 'c02cc11954644c3aba2b19691351a0d62ceefd06e742e58af99c19bd2b733598',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3', 4205, '2026-09-14 07:29:45.415530', 'd79a9f93114ba98aa5e353ec12c45373d2f02546127c21a75b9cd68019cee2fd', 'validated', '{"audio_key":"f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085","entity_key":"e_cultural_intertextuality_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d79a9f93114ba98aa5e353ec12c45373d2f02546127c21a75b9cd68019cee2fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f2896e032c4d6b208709c2f6b8afdf10a535b06312f74d63d18424ba90315085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inferential_precision_01 -> audio/generated/it-IT/utterances/f7011df6c96b9817b64fd8c8b6765a32c86acd76e874ce2e5fc5745893a12786.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('57058a18-6bb9-5432-9e0e-1006edf5e3bd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inferential_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc357e35c259774c157e7ea56fcb77d09b9b7f98bae1b9d5491d7e15110a8faa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b319c78-822d-5278-80b0-1e1e93bd0e72', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('57058a18-6bb9-5432-9e0e-1006edf5e3bd', 1), 'cc357e35c259774c157e7ea56fcb77d09b9b7f98bae1b9d5491d7e15110a8faa',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f7011df6c96b9817b64fd8c8b6765a32c86acd76e874ce2e5fc5745893a12786.mp3', 4623, '2026-09-14 07:29:46.098590', '6e0e07f149d79650922687aae28430faa52d57ba9291e33a2e58c57cb615d861', 'validated', '{"audio_key":"f7011df6c96b9817b64fd8c8b6765a32c86acd76e874ce2e5fc5745893a12786","entity_key":"u_inferential_precision_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6e0e07f149d79650922687aae28430faa52d57ba9291e33a2e58c57cb615d861","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f7011df6c96b9817b64fd8c8b6765a32c86acd76e874ce2e5fc5745893a12786.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_public_panel_capstone_04 -> audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49010f5b-ba66-5b92-aa62-88f191729170', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_public_panel_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71fb7a3b16910bb2abda18055ee6e0949c52744e74998ce39f37f89de959c92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57167e43-19a1-5540-a467-a526f16477e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49010f5b-ba66-5b92-aa62-88f191729170', 1), 'b71fb7a3b16910bb2abda18055ee6e0949c52744e74998ce39f37f89de959c92',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3', 3578, '2026-09-14 07:29:46.663310', 'eb783faa3d5ae581a42b03a0ca6fa2db4bea669a0a72eee2bc8cd47977faad34', 'validated', '{"audio_key":"f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85","entity_key":"u_c2_public_panel_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb783faa3d5ae581a42b03a0ca6fa2db4bea669a0a72eee2bc8cd47977faad34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_public_panel_capstone_02_listen -> audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c552df3-2c85-5be9-accd-0b926a195ed9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_public_panel_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71fb7a3b16910bb2abda18055ee6e0949c52744e74998ce39f37f89de959c92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25c2d493-4c2c-59fa-8e86-9ac01e1caa28', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c552df3-2c85-5be9-accd-0b926a195ed9', 1), 'b71fb7a3b16910bb2abda18055ee6e0949c52744e74998ce39f37f89de959c92',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3', 3578, '2026-09-14 07:29:46.663310', 'eb783faa3d5ae581a42b03a0ca6fa2db4bea669a0a72eee2bc8cd47977faad34', 'validated', '{"audio_key":"f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85","entity_key":"e_c2_public_panel_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb783faa3d5ae581a42b03a0ca6fa2db4bea669a0a72eee2bc8cd47977faad34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f739deccfbad9aa0c777b95107cb155489e4f24d13e8e723c60b1b5656653d85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_debate_01 -> audio/generated/it-IT/utterances/f785cd0b92bd846582f45b581afcae1e8caccacee57b01a4adca68deebe4e645.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5fac7033-a956-5833-86b4-a76fe4438cef', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_debate_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4f12d21b5344545c32fc55c55bc01d9ee42f1c45f408e3c8664580aa2f1d822'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da072f78-c709-5200-915a-606b1071afde', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5fac7033-a956-5833-86b4-a76fe4438cef', 1), 'b4f12d21b5344545c32fc55c55bc01d9ee42f1c45f408e3c8664580aa2f1d822',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f785cd0b92bd846582f45b581afcae1e8caccacee57b01a4adca68deebe4e645.mp3', 3186, '2026-09-14 07:29:47.322170', '3c4f10df8625bf26dcde414c803070e0f0f20c6193f2a8b18bfbf8c467a8b497', 'validated', '{"audio_key":"f785cd0b92bd846582f45b581afcae1e8caccacee57b01a4adca68deebe4e645","entity_key":"u_high_stakes_debate_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3c4f10df8625bf26dcde414c803070e0f0f20c6193f2a8b18bfbf8c467a8b497","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f785cd0b92bd846582f45b581afcae1e8caccacee57b01a4adca68deebe4e645.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_01 -> audio/generated/it-IT/utterances/f971f9d16db62ab2d95c1df871ccb3e1517440a46028b6a8e8b3a479c3012164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ff9ba9f2-0ec8-5083-b935-ae813574d53f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67e0fc9814c67a57ee05881609cfe99eec42484540170d6269e12161cc7a46ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5b02d03-eb26-5522-8d87-646760b79b69', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ff9ba9f2-0ec8-5083-b935-ae813574d53f', 1), '67e0fc9814c67a57ee05881609cfe99eec42484540170d6269e12161cc7a46ed',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f971f9d16db62ab2d95c1df871ccb3e1517440a46028b6a8e8b3a479c3012164.mp3', 3657, '2026-09-14 07:29:47.867862', '41820fc5ea1395f1c74c3d7939d580fa4442264ae45b1ea74d1924ce96b17c94', 'validated', '{"audio_key":"f971f9d16db62ab2d95c1df871ccb3e1517440a46028b6a8e8b3a479c3012164","entity_key":"u_strategic_ambiguity_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41820fc5ea1395f1c74c3d7939d580fa4442264ae45b1ea74d1924ce96b17c94","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f971f9d16db62ab2d95c1df871ccb3e1517440a46028b6a8e8b3a479c3012164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inferential_precision_04 -> audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc6c5c11-27fa-581b-92c3-11b77b79c35a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inferential_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb908c9c57f9dceeee0386ecb521cbca20bb30722d275e5d0791e0598557db4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8017819b-1287-5017-a6d0-00936142e1bd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc6c5c11-27fa-581b-92c3-11b77b79c35a', 1), 'fb908c9c57f9dceeee0386ecb521cbca20bb30722d275e5d0791e0598557db4a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3', 3996, '2026-09-14 07:29:48.620974', '92ea600071182a7d5cb60b0584e4e489c02d92e3b87dda1fb1eeff82ba2fa27e', 'validated', '{"audio_key":"fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8","entity_key":"u_inferential_precision_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"92ea600071182a7d5cb60b0584e4e489c02d92e3b87dda1fb1eeff82ba2fa27e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_inferential_precision_02_listen -> audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ec1e2c31-3ae2-5d74-a7a7-37ca3bf17bf0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_inferential_precision_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb908c9c57f9dceeee0386ecb521cbca20bb30722d275e5d0791e0598557db4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('105ae65d-c59b-509f-8861-6a33374a31cb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ec1e2c31-3ae2-5d74-a7a7-37ca3bf17bf0', 1), 'fb908c9c57f9dceeee0386ecb521cbca20bb30722d275e5d0791e0598557db4a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3', 3996, '2026-09-14 07:29:48.620974', '92ea600071182a7d5cb60b0584e4e489c02d92e3b87dda1fb1eeff82ba2fa27e', 'validated', '{"audio_key":"fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8","entity_key":"e_inferential_precision_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"92ea600071182a7d5cb60b0584e4e489c02d92e3b87dda1fb1eeff82ba2fa27e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fc044cedcbdc490fd0eca69cd1a8b649fd1f0fa75c1754aa7d1372cdd952c0e8.mp3"}'
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

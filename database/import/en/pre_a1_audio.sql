-- Generated audio link import for en-US Pre-A1
-- Source manifest: audio/manifests/en/Pre-A1.json
-- Generated rows: 267
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'en' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'en-US' LIMIT 1);
START TRANSACTION;

-- d_pre_capstone_meeting:7 -> audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('419095c3-d364-538a-9480-763a925640e2', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:7')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fef58b96-66ff-567a-a7e5-d2e5231f968d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('419095c3-d364-538a-9480-763a925640e2', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3', 914, '2026-09-14 13:10:16.162954', '5b1fadeb439da388faec58331ff9f134e2d19ecc2d0e711109eea164be8a0561', 'validated', '{"audio_key":"013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2","entity_key":"d_pre_capstone_meeting:7","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"5b1fadeb439da388faec58331ff9f134e2d19ecc2d0e711109eea164be8a0561","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_02:4 -> audio/generated/en-US/dialogues/07e390e289f5bac66987cf5526f32e98ad12ddce1ed30a5b07aee6dc0632a0f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f53ec70-14f7-52de-8560-3ce5443770df', 1)
  AND voice_key = 'character:kai:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7858569-a218-58fd-b355-da3487050cfd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f53ec70-14f7-52de-8560-3ce5443770df', 1), 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/07e390e289f5bac66987cf5526f32e98ad12ddce1ed30a5b07aee6dc0632a0f7.mp3', 1201, '2026-09-14 13:10:17.201317', 'db89f6824e482c76ad16d668515684d7d0f6fe5c3baa85cfd8c202de5af57151', 'validated', '{"audio_key":"07e390e289f5bac66987cf5526f32e98ad12ddce1ed30a5b07aee6dc0632a0f7","entity_key":"d_pre_learning_help_02:4","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"db89f6824e482c76ad16d668515684d7d0f6fe5c3baa85cfd8c202de5af57151","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/07e390e289f5bac66987cf5526f32e98ad12ddce1ed30a5b07aee6dc0632a0f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:2 -> audio/generated/en-US/dialogues/0ef3968f236349ff195ac14d2f3134931dc58f54fb114f9c83f90cc07dffed54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b09ebe2-7158-5718-899d-bdc3f37afd07', 1)
  AND voice_key = 'character:chris:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662d09b13a6716665a000bd5656714f552776d7bd5ccdc533e14c4798fb2c5cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc8c6039-fa31-59b0-9395-63831a9b68d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b09ebe2-7158-5718-899d-bdc3f37afd07', 1), '662d09b13a6716665a000bd5656714f552776d7bd5ccdc533e14c4798fb2c5cd',
  'character:chris:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/0ef3968f236349ff195ac14d2f3134931dc58f54fb114f9c83f90cc07dffed54.mp3', 1201, '2026-09-14 13:10:18.229832', '8191c9da1afe8dea2b66a20256e621eea66afd97b6d806ea3c9f4894aa6196c5', 'validated', '{"audio_key":"0ef3968f236349ff195ac14d2f3134931dc58f54fb114f9c83f90cc07dffed54","entity_key":"d_en_en-real-world-gate_meet:2","voice_id":"s3TPKV1kjDlVtZbl4Ksh","voice_name":"Adam - Engaging, Friendly and Bright","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8191c9da1afe8dea2b66a20256e621eea66afd97b6d806ea3c9f4894aa6196c5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/0ef3968f236349ff195ac14d2f3134931dc58f54fb114f9c83f90cc07dffed54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:5 -> audio/generated/en-US/dialogues/11eab21ff51c8db9dd98960a1dc664f9d160a3f698ee13f6b8e67eb3a3cde606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ecf5aad-bced-5f03-aa30-1a5e658831fa', 1)
  AND voice_key = 'character:maya:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b181de483e0da61391cd385f16383f953401fdfee8ca2c46297bd812f3e0b5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efad2918-c388-5f21-8e3b-1b2de45d3fa1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ecf5aad-bced-5f03-aa30-1a5e658831fa', 1), '9b181de483e0da61391cd385f16383f953401fdfee8ca2c46297bd812f3e0b5d',
  'character:maya:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/11eab21ff51c8db9dd98960a1dc664f9d160a3f698ee13f6b8e67eb3a3cde606.mp3', 1097, '2026-09-14 13:10:19.418075', '49adfdb8d7a02a47622fec29cdf29cc3c404d409df031d9cee3a7ab2b778f7d6', 'validated', '{"audio_key":"11eab21ff51c8db9dd98960a1dc664f9d160a3f698ee13f6b8e67eb3a3cde606","entity_key":"d_en_en-about-me_origin_age:5","voice_id":"gJx1vCzNCD1EQHT212Ls","voice_name":"Ava – Eager, Helpful and Understanding","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"49adfdb8d7a02a47622fec29cdf29cc3c404d409df031d9cee3a7ab2b778f7d6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/11eab21ff51c8db9dd98960a1dc664f9d160a3f698ee13f6b8e67eb3a3cde606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_02:1 -> audio/generated/en-US/dialogues/1857c381270f958ecf0fc78280249c3bd51dce65ed0d1a50fda29ceecd70fcfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3682219e-a8d2-5d6d-8e90-d5363cd4ffaa', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2249eb5ad3c07c3446f391f7b9163a6d88416eaca6723d37eb6ee5c2beeb21d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('765e7437-3212-579e-8f35-a14460661f10', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3682219e-a8d2-5d6d-8e90-d5363cd4ffaa', 1), '2249eb5ad3c07c3446f391f7b9163a6d88416eaca6723d37eb6ee5c2beeb21d7',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1857c381270f958ecf0fc78280249c3bd51dce65ed0d1a50fda29ceecd70fcfc.mp3', 1201, '2026-09-14 13:10:20.456182', '473428bd3b93bed192202e75ebe2a32c29921a72df28ec743c1a94c6cfdfe75f', 'validated', '{"audio_key":"1857c381270f958ecf0fc78280249c3bd51dce65ed0d1a50fda29ceecd70fcfc","entity_key":"d_pre_learning_help_02:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"473428bd3b93bed192202e75ebe2a32c29921a72df28ec743c1a94c6cfdfe75f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1857c381270f958ecf0fc78280249c3bd51dce65ed0d1a50fda29ceecd70fcfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:3 -> audio/generated/en-US/dialogues/19093c38c113d3c880c9038aa71b0e3f619d1e22e9704debf4f65400be46939b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a596b34b-a1d6-5145-929f-e8e59e385b37', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f47d1c7-8fef-5344-8517-485010cfb0a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a596b34b-a1d6-5145-929f-e8e59e385b37', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/19093c38c113d3c880c9038aa71b0e3f619d1e22e9704debf4f65400be46939b.mp3', 914, '2026-09-14 13:10:21.524144', '59c6963407329d536a2dc9d10c7b05d43b89121f85727c863ca99aa1179936c2', 'validated', '{"audio_key":"19093c38c113d3c880c9038aa71b0e3f619d1e22e9704debf4f65400be46939b","entity_key":"d_pre_ready_intro:3","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"59c6963407329d536a2dc9d10c7b05d43b89121f85727c863ca99aa1179936c2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/19093c38c113d3c880c9038aa71b0e3f619d1e22e9704debf4f65400be46939b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_sign:1 -> audio/generated/en-US/dialogues/196154eaa301587307d5a0af6bb3f92b0a9093701fb1e4dc27a48505ae656345.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8cba5481-5a98-50e6-a459-379d1a6b6a68', 1)
  AND voice_key = 'character:ella:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_sign:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdab72ce-7446-5553-ac1e-b9c3077b87ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8cba5481-5a98-50e6-a459-379d1a6b6a68', 1), 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee',
  'character:ella:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/196154eaa301587307d5a0af6bb3f92b0a9093701fb1e4dc27a48505ae656345.mp3', 1280, '2026-09-14 13:10:22.567930', '97ed7ec37baa518ad6a53c18f907969b7f308659bc0af8a737733113868aefe4', 'validated', '{"audio_key":"196154eaa301587307d5a0af6bb3f92b0a9093701fb1e4dc27a48505ae656345","entity_key":"d_en_en-forms-signs_sign:1","voice_id":"qBDvhofpxp92JgXJxDjB","voice_name":"Lily Wolff - Expressive and Kind","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"97ed7ec37baa518ad6a53c18f907969b7f308659bc0af8a737733113868aefe4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/196154eaa301587307d5a0af6bb3f92b0a9093701fb1e4dc27a48505ae656345.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_01:2 -> audio/generated/en-US/dialogues/1ac7491bf4a40d66d12579c3d0d5a356b3aa4fcdcf9d02ac31f6eb652dec3fea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15684b77-2e44-5275-8d58-6e91e16a8ee0', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc1f3caaae311578b519050997eb30970dec2780a9e46426a0a4b2c1d4b50720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe645172-4ec1-5978-8d84-0917b2de996e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15684b77-2e44-5275-8d58-6e91e16a8ee0', 1), 'bc1f3caaae311578b519050997eb30970dec2780a9e46426a0a4b2c1d4b50720',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1ac7491bf4a40d66d12579c3d0d5a356b3aa4fcdcf9d02ac31f6eb652dec3fea.mp3', 1567, '2026-09-14 13:10:23.643894', '734919f09e77f962be83f7170c8d651b0280fd88bc9ac677afe55812b96a2fe7', 'validated', '{"audio_key":"1ac7491bf4a40d66d12579c3d0d5a356b3aa4fcdcf9d02ac31f6eb652dec3fea","entity_key":"d_pre_learning_help_01:2","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"734919f09e77f962be83f7170c8d651b0280fd88bc9ac677afe55812b96a2fe7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1ac7491bf4a40d66d12579c3d0d5a356b3aa4fcdcf9d02ac31f6eb652dec3fea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:2 -> audio/generated/en-US/dialogues/1b0677275249dd423fd16d8c251d44aca491fc9da0404a36194804ac504e59cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc97e633-80a7-5042-ab8e-2a83640fd38d', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db3995c4-9f5e-5e63-ba61-c04c422def9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc97e633-80a7-5042-ab8e-2a83640fd38d', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1b0677275249dd423fd16d8c251d44aca491fc9da0404a36194804ac504e59cb.mp3', 835, '2026-09-14 13:10:24.624087', '70249545f75eb8a156a6c1787d5620b6b9f29c8ec17d55097d633f324d2491ac', 'validated', '{"audio_key":"1b0677275249dd423fd16d8c251d44aca491fc9da0404a36194804ac504e59cb","entity_key":"d_en_en-about-me_origin_age:2","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70249545f75eb8a156a6c1787d5620b6b9f29c8ec17d55097d633f324d2491ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1b0677275249dd423fd16d8c251d44aca491fc9da0404a36194804ac504e59cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_form:2 -> audio/generated/en-US/dialogues/1e037ee99d378c7251216c021487086cb8cd5b3bccc477c7060ec6dc62739d90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5110e3c-b3fe-5113-b120-1af022672c27', 1)
  AND voice_key = 'character:alex:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_form:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662d09b13a6716665a000bd5656714f552776d7bd5ccdc533e14c4798fb2c5cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82d5f7fa-0ca9-579b-a36c-6b36d72d43fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5110e3c-b3fe-5113-b120-1af022672c27', 1), '662d09b13a6716665a000bd5656714f552776d7bd5ccdc533e14c4798fb2c5cd',
  'character:alex:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1e037ee99d378c7251216c021487086cb8cd5b3bccc477c7060ec6dc62739d90.mp3', 1253, '2026-09-14 13:10:25.658506', 'd4af0aee6a2b3d6fea0ddef8c2d6c2c9168254b7660310ea13d8640f8101c743', 'validated', '{"audio_key":"1e037ee99d378c7251216c021487086cb8cd5b3bccc477c7060ec6dc62739d90","entity_key":"d_en_en-forms-signs_form:2","voice_id":"gPPH6SLdL8XSX6GNJ40G","voice_name":"Brian - Relatable Everyman","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4af0aee6a2b3d6fea0ddef8c2d6c2c9168254b7660310ea13d8640f8101c743","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1e037ee99d378c7251216c021487086cb8cd5b3bccc477c7060ec6dc62739d90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:1 -> audio/generated/en-US/dialogues/1f4d6832428a185a6caab54d66702d709ae5f40dce1f928ff614b7f9738cebb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('78253102-c727-5c40-a5f7-e0df617b87fd', 1)
  AND voice_key = 'character:ava:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8b79cd4-acfc-5e6f-b5f6-220461253c17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('78253102-c727-5c40-a5f7-e0df617b87fd', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:ava:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1f4d6832428a185a6caab54d66702d709ae5f40dce1f928ff614b7f9738cebb0.mp3', 1201, '2026-09-14 13:10:26.657794', 'ce28a8fc7dbe0681483658a1a4cd735bf180bd5a71fb787560a82e87bef9190c', 'validated', '{"audio_key":"1f4d6832428a185a6caab54d66702d709ae5f40dce1f928ff614b7f9738cebb0","entity_key":"d_en_en-real-world-gate_meet:1","voice_id":"BBz8H3kffyIUs3SYExlh","voice_name":"Sabine - Fun and Dynamic Narrator","voice_labels":{"accent":"american","language":"en","descriptive":"confident","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"ce28a8fc7dbe0681483658a1a4cd735bf180bd5a71fb787560a82e87bef9190c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1f4d6832428a185a6caab54d66702d709ae5f40dce1f928ff614b7f9738cebb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:6 -> audio/generated/en-US/dialogues/1f5bfab013ae47ea289b6e15c9306eb46f8bbbbdb42f28bcc40f5edec5ed93b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93f1da11-1d19-5d64-ac1d-d0843fff6b6a', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f6b08bd-5de3-5427-8bf5-548cf97cdb62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93f1da11-1d19-5d64-ac1d-d0843fff6b6a', 1), '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/1f5bfab013ae47ea289b6e15c9306eb46f8bbbbdb42f28bcc40f5edec5ed93b0.mp3', 966, '2026-09-14 13:10:27.688055', '76b44a7e0a59da2b3af7cb7d241047c3f86b20e866de88ff1aca3619fc8dd906', 'validated', '{"audio_key":"1f5bfab013ae47ea289b6e15c9306eb46f8bbbbdb42f28bcc40f5edec5ed93b0","entity_key":"d_en_en-about-me_origin_age:6","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76b44a7e0a59da2b3af7cb7d241047c3f86b20e866de88ff1aca3619fc8dd906","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/1f5bfab013ae47ea289b6e15c9306eb46f8bbbbdb42f28bcc40f5edec5ed93b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:3 -> audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db6462d3-c342-562e-b11e-06c74f4bec83', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_water_offer:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e25cc8c6bc71f7ea45a4d02973326d901a43b14491a7458d3bac6fe8b5a1086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeb19c1f-8850-5aba-bea6-b8c29ac2cdb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db6462d3-c342-562e-b11e-06c74f4bec83', 1), '2e25cc8c6bc71f7ea45a4d02973326d901a43b14491a7458d3bac6fe8b5a1086',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3', 653, '2026-09-14 13:10:28.597778', '64cd80903c60d0aa18e77fb4ca198f5b5cb3fbd6a5667590f774ba8e6b1ddc13', 'validated', '{"audio_key":"211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419","entity_key":"d_pre_water_offer:3","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"64cd80903c60d0aa18e77fb4ca198f5b5cb3fbd6a5667590f774ba8e6b1ddc13","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:5 -> audio/generated/en-US/dialogues/2193519fcb3e6791f1d57b4bd2c8e0a316c40368fea5282178ab223458284ecd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7c5acad-def4-5989-a133-8d2e7c8ba068', 1)
  AND voice_key = 'character:ava:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df287dfc1406ed2b692e1c2c783bb5cec97eac53151ee1d9810397aa0afa0d89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('776390a2-b72c-5147-a136-d45187697460', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7c5acad-def4-5989-a133-8d2e7c8ba068', 1), 'df287dfc1406ed2b692e1c2c783bb5cec97eac53151ee1d9810397aa0afa0d89',
  'character:ava:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2193519fcb3e6791f1d57b4bd2c8e0a316c40368fea5282178ab223458284ecd.mp3', 1097, '2026-09-14 13:10:29.534087', 'db76824e6cf60adb351fbc957c686afc259d0e38cf91f1af27924e45a18a3876', 'validated', '{"audio_key":"2193519fcb3e6791f1d57b4bd2c8e0a316c40368fea5282178ab223458284ecd","entity_key":"d_en_en-real-world-gate_meet:5","voice_id":"BBz8H3kffyIUs3SYExlh","voice_name":"Sabine - Fun and Dynamic Narrator","voice_labels":{"accent":"american","language":"en","descriptive":"confident","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"db76824e6cf60adb351fbc957c686afc259d0e38cf91f1af27924e45a18a3876","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/2193519fcb3e6791f1d57b4bd2c8e0a316c40368fea5282178ab223458284ecd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:3 -> audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d207f19-bc4d-540a-b169-8a1a2ad25a18', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('791ebcac-b75b-5148-a9ee-ee59265774cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d207f19-bc4d-540a-b169-8a1a2ad25a18', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3', 1071, '2026-09-14 13:10:30.542962', 'f56bc84cdc7beceb2b195d362e1d47992960f1754972c6bb6ac90741ac8d090e', 'validated', '{"audio_key":"25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349","entity_key":"d_pre_capstone_meeting:3","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"f56bc84cdc7beceb2b195d362e1d47992960f1754972c6bb6ac90741ac8d090e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_price_day:3 -> audio/generated/en-US/dialogues/260f714e014d95621ff828345fdddec53fd4a2b54a1b8a6f3c0d6582383e5d29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6a9ef87-b20e-5e19-abc7-67e4d89aaddc', 1)
  AND voice_key = 'character:aisha:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_price_day:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a00dfc1dc867e8454c2c8856e1512d9bf02a76710e3411c0972aec886c76c61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bfe5e44-429d-57fe-94e7-581deb9947e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6a9ef87-b20e-5e19-abc7-67e4d89aaddc', 1), '6a00dfc1dc867e8454c2c8856e1512d9bf02a76710e3411c0972aec886c76c61',
  'character:aisha:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/260f714e014d95621ff828345fdddec53fd4a2b54a1b8a6f3c0d6582383e5d29.mp3', 914, '2026-09-14 13:10:31.512797', '57a26cb8039ed7b0aea2077cc9817894819ee79ad8834a0ed71fad3b91e7adc3', 'validated', '{"audio_key":"260f714e014d95621ff828345fdddec53fd4a2b54a1b8a6f3c0d6582383e5d29","entity_key":"d_en_en-real-life-numbers_price_day:3","voice_id":"XJ2fW4ybq7HouelYYGcL","voice_name":"Cherry Twinkle - Bubbly and Sweet","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"57a26cb8039ed7b0aea2077cc9817894819ee79ad8834a0ed71fad3b91e7adc3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/260f714e014d95621ff828345fdddec53fd4a2b54a1b8a6f3c0d6582383e5d29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_phone:2 -> audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ddaab67-5c7a-5ced-9b37-3dc2e266dab8', 1)
  AND voice_key = 'character:kai:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_phone:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6314a01e-c699-561c-bc97-36ac70e4da5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ddaab67-5c7a-5ced-9b37-3dc2e266dab8', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3', 4545, '2026-09-14 13:10:32.841335', '4bb7f8e8e3d8441154fa1f124cccdded075aca55ed73b38041381772efcb0468', 'validated', '{"audio_key":"2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8","entity_key":"d_en_en-real-life-numbers_phone:2","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4bb7f8e8e3d8441154fa1f124cccdded075aca55ed73b38041381772efcb0468","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_phone:4 -> audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b4488d1-b9f0-5499-8ebf-abf9ddfb7c64', 1)
  AND voice_key = 'character:kai:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_phone:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfc23551-c622-58b4-be92-d3e7a5c9ded1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b4488d1-b9f0-5499-8ebf-abf9ddfb7c64', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3', 4545, '2026-09-14 13:10:32.841335', '4bb7f8e8e3d8441154fa1f124cccdded075aca55ed73b38041381772efcb0468', 'validated', '{"audio_key":"2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8","entity_key":"d_en_en-real-life-numbers_phone:4","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4bb7f8e8e3d8441154fa1f124cccdded075aca55ed73b38041381772efcb0468","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/2cecf3b61c986d7ebe8c4903d835adf7e49166b99fd367d32b44a2c2d4442bc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_price_day:2 -> audio/generated/en-US/dialogues/2d6d3d98a0b016c2505ffd6ca4a81ae54b66df321cfe04b53fd8a9231d601dd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17707e22-4ba3-515b-a977-d8a2a5989dee', 1)
  AND voice_key = 'character:adam:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_price_day:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88e1dc98-fcd1-5db8-94aa-07da7cd71456', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17707e22-4ba3-515b-a977-d8a2a5989dee', 1), 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7',
  'character:adam:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2d6d3d98a0b016c2505ffd6ca4a81ae54b66df321cfe04b53fd8a9231d601dd9.mp3', 1280, '2026-09-14 13:10:33.870682', '0b6dee3cc671272755d4a54c208c40f273f5e2940c8ff0a548435d6007a47c25', 'validated', '{"audio_key":"2d6d3d98a0b016c2505ffd6ca4a81ae54b66df321cfe04b53fd8a9231d601dd9","entity_key":"d_en_en-real-life-numbers_price_day:2","voice_id":"Smxkoz0xiOoHo5WcSskf","voice_name":"Dexter – Customer Support Pro","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"professional","language":"en","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0b6dee3cc671272755d4a54c208c40f273f5e2940c8ff0a548435d6007a47c25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/2d6d3d98a0b016c2505ffd6ca4a81ae54b66df321cfe04b53fd8a9231d601dd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:1 -> audio/generated/en-US/dialogues/2d8a5dddc14102aaa4d33ee3d24c614be851e80d860550b74771e93d78a51910.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('715dfdac-6be9-572d-9cfe-d3ddfcb1a642', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fc04d6d-d29e-518d-ba69-d2b6dc1d1a93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('715dfdac-6be9-572d-9cfe-d3ddfcb1a642', 1), '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2d8a5dddc14102aaa4d33ee3d24c614be851e80d860550b74771e93d78a51910.mp3', 783, '2026-09-14 13:10:34.853094', 'd4171a333e85470a684b790ad7608ceb0b3964864c26b7e2cca48123be3a249d', 'validated', '{"audio_key":"2d8a5dddc14102aaa4d33ee3d24c614be851e80d860550b74771e93d78a51910","entity_key":"d_pre_ready_cafe:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"d4171a333e85470a684b790ad7608ceb0b3964864c26b7e2cca48123be3a249d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/2d8a5dddc14102aaa4d33ee3d24c614be851e80d860550b74771e93d78a51910.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:2 -> audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('064beba9-9806-56af-b5b7-d12830202c04', 1)
  AND voice_key = 'character:kai:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_spell_name:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f06cb7d99930fb835b0b34f8f15022cd51c51bf050ea17bfb25631bca32daf74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fa297f0-ff00-550f-aeef-36d5d931d6e7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('064beba9-9806-56af-b5b7-d12830202c04', 1), 'f06cb7d99930fb835b0b34f8f15022cd51c51bf050ea17bfb25631bca32daf74',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3', 1515, '2026-09-14 13:10:35.911720', '9d63c1840b2ab685f4827d94de0b4da0f61f9af8a99417bc2adf4d5a0767f2fe', 'validated', '{"audio_key":"2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9","entity_key":"d_pre_spell_name:2","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9d63c1840b2ab685f4827d94de0b4da0f61f9af8a99417bc2adf4d5a0767f2fe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:1 -> audio/generated/en-US/dialogues/314ec797cd060d056682956b3d6e75273965544be36851a05851971656369f0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42f33dfe-362c-5f92-8915-6f4e44df51e9', 1)
  AND voice_key = 'character:dina:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b696981a1f4f5ad2c8d5e782488344b7a063f167438a92260716008444f8139e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76624728-d2c7-5a16-94b1-7ad39a65e904', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42f33dfe-362c-5f92-8915-6f4e44df51e9', 1), 'b696981a1f4f5ad2c8d5e782488344b7a063f167438a92260716008444f8139e',
  'character:dina:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/314ec797cd060d056682956b3d6e75273965544be36851a05851971656369f0c.mp3', 1515, '2026-09-14 13:10:36.952616', '96c40d64aa113ca6d2bb283a4bdf27b8eed6aafe9ffcc39621e65f4d0b0fd466', 'validated', '{"audio_key":"314ec797cd060d056682956b3d6e75273965544be36851a05851971656369f0c","entity_key":"d_en_en-real-world-gate_public_task:1","voice_id":"mZTVERjx1WQkdAWt1Lcm","voice_name":"Grace - warm, velvety meditation voice","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96c40d64aa113ca6d2bb283a4bdf27b8eed6aafe9ffcc39621e65f4d0b0fd466","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/dialogues/314ec797cd060d056682956b3d6e75273965544be36851a05851971656369f0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:6 -> audio/generated/en-US/dialogues/3181d38bffa5a9d501d07798acb29f0cb1a6f7e56a9ff8cb6f3ca79e3633c4fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe6a3e2b-4c75-5dc5-8e9a-4897d9f8de9a', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2489b9631535568f5a0daec5b30534b893e3ce8fac8c1aed06af327a4f70b80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7e742a6-4751-537a-862b-be96d71a8e88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe6a3e2b-4c75-5dc5-8e9a-4897d9f8de9a', 1), 'e2489b9631535568f5a0daec5b30534b893e3ce8fac8c1aed06af327a4f70b80',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/3181d38bffa5a9d501d07798acb29f0cb1a6f7e56a9ff8cb6f3ca79e3633c4fc.mp3', 1384, '2026-09-14 13:10:37.993046', 'dd053b198b10785bba195c23266d840c5d2c6c3a843c713d93925c1216f193b4', 'validated', '{"audio_key":"3181d38bffa5a9d501d07798acb29f0cb1a6f7e56a9ff8cb6f3ca79e3633c4fc","entity_key":"d_pre_ready_intro:6","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd053b198b10785bba195c23266d840c5d2c6c3a843c713d93925c1216f193b4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/3181d38bffa5a9d501d07798acb29f0cb1a6f7e56a9ff8cb6f3ca79e3633c4fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_01:4 -> audio/generated/en-US/dialogues/31f10120c479a4672978010531fe0428b429b0c477164967721fd83ddaeee035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('369cf299-a75e-56ad-9929-008f395d9993', 1)
  AND voice_key = 'character:maya:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '404cba15a4acdcfea85caa97d009b1042d20f0967c26f9a1abf59aecbeddf9bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e85f26c4-6913-5a7d-80e5-efbc57a01f4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('369cf299-a75e-56ad-9929-008f395d9993', 1), '404cba15a4acdcfea85caa97d009b1042d20f0967c26f9a1abf59aecbeddf9bd',
  'character:maya:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/31f10120c479a4672978010531fe0428b429b0c477164967721fd83ddaeee035.mp3', 914, '2026-09-14 13:10:39.005860', '8c0b8f176a52fa423928b67dd55f191fbde07cc885cb7ae66f3d182521752fc6', 'validated', '{"audio_key":"31f10120c479a4672978010531fe0428b429b0c477164967721fd83ddaeee035","entity_key":"d_pre_learning_help_01:4","voice_id":"gJx1vCzNCD1EQHT212Ls","voice_name":"Ava – Eager, Helpful and Understanding","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"8c0b8f176a52fa423928b67dd55f191fbde07cc885cb7ae66f3d182521752fc6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/31f10120c479a4672978010531fe0428b429b0c477164967721fd83ddaeee035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_phone:3 -> audio/generated/en-US/dialogues/324d63c5a9b830c67550287c13dfe43980613f3eced320b84df4dd22fda1cdb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9e34ccb-b3fb-5760-b463-0cf7d33035f5', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_phone:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc356f36-11f1-559e-9c79-8aa5af5fac6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9e34ccb-b3fb-5760-b463-0cf7d33035f5', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/324d63c5a9b830c67550287c13dfe43980613f3eced320b84df4dd22fda1cdb7.mp3', 1149, '2026-09-14 13:10:39.982218', '0a01db6f76df00b0c7224ce4a344f0cc511a721bf215bbf9f5a4e8394214de55', 'validated', '{"audio_key":"324d63c5a9b830c67550287c13dfe43980613f3eced320b84df4dd22fda1cdb7","entity_key":"d_en_en-real-life-numbers_phone:3","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"0a01db6f76df00b0c7224ce4a344f0cc511a721bf215bbf9f5a4e8394214de55","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/324d63c5a9b830c67550287c13dfe43980613f3eced320b84df4dd22fda1cdb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_01:3 -> audio/generated/en-US/dialogues/32882d1aeee5748f477f5894f9d4e4072ba3f693299deeca340c7cbaaeb465d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93c834d3-5d79-529d-b469-6f1b372a5251', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c392546-cca7-5e67-80f8-f0af61596e28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93c834d3-5d79-529d-b469-6f1b372a5251', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/32882d1aeee5748f477f5894f9d4e4072ba3f693299deeca340c7cbaaeb465d5.mp3', 1097, '2026-09-14 13:10:40.978298', 'ab22ab3fb9dc5fa07b680e2109abf659cbff39326f75c1923c1826f6b10a8c86', 'validated', '{"audio_key":"32882d1aeee5748f477f5894f9d4e4072ba3f693299deeca340c7cbaaeb465d5","entity_key":"d_pre_learning_help_01:3","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab22ab3fb9dc5fa07b680e2109abf659cbff39326f75c1923c1826f6b10a8c86","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/32882d1aeee5748f477f5894f9d4e4072ba3f693299deeca340c7cbaaeb465d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:6 -> audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58a98258-bd41-58f9-acd8-9a249146e131', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('605cc848-a881-5ca3-8d5f-54e5d9c560db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58a98258-bd41-58f9-acd8-9a249146e131', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3', 835, '2026-09-14 13:10:41.910024', '8b65181076f4363d4266fcd4b934433bf43ab8f41043e2d4a6147d4990e427e2', 'validated', '{"audio_key":"32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d","entity_key":"d_pre_capstone_meeting:6","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b65181076f4363d4266fcd4b934433bf43ab8f41043e2d4a6147d4990e427e2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:4 -> audio/generated/en-US/dialogues/335182099e3584e8b3f723c1a57c1052b86d82b58f45fd10f7c8a61c49339e2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e1908c8-b967-5319-8fde-2581d0bb4723', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc6eb334a8b49a0a3e478ad0a527cc74b94a082922197e86d9fee7b081621be4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57f95259-64fc-5c54-8306-afb6197c0990', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e1908c8-b967-5319-8fde-2581d0bb4723', 1), 'cc6eb334a8b49a0a3e478ad0a527cc74b94a082922197e86d9fee7b081621be4',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/335182099e3584e8b3f723c1a57c1052b86d82b58f45fd10f7c8a61c49339e2d.mp3', 914, '2026-09-14 13:10:42.989399', 'fac808b60f732fb6a6b5dab4ec5d978b2d5022262dc8197cfe1902d49057123c', 'validated', '{"audio_key":"335182099e3584e8b3f723c1a57c1052b86d82b58f45fd10f7c8a61c49339e2d","entity_key":"d_pre_ready_cafe:4","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fac808b60f732fb6a6b5dab4ec5d978b2d5022262dc8197cfe1902d49057123c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/335182099e3584e8b3f723c1a57c1052b86d82b58f45fd10f7c8a61c49339e2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:4 -> audio/generated/en-US/dialogues/35c0bdebae9ef770a720819f371e58acbf104150e51d82e96feebcf315abf45c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f608f8a0-f201-5379-b014-503c984f2ae3', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3af447d7-646a-59d2-94be-5d902e30ff06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f608f8a0-f201-5379-b014-503c984f2ae3', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/35c0bdebae9ef770a720819f371e58acbf104150e51d82e96feebcf315abf45c.mp3', 1253, '2026-09-14 13:10:43.954784', '59e54806b7b94267accebbaf8207518e2cb929fc5d6745fa1f996117393fe824', 'validated', '{"audio_key":"35c0bdebae9ef770a720819f371e58acbf104150e51d82e96feebcf315abf45c","entity_key":"d_en_en-about-me_origin_age:4","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59e54806b7b94267accebbaf8207518e2cb929fc5d6745fa1f996117393fe824","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/35c0bdebae9ef770a720819f371e58acbf104150e51d82e96feebcf315abf45c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:3 -> audio/generated/en-US/dialogues/3822e8828f8a20a37d0dc294550e7c78e95a90d4ac8c59a5c1346c8dbe2cd344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3c988f1-7a6d-5a60-917d-1f25755c6842', 1)
  AND voice_key = 'character:maya:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63265a79774350462d4ce11d5a90687ff8e6f2511bb512e0409be568b6be7046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fadea09-f724-5304-a84c-5bb1cfca5020', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3c988f1-7a6d-5a60-917d-1f25755c6842', 1), '63265a79774350462d4ce11d5a90687ff8e6f2511bb512e0409be568b6be7046',
  'character:maya:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/3822e8828f8a20a37d0dc294550e7c78e95a90d4ac8c59a5c1346c8dbe2cd344.mp3', 1097, '2026-09-14 13:10:44.916982', '1979945d273ed5a2a1c6e37b73b938740076d946fbe27975c2310a52444f173f', 'validated', '{"audio_key":"3822e8828f8a20a37d0dc294550e7c78e95a90d4ac8c59a5c1346c8dbe2cd344","entity_key":"d_en_en-about-me_origin_age:3","voice_id":"gJx1vCzNCD1EQHT212Ls","voice_name":"Ava – Eager, Helpful and Understanding","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1979945d273ed5a2a1c6e37b73b938740076d946fbe27975c2310a52444f173f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/3822e8828f8a20a37d0dc294550e7c78e95a90d4ac8c59a5c1346c8dbe2cd344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_02:2 -> audio/generated/en-US/dialogues/419c89d906e81b47835bfc8cdc2e80fc7c83eb1a87c07805a96702e1cfc28d17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cde4ec97-6719-5709-b1dc-c13a97183eae', 1)
  AND voice_key = 'character:kai:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3f1dc360a18d92a4406a496787a7951adb686803aebcafacadac55bd83e2b22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3c4b16f-a8bf-5d0b-ae61-4f049e73312a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cde4ec97-6719-5709-b1dc-c13a97183eae', 1), 'd3f1dc360a18d92a4406a496787a7951adb686803aebcafacadac55bd83e2b22',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/419c89d906e81b47835bfc8cdc2e80fc7c83eb1a87c07805a96702e1cfc28d17.mp3', 1619, '2026-09-14 13:10:45.961495', 'cc3f510b3446b95a69d385f8c7424f98fa33488f459515b03c66c3979d7e4865', 'validated', '{"audio_key":"419c89d906e81b47835bfc8cdc2e80fc7c83eb1a87c07805a96702e1cfc28d17","entity_key":"d_pre_learning_help_02:2","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"cc3f510b3446b95a69d385f8c7424f98fa33488f459515b03c66c3979d7e4865","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/419c89d906e81b47835bfc8cdc2e80fc7c83eb1a87c07805a96702e1cfc28d17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:4 -> audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ce5e3ed-0735-5252-a5fe-4123ddf33bf0', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b280e9bd-9de4-5a24-8fda-14ba231da637', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ce5e3ed-0735-5252-a5fe-4123ddf33bf0', 1), '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3', 966, '2026-09-14 13:10:46.930933', '373e427e20d52d1ee4ebe0de5aa620dc9ecea311ff6ff27f7290ba08a2006f97', 'validated', '{"audio_key":"42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1","entity_key":"d_pre_capstone_meeting:4","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"373e427e20d52d1ee4ebe0de5aa620dc9ecea311ff6ff27f7290ba08a2006f97","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:4 -> audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b499f61-ae89-55ce-b840-15266f1a596f', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('977965a3-d2f3-5c92-a552-614900e89fd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b499f61-ae89-55ce-b840-15266f1a596f', 1), '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3', 966, '2026-09-14 13:10:46.930933', '373e427e20d52d1ee4ebe0de5aa620dc9ecea311ff6ff27f7290ba08a2006f97', 'validated', '{"audio_key":"42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1","entity_key":"d_pre_ready_intro:4","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"373e427e20d52d1ee4ebe0de5aa620dc9ecea311ff6ff27f7290ba08a2006f97","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_form:4 -> audio/generated/en-US/dialogues/458f32fa9da32dee17ef1967502f299a1d37e298dd6359e76224f23714ce2439.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('edae9170-48e9-50f3-a534-c18e5c46e40a', 1)
  AND voice_key = 'character:alex:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_form:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12ad97a9-48e0-5299-8df0-8cd347d4c98d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('edae9170-48e9-50f3-a534-c18e5c46e40a', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'character:alex:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/458f32fa9da32dee17ef1967502f299a1d37e298dd6359e76224f23714ce2439.mp3', 1201, '2026-09-14 13:10:47.919708', '5901a79be7418d40b342b37d8ad22a79f9a5b74805860b47d373a2eb7728813b', 'validated', '{"audio_key":"458f32fa9da32dee17ef1967502f299a1d37e298dd6359e76224f23714ce2439","entity_key":"d_en_en-forms-signs_form:4","voice_id":"gPPH6SLdL8XSX6GNJ40G","voice_name":"Brian - Relatable Everyman","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5901a79be7418d40b342b37d8ad22a79f9a5b74805860b47d373a2eb7728813b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/458f32fa9da32dee17ef1967502f299a1d37e298dd6359e76224f23714ce2439.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_sign:2 -> audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84e89d0e-aa7d-5a5c-b509-2febbfd3a0e7', 1)
  AND voice_key = 'character:daniel:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_sign:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d60b2701-f2a3-5bae-86e8-6e65376edcca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84e89d0e-aa7d-5a5c-b509-2febbfd3a0e7', 1), 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a',
  'character:daniel:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3', 1149, '2026-09-14 13:10:48.720946', '802a434dd901a3984bafb1c74e625da8f6088a27c1c38212a6f00190cffb50e3', 'validated', '{"audio_key":"45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61","entity_key":"d_en_en-forms-signs_sign:2","voice_id":"gUABw7pXQjhjt0kNFBTF","voice_name":"Andrew - Smooth, Smart and Clear","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"802a434dd901a3984bafb1c74e625da8f6088a27c1c38212a6f00190cffb50e3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_sign:4 -> audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a9cb346-6af2-55cc-a426-10cd9cf58b2f', 1)
  AND voice_key = 'character:daniel:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_sign:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a8142de-eca4-5c5b-829b-02d8c290334d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a9cb346-6af2-55cc-a426-10cd9cf58b2f', 1), 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a',
  'character:daniel:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3', 1149, '2026-09-14 13:10:48.720946', '802a434dd901a3984bafb1c74e625da8f6088a27c1c38212a6f00190cffb50e3', 'validated', '{"audio_key":"45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61","entity_key":"d_en_en-forms-signs_sign:4","voice_id":"gUABw7pXQjhjt0kNFBTF","voice_name":"Andrew - Smooth, Smart and Clear","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"802a434dd901a3984bafb1c74e625da8f6088a27c1c38212a6f00190cffb50e3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/45d1cefec5f90b6c71136f3adb4b322e99d7fd7cba28a19eec77066eec608a61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:3 -> audio/generated/en-US/dialogues/4a371d3ab4973d314e72c0e49f3b67cb92293338d4bb14e0c9168f0d743172de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85ba17a8-53fb-53f7-81df-4bd6012bff10', 1)
  AND voice_key = 'character:dina:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abdfbb3951b780a174166d38d10acc3920b5e8f4712cc6014104161424c3b2f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47cfd999-b4b2-51d5-b660-03cab79ab3fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85ba17a8-53fb-53f7-81df-4bd6012bff10', 1), 'abdfbb3951b780a174166d38d10acc3920b5e8f4712cc6014104161424c3b2f8',
  'character:dina:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/4a371d3ab4973d314e72c0e49f3b67cb92293338d4bb14e0c9168f0d743172de.mp3', 1488, '2026-09-14 13:10:49.698901', 'acf47f2f3cf9d091a2810cb40e215e3ee856ce1952f8c679a2dcf7295f5f2084', 'validated', '{"audio_key":"4a371d3ab4973d314e72c0e49f3b67cb92293338d4bb14e0c9168f0d743172de","entity_key":"d_en_en-real-world-gate_public_task:3","voice_id":"mZTVERjx1WQkdAWt1Lcm","voice_name":"Grace - warm, velvety meditation voice","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acf47f2f3cf9d091a2810cb40e215e3ee856ce1952f8c679a2dcf7295f5f2084","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/dialogues/4a371d3ab4973d314e72c0e49f3b67cb92293338d4bb14e0c9168f0d743172de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:2 -> audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ba06d41-3fd5-5dd9-a32d-aa246ec0f6ad', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35261c8d-af27-50ec-90db-2ca94089beaf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ba06d41-3fd5-5dd9-a32d-aa246ec0f6ad', 1), '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3', 966, '2026-09-14 13:10:50.636075', '07f543d4eceeb5a5802e2eff83202749f4cccc355dc23cc7f91cc79a3691af84', 'validated', '{"audio_key":"4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad","entity_key":"d_pre_ready_cafe:2","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07f543d4eceeb5a5802e2eff83202749f4cccc355dc23cc7f91cc79a3691af84","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:2 -> audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a34c9d35-397d-5342-a00d-9afb290f324a', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_water_offer:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d62a670-8bdd-5fe5-978e-3ca06f2776ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a34c9d35-397d-5342-a00d-9afb290f324a', 1), '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3', 966, '2026-09-14 13:10:50.636075', '07f543d4eceeb5a5802e2eff83202749f4cccc355dc23cc7f91cc79a3691af84', 'validated', '{"audio_key":"4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad","entity_key":"d_pre_water_offer:2","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07f543d4eceeb5a5802e2eff83202749f4cccc355dc23cc7f91cc79a3691af84","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_two:2 -> audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75c13d88-0756-5595-92a0-98559a092852', 1)
  AND voice_key = 'character:ali:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_names_two:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93dcd29592078477d5e87c6289a33f7dbc8711eeed28451a2d626fbc10c287dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b8db5c8-7e0b-534b-98ed-fbc8e6a0d551', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75c13d88-0756-5595-92a0-98559a092852', 1), '93dcd29592078477d5e87c6289a33f7dbc8711eeed28451a2d626fbc10c287dc',
  'character:ali:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3', 1201, '2026-09-14 13:10:51.633427', 'bb8c0f0c3e2ba4f481779ad32463551ed6e2c53326d31ebe38b8883f30f55e16', 'validated', '{"audio_key":"4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6","entity_key":"d_pre_names_two:2","voice_id":"tMvyQtpCVQ0DkixuYm6J","voice_name":"Nova - Markus","voice_labels":{"accent":"american","language":"en","descriptive":"casual","use_case":"narrative_story","age":"middle_aged","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"bb8c0f0c3e2ba4f481779ad32463551ed6e2c53326d31ebe38b8883f30f55e16","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:6 -> audio/generated/en-US/dialogues/56987261b342f73078ee8b36f54ea95ed0c3011794c1189eee471e62f90b840a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c94d8566-7466-5c2b-9dd0-b1653717c82a', 1)
  AND voice_key = 'character:dina:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1dd16b7-a0f6-5c25-bb30-4a3287ba5318', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c94d8566-7466-5c2b-9dd0-b1653717c82a', 1), 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a',
  'character:dina:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/56987261b342f73078ee8b36f54ea95ed0c3011794c1189eee471e62f90b840a.mp3', 1802, '2026-09-14 13:10:52.664749', 'ae6d7ba47ab1a5b547b781c42a8c5063715a7131b2e4d4cb3eaeed62e7544207', 'validated', '{"audio_key":"56987261b342f73078ee8b36f54ea95ed0c3011794c1189eee471e62f90b840a","entity_key":"d_en_en-real-world-gate_public_task:6","voice_id":"mZTVERjx1WQkdAWt1Lcm","voice_name":"Grace - warm, velvety meditation voice","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae6d7ba47ab1a5b547b781c42a8c5063715a7131b2e4d4cb3eaeed62e7544207","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/dialogues/56987261b342f73078ee8b36f54ea95ed0c3011794c1189eee471e62f90b840a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_origin_age:1 -> audio/generated/en-US/dialogues/59b99d176de9853de64a2b267adeb04954569345584498624bcbd36ca66bbfd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26e6eb77-cd48-599b-a1ec-5682d12d0aa2', 1)
  AND voice_key = 'character:maya:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_origin_age:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dd59116-9329-57f4-b124-f0f1cef0e913', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26e6eb77-cd48-599b-a1ec-5682d12d0aa2', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:maya:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/59b99d176de9853de64a2b267adeb04954569345584498624bcbd36ca66bbfd5.mp3', 862, '2026-09-14 13:10:53.563630', 'f10b44d7e37b23ab3687f83676f179cfa6a101b04dd16c73392047463ac0559d', 'validated', '{"audio_key":"59b99d176de9853de64a2b267adeb04954569345584498624bcbd36ca66bbfd5","entity_key":"d_en_en-about-me_origin_age:1","voice_id":"gJx1vCzNCD1EQHT212Ls","voice_name":"Ava – Eager, Helpful and Understanding","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f10b44d7e37b23ab3687f83676f179cfa6a101b04dd16c73392047463ac0559d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/59b99d176de9853de64a2b267adeb04954569345584498624bcbd36ca66bbfd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:1 -> audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cc0b3af-6dfb-51a3-b92a-fed11999c6d9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab4a6bfa-7733-5cd3-8da0-7fab05d03a1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cc0b3af-6dfb-51a3-b92a-fed11999c6d9', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3', 862, '2026-09-14 13:10:54.488013', '6f3fa9628d5a7ac35a7ce6f892e0e041c4177644af079f8d8a70d694ae924980', 'validated', '{"audio_key":"5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f","entity_key":"d_pre_capstone_meeting:1","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"6f3fa9628d5a7ac35a7ce6f892e0e041c4177644af079f8d8a70d694ae924980","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_greeting_door:2 -> audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34524510-8a00-57fd-82cf-979a7b311d97', 1)
  AND voice_key = 'character:leo:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_greeting_door:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('318d7792-7c99-53c7-a090-d7cee638c1a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34524510-8a00-57fd-82cf-979a7b311d97', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'character:leo:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3', 653, '2026-09-14 13:10:55.459908', '2bec86edd57d995049169879ce3c4106debbe915af7c4369a60d2ae5b3a6092e', 'validated', '{"audio_key":"60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef","entity_key":"d_pre_greeting_door:2","voice_id":"UgBBYS2sOqTuMpoF3BR0","voice_name":"Mark - Natural Conversations","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2bec86edd57d995049169879ce3c4106debbe915af7c4369a60d2ae5b3a6092e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_two:1 -> audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a2657ac-57c2-5281-ade4-f687c488889f', 1)
  AND voice_key = 'character:emma:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_names_two:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31734177-42d3-5644-a737-b18a45efb043', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a2657ac-57c2-5281-ade4-f687c488889f', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:emma:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3', 1149, '2026-09-14 13:10:56.446037', '620d4eac6535a8466c45507546a0791f584773cd48b03fb67198f00e70e1635f', 'validated', '{"audio_key":"624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a","entity_key":"d_pre_names_two:1","voice_id":"WAhoMTNdLdMoq1j3wf3I","voice_name":"Hope - Smooth, Engaging and Kind","voice_labels":{"use_case":"conversational","language":"en","descriptive":"soft","accent":"american","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"620d4eac6535a8466c45507546a0791f584773cd48b03fb67198f00e70e1635f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:2 -> audio/generated/en-US/dialogues/63aeb220b6ba3ba8c3ecbc05f5c0b81d51aae9aac869bb248002909a42fea9aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63c27fae-c2af-528f-b458-3170a1b72737', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b95d72695f2efae6f006c8b83e2288804f7b454741313cc9e836a55f8ceab677'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e569ef5f-205a-5fbb-9c92-c0e68f8e8eef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63c27fae-c2af-528f-b458-3170a1b72737', 1), 'b95d72695f2efae6f006c8b83e2288804f7b454741313cc9e836a55f8ceab677',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/63aeb220b6ba3ba8c3ecbc05f5c0b81d51aae9aac869bb248002909a42fea9aa.mp3', 1384, '2026-09-14 13:10:57.437338', '25c58888fa23e89769d91d5b21ade3ee9f96bdc00195fd21209fd88b852c6cfc', 'validated', '{"audio_key":"63aeb220b6ba3ba8c3ecbc05f5c0b81d51aae9aac869bb248002909a42fea9aa","entity_key":"d_pre_ready_intro:2","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25c58888fa23e89769d91d5b21ade3ee9f96bdc00195fd21209fd88b852c6cfc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/63aeb220b6ba3ba8c3ecbc05f5c0b81d51aae9aac869bb248002909a42fea9aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:1 -> audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('707756c7-e75c-5a44-9356-7365cd4b5e03', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_spell_name:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1e3c1e0c77d7d57762e95bb12833cc640f0074343f17ee5201a75adc09d304'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee97a9cb-a1a4-5c51-970d-65809e46df21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('707756c7-e75c-5a44-9356-7365cd4b5e03', 1), '9e1e3c1e0c77d7d57762e95bb12833cc640f0074343f17ee5201a75adc09d304',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3', 783, '2026-09-14 13:10:58.329867', '23fcb8e172d93009597e3300b763607064423c7ecdcbf4020f5153d35cb3dd21', 'validated', '{"audio_key":"7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b","entity_key":"d_pre_spell_name:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"23fcb8e172d93009597e3300b763607064423c7ecdcbf4020f5153d35cb3dd21","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:3 -> audio/generated/en-US/dialogues/80c5be72ee9a27b6ba45e6acf42d625d2273c655fc74ccb54bb2c828d27e59e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fbea5d8-579b-5587-a60d-c8451f95ef54', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588216e42df797f32f64588591fbb1c3263c4b59c11e34ed2bec4732eef3e380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f45625f0-19f0-5603-9e9c-88a14d50b339', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fbea5d8-579b-5587-a60d-c8451f95ef54', 1), '588216e42df797f32f64588591fbb1c3263c4b59c11e34ed2bec4732eef3e380',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/80c5be72ee9a27b6ba45e6acf42d625d2273c655fc74ccb54bb2c828d27e59e3.mp3', 600, '2026-09-14 13:10:59.273417', '014fb9837a3f2eaa9e84918057d99be0a8e4f6ebfcaa3612c490232f78961676', 'validated', '{"audio_key":"80c5be72ee9a27b6ba45e6acf42d625d2273c655fc74ccb54bb2c828d27e59e3","entity_key":"d_pre_ready_cafe:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"014fb9837a3f2eaa9e84918057d99be0a8e4f6ebfcaa3612c490232f78961676","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/80c5be72ee9a27b6ba45e6acf42d625d2273c655fc74ccb54bb2c828d27e59e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_01:1 -> audio/generated/en-US/dialogues/8177de0254edd606b6d5c55fa67993a0a37e9d377c56e818521442e410c05f56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e8c3abf-a905-57a5-ae47-d7638be51448', 1)
  AND voice_key = 'character:maya:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f8aff474b3304664106e7b7f197c4e85255925733df19aa44e749bcb3c07eb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec0efdae-191e-5575-9831-c88fc4ee8d14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e8c3abf-a905-57a5-ae47-d7638be51448', 1), '2f8aff474b3304664106e7b7f197c4e85255925733df19aa44e749bcb3c07eb7',
  'character:maya:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/8177de0254edd606b6d5c55fa67993a0a37e9d377c56e818521442e410c05f56.mp3', 1149, '2026-09-14 13:11:00.247974', 'c15f2f1fcd9134d22c6c6cbccea680ff5c9799d859439d418cd9e3d7097ac59c', 'validated', '{"audio_key":"8177de0254edd606b6d5c55fa67993a0a37e9d377c56e818521442e410c05f56","entity_key":"d_pre_learning_help_01:1","voice_id":"gJx1vCzNCD1EQHT212Ls","voice_name":"Ava – Eager, Helpful and Understanding","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c15f2f1fcd9134d22c6c6cbccea680ff5c9799d859439d418cd9e3d7097ac59c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/8177de0254edd606b6d5c55fa67993a0a37e9d377c56e818521442e410c05f56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_one:2 -> audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d92e9c87-b73f-57b8-a053-5abec26322c8', 1)
  AND voice_key = 'character:omid:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_names_one:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '696fb64b000936b6e5ab2db9740ee4d9c8536f0bbc86200a50ee6733b1d17e37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc3c535c-37b3-563c-9cde-e60f8d494fc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d92e9c87-b73f-57b8-a053-5abec26322c8', 1), '696fb64b000936b6e5ab2db9740ee4d9c8536f0bbc86200a50ee6733b1d17e37',
  'character:omid:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3', 1280, '2026-09-14 13:11:01.281724', 'bfc4e7852b3305b271154fa90accc5cd184414eefdc0e6f97d25615267477579', 'validated', '{"audio_key":"846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72","entity_key":"d_pre_names_one:2","voice_id":"yl2ZDV1MzN4HbQJbMihG","voice_name":"Alex - Upbeat, Energetic and Clear","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"bfc4e7852b3305b271154fa90accc5cd184414eefdc0e6f97d25615267477579","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:6 -> audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5dfb66e-73ab-535a-aa35-71608417ec88', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3513c69f-6c57-5442-adfd-805e52a16a38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5dfb66e-73ab-535a-aa35-71608417ec88', 1), 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3', 835, '2026-09-14 13:11:02.196982', '43ffcce647485ab69b7747010c3c79ba1b5aacb9051f29289161239f9efad099', 'validated', '{"audio_key":"8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05","entity_key":"d_pre_ready_cafe:6","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"43ffcce647485ab69b7747010c3c79ba1b5aacb9051f29289161239f9efad099","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:4 -> audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfc1081d-9836-5412-93a7-89d8fe169c22', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_water_offer:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c0d36fe-c338-5203-9049-569ce5cbe57c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfc1081d-9836-5412-93a7-89d8fe169c22', 1), 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3', 835, '2026-09-14 13:11:02.196982', '43ffcce647485ab69b7747010c3c79ba1b5aacb9051f29289161239f9efad099', 'validated', '{"audio_key":"8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05","entity_key":"d_pre_water_offer:4","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"43ffcce647485ab69b7747010c3c79ba1b5aacb9051f29289161239f9efad099","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_price_day:1 -> audio/generated/en-US/dialogues/92641d87d24476c42c32f58df6e06a2175e247dae2373d58a63bcde827b3c5eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05cc2571-5c59-58a0-84ba-b294914687be', 1)
  AND voice_key = 'character:aisha:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_price_day:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abdfbb3951b780a174166d38d10acc3920b5e8f4712cc6014104161424c3b2f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4dc0343-3c1c-506e-aeb8-9309fcea9177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05cc2571-5c59-58a0-84ba-b294914687be', 1), 'abdfbb3951b780a174166d38d10acc3920b5e8f4712cc6014104161424c3b2f8',
  'character:aisha:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/92641d87d24476c42c32f58df6e06a2175e247dae2373d58a63bcde827b3c5eb.mp3', 1201, '2026-09-14 13:11:03.165608', 'becc138e4bc2de2a467131a807e946038d1bba37553cf81209b36596ac45a940', 'validated', '{"audio_key":"92641d87d24476c42c32f58df6e06a2175e247dae2373d58a63bcde827b3c5eb","entity_key":"d_en_en-real-life-numbers_price_day:1","voice_id":"XJ2fW4ybq7HouelYYGcL","voice_name":"Cherry Twinkle - Bubbly and Sweet","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"becc138e4bc2de2a467131a807e946038d1bba37553cf81209b36596ac45a940","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/92641d87d24476c42c32f58df6e06a2175e247dae2373d58a63bcde827b3c5eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:4 -> audio/generated/en-US/dialogues/92e0a6668f468ee36e0a4deed7e1d66cb6709edf4e26728d71f5f0abad76bba5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3e45c20-390e-5ee3-91d4-4a0f1bee24cf', 1)
  AND voice_key = 'character:chris:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4294a3d2-fa87-55cf-8c63-0b0280b6ca29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3e45c20-390e-5ee3-91d4-4a0f1bee24cf', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'character:chris:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/92e0a6668f468ee36e0a4deed7e1d66cb6709edf4e26728d71f5f0abad76bba5.mp3', 1149, '2026-09-14 13:11:04.138989', 'c977347d79c5f8d32f0f3520dca3a9ad3ebf1df28b0b069e4b1ad34dad284c4d', 'validated', '{"audio_key":"92e0a6668f468ee36e0a4deed7e1d66cb6709edf4e26728d71f5f0abad76bba5","entity_key":"d_en_en-real-world-gate_meet:4","voice_id":"s3TPKV1kjDlVtZbl4Ksh","voice_name":"Adam - Engaging, Friendly and Bright","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c977347d79c5f8d32f0f3520dca3a9ad3ebf1df28b0b069e4b1ad34dad284c4d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/92e0a6668f468ee36e0a4deed7e1d66cb6709edf4e26728d71f5f0abad76bba5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_form:3 -> audio/generated/en-US/dialogues/96911c4df3300043c29c9b3a0a01faad60e9d11ae96a50f1b5b8460dc35cb0c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eaefe6f5-d36d-5b36-b2dd-dd452a5908b7', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_form:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bce799dae6eab8bec384521c42582f43a54fb9360ca31f2a65b09443e27dd67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed90c6b3-d6c6-556e-bd21-11cf626b726d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eaefe6f5-d36d-5b36-b2dd-dd452a5908b7', 1), '3bce799dae6eab8bec384521c42582f43a54fb9360ca31f2a65b09443e27dd67',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/96911c4df3300043c29c9b3a0a01faad60e9d11ae96a50f1b5b8460dc35cb0c9.mp3', 914, '2026-09-14 13:11:05.073055', 'f86f024cbcd158716a0448ffb579a96070ce0f8c2db633042c18c4efa1a036b2', 'validated', '{"audio_key":"96911c4df3300043c29c9b3a0a01faad60e9d11ae96a50f1b5b8460dc35cb0c9","entity_key":"d_en_en-forms-signs_form:3","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"f86f024cbcd158716a0448ffb579a96070ce0f8c2db633042c18c4efa1a036b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/96911c4df3300043c29c9b3a0a01faad60e9d11ae96a50f1b5b8460dc35cb0c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_learning_help_02:3 -> audio/generated/en-US/dialogues/96fac0a616e37a9feb77075548dccb31afa9bcab219117a97c9b04dfd12b94ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('239cc57d-490e-50e5-95ed-27f6596debe9', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_learning_help_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5721705a55b2166ca7f0e9dd72619ebce7e40821ccae3858236f925eaa8926f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86b28680-f5c7-5679-b416-abf396cfb934', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('239cc57d-490e-50e5-95ed-27f6596debe9', 1), '5721705a55b2166ca7f0e9dd72619ebce7e40821ccae3858236f925eaa8926f6',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/96fac0a616e37a9feb77075548dccb31afa9bcab219117a97c9b04dfd12b94ac.mp3', 1149, '2026-09-14 13:11:06.058514', 'eb44f86d06a6cdccf954f94bf0bab50902809a99848948a2c4c4f50725cabeef', 'validated', '{"audio_key":"96fac0a616e37a9feb77075548dccb31afa9bcab219117a97c9b04dfd12b94ac","entity_key":"d_pre_learning_help_02:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"eb44f86d06a6cdccf954f94bf0bab50902809a99848948a2c4c4f50725cabeef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/96fac0a616e37a9feb77075548dccb31afa9bcab219117a97c9b04dfd12b94ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_feeling_family:3 -> audio/generated/en-US/dialogues/9957d3d894fb23520ad14c8a9ef64f8b461fd4a21b4ab0443471d2fe66dc07dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c5c25b2-78b7-515f-86e9-546d28422376', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_feeling_family:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cac74dd36ef41a909971a47efb23215bc52a2e911708ee47167620d42cbda532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b01fb56-8b33-5caa-a696-f618743226fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c5c25b2-78b7-515f-86e9-546d28422376', 1), 'cac74dd36ef41a909971a47efb23215bc52a2e911708ee47167620d42cbda532',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/9957d3d894fb23520ad14c8a9ef64f8b461fd4a21b4ab0443471d2fe66dc07dc.mp3', 1280, '2026-09-14 13:11:07.065461', '5fd82284fcbb2d450501dc846f851063fc05a83c873c431b3cc1ee49bf4267fb', 'validated', '{"audio_key":"9957d3d894fb23520ad14c8a9ef64f8b461fd4a21b4ab0443471d2fe66dc07dc","entity_key":"d_en_en-about-me_feeling_family:3","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5fd82284fcbb2d450501dc846f851063fc05a83c873c431b3cc1ee49bf4267fb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/9957d3d894fb23520ad14c8a9ef64f8b461fd4a21b4ab0443471d2fe66dc07dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:1 -> audio/generated/en-US/dialogues/9ba98a14ac408d48f8cffbfa104a0fa5ebf4ffc8790044c61230ffc4132dff7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1cf75101-32aa-54d5-99f6-830c8fa62cd2', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dcee9bdca119172f74efe0a5d17eb255f5e6f5d9081287ac6d7f47f434f32ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69d8de3c-06ea-5a62-a817-1f92cdf1967a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1cf75101-32aa-54d5-99f6-830c8fa62cd2', 1), '5dcee9bdca119172f74efe0a5d17eb255f5e6f5d9081287ac6d7f47f434f32ec',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/9ba98a14ac408d48f8cffbfa104a0fa5ebf4ffc8790044c61230ffc4132dff7c.mp3', 1567, '2026-09-14 13:11:08.087127', 'bc0112c3be12d3b75981d0dd30f91e1e117988aeb7b281670bb01fe3ccdc99f2', 'validated', '{"audio_key":"9ba98a14ac408d48f8cffbfa104a0fa5ebf4ffc8790044c61230ffc4132dff7c","entity_key":"d_pre_ready_intro:1","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"bc0112c3be12d3b75981d0dd30f91e1e117988aeb7b281670bb01fe3ccdc99f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/9ba98a14ac408d48f8cffbfa104a0fa5ebf4ffc8790044c61230ffc4132dff7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_form:1 -> audio/generated/en-US/dialogues/9f1f7b8d1bbcbaad97e74e6ec0ad5cdc333a16c16f719ec061d052fbe03cbe46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ad08d18-75fc-549a-bd44-57c429b0a208', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_form:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd32f7ea4b09f568fe7e60ecad909742368619e55701d7cb9fd7a3bcbbfd5a5e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2169353c-962b-56b6-93ff-7c8369105289', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ad08d18-75fc-549a-bd44-57c429b0a208', 1), 'd32f7ea4b09f568fe7e60ecad909742368619e55701d7cb9fd7a3bcbbfd5a5e5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/9f1f7b8d1bbcbaad97e74e6ec0ad5cdc333a16c16f719ec061d052fbe03cbe46.mp3', 783, '2026-09-14 13:11:09.025860', 'aad393bd254f34aa4ad0d14a2ec0a19f88eccedcf5aedcd9d504934774150b59', 'validated', '{"audio_key":"9f1f7b8d1bbcbaad97e74e6ec0ad5cdc333a16c16f719ec061d052fbe03cbe46","entity_key":"d_en_en-forms-signs_form:1","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"aad393bd254f34aa4ad0d14a2ec0a19f88eccedcf5aedcd9d504934774150b59","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/9f1f7b8d1bbcbaad97e74e6ec0ad5cdc333a16c16f719ec061d052fbe03cbe46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:2 -> audio/generated/en-US/dialogues/a5bd6b4ebda14c95452625778efe0af6bed7b265496e3c7d4d0fa9d363ff27d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67fa4fcd-20cd-5f01-90a8-75e336ee62ed', 1)
  AND voice_key = 'character:jack:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c84fd9b6-a9ec-5417-aad2-d1a85858d23e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67fa4fcd-20cd-5f01-90a8-75e336ee62ed', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'character:jack:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/a5bd6b4ebda14c95452625778efe0af6bed7b265496e3c7d4d0fa9d363ff27d7.mp3', 2873, '2026-09-14 13:11:10.237474', '4e255c864d0176e331a6fb315a0dee271defc0087f602bf777a61dcaef3bc509', 'validated', '{"audio_key":"a5bd6b4ebda14c95452625778efe0af6bed7b265496e3c7d4d0fa9d363ff27d7","entity_key":"d_en_en-real-world-gate_public_task:2","voice_id":"1SM7GgM6IMuvQlz2BwM3","voice_name":"Mark - ConvoAI","voice_labels":{"language":"en","descriptive":"casual","age":"middle_aged","use_case":"conversational","accent":"american","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"4e255c864d0176e331a6fb315a0dee271defc0087f602bf777a61dcaef3bc509","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/a5bd6b4ebda14c95452625778efe0af6bed7b265496e3c7d4d0fa9d363ff27d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_feeling_family:2 -> audio/generated/en-US/dialogues/a7ef46f5ec36d513e9f2796598353d935771970bfa1f65945aa634dd5a8d2d18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63d54538-b0ce-5915-947a-f3b6a5fdb967', 1)
  AND voice_key = 'character:ben:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_feeling_family:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2580ff7-6b73-5fdc-b57b-6d1fb04fd839', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63d54538-b0ce-5915-947a-f3b6a5fdb967', 1), '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/a7ef46f5ec36d513e9f2796598353d935771970bfa1f65945aa634dd5a8d2d18.mp3', 1149, '2026-09-14 13:11:11.243631', 'b2fa8427f43478c017bfe3c664eba4b2a3e2bf29d2e9780011982f563847c03f', 'validated', '{"audio_key":"a7ef46f5ec36d513e9f2796598353d935771970bfa1f65945aa634dd5a8d2d18","entity_key":"d_en_en-about-me_feeling_family:2","voice_id":"h2I5OFX58E5TL5AitYwR","voice_name":"Joey Patel - Friendly Customer Support","voice_labels":{"gender":"male","accent":"american","age":"young","category":"professional","language":"en","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b2fa8427f43478c017bfe3c664eba4b2a3e2bf29d2e9780011982f563847c03f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/a7ef46f5ec36d513e9f2796598353d935771970bfa1f65945aa634dd5a8d2d18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_one:1 -> audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cadfae9f-cd2c-5bd1-9b34-4202b92f47a4', 1)
  AND voice_key = 'character:sara:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_names_one:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd15818e7b84e73730d2bad3aed9f4d132edfe6a4782327d38828d5153196d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0661a90-26c4-5343-8bb2-0f17ea9f0e46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cadfae9f-cd2c-5bd1-9b34-4202b92f47a4', 1), 'dd15818e7b84e73730d2bad3aed9f4d132edfe6a4782327d38828d5153196d24',
  'character:sara:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3', 1071, '2026-09-14 13:11:12.254384', 'f200c3c0715334130d62c2c0fa91d6b490bc99163ddc69d7a60689d262290164', 'validated', '{"audio_key":"b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809","entity_key":"d_pre_names_one:1","voice_id":"kdmDKE6EkgrWrrykO9Qt","voice_name":"Alexandra - Conversational and Natural","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f200c3c0715334130d62c2c0fa91d6b490bc99163ddc69d7a60689d262290164","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:3 -> audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6eb9b2ac-7e3d-5a4b-8dc9-dcfbc5e3e9d3', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_spell_name:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '511f886dc17710b915e45077adf2b0ca2db16ff5b4381e72867881c6cef0d4b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed496c8a-7dbf-573e-94dc-b4142b7499d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6eb9b2ac-7e3d-5a4b-8dc9-dcfbc5e3e9d3', 1), '511f886dc17710b915e45077adf2b0ca2db16ff5b4381e72867881c6cef0d4b8',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3', 1567, '2026-09-14 13:11:13.469963', '6759cecbac6ac45568fb0e7d3565feafbd41846bf763f092c9c4fc774d9d1ac1', 'validated', '{"audio_key":"b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589","entity_key":"d_pre_spell_name:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"6759cecbac6ac45568fb0e7d3565feafbd41846bf763f092c9c4fc774d9d1ac1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:5 -> audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e541a84e-b8c7-513f-ac3a-81526a0df8fa', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff70c7ac95663d0237a01a5adb17b6a3517ac255fd062b0ccec372a024db6c30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a431d6b-2ee4-5b8d-90ac-8758de06b3c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e541a84e-b8c7-513f-ac3a-81526a0df8fa', 1), 'ff70c7ac95663d0237a01a5adb17b6a3517ac255fd062b0ccec372a024db6c30',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3', 914, '2026-09-14 13:11:14.408742', 'f1f65ac4531ed5bb73cd6c2c3b5ce63285dca51bc6c410c6274960531a77e6d8', 'validated', '{"audio_key":"bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868","entity_key":"d_pre_capstone_meeting:5","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"f1f65ac4531ed5bb73cd6c2c3b5ce63285dca51bc6c410c6274960531a77e6d8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:3 -> audio/generated/en-US/dialogues/bafc25d7c3b55398a0fde4cdd68f0b5f2a382a0c7bfe3563d31aa84197418668.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d0aa4a6-23d3-565b-aed3-2b6b00e5f5f5', 1)
  AND voice_key = 'character:ava:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63265a79774350462d4ce11d5a90687ff8e6f2511bb512e0409be568b6be7046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5dd9845-34f8-5a28-a453-f61dd3992a15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d0aa4a6-23d3-565b-aed3-2b6b00e5f5f5', 1), '63265a79774350462d4ce11d5a90687ff8e6f2511bb512e0409be568b6be7046',
  'character:ava:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/bafc25d7c3b55398a0fde4cdd68f0b5f2a382a0c7bfe3563d31aa84197418668.mp3', 1384, '2026-09-14 13:11:15.434382', '9fbfcb8bb3de430c2a86acddb817764a9fa7c006351346378df5e2f1c2a1e610', 'validated', '{"audio_key":"bafc25d7c3b55398a0fde4cdd68f0b5f2a382a0c7bfe3563d31aa84197418668","entity_key":"d_en_en-real-world-gate_meet:3","voice_id":"BBz8H3kffyIUs3SYExlh","voice_name":"Sabine - Fun and Dynamic Narrator","voice_labels":{"accent":"american","language":"en","descriptive":"confident","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"9fbfcb8bb3de430c2a86acddb817764a9fa7c006351346378df5e2f1c2a1e610","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/bafc25d7c3b55398a0fde4cdd68f0b5f2a382a0c7bfe3563d31aa84197418668.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_meet:6 -> audio/generated/en-US/dialogues/bc119ea9fab46c29347ec4270abcaf940906a8830effeb618e50ab638259fce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf4c4b6a-4c3f-543a-9c50-803538c13548', 1)
  AND voice_key = 'character:chris:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_meet:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14647106-4b97-55f7-9582-1b25cbf8b333', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf4c4b6a-4c3f-543a-9c50-803538c13548', 1), '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f',
  'character:chris:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/bc119ea9fab46c29347ec4270abcaf940906a8830effeb618e50ab638259fce2.mp3', 1332, '2026-09-14 13:11:16.445155', '7453e04138853ac6760eb085238da8aa65500f6329ac22f8b72d4b0d3e32944a', 'validated', '{"audio_key":"bc119ea9fab46c29347ec4270abcaf940906a8830effeb618e50ab638259fce2","entity_key":"d_en_en-real-world-gate_meet:6","voice_id":"s3TPKV1kjDlVtZbl4Ksh","voice_name":"Adam - Engaging, Friendly and Bright","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7453e04138853ac6760eb085238da8aa65500f6329ac22f8b72d4b0d3e32944a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/bc119ea9fab46c29347ec4270abcaf940906a8830effeb618e50ab638259fce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_intro:5 -> audio/generated/en-US/dialogues/bf3c10e247d8b0e89095ae775b56212f1d9008d0c1fca9482b6e3e347e56cf71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('869cbe6d-c6db-517b-a13d-540209a3ad09', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_intro:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39954823f73a76e35ec7280de44b2eb4b26399ecdc00a2b3640db22375d3a4b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e91639dc-9b3f-5f2a-bcbf-2ddc11ad49b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('869cbe6d-c6db-517b-a13d-540209a3ad09', 1), '39954823f73a76e35ec7280de44b2eb4b26399ecdc00a2b3640db22375d3a4b3',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/bf3c10e247d8b0e89095ae775b56212f1d9008d0c1fca9482b6e3e347e56cf71.mp3', 1097, '2026-09-14 13:11:17.440309', 'a654da7fcfb965d63111b6ce0829f81cb0ef59127b9c9d4f919c8ae57e945c5c', 'validated', '{"audio_key":"bf3c10e247d8b0e89095ae775b56212f1d9008d0c1fca9482b6e3e347e56cf71","entity_key":"d_pre_ready_intro:5","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"a654da7fcfb965d63111b6ce0829f81cb0ef59127b9c9d4f919c8ae57e945c5c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/bf3c10e247d8b0e89095ae775b56212f1d9008d0c1fca9482b6e3e347e56cf71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_feeling_family:1 -> audio/generated/en-US/dialogues/ccacc6301e29017fb1db48a063e9092d1cbe8d371813f36999be719975a35979.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f40edcfa-848d-5e82-89db-cb9f9f6aa4b6', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_feeling_family:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df287dfc1406ed2b692e1c2c783bb5cec97eac53151ee1d9810397aa0afa0d89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ba13cdd-af3b-5947-a2b2-1e371e9f8c7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f40edcfa-848d-5e82-89db-cb9f9f6aa4b6', 1), 'df287dfc1406ed2b692e1c2c783bb5cec97eac53151ee1d9810397aa0afa0d89',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/ccacc6301e29017fb1db48a063e9092d1cbe8d371813f36999be719975a35979.mp3', 1018, '2026-09-14 13:11:18.416196', '16e2882329464211bb5c3b7be50a12e55380187f0256b68ab0a611e5284b37e4', 'validated', '{"audio_key":"ccacc6301e29017fb1db48a063e9092d1cbe8d371813f36999be719975a35979","entity_key":"d_en_en-about-me_feeling_family:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"16e2882329464211bb5c3b7be50a12e55380187f0256b68ab0a611e5284b37e4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/ccacc6301e29017fb1db48a063e9092d1cbe8d371813f36999be719975a35979.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-about-me_feeling_family:4 -> audio/generated/en-US/dialogues/d524cb6e406dcd64a4bbc3ce64c3619e2188364f1397edd01a82a7d10654eb5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ab54a7b-26d2-5663-bb7b-149dd2c8c760', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-about-me_feeling_family:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed27f707-cc68-5dcd-abd2-d736e7a0be9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ab54a7b-26d2-5663-bb7b-149dd2c8c760', 1), '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/d524cb6e406dcd64a4bbc3ce64c3619e2188364f1397edd01a82a7d10654eb5c.mp3', 1149, '2026-09-14 13:11:19.398332', '70458a605774808ad9397886786e84eee13758668b33e0e91d645bf0b28c7cf9', 'validated', '{"audio_key":"d524cb6e406dcd64a4bbc3ce64c3619e2188364f1397edd01a82a7d10654eb5c","entity_key":"d_en_en-about-me_feeling_family:4","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"70458a605774808ad9397886786e84eee13758668b33e0e91d645bf0b28c7cf9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/d524cb6e406dcd64a4bbc3ce64c3619e2188364f1397edd01a82a7d10654eb5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:4 -> audio/generated/en-US/dialogues/d5e386e5f7faebb5d15a13ea6d845e649c0f59a332f9e494ecb77b0f7966b5f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1816a4f-411c-5ab2-84aa-e61a71e36dae', 1)
  AND voice_key = 'character:jack:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f7c8678-90e2-51db-a5ea-d5f6345dab5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1816a4f-411c-5ab2-84aa-e61a71e36dae', 1), 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7',
  'character:jack:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/d5e386e5f7faebb5d15a13ea6d845e649c0f59a332f9e494ecb77b0f7966b5f6.mp3', 1201, '2026-09-14 13:11:20.392283', 'b1974bca1b0cddd47f3d461dee800ea319dfd7dda53eed5db9f41313e1aa3f24', 'validated', '{"audio_key":"d5e386e5f7faebb5d15a13ea6d845e649c0f59a332f9e494ecb77b0f7966b5f6","entity_key":"d_en_en-real-world-gate_public_task:4","voice_id":"1SM7GgM6IMuvQlz2BwM3","voice_name":"Mark - ConvoAI","voice_labels":{"language":"en","descriptive":"casual","age":"middle_aged","use_case":"conversational","accent":"american","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"b1974bca1b0cddd47f3d461dee800ea319dfd7dda53eed5db9f41313e1aa3f24","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/d5e386e5f7faebb5d15a13ea6d845e649c0f59a332f9e494ecb77b0f7966b5f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-forms-signs_sign:3 -> audio/generated/en-US/dialogues/e4280b674d59f16d8299715917fde7c3866616c424637dc13fd7007ab5cacb12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9435fcb4-7005-502a-87ab-076b61e021d4', 1)
  AND voice_key = 'character:ella:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-forms-signs_sign:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bf120e4-9fe9-53f9-93d3-daad9355baa4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9435fcb4-7005-502a-87ab-076b61e021d4', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'character:ella:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e4280b674d59f16d8299715917fde7c3866616c424637dc13fd7007ab5cacb12.mp3', 1253, '2026-09-14 13:11:21.362304', 'a744267fc04bd63878d02fa968aac7a226e3322f6006413aaafd6b07814ddf6e', 'validated', '{"audio_key":"e4280b674d59f16d8299715917fde7c3866616c424637dc13fd7007ab5cacb12","entity_key":"d_en_en-forms-signs_sign:3","voice_id":"qBDvhofpxp92JgXJxDjB","voice_name":"Lily Wolff - Expressive and Kind","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a744267fc04bd63878d02fa968aac7a226e3322f6006413aaafd6b07814ddf6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e4280b674d59f16d8299715917fde7c3866616c424637dc13fd7007ab5cacb12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-world-gate_public_task:5 -> audio/generated/en-US/dialogues/e5c13c9a102671accaaffbd62e78e14bbffa43a6b5e3a388efd409e040de6a42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0398f9db-6158-59e8-ad44-0e7622333e60', 1)
  AND voice_key = 'character:jack:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-world-gate_public_task:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4be15cb-25e0-5017-8a2a-b6ad5730673d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0398f9db-6158-59e8-ad44-0e7622333e60', 1), 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee',
  'character:jack:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e5c13c9a102671accaaffbd62e78e14bbffa43a6b5e3a388efd409e040de6a42.mp3', 1280, '2026-09-14 13:11:22.365592', '375c8eeba20e534f7bf3b5f262403dd29590f28826fc4eba2440c17387def623', 'validated', '{"audio_key":"e5c13c9a102671accaaffbd62e78e14bbffa43a6b5e3a388efd409e040de6a42","entity_key":"d_en_en-real-world-gate_public_task:5","voice_id":"1SM7GgM6IMuvQlz2BwM3","voice_name":"Mark - ConvoAI","voice_labels":{"language":"en","descriptive":"casual","age":"middle_aged","use_case":"conversational","accent":"american","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"375c8eeba20e534f7bf3b5f262403dd29590f28826fc4eba2440c17387def623","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e5c13c9a102671accaaffbd62e78e14bbffa43a6b5e3a388efd409e040de6a42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_ready_cafe:5 -> audio/generated/en-US/dialogues/e7a5718cf6fec02f10ff7de0b3c6c3adfa3efe7e5bf59443ed45844e2c7a2f49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53f0d45d-79a3-5540-a88b-853ab72d7d16', 1)
  AND voice_key = 'character:nora:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_ready_cafe:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f3d9f370444b48214a7eddc525b0847455ca7707a1cb058691cf343411a1134'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e949627a-32c1-58a7-82c4-c7add45576d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53f0d45d-79a3-5540-a88b-853ab72d7d16', 1), '3f3d9f370444b48214a7eddc525b0847455ca7707a1cb058691cf343411a1134',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e7a5718cf6fec02f10ff7de0b3c6c3adfa3efe7e5bf59443ed45844e2c7a2f49.mp3', 1018, '2026-09-14 13:11:23.322947', 'b599d3741e7872abcced83e34c3f4447253ddbdfe7913cfb3b06f0c575739738', 'validated', '{"audio_key":"e7a5718cf6fec02f10ff7de0b3c6c3adfa3efe7e5bf59443ed45844e2c7a2f49","entity_key":"d_pre_ready_cafe:5","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"b599d3741e7872abcced83e34c3f4447253ddbdfe7913cfb3b06f0c575739738","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e7a5718cf6fec02f10ff7de0b3c6c3adfa3efe7e5bf59443ed45844e2c7a2f49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_phone:1 -> audio/generated/en-US/dialogues/e873a39cb35a18bc06f47c70fcfe61c886d498feadd5f88a09c056ecdd54f57d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f661530-5430-5fb0-8546-5e1658e469ce', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_phone:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b696981a1f4f5ad2c8d5e782488344b7a063f167438a92260716008444f8139e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cd1c1c3-fe35-5f25-beea-7d26ed58c88c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f661530-5430-5fb0-8546-5e1658e469ce', 1), 'b696981a1f4f5ad2c8d5e782488344b7a063f167438a92260716008444f8139e',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e873a39cb35a18bc06f47c70fcfe61c886d498feadd5f88a09c056ecdd54f57d.mp3', 1280, '2026-09-14 13:11:24.346600', '0d92a7f75d49b5f19f61c051eaa6a6cb6dfd5619849466cdae55b3170a05129a', 'validated', '{"audio_key":"e873a39cb35a18bc06f47c70fcfe61c886d498feadd5f88a09c056ecdd54f57d","entity_key":"d_en_en-real-life-numbers_phone:1","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"0d92a7f75d49b5f19f61c051eaa6a6cb6dfd5619849466cdae55b3170a05129a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e873a39cb35a18bc06f47c70fcfe61c886d498feadd5f88a09c056ecdd54f57d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:1 -> audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a769e7c3-bb9a-53c6-9659-3c1e1c77c01b', 1)
  AND voice_key = 'character:lina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_water_offer:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5794713b-6e2b-532b-b642-84b19de67ad8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a769e7c3-bb9a-53c6-9659-3c1e1c77c01b', 1), '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3', 783, '2026-09-14 13:11:25.270000', '4a57b64690ef3b36584609692ac33de8f19fba3d435e27a5595b3fbc9b6c3fa3', 'validated', '{"audio_key":"e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca","entity_key":"d_pre_water_offer:1","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"4a57b64690ef3b36584609692ac33de8f19fba3d435e27a5595b3fbc9b6c3fa3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_greeting_door:1 -> audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e5ec1a6-e320-52bc-b631-cc0bcb2ed4e5', 1)
  AND voice_key = 'character:mia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_greeting_door:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('237388ff-172b-5fcc-86ad-e8c0ef262b45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e5ec1a6-e320-52bc-b631-cc0bcb2ed4e5', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:mia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3', 914, '2026-09-14 13:11:26.244525', '0359dba479f23b0b028bf824f9906e5ca441a571ce709fedcbc133160c659cd2', 'validated', '{"audio_key":"e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce","entity_key":"d_pre_greeting_door:1","voice_id":"Z3R5wn05IrDiVCyEkUrK","voice_name":"Arabella","voice_labels":{"accent":"american","language":"en","descriptive":"gentle","use_case":"narrative_story","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"0359dba479f23b0b028bf824f9906e5ca441a571ce709fedcbc133160c659cd2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:2 -> audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20761349-5bcc-5760-98de-b2ae1db26a0a', 1)
  AND voice_key = 'character:arman:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_capstone_meeting:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1233be4-8794-559a-90b9-26b9cc0dffee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20761349-5bcc-5760-98de-b2ae1db26a0a', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3', 783, '2026-09-14 13:11:27.176456', 'b401ac826f25e000e03b85a4466b81655d69af940d3ce9145449e881de4b33b0', 'validated', '{"audio_key":"eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c","entity_key":"d_pre_capstone_meeting:2","voice_id":"f5HLTX707KIM4SzJYzSz","voice_name":"Brad - Welcoming & Casual","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b401ac826f25e000e03b85a4466b81655d69af940d3ce9145449e881de4b33b0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_en_en-real-life-numbers_price_day:4 -> audio/generated/en-US/dialogues/ef4153e4b3cfe482abdd581ec61efc40bad7fe5114de80305d74e8ac8f38f09a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e241efc-1554-56e2-be7b-6388333a9342', 1)
  AND voice_key = 'character:adam:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_en_en-real-life-numbers_price_day:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfdc6c7e-f339-5f13-9c0f-a42e89c29bc7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e241efc-1554-56e2-be7b-6388333a9342', 1), 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8',
  'character:adam:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/ef4153e4b3cfe482abdd581ec61efc40bad7fe5114de80305d74e8ac8f38f09a.mp3', 914, '2026-09-14 13:11:28.127067', '529d1307096ff5985275d54aaa1a2f4044698ee5777f66120c8ddbfcb3673950', 'validated', '{"audio_key":"ef4153e4b3cfe482abdd581ec61efc40bad7fe5114de80305d74e8ac8f38f09a","entity_key":"d_en_en-real-life-numbers_price_day:4","voice_id":"Smxkoz0xiOoHo5WcSskf","voice_name":"Dexter – Customer Support Pro","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"professional","language":"en","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"529d1307096ff5985275d54aaa1a2f4044698ee5777f66120c8ddbfcb3673950","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/ef4153e4b3cfe482abdd581ec61efc40bad7fe5114de80305d74e8ac8f38f09a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_bye_class:1 -> audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a71c42db-4ab4-515c-a74a-9953326b10ff', 1)
  AND voice_key = 'character:ava:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_bye_class:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('015b205c-3805-538d-b6c5-78523f645432', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a71c42db-4ab4-515c-a74a-9953326b10ff', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'character:ava:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3', 783, '2026-09-14 13:11:29.080736', 'a2c55fae3ba001633ac8c9429c306a51f0a84f0f025ed96d633530c94cbe2d9c', 'validated', '{"audio_key":"fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0","entity_key":"d_pre_bye_class:1","voice_id":"BBz8H3kffyIUs3SYExlh","voice_name":"Sabine - Fun and Dynamic Narrator","voice_labels":{"accent":"american","language":"en","descriptive":"confident","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"a2c55fae3ba001633ac8c9429c306a51f0a84f0f025ed96d633530c94cbe2d9c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_bye_class:2 -> audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8394f4f9-1467-5523-ba59-27954dad753e', 1)
  AND voice_key = 'character:noah:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_pre_bye_class:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c0ebb82-a324-5c76-bc45-125762caf706', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8394f4f9-1467-5523-ba59-27954dad753e', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'character:noah:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3', 966, '2026-09-14 13:11:30.077932', 'd5065a2802f375558137a33cc1716e780945851595f553cd42996fb952a60849', 'validated', '{"audio_key":"fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf","entity_key":"d_pre_bye_class:2","voice_id":"c6SfcYrb2t09NHXiT80T","voice_name":"Jarnathan - Confident and Versatile","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d5065a2802f375558137a33cc1716e780945851595f553cd42996fb952a60849","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_repeat -> audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fda38cd7-6d68-55f7-9366-de3f291d48ce', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25e2b6b106523880e27763084ffa6a0756335be0d7106022535365b9ad39b4b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb17644b-a1a8-54fd-8630-25e596a24b25', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fda38cd7-6d68-55f7-9366-de3f291d48ce', 1), '25e2b6b106523880e27763084ffa6a0756335be0d7106022535365b9ad39b4b1',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3', 862, '2026-09-14 13:11:31.021909', '4cc57238b5d316263f92d523a1e1ac04cba402c87ec0428f4b69c01f0d8e8764', 'validated', '{"audio_key":"0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5","entity_key":"lx_pre_repeat","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4cc57238b5d316263f92d523a1e1ac04cba402c87ec0428f4b69c01f0d8e8764","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_key -> audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('489fea4a-9cc7-5781-a5df-528d5f1a4f18', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_key')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c70e12b7a0646f92279f427c7b38e7334d8e5389cff167a1dc30e73f826b683'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27b69b8c-1002-50e9-a9cb-cd824672386c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('489fea4a-9cc7-5781-a5df-528d5f1a4f18', 1), '2c70e12b7a0646f92279f427c7b38e7334d8e5389cff167a1dc30e73f826b683',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3', 783, '2026-09-14 13:11:31.948786', 'd19880c1b3d94c95e954a86ed22ec59a4c7b73c2387cc992addb92af67726623', 'validated', '{"audio_key":"13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4","entity_key":"lx_pre_key","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d19880c1b3d94c95e954a86ed22ec59a4c7b73c2387cc992addb92af67726623","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_thanks -> audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d6b2340-2f47-578c-90d9-f2e9c515a0a6', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_thanks')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6a2729cbf6bcadce577a31f7f76201d5ce63c57d6c53318000d67714bb354ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1db499c7-8ce3-5e71-9179-50dbbe670c9e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d6b2340-2f47-578c-90d9-f2e9c515a0a6', 1), 'a6a2729cbf6bcadce577a31f7f76201d5ce63c57d6c53318000d67714bb354ef',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3', 835, '2026-09-14 13:11:32.889951', '62fcde087df7534c0770125ebc7f4d6692e4d2dd357e269c2a0b23b97cb96bd6', 'validated', '{"audio_key":"16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233","entity_key":"lx_pre_thanks","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"62fcde087df7534c0770125ebc7f4d6692e4d2dd357e269c2a0b23b97cb96bd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_ten -> audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dfec0d85-d849-5904-9466-9d79842097d2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_ten')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f440d31-3791-50f2-bc1a-6e6b31b47eff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dfec0d85-d849-5904-9466-9d79842097d2', 1), 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3', 966, '2026-09-14 13:11:33.814078', '0204b4334546ded92eedea10ce9133d74994e1593b407d09eb817566de9bf0f0', 'validated', '{"audio_key":"1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3","entity_key":"lx_pre_ten","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"0204b4334546ded92eedea10ce9133d74994e1593b407d09eb817566de9bf0f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_five -> audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8ff7798-2d2e-59f2-860b-294ba7c2d5e2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_five')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '222b0bd51fcef7e65c2e62db2ed65457013bab56be6fafeb19ee11d453153c80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308174ce-8571-5fc6-ba0f-8adb2c0b8e75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8ff7798-2d2e-59f2-860b-294ba7c2d5e2', 1), '222b0bd51fcef7e65c2e62db2ed65457013bab56be6fafeb19ee11d453153c80',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3', 783, '2026-09-14 13:11:34.945367', 'b8e6851fb800aad3871941f8b4804cc23de8dffd35ff696c3c76eb767c30b731', 'validated', '{"audio_key":"22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e","entity_key":"lx_pre_five","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b8e6851fb800aad3871941f8b4804cc23de8dffd35ff696c3c76eb767c30b731","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_no -> audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('63558d47-126f-538e-ade5-945a5a952624', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_no')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ce35e29-c63e-59ff-b084-00c0d1a73400', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('63558d47-126f-538e-ade5-945a5a952624', 1), '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3', 835, '2026-09-14 13:11:35.869070', '611839e4052b960f2b415efef090ed86cb68289585b8c793850e1ca4607c5e04', 'validated', '{"audio_key":"2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9","entity_key":"lx_pre_no","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"611839e4052b960f2b415efef090ed86cb68289585b8c793850e1ca4607c5e04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_bag -> audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8ec421c-444d-55c4-b5b3-dbf1bec8d8e8', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_bag')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c018019b6a8b01ab5868cf4be8db327a7549ae03202548b9ffcd2671c4c2b624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12dbe824-2b07-5d3c-9eef-728ba74af9b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8ec421c-444d-55c4-b5b3-dbf1bec8d8e8', 1), 'c018019b6a8b01ab5868cf4be8db327a7549ae03202548b9ffcd2671c4c2b624',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3', 835, '2026-09-14 13:11:36.841038', 'c20c513a8b3657749f8e169f61b3cba5ad919c11ab35bf1290a1cb8c44d89952', 'validated', '{"audio_key":"3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2","entity_key":"lx_pre_bag","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c20c513a8b3657749f8e169f61b3cba5ad919c11ab35bf1290a1cb8c44d89952","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_phone -> audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c95ba449-4102-55af-a54b-d8ee4f5e6306', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_phone')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30b88877-f3e7-5461-be34-cd3a2b861052', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c95ba449-4102-55af-a54b-d8ee4f5e6306', 1), '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3', 914, '2026-09-14 13:11:37.821122', 'ab75938523533b607108270e7606c18602680b6e496b8fa6a1d06a6b9a5d16fe', 'validated', '{"audio_key":"59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64","entity_key":"lx_pre_phone","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ab75938523533b607108270e7606c18602680b6e496b8fa6a1d06a6b9a5d16fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_seven -> audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1094ec10-abc7-577a-9073-abdad7d57e45', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_seven')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ba8d02b16fd2a01c1a8ba1a1f036d7ce386ed953696fa57331c2ac48a80b255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6d6c0fa-c42a-5df6-a957-460e4b11cfaf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1094ec10-abc7-577a-9073-abdad7d57e45', 1), '3ba8d02b16fd2a01c1a8ba1a1f036d7ce386ed953696fa57331c2ac48a80b255',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3', 835, '2026-09-14 13:11:38.773702', '997b67a8c6edb29d980384ab8432da1ccbd863dd3c920ab6e9158427e8b8efd5', 'validated', '{"audio_key":"601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8","entity_key":"lx_pre_seven","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"997b67a8c6edb29d980384ab8432da1ccbd863dd3c920ab6e9158427e8b8efd5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_listen -> audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('352db903-37b1-500a-8161-6add3f3d339a', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f8860eb5103a16b917146f9cbf21aa00fe7d2291b1aad7f4fe83a6db71688cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7f6236a-5c5c-5216-84f8-7eeb6a0eb0c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('352db903-37b1-500a-8161-6add3f3d339a', 1), '6f8860eb5103a16b917146f9cbf21aa00fe7d2291b1aad7f4fe83a6db71688cf',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3', 835, '2026-09-14 13:11:39.714965', '44d06c8c2a4f46efeb9d6fa7771989e2c688014f75675a1325ab0b5d70c67a82', 'validated', '{"audio_key":"636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f","entity_key":"lx_pre_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"44d06c8c2a4f46efeb9d6fa7771989e2c688014f75675a1325ab0b5d70c67a82","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_nine -> audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a0354be-6750-55d7-9653-4a73081e63b0', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_nine')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edcd8e701a2df0cd66a39bae6aa156cf16fe2b9653ef65f7d31742e2352421e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f9f2890-cf09-5b6a-8e3e-083ab46564d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a0354be-6750-55d7-9653-4a73081e63b0', 1), 'edcd8e701a2df0cd66a39bae6aa156cf16fe2b9653ef65f7d31742e2352421e4',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3', 862, '2026-09-14 13:11:40.651684', '2c1fbac004ae3ac546da2c87ae9c2c0743e5b7cc6ce3dadb88231ce0b1d632ea', 'validated', '{"audio_key":"6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4","entity_key":"lx_pre_nine","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2c1fbac004ae3ac546da2c87ae9c2c0743e5b7cc6ce3dadb88231ce0b1d632ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_one -> audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('435d7e57-ec18-5426-b2be-a6536d97b4a0', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_one')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7692c3ad3540bb803c020b3aee66cd8887123234ea0c6e7143c0add73ff431ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4438835e-0d0e-50d0-92e0-3eb6391fad2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('435d7e57-ec18-5426-b2be-a6536d97b4a0', 1), '7692c3ad3540bb803c020b3aee66cd8887123234ea0c6e7143c0add73ff431ed',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3', 653, '2026-09-14 13:11:41.563884', '25846dbcd653b3ee1990975c80e4ca9118144708f11cf56dc698a77dad4d8e47', 'validated', '{"audio_key":"6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1","entity_key":"lx_pre_one","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"25846dbcd653b3ee1990975c80e4ca9118144708f11cf56dc698a77dad4d8e47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_six -> audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e79b2eda-28d8-5d15-8959-048f9d933352', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_six')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44778d82365e4af681c40d5f0eef5cf6f5899d3f0ac335050a7ed6779cf3f674'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d60c1ef2-721d-561b-8788-1bf360707d52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e79b2eda-28d8-5d15-8959-048f9d933352', 1), '44778d82365e4af681c40d5f0eef5cf6f5899d3f0ac335050a7ed6779cf3f674',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3', 835, '2026-09-14 13:11:42.524636', '70b2c9bbe4d9807ce0d6cc6270fa9a429c5d1e1eb97d177d4f0d5b7ffb769707', 'validated', '{"audio_key":"70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0","entity_key":"lx_pre_six","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"70b2c9bbe4d9807ce0d6cc6270fa9a429c5d1e1eb97d177d4f0d5b7ffb769707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_book -> audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fb4aaceb-fa01-5717-b4c0-075bb55d2ee5', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_book')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92719fe0cf8cd51592af31ee8a5736d79f7273777fa3f7b70bfe993a4cd32180'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3947f56-a9d9-52d6-a631-a9ffd889642c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fb4aaceb-fa01-5717-b4c0-075bb55d2ee5', 1), '92719fe0cf8cd51592af31ee8a5736d79f7273777fa3f7b70bfe993a4cd32180',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3', 914, '2026-09-14 13:11:43.508945', '6eeaf00eab97601c1361612fd7a5a53d5d4cf9ad651f9908522e54e2600cb18e', 'validated', '{"audio_key":"80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44","entity_key":"lx_pre_book","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"6eeaf00eab97601c1361612fd7a5a53d5d4cf9ad651f9908522e54e2600cb18e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_please -> audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('958eaea3-e5ed-54ea-884e-6a74fbff5eb1', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_please')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56ccc4dcfc96534b06fc0c08a301be24f13b491484d5d984953cc0dba9bbb89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07545da2-f0eb-5b7b-aabe-8012fb6b11d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('958eaea3-e5ed-54ea-884e-6a74fbff5eb1', 1), '56ccc4dcfc96534b06fc0c08a301be24f13b491484d5d984953cc0dba9bbb89a',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3', 731, '2026-09-14 13:11:44.452964', 'a6199eae194736fcfa050fcdffda8786a14d6b6f060c7d11e75e559d4f9ba1a6', 'validated', '{"audio_key":"8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf","entity_key":"lx_pre_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a6199eae194736fcfa050fcdffda8786a14d6b6f060c7d11e75e559d4f9ba1a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_yes -> audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc94104e-c504-5a27-8692-16f2a1f82a7a', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_yes')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a798890fe93817163b10b5f7bd2ca4d25d84c52739a645a889c173eee7d9d3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad0b00eb-54e9-53bc-883c-4158ba4e1839', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc94104e-c504-5a27-8692-16f2a1f82a7a', 1), '8a798890fe93817163b10b5f7bd2ca4d25d84c52739a645a889c173eee7d9d3d',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3', 783, '2026-09-14 13:11:45.403908', '68fefad6afd23ea5ffd25ac0c1322e9e9623c9376c82d7ad6c8e0f4d37e75c06', 'validated', '{"audio_key":"97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04","entity_key":"lx_pre_yes","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"68fefad6afd23ea5ffd25ac0c1322e9e9623c9376c82d7ad6c8e0f4d37e75c06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_four -> audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('931c9a52-1ac8-5822-91b5-547cc20b3f2b', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_four')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04efaf080f5a3e74e1c29d1ca6a48569382cbbcd324e8d59d2b83ef21c039f00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88b963f5-5e44-5bfe-a0db-f62d1efcd007', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('931c9a52-1ac8-5822-91b5-547cc20b3f2b', 1), '04efaf080f5a3e74e1c29d1ca6a48569382cbbcd324e8d59d2b83ef21c039f00',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3', 914, '2026-09-14 13:11:46.348689', '0d55c9657489b386561e52d06f311ca8f751afff59a610bfea560a223d70aaac', 'validated', '{"audio_key":"992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db","entity_key":"lx_pre_four","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"0d55c9657489b386561e52d06f311ca8f751afff59a610bfea560a223d70aaac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_look -> audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e5a11230-304c-5098-a63d-8fb969361be7', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_look')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c01eba119e00d79c82b6f65d70bc5f1044d568618bf41377e6d1432023fc2b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e262cc8c-5394-5f06-af32-67ba1cd69013', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e5a11230-304c-5098-a63d-8fb969361be7', 1), '3c01eba119e00d79c82b6f65d70bc5f1044d568618bf41377e6d1432023fc2b8',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3', 731, '2026-09-14 13:11:47.272626', '57b247e91a5827992105ac2f3fc8b2f50ce3d37bd2d5fafde27796cc80a34fef', 'validated', '{"audio_key":"a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482","entity_key":"lx_pre_look","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"57b247e91a5827992105ac2f3fc8b2f50ce3d37bd2d5fafde27796cc80a34fef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_two -> audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7980c2ea-f310-5aa3-aef4-5050bc65164c', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_two')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('338a6d80-05b7-5564-b71b-593dd889a23b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7980c2ea-f310-5aa3-aef4-5050bc65164c', 1), '3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3', 731, '2026-09-14 13:11:48.225219', 'd56e19adbdeaff741901fbb0612f7bb26da6c19b88049074964a86ff53816e28', 'validated', '{"audio_key":"acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796","entity_key":"lx_pre_two","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d56e19adbdeaff741901fbb0612f7bb26da6c19b88049074964a86ff53816e28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_sorry -> audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d04751a1-16fd-56a2-bf60-0a65db7482ac', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_sorry')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '484aab2f2cd0f77b3c30f91521ba9a76c8c501112a53e100154a098c274f03d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c67b7302-bcd4-5848-b610-965f7d8917f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d04751a1-16fd-56a2-bf60-0a65db7482ac', 1), '484aab2f2cd0f77b3c30f91521ba9a76c8c501112a53e100154a098c274f03d3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3', 783, '2026-09-14 13:11:49.172821', '8d5bf4f5d28552530ff9257b1f2b0e1f0b0a225acfeca173b0570db5c7d4864c', 'validated', '{"audio_key":"b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616","entity_key":"lx_pre_sorry","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"8d5bf4f5d28552530ff9257b1f2b0e1f0b0a225acfeca173b0570db5c7d4864c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_three -> audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b1a99ad-d50e-57b4-ae0c-95af46c51cd2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_three')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccdc8536-3318-5201-babb-8f46cb38a6df', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b1a99ad-d50e-57b4-ae0c-95af46c51cd2', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3', 835, '2026-09-14 13:11:50.147050', 'ff8120a0783262c7c45d87395ad8a0953dd364b9fdc8ec3382ac3111f0a237d0', 'validated', '{"audio_key":"b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea","entity_key":"lx_pre_three","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ff8120a0783262c7c45d87395ad8a0953dd364b9fdc8ec3382ac3111f0a237d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_read -> audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28610b97-6a01-5de8-b6a8-d05282bd4dad', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_read')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3316348dbadfb7b11c7c2ea235949419e23f9fa898ad2c198f999617912a9925'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12fcb93a-6d72-5a23-ae49-8e1782086b73', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28610b97-6a01-5de8-b6a8-d05282bd4dad', 1), '3316348dbadfb7b11c7c2ea235949419e23f9fa898ad2c198f999617912a9925',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3', 783, '2026-09-14 13:11:51.141335', '48b0b9653bb9af06365ad91ffa1be198322473cbc67f955fb6062b5b4fae6a4a', 'validated', '{"audio_key":"c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df","entity_key":"lx_pre_read","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"48b0b9653bb9af06365ad91ffa1be198322473cbc67f955fb6062b5b4fae6a4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_zero -> audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1805a8b1-e0b4-50d9-8361-a734e63e4d7d', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_zero')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f20c4fd8-161a-544c-8afa-b7c7c45aae52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1805a8b1-e0b4-50d9-8361-a734e63e4d7d', 1), 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3', 835, '2026-09-14 13:11:52.090266', '1be61e6fc023af4fe7e48ba6570798ad83bde66be50cea11956b891b3566d1d6', 'validated', '{"audio_key":"cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92","entity_key":"lx_pre_zero","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1be61e6fc023af4fe7e48ba6570798ad83bde66be50cea11956b891b3566d1d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_write -> audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4a431c0-de1a-5576-ac1e-8ae8d0ace951', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_write')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10fd874b68dad080ed706762c8e163dabb20514bddae38fb159c56f714a3b143'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e39950f-ccea-5a1a-89f0-f70cecb4a7d8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4a431c0-de1a-5576-ac1e-8ae8d0ace951', 1), '10fd874b68dad080ed706762c8e163dabb20514bddae38fb159c56f714a3b143',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3', 835, '2026-09-14 13:11:53.013616', 'b58743e00dd0dcf64f820f3a8ff50a4a3843a2c94d457a4beee88cc6d8d29251', 'validated', '{"audio_key":"d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75","entity_key":"lx_pre_write","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b58743e00dd0dcf64f820f3a8ff50a4a3843a2c94d457a4beee88cc6d8d29251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_eight -> audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e91343b-0bf2-50d3-8d09-c572b6de6846', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_pre_eight')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97545664-40fa-5bb5-b2f4-33f14cc3945b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e91343b-0bf2-50d3-8d09-c572b6de6846', 1), 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3', 731, '2026-09-14 13:11:54.109987', 'd1956e30415137b4c80c4eb459bba51ecd682d7a376531c3cb4b65c38b91c141', 'validated', '{"audio_key":"e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f","entity_key":"lx_pre_eight","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d1956e30415137b4c80c4eb459bba51ecd682d7a376531c3cb4b65c38b91c141","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_spelling_names:example:1 -> audio/generated/en-US/utterances/03a74c57532594c843828cfd3bd10d2a500603a1fb7f1f712a5d2a9ccca200e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('dbb275e2-45ab-5483-8be5-cbbe54b7bca1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_spelling_names:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ecde249d747d51d869ae689c44cc1e6191b581b8315edac97990fdc4dce40d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9658e478-a963-5df7-89c8-7a377fa6224c', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('dbb275e2-45ab-5483-8be5-cbbe54b7bca1', 1), '4ecde249d747d51d869ae689c44cc1e6191b581b8315edac97990fdc4dce40d7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/03a74c57532594c843828cfd3bd10d2a500603a1fb7f1f712a5d2a9ccca200e6.mp3', 966, '2026-09-14 13:11:55.045986', '4c6f7e9aca3296cf5d20d7da8061f4ae31afa2f36fe8017e3df635bc0aa90a12', 'validated', '{"audio_key":"03a74c57532594c843828cfd3bd10d2a500603a1fb7f1f712a5d2a9ccca200e6","entity_key":"g_fix_spelling_names:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4c6f7e9aca3296cf5d20d7da8061f4ae31afa2f36fe8017e3df635bc0aa90a12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/03a74c57532594c843828cfd3bd10d2a500603a1fb7f1f712a5d2a9ccca200e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_x -> audio/generated/en-US/utterances/070dd15170615b6fffd700b10e80ba66c577fea20d55beaa2eb1fa4ff88e3a7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d4f5c24-43cc-5232-89d3-96b7df2b49ff', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_x')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b68ab3847feda7d6c62c1fbcbeebfa35eab7351ed5e78f4ddadea5df64b8015'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79a9f4c5-62ff-56e3-a3fd-f1c8d1509184', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d4f5c24-43cc-5232-89d3-96b7df2b49ff', 1), '4b68ab3847feda7d6c62c1fbcbeebfa35eab7351ed5e78f4ddadea5df64b8015',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/070dd15170615b6fffd700b10e80ba66c577fea20d55beaa2eb1fa4ff88e3a7a.mp3', 653, '2026-09-14 13:11:56.167251', '3080e1741b195bf340e540c2b654a7f0a6cbd8c30dce033f4bb3f66205a6046a', 'validated', '{"audio_key":"070dd15170615b6fffd700b10e80ba66c577fea20d55beaa2eb1fa4ff88e3a7a","entity_key":"u_fix_letter_x","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"3080e1741b195bf340e540c2b654a7f0a6cbd8c30dce033f4bb3f66205a6046a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/070dd15170615b6fffd700b10e80ba66c577fea20d55beaa2eb1fa4ff88e3a7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_green -> audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('095884e5-dcd0-5f86-9873-5b8063d6aca9', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_green')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02d8f8bb-e9ec-50a2-ad08-98cf006e1434', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('095884e5-dcd0-5f86-9873-5b8063d6aca9', 1), 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3', 835, '2026-09-14 13:11:57.091391', '7a773fc24882251e5a63161eb7edbf5bc0ffb07f4ab6e16e2f2ab32fdba75644', 'validated', '{"audio_key":"080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f","entity_key":"u_pre_green","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7a773fc24882251e5a63161eb7edbf5bc0ffb07f4ab6e16e2f2ab32fdba75644","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_sound_ee -> audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e891a6c6-5275-5fea-b7d6-aa051b257905', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_sound_ee')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff59b1cf-c28a-560f-bf0b-bd19a3ba8a31', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e891a6c6-5275-5fea-b7d6-aa051b257905', 1), 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3', 835, '2026-09-14 13:11:57.091391', '7a773fc24882251e5a63161eb7edbf5bc0ffb07f4ab6e16e2f2ab32fdba75644', 'validated', '{"audio_key":"080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f","entity_key":"ex_pre_sound_ee","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7a773fc24882251e5a63161eb7edbf5bc0ffb07f4ab6e16e2f2ab32fdba75644","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_again_please -> audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bde406c5-4257-5a9a-a65e-6cf4afc132b7', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_again_please')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12d38a8f-5baf-5e9e-a2c9-317a1fad6333', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bde406c5-4257-5a9a-a65e-6cf4afc132b7', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3', 1097, '2026-09-14 13:11:58.067602', 'a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc', 'validated', '{"audio_key":"0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712","entity_key":"u_again_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_again_listen -> audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f01236b0-5fe5-5292-b904-daff65844437', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_again_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7723b840-9e6b-5001-9567-a5bca5145799', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f01236b0-5fe5-5292-b904-daff65844437', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3', 1097, '2026-09-14 13:11:58.067602', 'a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc', 'validated', '{"audio_key":"0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712","entity_key":"ex_pre_again_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_learning_chunks:example:2 -> audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_learning_chunks:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9a0953b-fc03-54f7-97df-d2d8fc733b45', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3', 1097, '2026-09-14 13:11:58.067602', 'a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc', 'validated', '{"audio_key":"0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712","entity_key":"g_pre_learning_chunks:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_ready_gate:example:1 -> audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4cfd196e-8a3f-5819-b950-8c08829a3eb4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_ready_gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e061323c-369b-5fb6-9abb-81b90d01da76', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4cfd196e-8a3f-5819-b950-8c08829a3eb4', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3', 1097, '2026-09-14 13:11:58.067602', 'a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc', 'validated', '{"audio_key":"0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712","entity_key":"g_pre_ready_gate:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-real-world-gate:example:2 -> audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('bd71cc8d-f811-53ba-b805-cc0387cf2113', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-real-world-gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e9338e4-e252-5583-95d8-38eb8a0211f2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('bd71cc8d-f811-53ba-b805-cc0387cf2113', 1), '308c8f3227d091b723f87fd5f5b463f4dd329fbe57b9d7384ab2559c8df2bf0f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3', 1097, '2026-09-14 13:11:58.067602', 'a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc', 'validated', '{"audio_key":"0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712","entity_key":"g_en_en-real-world-gate:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a7f1560f3d29b217943c68460a1a3db5514e2a557064e516e974fc894e0439dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0847ba1857545a8bb9ba35b544f90a0c8d3b7e81acd42c53a0ac6e3b45d03712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_phone_listen -> audio/generated/en-US/utterances/0c48477dd778b1866011eef30dbe999cbff020912c3a0645d1cd732008faccca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1886e409-8c18-5499-8b4a-dc792d0a1bae', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_phone_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85fa3840-57fa-5205-aadb-2863db28470a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1886e409-8c18-5499-8b4a-dc792d0a1bae', 1), '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0c48477dd778b1866011eef30dbe999cbff020912c3a0645d1cd732008faccca.mp3', 835, '2026-09-14 13:11:59.006495', 'e62e6d4cbda74458305acbd120b18f3921a2f1b390c0a5e705787599c08b1010', 'validated', '{"audio_key":"0c48477dd778b1866011eef30dbe999cbff020912c3a0645d1cd732008faccca","entity_key":"ex_pre_phone_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e62e6d4cbda74458305acbd120b18f3921a2f1b390c0a5e705787599c08b1010","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0c48477dd778b1866011eef30dbe999cbff020912c3a0645d1cd732008faccca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_l -> audio/generated/en-US/utterances/0d5634c7876fb7768ef8ac14779e15646a4c2ca93904dd88cdfe20698c4946b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c94dd3c7-3834-5df1-a3ad-8b0015b90e20', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_l')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72dfcfb0c470ac255cde83fb8fe38de8a128188e03ea5ba5b2a93adbea1062fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af45ef10-5dce-51db-8b9c-444365016883', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c94dd3c7-3834-5df1-a3ad-8b0015b90e20', 1), '72dfcfb0c470ac255cde83fb8fe38de8a128188e03ea5ba5b2a93adbea1062fa',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0d5634c7876fb7768ef8ac14779e15646a4c2ca93904dd88cdfe20698c4946b5.mp3', 653, '2026-09-14 13:11:59.997444', 'cd084d24adee462edd1613027565f4c27e29dffd35f411af5d47f2e9f55de4b9', 'validated', '{"audio_key":"0d5634c7876fb7768ef8ac14779e15646a4c2ca93904dd88cdfe20698c4946b5","entity_key":"u_fix_letter_l","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"cd084d24adee462edd1613027565f4c27e29dffd35f411af5d47f2e9f55de4b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0d5634c7876fb7768ef8ac14779e15646a4c2ca93904dd88cdfe20698c4946b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_im -> audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fa9832bc-4dd6-5603-b32d-270f78a4f936', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_name_im')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dc9ca760d4456473b66bbe5730fae606785743e662f7bae79013c077d916726'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bea4a85-d068-5ef7-b134-6e6f2a9a8a32', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fa9832bc-4dd6-5603-b32d-270f78a4f936', 1), '8dc9ca760d4456473b66bbe5730fae606785743e662f7bae79013c077d916726',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3', 862, '2026-09-14 13:12:00.936952', '64e6c553bee52d46f696285d2c60736e8cf6c921882f8916da406a627e53cbbf', 'validated', '{"audio_key":"0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2","entity_key":"u_pre_name_im","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"64e6c553bee52d46f696285d2c60736e8cf6c921882f8916da406a627e53cbbf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_what_mean -> audio/generated/en-US/utterances/0fef8f129034836d0d486796396b9e1dc3345a47557bad7bb2a42ac6facd6b09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ace6d4ac-5c68-5888-8a87-dd3a3704aff0', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_what_mean')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97873dee88f2660d38931aec1ca7f6bfb94969c6caf7cd1ecadeee99838aa7fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09e073ad-3ba5-5954-b51c-639e69ef8a44', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ace6d4ac-5c68-5888-8a87-dd3a3704aff0', 1), '97873dee88f2660d38931aec1ca7f6bfb94969c6caf7cd1ecadeee99838aa7fb',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/0fef8f129034836d0d486796396b9e1dc3345a47557bad7bb2a42ac6facd6b09.mp3', 1280, '2026-09-14 13:12:01.952728', 'a5f6e698568936a041c257bc04d13dbd56a3b922950769122a51dd2108505296', 'validated', '{"audio_key":"0fef8f129034836d0d486796396b9e1dc3345a47557bad7bb2a42ac6facd6b09","entity_key":"u_what_mean","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a5f6e698568936a041c257bc04d13dbd56a3b922950769122a51dd2108505296","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0fef8f129034836d0d486796396b9e1dc3345a47557bad7bb2a42ac6facd6b09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_goodbye -> audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce1460d3-0eda-582f-b0e2-00f5e5527eb9', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_goodbye')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c090ecad-c1e8-5f68-be52-17bd19491362', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce1460d3-0eda-582f-b0e2-00f5e5527eb9', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3', 966, '2026-09-14 13:12:02.926875', 'fdca72c1e9553bd9a3d0d52e29fe36420b91c142df7f0ed985a4549650a48a3c', 'validated', '{"audio_key":"115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8","entity_key":"u_pre_goodbye","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"fdca72c1e9553bd9a3d0d52e29fe36420b91c142df7f0ed985a4549650a48a3c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_w -> audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ebc3a621-635f-5ac5-a262-786a1a1638f5', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_w')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcb5f40df9be6bae66c1d77a6c15968866a9e6cbd7314ca432b019d17392f6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0952cfa3-7732-5566-961a-c98e5a45014e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ebc3a621-635f-5ac5-a262-786a1a1638f5', 1), 'fcb5f40df9be6bae66c1d77a6c15968866a9e6cbd7314ca432b019d17392f6f4',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3', 679, '2026-09-14 13:12:03.841273', 'fc9ca917e3e1707bef105513e6e28aaab6098662c9d877fec7e68c1108dedacb', 'validated', '{"audio_key":"11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116","entity_key":"u_fix_letter_w","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"fc9ca917e3e1707bef105513e6e28aaab6098662c9d877fec7e68c1108dedacb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_lettername_w -> audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('64c65412-3e01-5f04-b9bc-6b8d5ef777cb', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_lettername_w')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcb5f40df9be6bae66c1d77a6c15968866a9e6cbd7314ca432b019d17392f6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b467a13-cb9a-55ef-8965-d971da47f5fb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('64c65412-3e01-5f04-b9bc-6b8d5ef777cb', 1), 'fcb5f40df9be6bae66c1d77a6c15968866a9e6cbd7314ca432b019d17392f6f4',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3', 679, '2026-09-14 13:12:03.841273', 'fc9ca917e3e1707bef105513e6e28aaab6098662c9d877fec7e68c1108dedacb', 'validated', '{"audio_key":"11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116","entity_key":"ex_pre_lettername_w","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"fc9ca917e3e1707bef105513e6e28aaab6098662c9d877fec7e68c1108dedacb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/11a0f98381bc3c338597bee6bfc176ba5951e3aa9b51db82de3b527ddb256116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_c -> audio/generated/en-US/utterances/188bf00c2dfd8b1106637a92a1485cd6680025b3e7c26b4fa87d3de42c47d27b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c672890-671d-5194-aca9-0b17ca2838fd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_c')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb2efbd-b3a5-5e22-a4d4-0e3a5a747b03', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c672890-671d-5194-aca9-0b17ca2838fd', 1), '6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/188bf00c2dfd8b1106637a92a1485cd6680025b3e7c26b4fa87d3de42c47d27b.mp3', 600, '2026-09-14 13:12:04.798698', '4d6c3cab75c3c9627010327fe35f4a416fc11faa959767545661f36bababcc3c', 'validated', '{"audio_key":"188bf00c2dfd8b1106637a92a1485cd6680025b3e7c26b4fa87d3de42c47d27b","entity_key":"u_fix_letter_c","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4d6c3cab75c3c9627010327fe35f4a416fc11faa959767545661f36bababcc3c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/188bf00c2dfd8b1106637a92a1485cd6680025b3e7c26b4fa87d3de42c47d27b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_no_listen -> audio/generated/en-US/utterances/1a00670e2b797b2bc4b46267c7ef7e84fde16cfeb12daf05d4ce3efe5a1174d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d524e1e4-d683-56ee-bfab-45e8739848be', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_no_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ea442a134b2a184bd5d40104401f2a37fbc09ccf3f4bc9da161c6099be3691d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d024b08-ad6c-59db-ad93-7c9fb96fd9e8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d524e1e4-d683-56ee-bfab-45e8739848be', 1), '1ea442a134b2a184bd5d40104401f2a37fbc09ccf3f4bc9da161c6099be3691d',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/1a00670e2b797b2bc4b46267c7ef7e84fde16cfeb12daf05d4ce3efe5a1174d8.mp3', 653, '2026-09-14 13:12:05.736296', 'adeb6f05dd35f122841fe59a24952b2ae037182e9f9a04c042cbe4c09e274dc6', 'validated', '{"audio_key":"1a00670e2b797b2bc4b46267c7ef7e84fde16cfeb12daf05d4ce3efe5a1174d8","entity_key":"ex_pre_no_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"adeb6f05dd35f122841fe59a24952b2ae037182e9f9a04c042cbe4c09e274dc6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/1a00670e2b797b2bc4b46267c7ef7e84fde16cfeb12daf05d4ce3efe5a1174d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_how_spell -> audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('63f0acad-cef5-5829-a97e-56abb3eb2766', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_how_spell')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '099eca0c2efa8ee3b45f2c111ec5f0feaf33337e9c712495b002f53ae029c939'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c21ff82-1ec7-5042-a88c-e76e45ffde9f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('63f0acad-cef5-5829-a97e-56abb3eb2766', 1), '099eca0c2efa8ee3b45f2c111ec5f0feaf33337e9c712495b002f53ae029c939',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3', 1253, '2026-09-14 13:12:06.706650', 'f113969b89ec68b9ecd4e08fe4e3d3819668a8e7a5815076ffb58ba7ec8ad1e0', 'validated', '{"audio_key":"1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4","entity_key":"u_pre_how_spell","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f113969b89ec68b9ecd4e08fe4e3d3819668a8e7a5815076ffb58ba7ec8ad1e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_goodbye_listen -> audio/generated/en-US/utterances/1c2eabae8afea061b2bb270b1c1fc515e31e74ee39085d6d77539398f6f852f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('844f55b6-b1d1-527f-8f54-5b46f72f684b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_goodbye_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c015ad6ddaf8bb50689d2d7cbf1539dff6dd84473582a08ed1d15d841f4254f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('198b9b32-b8fb-5cc0-8e96-cb2ac4a356f2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('844f55b6-b1d1-527f-8f54-5b46f72f684b', 1), 'c015ad6ddaf8bb50689d2d7cbf1539dff6dd84473582a08ed1d15d841f4254f4',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/1c2eabae8afea061b2bb270b1c1fc515e31e74ee39085d6d77539398f6f852f0.mp3', 914, '2026-09-14 13:12:07.654285', '1454b6f7ff3bb926401f5ca59cd24ba7a4e5cbde3887af30e9fab56ae2ea29a4', 'validated', '{"audio_key":"1c2eabae8afea061b2bb270b1c1fc515e31e74ee39085d6d77539398f6f852f0","entity_key":"ex_pre_goodbye_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1454b6f7ff3bb926401f5ca59cd24ba7a4e5cbde3887af30e9fab56ae2ea29a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/1c2eabae8afea061b2bb270b1c1fc515e31e74ee39085d6d77539398f6f852f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_o -> audio/generated/en-US/utterances/1d964a48d8b0463b948eabbfcd9c3f964948cf47ede1d20a797e9a90c46b7aa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cc887cfb-1873-54bd-9ea8-f8fd09386c8c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_o')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4694f2e93d5c4e7d51f9c5deb75e6cc8be5e1114178c6a45b6fc2c566a0aa8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12f70b1b-d315-554d-ac06-fb6af324ddbe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cc887cfb-1873-54bd-9ea8-f8fd09386c8c', 1), 'c4694f2e93d5c4e7d51f9c5deb75e6cc8be5e1114178c6a45b6fc2c566a0aa8c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/1d964a48d8b0463b948eabbfcd9c3f964948cf47ede1d20a797e9a90c46b7aa6.mp3', 600, '2026-09-14 13:12:08.587701', 'c584b88d7fb7eace08e0c57d33057533a11ef9ea2eb0c275898888b80d1fc8ed', 'validated', '{"audio_key":"1d964a48d8b0463b948eabbfcd9c3f964948cf47ede1d20a797e9a90c46b7aa6","entity_key":"u_fix_letter_o","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c584b88d7fb7eace08e0c57d33057533a11ef9ea2eb0c275898888b80d1fc8ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/1d964a48d8b0463b948eabbfcd9c3f964948cf47ede1d20a797e9a90c46b7aa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_ready_hear_b -> audio/generated/en-US/utterances/20badd5af4ffd6913b81fa8429e71560812f8608c69ca744a5cdb1c00443f43d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7e992451-4739-5e29-9ba9-37159a637b88', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_ready_hear_b')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac56402ffea16545bb15e6bdc7ad6930facb2cf34773408ab48a8a6d88175fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0fc8aa8-559a-5e69-8c29-a741df897a4a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7e992451-4739-5e29-9ba9-37159a637b88', 1), 'aac56402ffea16545bb15e6bdc7ad6930facb2cf34773408ab48a8a6d88175fe',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/20badd5af4ffd6913b81fa8429e71560812f8608c69ca744a5cdb1c00443f43d.mp3', 1253, '2026-09-14 13:12:09.533478', '25a8ef266fcf6ff0d3ac8e5697a6e054890bee162956342521527548188f7a63', 'validated', '{"audio_key":"20badd5af4ffd6913b81fa8429e71560812f8608c69ca744a5cdb1c00443f43d","entity_key":"ex_pre_ready_hear_b","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"25a8ef266fcf6ff0d3ac8e5697a6e054890bee162956342521527548188f7a63","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/20badd5af4ffd6913b81fa8429e71560812f8608c69ca744a5cdb1c00443f43d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_h -> audio/generated/en-US/utterances/2658f0538c2b0e94880f8c0a52d3c3b891e421111acb7ab71cda5bffde62a53a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7a7d379d-afeb-5277-bff6-f429b3ecff8d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_h')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44bd7ae60f478fae1061e11a7739f4b94d1daf917982d33b6fc8a01a63f89c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1848407-adeb-5b7f-9d1c-3d17af02aa76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7a7d379d-afeb-5277-bff6-f429b3ecff8d', 1), '44bd7ae60f478fae1061e11a7739f4b94d1daf917982d33b6fc8a01a63f89c21',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2658f0538c2b0e94880f8c0a52d3c3b891e421111acb7ab71cda5bffde62a53a.mp3', 679, '2026-09-14 13:12:10.442005', 'afc8280c1ba9c39ada2060da788bde2ad0b063799cc7cd201dba7e5789899600', 'validated', '{"audio_key":"2658f0538c2b0e94880f8c0a52d3c3b891e421111acb7ab71cda5bffde62a53a","entity_key":"u_fix_letter_h","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"afc8280c1ba9c39ada2060da788bde2ad0b063799cc7cd201dba7e5789899600","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2658f0538c2b0e94880f8c0a52d3c3b891e421111acb7ab71cda5bffde62a53a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_q -> audio/generated/en-US/utterances/2af078a697f505a4636c6925d4510b3a8dae3f92afcb6fef0f077f8fd4e50ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('29275a63-4863-5d77-abc0-e0bfd6b54c01', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_q')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33260'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74d94ee5-15c9-5315-a4a4-9d61c2cf4867', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('29275a63-4863-5d77-abc0-e0bfd6b54c01', 1), '4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33260',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2af078a697f505a4636c6925d4510b3a8dae3f92afcb6fef0f077f8fd4e50ada.mp3', 600, '2026-09-14 13:12:11.361432', '03b86d946a0ddbd41d59f6d4e0bf314960d7aeb0f43b4f581d75d39a4a9ea211', 'validated', '{"audio_key":"2af078a697f505a4636c6925d4510b3a8dae3f92afcb6fef0f077f8fd4e50ada","entity_key":"u_fix_letter_q","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"03b86d946a0ddbd41d59f6d4e0bf314960d7aeb0f43b4f581d75d39a4a9ea211","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2af078a697f505a4636c6925d4510b3a8dae3f92afcb6fef0f077f8fd4e50ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_alpha_listen_z -> audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bdbf18d2-4e3c-55ab-b343-d02f7b944028', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_alpha_listen_z')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('442f5705-1782-5478-a0fe-1820d3f1b0c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bdbf18d2-4e3c-55ab-b343-d02f7b944028', 1), 'bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3', 731, '2026-09-14 13:12:12.329980', '419e2d4507e6e92d33a5c16689809d99fbff43a9b698aec58c1b8f062c242187', 'validated', '{"audio_key":"2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422","entity_key":"ex_alpha_listen_z","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"419e2d4507e6e92d33a5c16689809d99fbff43a9b698aec58c1b8f062c242187","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_z -> audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('01a81520-6b65-58a0-aea9-6e07364c467d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_z')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6eafffa-8d2f-5e20-b30f-8a0c57115028', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('01a81520-6b65-58a0-aea9-6e07364c467d', 1), 'bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3', 731, '2026-09-14 13:12:12.329980', '419e2d4507e6e92d33a5c16689809d99fbff43a9b698aec58c1b8f062c242187', 'validated', '{"audio_key":"2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422","entity_key":"u_fix_letter_z","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"419e2d4507e6e92d33a5c16689809d99fbff43a9b698aec58c1b8f062c242187","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c03ca0e7a1ca1c533c9fc4c696707eea347c55042b05b3c46d45cd8f9a71422.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_write -> audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('655ec62f-42c4-543b-bddd-2ed496cba4fc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_write')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76050b6862606edfa19c0bc54339d800c6f7016d89c55c539ff58d21a462d2a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('602e7c32-8e8c-5df8-a7cd-9f7a4e448b23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('655ec62f-42c4-543b-bddd-2ed496cba4fc', 1), '76050b6862606edfa19c0bc54339d800c6f7016d89c55c539ff58d21a462d2a1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3', 679, '2026-09-14 13:12:13.285122', '36d2bc2543eb1f8222f9528b670021cabfb2b256175d70a20c86a41a770c985e', 'validated', '{"audio_key":"2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c","entity_key":"u_pre_write","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"36d2bc2543eb1f8222f9528b670021cabfb2b256175d70a20c86a41a770c985e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_short_long_i:example:2 -> audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('bec5b297-1ac5-537f-b686-6ca7140b089e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_short_long_i:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b40522c-d89b-502b-af31-932b8b9b5c07', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('bec5b297-1ac5-537f-b686-6ca7140b089e', 1), '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3', 783, '2026-09-14 13:12:14.213959', '1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7', 'validated', '{"audio_key":"2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701","entity_key":"g_fix_short_long_i:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_sheep -> audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ef84036-659a-5338-87de-7412a474323b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_sheep')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e19439-63a1-517d-b539-76c906f454ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ef84036-659a-5338-87de-7412a474323b', 1), '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3', 783, '2026-09-14 13:12:14.213959', '1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7', 'validated', '{"audio_key":"2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701","entity_key":"u_fix_sound_sheep","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_6 -> audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('905a0668-beac-5fb3-9893-c9fa10fd0552', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a397ea8f-3718-5f21-982b-d7091ed7612c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('905a0668-beac-5fb3-9893-c9fa10fd0552', 1), '5c599616ac500daae9e6b0bc875e22ea609a6f8f1170cbf14187e1a9f270d422',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3', 783, '2026-09-14 13:12:14.213959', '1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7', 'validated', '{"audio_key":"2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701","entity_key":"ex_fix_sound_listen_6","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1d4f439f4a31dfde746390f331593244afb5281bc2af7e1a52dca593bf5feac7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c9340328b22a601a8cbad0beb3fc664c530806e3f15c696a596f5b75311b701.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_f -> audio/generated/en-US/utterances/2cc0094a0f273e4ca686aa48e984a86236bdedf436915d09f0325cf972c769a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6b768e0-14ed-570e-8591-92e2b390d81a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_f')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40eed42f-4a74-5e5b-b3fb-ddb4af39f481', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6b768e0-14ed-570e-8591-92e2b390d81a', 1), 'f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/2cc0094a0f273e4ca686aa48e984a86236bdedf436915d09f0325cf972c769a9.mp3', 653, '2026-09-14 13:12:15.220383', '76e931fbfb75db22d1a2beba74fc15f9e1ca0f87dbcf673a1910f6a8fca273ea', 'validated', '{"audio_key":"2cc0094a0f273e4ca686aa48e984a86236bdedf436915d09f0325cf972c769a9","entity_key":"u_fix_letter_f","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"76e931fbfb75db22d1a2beba74fc15f9e1ca0f87dbcf673a1910f6a8fca273ea","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2cc0094a0f273e4ca686aa48e984a86236bdedf436915d09f0325cf972c769a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_hear_r -> audio/generated/en-US/utterances/30a08e929fbfea0f1cceb2159839877dd3372cf99703dff04bdf267a5f735c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e76b4a1a-084f-58e5-a054-bd28a422e43b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_hear_r')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a76d5d7cdfd0a3d8ad4bc641a2a05ed7b5aea095434f8edf32792abed079a0ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b809920-a908-52ad-b613-1721d11e6b99', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e76b4a1a-084f-58e5-a054-bd28a422e43b', 1), 'a76d5d7cdfd0a3d8ad4bc641a2a05ed7b5aea095434f8edf32792abed079a0ae',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/30a08e929fbfea0f1cceb2159839877dd3372cf99703dff04bdf267a5f735c0c.mp3', 1253, '2026-09-14 13:12:16.222089', '7ff8cc24c494c0244c7d1adff0b3ac1d2e6b6ad0237f7db83551d7d963e9b468', 'validated', '{"audio_key":"30a08e929fbfea0f1cceb2159839877dd3372cf99703dff04bdf267a5f735c0c","entity_key":"ex_pre_hear_r","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7ff8cc24c494c0244c7d1adff0b3ac1d2e6b6ad0237f7db83551d7d963e9b468","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/30a08e929fbfea0f1cceb2159839877dd3372cf99703dff04bdf267a5f735c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_chair -> audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e61135a4-519e-5ab4-8adf-760fd8d33839', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_chair')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d7eb3d3dab17ee509a6911e0feb928eb46e956adcada792493614bfb97a7a9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4256816-d5e3-5cd9-8b16-a9d2435a7f84', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e61135a4-519e-5ab4-8adf-760fd8d33839', 1), '3d7eb3d3dab17ee509a6911e0feb928eb46e956adcada792493614bfb97a7a9c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3', 914, '2026-09-14 13:12:17.174026', '3bd020f4993a845f4ab0a40643e784302136b6ccd69da789b2ea954cac00a306', 'validated', '{"audio_key":"3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab","entity_key":"u_pre_chair","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"3bd020f4993a845f4ab0a40643e784302136b6ccd69da789b2ea954cac00a306","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_bye -> audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('612b0330-bd14-55bb-a813-6cb3a800a82c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_bye')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5e6e601-bda3-5264-bcc4-9704bc35fd86', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('612b0330-bd14-55bb-a813-6cb3a800a82c', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3', 679, '2026-09-14 13:12:18.113599', '8c7dcd9599adfa6f8b3c428815116fc58bcbf31037cfa097ae60b0ccd08b2748', 'validated', '{"audio_key":"32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7","entity_key":"u_pre_bye","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"8c7dcd9599adfa6f8b3c428815116fc58bcbf31037cfa097ae60b0ccd08b2748","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_slowly_please -> audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f96fddfb-ac9f-5f3e-9d78-3140fbd6501a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_slowly_please')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('062d6390-76c4-5be8-b56d-6ce33390d29a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f96fddfb-ac9f-5f3e-9d78-3140fbd6501a', 1), 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3', 1384, '2026-09-14 13:12:19.091972', 'acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7', 'validated', '{"audio_key":"3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641","entity_key":"u_slowly_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_slowly_listen -> audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d03692c4-b14d-52a7-81a8-0bdd6272db2b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_slowly_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('474fc90e-e026-5602-ac3d-16c452cb5140', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d03692c4-b14d-52a7-81a8-0bdd6272db2b', 1), 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3', 1384, '2026-09-14 13:12:19.091972', 'acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7', 'validated', '{"audio_key":"3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641","entity_key":"ex_pre_slowly_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_learning_chunks:example:3 -> audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_learning_chunks:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27f894fa-00d5-5d04-9c6b-2641e1f9e930', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1), 'fa5c66ef1ed857b657b2df2484ffa5cb0d2c6cb8981cfdfb656670dd0fb872dc',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3', 1384, '2026-09-14 13:12:19.091972', 'acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7', 'validated', '{"audio_key":"3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641","entity_key":"g_pre_learning_chunks:example:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"acb22b2ec97ef4df2e1c235a6dffca5f84d5a49fe39ac320b7d4df649f51c8b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3409bde9259fd446fb99dcb330204ab46c8109afeac581014b11db09c7045641.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_greet_hi_listen -> audio/generated/en-US/utterances/35086cfd61d2a6561df44f6e1b2c694403c505b54b0f1e22f352b5cb922d1d7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b518de54-e1e7-5e83-8ba5-04a4319fe90a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_greet_hi_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3639efcd08abb273b1619e82e78c29a7df02c1051b1820e99fc395dcaa3326b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bd48367-abfb-5245-9d2c-f9c45cb2271c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b518de54-e1e7-5e83-8ba5-04a4319fe90a', 1), '3639efcd08abb273b1619e82e78c29a7df02c1051b1820e99fc395dcaa3326b8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/35086cfd61d2a6561df44f6e1b2c694403c505b54b0f1e22f352b5cb922d1d7e.mp3', 653, '2026-09-14 13:12:20.077992', '04c32d2fd2e8cc92ee22f32c749c651d2bd3fb05b517815c2d51cc4cca6e54b4', 'validated', '{"audio_key":"35086cfd61d2a6561df44f6e1b2c694403c505b54b0f1e22f352b5cb922d1d7e","entity_key":"ex_pre_greet_hi_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"04c32d2fd2e8cc92ee22f32c749c651d2bd3fb05b517815c2d51cc4cca6e54b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/35086cfd61d2a6561df44f6e1b2c694403c505b54b0f1e22f352b5cb922d1d7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_myname -> audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd9c7eff-d8dd-54d1-aaa0-af9436c553ea', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_name_myname')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e124c1a5c5c3e430bc6f0d0f9e47eeae894403d13a41eb8c42a58075d952c8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ac2f9e2-860a-5b89-9ddc-110acd3cda7b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd9c7eff-d8dd-54d1-aaa0-af9436c553ea', 1), 'e124c1a5c5c3e430bc6f0d0f9e47eeae894403d13a41eb8c42a58075d952c8c7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3', 1253, '2026-09-14 13:12:21.072036', '288b5c90f99ddb9696f265b69a552c0de6667eaefe97355d76c5663bb0a5c04f', 'validated', '{"audio_key":"3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d","entity_key":"u_pre_name_myname","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"288b5c90f99ddb9696f265b69a552c0de6667eaefe97355d76c5663bb0a5c04f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_n11 -> audio/generated/en-US/utterances/3741a1ed2c5edda7cdd1950ae5e829e42fad218125725b92b1a6fed198d3ef42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f4109d19-678f-5a29-9679-53c04a6d28cc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_n11')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e979074ebd5633a7263aa48c4b7dea055a769115fbc0a7de459f8a74cd2efd2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57b39353-0212-5269-ab91-d5f93b8501ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f4109d19-678f-5a29-9679-53c04a6d28cc', 1), 'e979074ebd5633a7263aa48c4b7dea055a769115fbc0a7de459f8a74cd2efd2b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3741a1ed2c5edda7cdd1950ae5e829e42fad218125725b92b1a6fed198d3ef42.mp3', 835, '2026-09-14 13:12:22.004561', 'afd76deb0fce37ad8db82adcc9be5f5c79e2c731f6a15af970c89b36e941a786', 'validated', '{"audio_key":"3741a1ed2c5edda7cdd1950ae5e829e42fad218125725b92b1a6fed198d3ef42","entity_key":"u_en_en-real-life-numbers_n11","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"afd76deb0fce37ad8db82adcc9be5f5c79e2c731f6a15af970c89b36e941a786","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3741a1ed2c5edda7cdd1950ae5e829e42fad218125725b92b1a6fed198d3ef42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_s -> audio/generated/en-US/utterances/3ddd84dbef2459c7b6ccfc6f59b72107d92134952515bae6bcf565b9d6cc21ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd288422-988f-5efd-8f47-eed86db04fee', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_s')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b88e599-d711-5caf-8a28-fc2b9127fba0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd288422-988f-5efd-8f47-eed86db04fee', 1), '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/3ddd84dbef2459c7b6ccfc6f59b72107d92134952515bae6bcf565b9d6cc21ad.mp3', 731, '2026-09-14 13:12:22.943563', '789fa9287fefcd2fa0e2476bc29adb67bfe4a630c01673e06fe9d5ad431e89d4', 'validated', '{"audio_key":"3ddd84dbef2459c7b6ccfc6f59b72107d92134952515bae6bcf565b9d6cc21ad","entity_key":"u_fix_letter_s","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"789fa9287fefcd2fa0e2476bc29adb67bfe4a630c01673e06fe9d5ad431e89d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3ddd84dbef2459c7b6ccfc6f59b72107d92134952515bae6bcf565b9d6cc21ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_sun -> audio/generated/en-US/utterances/437764a04b89eaac7e2a75500cdfb36854ee0a4d19168bc6569da846bfe44f24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97ab6b92-395e-5dbc-addc-942154d224a0', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_sun')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27756f050e14a1cb1c1ee867f0eace9ea4d9fcb81b8bee089469f1ebd5fd7b17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22d9eab0-95ce-53d8-8b62-4869742872b2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97ab6b92-395e-5dbc-addc-942154d224a0', 1), '27756f050e14a1cb1c1ee867f0eace9ea4d9fcb81b8bee089469f1ebd5fd7b17',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/437764a04b89eaac7e2a75500cdfb36854ee0a4d19168bc6569da846bfe44f24.mp3', 862, '2026-09-14 13:12:23.926635', '76b9d42cc3ef504afc5d83b785543dd471f2780c187445efe49f4296f08cb14e', 'validated', '{"audio_key":"437764a04b89eaac7e2a75500cdfb36854ee0a4d19168bc6569da846bfe44f24","entity_key":"u_pre_sun","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"76b9d42cc3ef504afc5d83b785543dd471f2780c187445efe49f4296f08cb14e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/437764a04b89eaac7e2a75500cdfb36854ee0a4d19168bc6569da846bfe44f24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_look_listen -> audio/generated/en-US/utterances/4840275f495ff7b6afff47ecbc9d3068ef2e7c6bd4445620d0feedca58892610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8477e9d8-1044-514a-ba17-7c77c93f2435', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_look_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0de5719f595fbf5ffe3b6d594962c0a9c25083f1b13363efa57264ae21f93a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('378c7804-e2a0-5ef6-8234-a690a347812e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8477e9d8-1044-514a-ba17-7c77c93f2435', 1), 'a0de5719f595fbf5ffe3b6d594962c0a9c25083f1b13363efa57264ae21f93a0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4840275f495ff7b6afff47ecbc9d3068ef2e7c6bd4445620d0feedca58892610.mp3', 679, '2026-09-14 13:12:24.901521', '4ca608e1bf9056e3960c0415f570a0b6dd595297a1100b60b12ed7314dd2722d', 'validated', '{"audio_key":"4840275f495ff7b6afff47ecbc9d3068ef2e7c6bd4445620d0feedca58892610","entity_key":"ex_pre_look_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4ca608e1bf9056e3960c0415f570a0b6dd595297a1100b60b12ed7314dd2722d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4840275f495ff7b6afff47ecbc9d3068ef2e7c6bd4445620d0feedca58892610.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_hear_h -> audio/generated/en-US/utterances/49181fabebd187e234daa20d001b5a9e5959dc1a319561495a196a75ee27e36f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('23b7162c-0ee0-5945-919b-d265b064a56b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_hear_h')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae7a15c6ed43c462411d9a6290744da2daad4a0202e00d73a5633cae73fff65b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2524aec-67f1-5299-974e-d8382a5dee6e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('23b7162c-0ee0-5945-919b-d265b064a56b', 1), 'ae7a15c6ed43c462411d9a6290744da2daad4a0202e00d73a5633cae73fff65b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/49181fabebd187e234daa20d001b5a9e5959dc1a319561495a196a75ee27e36f.mp3', 1384, '2026-09-14 13:12:25.888241', '1d38102819b4ed0555d7b35ba08e4e9adcc6bd3a75fbbbf66b121a663246baf1', 'validated', '{"audio_key":"49181fabebd187e234daa20d001b5a9e5959dc1a319561495a196a75ee27e36f","entity_key":"ex_pre_hear_h","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1d38102819b4ed0555d7b35ba08e4e9adcc6bd3a75fbbbf66b121a663246baf1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/49181fabebd187e234daa20d001b5a9e5959dc1a319561495a196a75ee27e36f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_alpha_listen_v -> audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7f2a9332-598b-545c-8e23-910d3c179b3c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_alpha_listen_v')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de5a6f78116eca62d7fc5ce159d23ae6b889b365a1739ad2cf36f925a140d0cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f2b2573-6b40-5ea4-b5b4-271e112e477c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7f2a9332-598b-545c-8e23-910d3c179b3c', 1), 'de5a6f78116eca62d7fc5ce159d23ae6b889b365a1739ad2cf36f925a140d0cc',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3', 1018, '2026-09-14 13:12:26.812978', '2ae35ed585b93e8b26de4e5bad1f48b7f3ccac39f708dddf4a5514406ae6355e', 'validated', '{"audio_key":"49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5","entity_key":"ex_alpha_listen_v","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2ae35ed585b93e8b26de4e5bad1f48b7f3ccac39f708dddf4a5514406ae6355e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_v -> audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5d87fb19-2c91-5e65-8fc8-8049f1f44321', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_v')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de5a6f78116eca62d7fc5ce159d23ae6b889b365a1739ad2cf36f925a140d0cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c093cb4-ff5a-56a9-bcbf-08c726b99215', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5d87fb19-2c91-5e65-8fc8-8049f1f44321', 1), 'de5a6f78116eca62d7fc5ce159d23ae6b889b365a1739ad2cf36f925a140d0cc',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3', 1018, '2026-09-14 13:12:26.812978', '2ae35ed585b93e8b26de4e5bad1f48b7f3ccac39f708dddf4a5514406ae6355e', 'validated', '{"audio_key":"49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5","entity_key":"u_fix_letter_v","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2ae35ed585b93e8b26de4e5bad1f48b7f3ccac39f708dddf4a5514406ae6355e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/49c467382714dedd203eb227d258cd945b27fe79e25003b6ad4b8b8cb8026cb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_listen_command -> audio/generated/en-US/utterances/4b7219760b17023bd672d8f00d64cb10c7f41246d82624eb1e08f743d5cd3710.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fbfc7d33-0747-52de-bd0e-89e92c25a144', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_listen_command')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '225d29f6201e1a635684a6dc0e7a65d164c7ffe48588a421fc27b067a55bb02e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa08977c-681f-506e-a3c5-82a13ca44a16', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fbfc7d33-0747-52de-bd0e-89e92c25a144', 1), '225d29f6201e1a635684a6dc0e7a65d164c7ffe48588a421fc27b067a55bb02e',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4b7219760b17023bd672d8f00d64cb10c7f41246d82624eb1e08f743d5cd3710.mp3', 835, '2026-09-14 13:12:27.754864', '746c8e9caecac5678e67da7c9185e77f636104d6a92316b99e7e72e20f8cb85d', 'validated', '{"audio_key":"4b7219760b17023bd672d8f00d64cb10c7f41246d82624eb1e08f743d5cd3710","entity_key":"ex_pre_listen_command","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"746c8e9caecac5678e67da7c9185e77f636104d6a92316b99e7e72e20f8cb85d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4b7219760b17023bd672d8f00d64cb10c7f41246d82624eb1e08f743d5cd3710.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_food -> audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cce1e20f-a8df-56f9-bd9c-b759204fd101', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_food')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72339735-9a61-52fd-939a-32231d86adf9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cce1e20f-a8df-56f9-bd9c-b759204fd101', 1), 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3', 731, '2026-09-14 13:12:28.680950', '7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b', 'validated', '{"audio_key":"4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156","entity_key":"u_pre_food","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_sound_oo -> audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fadf4265-a3ad-5e14-8053-087cda1219ce', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_sound_oo')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cd4926d-21db-57df-ae56-ba071e5fe926', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fadf4265-a3ad-5e14-8053-087cda1219ce', 1), 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3', 731, '2026-09-14 13:12:28.680950', '7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b', 'validated', '{"audio_key":"4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156","entity_key":"ex_pre_sound_oo","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_oo_variation:example:1 -> audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('c7a3c8be-63be-57d3-b135-1e2b62a46962', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_oo_variation:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4419312-d41d-5303-ba30-e71e1f875cf2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('c7a3c8be-63be-57d3-b135-1e2b62a46962', 1), 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3', 731, '2026-09-14 13:12:28.680950', '7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b', 'validated', '{"audio_key":"4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156","entity_key":"g_fix_oo_variation:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_7 -> audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9a6ae0a0-0808-5a0f-b041-c8e4ad298217', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_7')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04fb00ea-2da9-565c-a97e-6287b9842cf2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9a6ae0a0-0808-5a0f-b041-c8e4ad298217', 1), 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3', 731, '2026-09-14 13:12:28.680950', '7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b', 'validated', '{"audio_key":"4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156","entity_key":"ex_fix_sound_listen_7","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b2d4f0e8b456a1e79cb32a3f7c314d840df37cde6736c8fb75b2132228b941b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_n15 -> audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fcce8b40-6cab-5d55-9a6d-e92ec45f54e2', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_n15')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c463967e5708cab7f980855e14042ddbcfd1c3556d520ad4dacdfb4a115c67a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce120017-0176-56d1-a590-931c84e2138e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fcce8b40-6cab-5d55-9a6d-e92ec45f54e2', 1), 'c463967e5708cab7f980855e14042ddbcfd1c3556d520ad4dacdfb4a115c67a5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3', 914, '2026-09-14 13:12:29.607576', '9fd8734cbe269fca806a3585f5e4c3527c65859d4c4c21d543d80def27174064', 'validated', '{"audio_key":"4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc","entity_key":"u_en_en-real-life-numbers_n15","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9fd8734cbe269fca806a3585f5e4c3527c65859d4c4c21d543d80def27174064","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-real-life-numbers_number_listen -> audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('afb0504a-ba93-5139-be2c-394162e11e25', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-real-life-numbers_number_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c463967e5708cab7f980855e14042ddbcfd1c3556d520ad4dacdfb4a115c67a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b8dbd6b-6778-516a-860f-f58eb66ff845', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('afb0504a-ba93-5139-be2c-394162e11e25', 1), 'c463967e5708cab7f980855e14042ddbcfd1c3556d520ad4dacdfb4a115c67a5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3', 914, '2026-09-14 13:12:29.607576', '9fd8734cbe269fca806a3585f5e4c3527c65859d4c4c21d543d80def27174064', 'validated', '{"audio_key":"4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc","entity_key":"ex_en_en-real-life-numbers_number_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9fd8734cbe269fca806a3585f5e4c3527c65859d4c4c21d543d80def27174064","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4e8f909820e6b8c563012ac9ad831b767ebddc0bd4e7a40e7122c53b199de8fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_look -> audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a8bd6f5-51f1-5b33-81e4-1745d76c52c6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_look')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de5176e3d6e25344fb5d17ca4f9a8f08cdafe73796e4c23f4cc047643d1d7ae9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('278fcea1-c4dc-53c9-a577-eff7e90bfe0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a8bd6f5-51f1-5b33-81e4-1745d76c52c6', 1), 'de5176e3d6e25344fb5d17ca4f9a8f08cdafe73796e4c23f4cc047643d1d7ae9',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3', 653, '2026-09-14 13:12:30.524623', 'e7012258ec1299f3bd91277b697ccd62e664941176a63f136971decc7342b5fc', 'validated', '{"audio_key":"4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41","entity_key":"u_pre_look","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e7012258ec1299f3bd91277b697ccd62e664941176a63f136971decc7342b5fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-about-me_about_write:model -> audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5f19cc57-f448-599a-a8fb-4fc572d327de', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-about-me_about_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15ae800b-2a31-502b-a6b6-db8f66075ec4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5f19cc57-f448-599a-a8fb-4fc572d327de', 1), '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3', 2873, '2026-09-14 13:12:31.644551', 'f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d', 'validated', '{"audio_key":"525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581","entity_key":"ex_en_en-about-me_about_write:model","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-real-world-gate_personal_speaking:model -> audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4a5d41cd-c031-5dfb-bb79-1eb559450e0a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-real-world-gate_personal_speaking:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee7ac3c1-ec74-5c05-b192-fc02a9a7bc4a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4a5d41cd-c031-5dfb-bb79-1eb559450e0a', 1), '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3', 2873, '2026-09-14 13:12:31.644551', 'f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d', 'validated', '{"audio_key":"525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581","entity_key":"ex_en_en-real-world-gate_personal_speaking:model","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-real-world-gate:example:1 -> audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('bd71cc8d-f811-53ba-b805-cc0387cf2113', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-real-world-gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb8222d-ab53-52b8-bd29-e2de273debbe', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('bd71cc8d-f811-53ba-b805-cc0387cf2113', 1), '1168e6e448004a5a20c13619fbcdcb4643c6d6ba96a5999c4efc486646dc425f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3', 2873, '2026-09-14 13:12:31.644551', 'f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d', 'validated', '{"audio_key":"525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581","entity_key":"g_en_en-real-world-gate:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f790af28bd5a981d1629504239140b90a6041c281521c605f3c9d63d1078674d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/525bdd3e93ef139ec1d6bee9e68c960b78931f71adeb823c8e016a2abad53581.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_spell_sam -> audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('588c087e-d090-56ee-bd3b-459c7078fa2f', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_spell_sam')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff59bc7e53fd11e26a2384beb71f081f8162080addcae56a45b87127a4bdaae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8d206c5-3dd1-5c4b-bd50-4b4a4735d343', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('588c087e-d090-56ee-bd3b-459c7078fa2f', 1), '8ff59bc7e53fd11e26a2384beb71f081f8162080addcae56a45b87127a4bdaae',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3', 1201, '2026-09-14 13:12:32.575506', 'c9c9855ada19670c8d1e01ce145eb6793a6e9388060c1fce939715e1cb6e7b31', 'validated', '{"audio_key":"535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9","entity_key":"u_pre_spell_sam","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c9c9855ada19670c8d1e01ce145eb6793a6e9388060c1fce939715e1cb6e7b31","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_tin -> audio/generated/en-US/utterances/577169f7153a3f3865e01b9d2fecdfe36ce8a9e9c0f234feb5637f9984c3370d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('64a93d21-cbc9-5b54-8a7a-299dcc3c17c5', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_tin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab547757da37eb600011051fb0e9fe0c9ea49d220086a939c76369d29bfa1542'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98ed27df-ccb6-5e7c-9623-d5093d0ca808', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('64a93d21-cbc9-5b54-8a7a-299dcc3c17c5', 1), 'ab547757da37eb600011051fb0e9fe0c9ea49d220086a939c76369d29bfa1542',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/577169f7153a3f3865e01b9d2fecdfe36ce8a9e9c0f234feb5637f9984c3370d.mp3', 835, '2026-09-14 13:12:33.507705', '079215dbb0c620582f2b337850685cbd7f6c6daa3365bb7b7582a3884ed33eb5', 'validated', '{"audio_key":"577169f7153a3f3865e01b9d2fecdfe36ce8a9e9c0f234feb5637f9984c3370d","entity_key":"u_fix_sound_tin","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"079215dbb0c620582f2b337850685cbd7f6c6daa3365bb7b7582a3884ed33eb5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/577169f7153a3f3865e01b9d2fecdfe36ce8a9e9c0f234feb5637f9984c3370d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_p -> audio/generated/en-US/utterances/5c617d23af8a49ea286f5c18567e0638c9a71a33bfccbc4de150273095c5199b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8596f49c-769c-5859-a99e-d2aafb98294a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_p')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c62e091b8c0565f1bafad0dad5934276143ae2ccef7a5381e8ada5b1a8d26d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17d4687f-150b-56c5-a46a-993226ad9195', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8596f49c-769c-5859-a99e-d2aafb98294a', 1), '5c62e091b8c0565f1bafad0dad5934276143ae2ccef7a5381e8ada5b1a8d26d2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/5c617d23af8a49ea286f5c18567e0638c9a71a33bfccbc4de150273095c5199b.mp3', 653, '2026-09-14 13:12:34.462398', 'bbd302d8b69a46fd58e9f85f79670182eca3b0d2cbec55f1edc99c9af2ae7833', 'validated', '{"audio_key":"5c617d23af8a49ea286f5c18567e0638c9a71a33bfccbc4de150273095c5199b","entity_key":"u_fix_letter_p","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"bbd302d8b69a46fd58e9f85f79670182eca3b0d2cbec55f1edc99c9af2ae7833","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/5c617d23af8a49ea286f5c18567e0638c9a71a33bfccbc4de150273095c5199b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_vowel_awareness:example:1 -> audio/generated/en-US/utterances/5e8da2335a8eab42bfe5f57447d5ab21f61a30961ede45cefbb2f4a67286f94e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('d33cc44a-4c9c-58e2-935e-5eb6bfc6b9e1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_vowel_awareness:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6322971caecf4f92eaf0bf7066951ce24b4d943d9be5e0ce3d83aae4d8b0781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eed7a869-ebdb-5a78-a260-6dd50d6a9558', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('d33cc44a-4c9c-58e2-935e-5eb6bfc6b9e1', 1), 'b6322971caecf4f92eaf0bf7066951ce24b4d943d9be5e0ce3d83aae4d8b0781',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/5e8da2335a8eab42bfe5f57447d5ab21f61a30961ede45cefbb2f4a67286f94e.mp3', 1619, '2026-09-14 13:12:35.473921', '214cf233b3aebdd30615b0085ce91dc535a801601b9a99f8842dab88d8494eeb', 'validated', '{"audio_key":"5e8da2335a8eab42bfe5f57447d5ab21f61a30961ede45cefbb2f4a67286f94e","entity_key":"g_pre_vowel_awareness:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"214cf233b3aebdd30615b0085ce91dc535a801601b9a99f8842dab88d8494eeb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/5e8da2335a8eab42bfe5f57447d5ab21f61a30961ede45cefbb2f4a67286f94e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-forms-signs_exit_a -> audio/generated/en-US/utterances/61327cfe226cdc9b5ce30f1b46aa94ac483a0d11b99dddf5e0b3705c6b829b70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dd5c68fd-133e-5ae6-84d2-a386d4c8d312', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-forms-signs_exit_a')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13151eaa-3dac-503a-86b1-de213aeef699', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dd5c68fd-133e-5ae6-84d2-a386d4c8d312', 1), 'abb7d9a3328215471331dc69b689b5a47762fc21868e733e43199648057af95a',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/61327cfe226cdc9b5ce30f1b46aa94ac483a0d11b99dddf5e0b3705c6b829b70.mp3', 1488, '2026-09-14 13:12:36.573500', '056fe8ba42257bea231e9d16b286db1e4ed52f57f1f9596e18836b05490f3b9a', 'validated', '{"audio_key":"61327cfe226cdc9b5ce30f1b46aa94ac483a0d11b99dddf5e0b3705c6b829b70","entity_key":"u_en_en-forms-signs_exit_a","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"056fe8ba42257bea231e9d16b286db1e4ed52f57f1f9596e18836b05490f3b9a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/61327cfe226cdc9b5ce30f1b46aa94ac483a0d11b99dddf5e0b3705c6b829b70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_th_voicing:example:2 -> audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('46befe30-f471-5724-8803-6e681e06d037', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_th_voicing:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25d635ee-61ef-55b9-94ff-8dbb293ddc28', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('46befe30-f471-5724-8803-6e681e06d037', 1), '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3', 679, '2026-09-14 13:12:37.547578', 'b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1', 'validated', '{"audio_key":"61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9","entity_key":"g_fix_th_voicing:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_this -> audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('145e853d-8858-56da-a1d9-0a89f533be73', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_this')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c56f6583-c184-5017-be2c-aee8fa5b35a0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('145e853d-8858-56da-a1d9-0a89f533be73', 1), '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3', 679, '2026-09-14 13:12:37.547578', 'b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1', 'validated', '{"audio_key":"61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9","entity_key":"u_fix_sound_this","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_2 -> audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('69e03ecf-87e0-5938-ac10-3c4d5d52d4d3', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86bd0d6d-e58b-529f-b3a7-bd377e9262c8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('69e03ecf-87e0-5938-ac10-3c4d5d52d4d3', 1), '1eb79602411ef02cf6fe117897015fff89f80face4eccd50425c45149b148408',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3', 679, '2026-09-14 13:12:37.547578', 'b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1', 'validated', '{"audio_key":"61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9","entity_key":"ex_fix_sound_listen_2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b1a837c17d71634e27acefe849cd43a48ce6c05ff8261086fae00edc6dc097a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/61dd822b43f50b74d2d9d3447ca6b13a0612b5487efaafebafac50896467a2f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_read -> audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('000ffd4c-fd79-5cf7-9e7b-2dfa935a35b1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_read')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ccb589bcef337db8a18fd57cd64007a14fd351dc7f56e832feb56171d10d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67263afc-b7d4-52a7-a721-001c6077b617', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('000ffd4c-fd79-5cf7-9e7b-2dfa935a35b1', 1), 'b00ccb589bcef337db8a18fd57cd64007a14fd351dc7f56e832feb56171d10d6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3', 679, '2026-09-14 13:12:38.587028', '9e1926ba8fec8e7c73eb351cb41fb607180664833042f43ab9e186e8abec10f2', 'validated', '{"audio_key":"68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527","entity_key":"u_pre_read","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9e1926ba8fec8e7c73eb351cb41fb607180664833042f43ab9e186e8abec10f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-forms-signs_form_write:model -> audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('be5805ce-c3ea-5a10-9f81-1b76f9ddd568', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-forms-signs_form_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a60cea99d55251d9442dcae9006db58353559e7c1beaaf6d045781d4aeef5557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a92ccbe-079b-5d7e-8f34-dda4c891ad63', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('be5805ce-c3ea-5a10-9f81-1b76f9ddd568', 1), 'a60cea99d55251d9442dcae9006db58353559e7c1beaaf6d045781d4aeef5557',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3', 7601, '2026-09-14 13:12:40.285727', '99971dd1ae6646df0f600deaad7d70768e87a47768ebc8b9c330677ded4af2e7', 'validated', '{"audio_key":"6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907","entity_key":"ex_en_en-forms-signs_form_write:model","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"99971dd1ae6646df0f600deaad7d70768e87a47768ebc8b9c330677ded4af2e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-real-world-gate_personal_form:model -> audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0fdd52dd-eb00-562e-a4c1-c7eb1cad6503', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-real-world-gate_personal_form:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a60cea99d55251d9442dcae9006db58353559e7c1beaaf6d045781d4aeef5557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d03e0f6-87e2-53da-9ab0-a79f55db71e4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0fdd52dd-eb00-562e-a4c1-c7eb1cad6503', 1), 'a60cea99d55251d9442dcae9006db58353559e7c1beaaf6d045781d4aeef5557',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3', 7601, '2026-09-14 13:12:40.285727', '99971dd1ae6646df0f600deaad7d70768e87a47768ebc8b9c330677ded4af2e7', 'validated', '{"audio_key":"6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907","entity_key":"ex_en_en-real-world-gate_personal_form:model","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"99971dd1ae6646df0f600deaad7d70768e87a47768ebc8b9c330677ded4af2e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/6a55bf88dffaa4445be4e86c2a837a08cdc40419f7074292dd1cc1a4f2d64907.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_g -> audio/generated/en-US/utterances/6bb0992298394e6c75cd1871f687d69323cb2d7067551ac415168352c261f59c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e871fcc-d492-5f88-915e-064d96948719', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_g')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '333e0a1e27815d0ceee55c473fe3dc93d56c63e3bee2b3b4aee8eed6d70191a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19c8c0d8-e692-5aad-88b6-99ad27ddfc72', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e871fcc-d492-5f88-915e-064d96948719', 1), '333e0a1e27815d0ceee55c473fe3dc93d56c63e3bee2b3b4aee8eed6d70191a3',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/6bb0992298394e6c75cd1871f687d69323cb2d7067551ac415168352c261f59c.mp3', 600, '2026-09-14 13:12:41.235702', '5af80974dbcaccecf2cbccf2d1549c98d906626417257a4159c4e733bd0a81c6', 'validated', '{"audio_key":"6bb0992298394e6c75cd1871f687d69323cb2d7067551ac415168352c261f59c","entity_key":"u_fix_letter_g","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5af80974dbcaccecf2cbccf2d1549c98d906626417257a4159c4e733bd0a81c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/6bb0992298394e6c75cd1871f687d69323cb2d7067551ac415168352c261f59c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_k -> audio/generated/en-US/utterances/71014f6935d771f4c50a8b8a6fffab045ca2de0855905a9979b74d740c6836b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54096c1d-0588-577b-b1b0-d62227bee909', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_k')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86be9a55762d316a3026c2836d044f5fc76e34da10e1b45feee5f18be7edb177'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43c1bed3-9127-5248-a463-6c10f8da1da2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54096c1d-0588-577b-b1b0-d62227bee909', 1), '86be9a55762d316a3026c2836d044f5fc76e34da10e1b45feee5f18be7edb177',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/71014f6935d771f4c50a8b8a6fffab045ca2de0855905a9979b74d740c6836b1.mp3', 731, '2026-09-14 13:12:42.184859', 'fec1426ef3eb336b4016bd3125c78d0512aa65dcf709c95273964a8e3435ac45', 'validated', '{"audio_key":"71014f6935d771f4c50a8b8a6fffab045ca2de0855905a9979b74d740c6836b1","entity_key":"u_fix_letter_k","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"fec1426ef3eb336b4016bd3125c78d0512aa65dcf709c95273964a8e3435ac45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/71014f6935d771f4c50a8b8a6fffab045ca2de0855905a9979b74d740c6836b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_sh_ch:example:2 -> audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('09f532bf-aeaa-50d5-af52-b4695bbf60a5', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_sh_ch:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7cea7305a333d5c9cebd7891abbee78960632bbb1fa5dd24122b940ff823ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5199ee18-aab2-5941-bca1-e2abcbb74aa1', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('09f532bf-aeaa-50d5-af52-b4695bbf60a5', 1), 'd7cea7305a333d5c9cebd7891abbee78960632bbb1fa5dd24122b940ff823ace',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3', 862, '2026-09-14 13:12:43.131662', 'b1735398ccb8edc3606835ed94d9d1853bd9d640a3cac7377916fa46e50f8dc0', 'validated', '{"audio_key":"769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb","entity_key":"g_fix_sh_ch:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b1735398ccb8edc3606835ed94d9d1853bd9d640a3cac7377916fa46e50f8dc0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_chip -> audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f71b780-ac51-51c6-a052-5fc11b5d8ec2', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_chip')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7cea7305a333d5c9cebd7891abbee78960632bbb1fa5dd24122b940ff823ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59cce72d-e251-5a77-b543-c2660e29f60c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f71b780-ac51-51c6-a052-5fc11b5d8ec2', 1), 'd7cea7305a333d5c9cebd7891abbee78960632bbb1fa5dd24122b940ff823ace',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3', 862, '2026-09-14 13:12:43.131662', 'b1735398ccb8edc3606835ed94d9d1853bd9d640a3cac7377916fa46e50f8dc0', 'validated', '{"audio_key":"769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb","entity_key":"u_fix_sound_chip","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b1735398ccb8edc3606835ed94d9d1853bd9d640a3cac7377916fa46e50f8dc0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/769a20cba32fffdbc3a36ced07377761814f03ed4bc18e3ef2aabe81673443bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_day -> audio/generated/en-US/utterances/7763678512ba48d00b6dbd19b56e677a5f2f4a36179ac16451aecaa1d29ea115.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('538cb3fb-006f-593c-b5a3-4279ba53988d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_day')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a00dfc1dc867e8454c2c8856e1512d9bf02a76710e3411c0972aec886c76c61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa9eeb27-446a-5c41-bd3c-721b8ea32b53', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('538cb3fb-006f-593c-b5a3-4279ba53988d', 1), '6a00dfc1dc867e8454c2c8856e1512d9bf02a76710e3411c0972aec886c76c61',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/7763678512ba48d00b6dbd19b56e677a5f2f4a36179ac16451aecaa1d29ea115.mp3', 1018, '2026-09-14 13:12:44.064806', '1895256c5f0bdd4d72174af743c973e7cfbf469cbbe83ba24a6de9d398d5632b', 'validated', '{"audio_key":"7763678512ba48d00b6dbd19b56e677a5f2f4a36179ac16451aecaa1d29ea115","entity_key":"u_en_en-real-life-numbers_day","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1895256c5f0bdd4d72174af743c973e7cfbf469cbbe83ba24a6de9d398d5632b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/7763678512ba48d00b6dbd19b56e677a5f2f4a36179ac16451aecaa1d29ea115.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-forms-signs:example:1 -> audio/generated/en-US/utterances/7b7044ee2c66b10ebba50fa6ba808a5dcaf683ff4db70480cd94c37ac89b3c5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('93981658-82af-511c-91e9-284171c2f9e4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-forms-signs:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a0931580d18a6e0308c1135ee9c807f0aaa83cad286d951d3a8dfa6017aecf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3561fb77-0633-5f0a-8df8-f808a4a65310', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('93981658-82af-511c-91e9-284171c2f9e4', 1), '3a0931580d18a6e0308c1135ee9c807f0aaa83cad286d951d3a8dfa6017aecf1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/7b7044ee2c66b10ebba50fa6ba808a5dcaf683ff4db70480cd94c37ac89b3c5e.mp3', 862, '2026-09-14 13:12:45.002067', '45b87b2e13844f85fa9ca5c21d58aebb995bdaa35c536d5a75f8d9c61aab875f', 'validated', '{"audio_key":"7b7044ee2c66b10ebba50fa6ba808a5dcaf683ff4db70480cd94c37ac89b3c5e","entity_key":"g_en_en-forms-signs:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45b87b2e13844f85fa9ca5c21d58aebb995bdaa35c536d5a75f8d9c61aab875f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/7b7044ee2c66b10ebba50fa6ba808a5dcaf683ff4db70480cd94c37ac89b3c5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_three -> audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46fcba73-5a91-5aa2-894e-b22dc9312ccd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_three')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aaacd6c-98d7-54be-af7e-dfa789967f41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46fcba73-5a91-5aa2-894e-b22dc9312ccd', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3', 835, '2026-09-14 13:12:46.220781', 'c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a', 'validated', '{"audio_key":"8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9","entity_key":"u_pre_three","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_th_voicing:example:1 -> audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('46befe30-f471-5724-8803-6e681e06d037', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_th_voicing:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cf18993-b579-526b-a8dd-58f72de58f08', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('46befe30-f471-5724-8803-6e681e06d037', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3', 835, '2026-09-14 13:12:46.220781', 'c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a', 'validated', '{"audio_key":"8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9","entity_key":"g_fix_th_voicing:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_num_3_listen -> audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d0a4236f-1606-591e-913e-aeb08d1506be', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_num_3_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d14566cd-fb55-5f8c-9b12-cea2bf1da055', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d0a4236f-1606-591e-913e-aeb08d1506be', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3', 835, '2026-09-14 13:12:46.220781', 'c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a', 'validated', '{"audio_key":"8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9","entity_key":"ex_pre_num_3_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_ready_number -> audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68d2ff76-526e-5b56-9f26-c02a8eed170e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_ready_number')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f75abcd-595b-56f2-9ada-82fd4003bfad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68d2ff76-526e-5b56-9f26-c02a8eed170e', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3', 835, '2026-09-14 13:12:46.220781', 'c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a', 'validated', '{"audio_key":"8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9","entity_key":"ex_pre_ready_number","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c3318040127a11994d73cee6f9c6c35af52fc8f5f01e974a3c0cd337e54aaa5a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_spell_amy -> audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0987baa-9c34-53b3-9752-da34a8aa5f97', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_spell_amy')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '266c16e50e9aa7a33cff0cae2e685680e8f58234d4f1882ea933e1e06e7c4f3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eae47f8-c832-5a99-8aa9-a4c1f3b7c2fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0987baa-9c34-53b3-9752-da34a8aa5f97', 1), '266c16e50e9aa7a33cff0cae2e685680e8f58234d4f1882ea933e1e06e7c4f3f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3', 1018, '2026-09-14 13:12:47.186987', '20cc9339e0032983b7ce20647abaa1ad4212f02daff5ac4ecfe38f4adfd7798f', 'validated', '{"audio_key":"8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef","entity_key":"u_pre_spell_amy","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"20cc9339e0032983b7ce20647abaa1ad4212f02daff5ac4ecfe38f4adfd7798f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_letter_name_sound:example:2 -> audio/generated/en-US/utterances/918020a9134aa60c5cad2fdf2ceb165c8e70d3eb3c5ccbc47f4cf133b4da954b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('57e07f24-03c6-5599-869d-183030578546', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_letter_name_sound:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ce6438af7d97e13abcda179925e08f96dbddeb18361b969dca586888833edbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('757cf716-1c58-5ad3-9d75-60d7fc9bf703', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('57e07f24-03c6-5599-869d-183030578546', 1), '5ce6438af7d97e13abcda179925e08f96dbddeb18361b969dca586888833edbd',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/918020a9134aa60c5cad2fdf2ceb165c8e70d3eb3c5ccbc47f4cf133b4da954b.mp3', 1488, '2026-09-14 13:12:48.176666', 'c95f4229152e1bd4368f965c3cb185272e6461c11686c852ac15f81980c8220b', 'validated', '{"audio_key":"918020a9134aa60c5cad2fdf2ceb165c8e70d3eb3c5ccbc47f4cf133b4da954b","entity_key":"g_pre_letter_name_sound:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c95f4229152e1bd4368f965c3cb185272e6461c11686c852ac15f81980c8220b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/918020a9134aa60c5cad2fdf2ceb165c8e70d3eb3c5ccbc47f4cf133b4da954b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-about-me_family -> audio/generated/en-US/utterances/935a75e76ecbab2bd3ed842a8946b8db229a5b558c822c46a54ae701c28349b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d73e40d6-43a3-5d0a-958d-1a7a144d48d6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-about-me_family')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cac74dd36ef41a909971a47efb23215bc52a2e911708ee47167620d42cbda532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0544303c-3f1a-5831-ae52-0187d36f46cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d73e40d6-43a3-5d0a-958d-1a7a144d48d6', 1), 'cac74dd36ef41a909971a47efb23215bc52a2e911708ee47167620d42cbda532',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/935a75e76ecbab2bd3ed842a8946b8db229a5b558c822c46a54ae701c28349b6.mp3', 1332, '2026-09-14 13:12:49.152653', '07d323b0826f5f50f49d8d46ecdb14595bc5c074b04eaaf7c5404d0775aea289', 'validated', '{"audio_key":"935a75e76ecbab2bd3ed842a8946b8db229a5b558c822c46a54ae701c28349b6","entity_key":"u_en_en-about-me_family","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"07d323b0826f5f50f49d8d46ecdb14595bc5c074b04eaaf7c5404d0775aea289","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/935a75e76ecbab2bd3ed842a8946b8db229a5b558c822c46a54ae701c28349b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_that_bag -> audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('720b3230-abfc-5269-b4ad-106bb9ae4358', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_that_bag')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a47addc3f303e423e3f81b3fa503b4ab8f524bd821a3e1670aca52c816f2c4ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24a4f57b-7468-538f-a21d-c8c0467684a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('720b3230-abfc-5269-b4ad-106bb9ae4358', 1), 'a47addc3f303e423e3f81b3fa503b4ab8f524bd821a3e1670aca52c816f2c4ec',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3', 1253, '2026-09-14 13:12:50.144840', '947f6fef2f7f0e79e7cefd5206fc6e09fe22d8f1d12a8c7d2b3f26cba726df64', 'validated', '{"audio_key":"942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2","entity_key":"u_pre_that_bag","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"947f6fef2f7f0e79e7cefd5206fc6e09fe22d8f1d12a8c7d2b3f26cba726df64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_w_v:example:2 -> audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('8ea1de63-1107-5006-9102-f4ee3f7c10e6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_w_v:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c807cc2-7cf8-5ae9-9a33-d8dc426a6281', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('8ea1de63-1107-5006-9102-f4ee3f7c10e6', 1), '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3', 862, '2026-09-14 13:12:51.405108', 'afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3', 'validated', '{"audio_key":"970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635","entity_key":"g_fix_w_v:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_vet -> audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0ffe4fac-7204-544e-b4aa-bf3b43e4e442', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_vet')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6de9aed-3e47-537e-86a1-ab0005c5639c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0ffe4fac-7204-544e-b4aa-bf3b43e4e442', 1), '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3', 862, '2026-09-14 13:12:51.405108', 'afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3', 'validated', '{"audio_key":"970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635","entity_key":"u_fix_sound_vet","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_4 -> audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('75f5af72-54c8-53ab-8ffd-0d6684c733f1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8250854e-2982-5d02-a4eb-cf7c806990b4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('75f5af72-54c8-53ab-8ffd-0d6684c733f1', 1), '5f9276129b845b99053564cf174d84da47da2943157720aa17ef889919222ea2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3', 862, '2026-09-14 13:12:51.405108', 'afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3', 'validated', '{"audio_key":"970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635","entity_key":"ex_fix_sound_listen_4","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"afd8899cf12eada3a3b1c0165f3c36d1da8025c604c128354f9d556556a4b3a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/970c2730858eb84597bc4922466863d7dabd3a55d85450260f77505213cfc635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_alpha_listen_i -> audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1e240e75-d92a-51ab-ae3f-c2b840fe66ef', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_alpha_listen_i')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a83dd0ccbffe39d071cc317ddf6e97f5c6b1c87af91919271f9fa140b0508c6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a009de13-ae34-52f4-b273-1a7e00ea9a7e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1e240e75-d92a-51ab-ae3f-c2b840fe66ef', 1), 'a83dd0ccbffe39d071cc317ddf6e97f5c6b1c87af91919271f9fa140b0508c6c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3', 679, '2026-09-14 13:12:52.326474', 'f91da70b64aa89283e8e09e4cb518680f183b31a69b9181657dc8ebe50cdebbe', 'validated', '{"audio_key":"985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39","entity_key":"ex_alpha_listen_i","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f91da70b64aa89283e8e09e4cb518680f183b31a69b9181657dc8ebe50cdebbe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_i -> audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('608a5e20-5e65-5a7c-afad-1c9a081d6b83', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_i')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a83dd0ccbffe39d071cc317ddf6e97f5c6b1c87af91919271f9fa140b0508c6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d87ed90-7b63-52f6-94d2-bcec1e56b709', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('608a5e20-5e65-5a7c-afad-1c9a081d6b83', 1), 'a83dd0ccbffe39d071cc317ddf6e97f5c6b1c87af91919271f9fa140b0508c6c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3', 679, '2026-09-14 13:12:52.326474', 'f91da70b64aa89283e8e09e4cb518680f183b31a69b9181657dc8ebe50cdebbe', 'validated', '{"audio_key":"985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39","entity_key":"u_fix_letter_i","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f91da70b64aa89283e8e09e4cb518680f183b31a69b9181657dc8ebe50cdebbe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/985a613c69f8263ad62751985534bd950d79b13961047bc0c4594c6bb9a48a39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_alpha_listen_b -> audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cbe4d7cb-9d7c-5c9b-9436-66da9a27ed80', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_alpha_listen_b')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29ff8b0a-d9e9-5c41-8d00-d15366911443', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cbe4d7cb-9d7c-5c9b-9436-66da9a27ed80', 1), 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3', 600, '2026-09-14 13:12:53.227515', 'a3a27b8d46847e5821c73a2292c10a50254c73b3a30f3f2729b2c87cfa5d6b85', 'validated', '{"audio_key":"9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1","entity_key":"ex_alpha_listen_b","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a3a27b8d46847e5821c73a2292c10a50254c73b3a30f3f2729b2c87cfa5d6b85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_b -> audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b2805e3a-f56c-5732-976c-1353a79328f4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_b')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a0bfcdb-3092-5092-ba93-902f8822ecc8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b2805e3a-f56c-5732-976c-1353a79328f4', 1), 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3', 600, '2026-09-14 13:12:53.227515', 'a3a27b8d46847e5821c73a2292c10a50254c73b3a30f3f2729b2c87cfa5d6b85', 'validated', '{"audio_key":"9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1","entity_key":"u_fix_letter_b","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a3a27b8d46847e5821c73a2292c10a50254c73b3a30f3f2729b2c87cfa5d6b85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9897cbefd64bcca87741bf66cbf6d548d694ccc504e8eb84a8aa4635cfedafe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_this_book -> audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22dfa403-7db4-5691-8159-93daa5cbd11d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_this_book')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83a30d3fbd93cbb9d1e91256c8854475c41498e48de9ee6d80820a4f40168bf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32a9ee09-209c-5a20-adad-b4877b3b46ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22dfa403-7db4-5691-8159-93daa5cbd11d', 1), '83a30d3fbd93cbb9d1e91256c8854475c41498e48de9ee6d80820a4f40168bf8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3', 1097, '2026-09-14 13:12:54.185013', 'b9260f05b6cc8abbd01df9374e51fbb8d7a2ebaa040c250151fc1809b71cce43', 'validated', '{"audio_key":"9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f","entity_key":"u_pre_this_book","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b9260f05b6cc8abbd01df9374e51fbb8d7a2ebaa040c250151fc1809b71cce43","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_m -> audio/generated/en-US/utterances/9ae68c1f69655899f20e787a0a3fb0627dcb7caa07f1042999dfa4966b796470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20dadf4a-a3dd-5437-8837-0abbd34b8b41', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_m')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('546a5a3a-532b-51dc-b8c5-70c0148fe48e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20dadf4a-a3dd-5437-8837-0abbd34b8b41', 1), '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9ae68c1f69655899f20e787a0a3fb0627dcb7caa07f1042999dfa4966b796470.mp3', 600, '2026-09-14 13:12:55.170466', 'c9c720a5825f7e5ff55a9031c50665d79110b544d2a47fcf3bc67529ccb4074b', 'validated', '{"audio_key":"9ae68c1f69655899f20e787a0a3fb0627dcb7caa07f1042999dfa4966b796470","entity_key":"u_fix_letter_m","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c9c720a5825f7e5ff55a9031c50665d79110b544d2a47fcf3bc67529ccb4074b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9ae68c1f69655899f20e787a0a3fb0627dcb7caa07f1042999dfa4966b796470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_r -> audio/generated/en-US/utterances/9e0c919b1102a9f18bf3c215492db5065b199ecb8178ada2ce2497d2cc21876a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eff08be1-1aaf-51bf-aff9-674f37a9c020', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_r')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c2574892063f995fdf756bce07f46c1a5193e54cd52837ed91e32008ccf41ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bd027b7-b488-508e-a8bc-0c70047203b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eff08be1-1aaf-51bf-aff9-674f37a9c020', 1), '8c2574892063f995fdf756bce07f46c1a5193e54cd52837ed91e32008ccf41ac',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9e0c919b1102a9f18bf3c215492db5065b199ecb8178ada2ce2497d2cc21876a.mp3', 653, '2026-09-14 13:12:56.106432', '1b194490038522b2d59e91134b6b16c56cef282f6739e0c9bcaebfbab23685d7', 'validated', '{"audio_key":"9e0c919b1102a9f18bf3c215492db5065b199ecb8178ada2ce2497d2cc21876a","entity_key":"u_fix_letter_r","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1b194490038522b2d59e91134b6b16c56cef282f6739e0c9bcaebfbab23685d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9e0c919b1102a9f18bf3c215492db5065b199ecb8178ada2ce2497d2cc21876a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_j -> audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('972f349f-95db-564c-a0c1-bd07ca0fd1d8', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_j')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6da43b944e494e885e69af021f93c6d9331c78aa228084711429160a5bbd15b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76c5f716-c079-5374-9179-2f4f50333bb9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('972f349f-95db-564c-a0c1-bd07ca0fd1d8', 1), '6da43b944e494e885e69af021f93c6d9331c78aa228084711429160a5bbd15b5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3', 653, '2026-09-14 13:12:57.033473', 'ce28f99272dfce0084a53810bcb83c4922041d0fc1181fcd9c3d51888320f282', 'validated', '{"audio_key":"9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f","entity_key":"u_fix_letter_j","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ce28f99272dfce0084a53810bcb83c4922041d0fc1181fcd9c3d51888320f282","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_lettername_j -> audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0b55977b-c501-5d9d-8682-9704c84899a8', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_lettername_j')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6da43b944e494e885e69af021f93c6d9331c78aa228084711429160a5bbd15b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d1e1909-d303-58a7-a6a4-1b7007608b0e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0b55977b-c501-5d9d-8682-9704c84899a8', 1), '6da43b944e494e885e69af021f93c6d9331c78aa228084711429160a5bbd15b5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3', 653, '2026-09-14 13:12:57.033473', 'ce28f99272dfce0084a53810bcb83c4922041d0fc1181fcd9c3d51888320f282', 'validated', '{"audio_key":"9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f","entity_key":"ex_pre_lettername_j","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ce28f99272dfce0084a53810bcb83c4922041d0fc1181fcd9c3d51888320f282","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9f4dbc667a35ab1a19c7d95bc3f49873d8d99a47c57fd46ad665a9d3fd3b0a7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_spelling_names:example:2 -> audio/generated/en-US/utterances/a0602aff1f52bf65e080cf074b5ecff33627faffd3aed165c468a6785b767766.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('dbb275e2-45ab-5483-8be5-cbbe54b7bca1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_spelling_names:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '578ee0aef9ea04d7cdf5e48770cf4bb1f62eacbe7bc95d9db7fa2244eb82e96a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c95822b7-f648-5768-9040-eed696895044', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('dbb275e2-45ab-5483-8be5-cbbe54b7bca1', 1), '578ee0aef9ea04d7cdf5e48770cf4bb1f62eacbe7bc95d9db7fa2244eb82e96a',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/a0602aff1f52bf65e080cf074b5ecff33627faffd3aed165c468a6785b767766.mp3', 1071, '2026-09-14 13:12:58.013091', 'e8766e32b3134759972fa80e6cf63b2ee1386ea01510bfd9f790dc30bf8658fc', 'validated', '{"audio_key":"a0602aff1f52bf65e080cf074b5ecff33627faffd3aed165c468a6785b767766","entity_key":"g_fix_spelling_names:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e8766e32b3134759972fa80e6cf63b2ee1386ea01510bfd9f790dc30bf8658fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/a0602aff1f52bf65e080cf074b5ecff33627faffd3aed165c468a6785b767766.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_vowel_awareness:example:2 -> audio/generated/en-US/utterances/a97245d598783f169af8425f0827df053277f451329ed268c343a195f67a4ae1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('d33cc44a-4c9c-58e2-935e-5eb6bfc6b9e1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_vowel_awareness:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5adafec78b8561cc9621d71ea3e01e6e01438402235dcc3a4387baa627253c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18823621-e36f-5469-a7e3-b62bacb693e9', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('d33cc44a-4c9c-58e2-935e-5eb6bfc6b9e1', 1), 'a5adafec78b8561cc9621d71ea3e01e6e01438402235dcc3a4387baa627253c0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/a97245d598783f169af8425f0827df053277f451329ed268c343a195f67a4ae1.mp3', 1488, '2026-09-14 13:12:59.005109', 'ff385151cab0a89f9866e4bed96b6c76c2b968493475f5a285423ca638521762', 'validated', '{"audio_key":"a97245d598783f169af8425f0827df053277f451329ed268c343a195f67a4ae1","entity_key":"g_pre_vowel_awareness:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ff385151cab0a89f9866e4bed96b6c76c2b968493475f5a285423ca638521762","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/a97245d598783f169af8425f0827df053277f451329ed268c343a195f67a4ae1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_repeat -> audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e595d1c1-8515-50ff-bce3-731704335b5c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e906f2bb5a2a0bac0f760d4ca07102055e6f18e5d96383d56bc643dff532c00a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0079ca26-af6e-5137-b2d3-44ad588e875b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e595d1c1-8515-50ff-bce3-731704335b5c', 1), 'e906f2bb5a2a0bac0f760d4ca07102055e6f18e5d96383d56bc643dff532c00a',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3', 862, '2026-09-14 13:12:59.966200', 'd201e856faa5a1a9c3ec35a72dc3140023aba1159d8fe6ba74acf468f855343b', 'validated', '{"audio_key":"ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f","entity_key":"u_pre_repeat","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d201e856faa5a1a9c3ec35a72dc3140023aba1159d8fe6ba74acf468f855343b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_capstone_name -> audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9f6aca82-847b-51d5-9f77-1c0dab29dc2e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_capstone_name')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0cea59d-0f59-50e6-aaf9-3dedcc5d56f9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9f6aca82-847b-51d5-9f77-1c0dab29dc2e', 1), '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3', 1018, '2026-09-14 13:13:00.917614', '0f70bdf39878de2171573f7e0a422e07ff0f37db4c318fc3e019315a0df57acb', 'validated', '{"audio_key":"ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228","entity_key":"ex_pre_capstone_name","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"0f70bdf39878de2171573f7e0a422e07ff0f37db4c318fc3e019315a0df57acb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_ready_gate:example:2 -> audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4cfd196e-8a3f-5819-b950-8c08829a3eb4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_ready_gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebb1418f-cc05-5360-80ef-fb722167d8d1', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4cfd196e-8a3f-5819-b950-8c08829a3eb4', 1), '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3', 1018, '2026-09-14 13:13:00.917614', '0f70bdf39878de2171573f7e0a422e07ff0f37db4c318fc3e019315a0df57acb', 'validated', '{"audio_key":"ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228","entity_key":"g_pre_ready_gate:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"0f70bdf39878de2171573f7e0a422e07ff0f37db4c318fc3e019315a0df57acb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ad805b9d64c88b6bfc49a93f06bda843466f0c246778269e86a22c9b6159c228.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_dont_understand -> audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('371b299b-7a04-5226-927a-a459a5ba2e8e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_dont_understand')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '906248d9ffd63d8b8c54443d728446a5d5fb598e5c2134e1f2a05ed4b23a7460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4559111d-010e-58f9-b164-8e65438f1009', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('371b299b-7a04-5226-927a-a459a5ba2e8e', 1), '906248d9ffd63d8b8c54443d728446a5d5fb598e5c2134e1f2a05ed4b23a7460',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3', 1436, '2026-09-14 13:13:02.038384', 'b5589913576c38c4cf3c131e47acd2c144a386fc4dd0e0acfbb6aa7e9937b810', 'validated', '{"audio_key":"ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032","entity_key":"u_dont_understand","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b5589913576c38c4cf3c131e47acd2c144a386fc4dd0e0acfbb6aa7e9937b810","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_learning_chunks:example:1 -> audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_learning_chunks:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '906248d9ffd63d8b8c54443d728446a5d5fb598e5c2134e1f2a05ed4b23a7460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e31605c5-98c5-5096-b9e9-c678553d5bc8', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('72691c66-192e-5788-a377-0c2d2d34976e', 1), '906248d9ffd63d8b8c54443d728446a5d5fb598e5c2134e1f2a05ed4b23a7460',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3', 1436, '2026-09-14 13:13:02.038384', 'b5589913576c38c4cf3c131e47acd2c144a386fc4dd0e0acfbb6aa7e9937b810', 'validated', '{"audio_key":"ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032","entity_key":"g_pre_learning_chunks:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b5589913576c38c4cf3c131e47acd2c144a386fc4dd0e0acfbb6aa7e9937b810","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ae5294ac3af0e6c699e8bb2f76948dd85103f1d21b1ee50d66e76a3dc2be3032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-forms-signs_name_field -> audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a8ada51-bfcf-539c-9456-2c580b360a60', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-forms-signs_name_field')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8a40d27-7e08-59e2-8a8a-b23ce44ce104', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a8ada51-bfcf-539c-9456-2c580b360a60', 1), 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3', 731, '2026-09-14 13:13:02.947401', '26ccb232be6cef0c59637b9af523a7c4c22a07c34e44dd1d63577c8cab0195e4', 'validated', '{"audio_key":"b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb","entity_key":"u_en_en-forms-signs_name_field","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"26ccb232be6cef0c59637b9af523a7c4c22a07c34e44dd1d63577c8cab0195e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-forms-signs:example:2 -> audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('93981658-82af-511c-91e9-284171c2f9e4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-forms-signs:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('502d1b13-3aac-519e-bb7c-9bcf950c4d6d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('93981658-82af-511c-91e9-284171c2f9e4', 1), 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3', 731, '2026-09-14 13:13:02.947401', '26ccb232be6cef0c59637b9af523a7c4c22a07c34e44dd1d63577c8cab0195e4', 'validated', '{"audio_key":"b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb","entity_key":"g_en_en-forms-signs:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"26ccb232be6cef0c59637b9af523a7c4c22a07c34e44dd1d63577c8cab0195e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/b5d2f1bf3744d06bcabb1d48b88c45b96351bdf621fefafffbca1250cf804deb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-about-me_origin -> audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6c574fbe-3593-5534-a1d0-e51defd25e87', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-about-me_origin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7897fe6-61c9-5f9b-99cd-12094a5ff0da', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6c574fbe-3593-5534-a1d0-e51defd25e87', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3', 1149, '2026-09-14 13:13:03.932075', '327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd', 'validated', '{"audio_key":"b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4","entity_key":"u_en_en-about-me_origin","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-about-me_origin_listen -> audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('55829618-d0f9-5ad0-aff8-cf6f1a3fd251', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-about-me_origin_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('954bc1f5-b187-51ea-87c6-238486f6ed9e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('55829618-d0f9-5ad0-aff8-cf6f1a3fd251', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3', 1149, '2026-09-14 13:13:03.932075', '327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd', 'validated', '{"audio_key":"b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4","entity_key":"ex_en_en-about-me_origin_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-about-me:example:1 -> audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-about-me:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a44d57cb-3741-5c41-9ab2-6586749f8119', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1), '5dfce23c275fa6fab08233cefbad28edad8515795b3e7d9e445c869c89469fe1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3', 1149, '2026-09-14 13:13:03.932075', '327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd', 'validated', '{"audio_key":"b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4","entity_key":"g_en_en-about-me:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"327707226193afa447c24627d9d8c6f228632de9a790db41b2d773ca9e74c0dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/b9d60e323822bd8789bd66559dc90bafc4eb0aec6112b0cb092ece232f9e54c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_map -> audio/generated/en-US/utterances/bcc3258fc894f1a2696cc90a8649eed920332b89eb5476ed2822f7e575baaede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fbafb01c-497f-5123-b589-c6ce03d13149', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_map')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60be9861750facbfad8758254a2f76c0cfe78d54459a3bc187d49b1401fcd8e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bcdac8e-1627-5940-a3a7-294195033e9b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fbafb01c-497f-5123-b589-c6ce03d13149', 1), '60be9861750facbfad8758254a2f76c0cfe78d54459a3bc187d49b1401fcd8e8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/bcc3258fc894f1a2696cc90a8649eed920332b89eb5476ed2822f7e575baaede.mp3', 679, '2026-09-14 13:13:04.925451', 'f9aa3f6521abe3dc9f5735a85d5b2c8992b5edad1d2138e895152962f90c8867', 'validated', '{"audio_key":"bcc3258fc894f1a2696cc90a8649eed920332b89eb5476ed2822f7e575baaede","entity_key":"u_pre_map","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f9aa3f6521abe3dc9f5735a85d5b2c8992b5edad1d2138e895152962f90c8867","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/bcc3258fc894f1a2696cc90a8649eed920332b89eb5476ed2822f7e575baaede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-about-me_age -> audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f5abb6d-206b-573c-8e90-a1c9909e62a2', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-about-me_age')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78ce3ffc-743d-5918-b120-308fb2d7d518', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f5abb6d-206b-573c-8e90-a1c9909e62a2', 1), '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3', 1018, '2026-09-14 13:13:05.870393', '9a4ad4c417a917a00321673998ec67ae557e58584c0295bdf4ab7eb0fc81e435', 'validated', '{"audio_key":"bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683","entity_key":"u_en_en-about-me_age","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9a4ad4c417a917a00321673998ec67ae557e58584c0295bdf4ab7eb0fc81e435","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-about-me:example:2 -> audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-about-me:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b4be47a-defe-529a-b603-2a262f5e903c', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1), '0225ee7dc6c8daf134912bba13bf8ea9cda4c389b3ec3f642af0b1851752b1f2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3', 1018, '2026-09-14 13:13:05.870393', '9a4ad4c417a917a00321673998ec67ae557e58584c0295bdf4ab7eb0fc81e435', 'validated', '{"audio_key":"bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683","entity_key":"g_en_en-about-me:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9a4ad4c417a917a00321673998ec67ae557e58584c0295bdf4ab7eb0fc81e435","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/bf50ece05a28ee696d9df559013a7bb5c17bc8afbb1691a859d24842eec08683.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-forms-signs_exit_q -> audio/generated/en-US/utterances/bfb299903fc4871b91004b42bcb8b2d89483702c9d072bcea4401d23b93e5a96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('84aca8c4-64b3-54be-a8dc-c755f5c23dea', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-forms-signs_exit_q')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9345dbb1-68ca-574a-b7dd-5a64c077e878', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('84aca8c4-64b3-54be-a8dc-c755f5c23dea', 1), 'b602b92d39a89095dd69a6984525a5011ffb934d22586a4630988b9675b197ee',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/bfb299903fc4871b91004b42bcb8b2d89483702c9d072bcea4401d23b93e5a96.mp3', 1280, '2026-09-14 13:13:06.840298', '677cdbce18baedbc6f228fbc25a83cd6ac9b239dc5ab758188eadc43df111597', 'validated', '{"audio_key":"bfb299903fc4871b91004b42bcb8b2d89483702c9d072bcea4401d23b93e5a96","entity_key":"u_en_en-forms-signs_exit_q","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"677cdbce18baedbc6f228fbc25a83cd6ac9b239dc5ab758188eadc43df111597","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/bfb299903fc4871b91004b42bcb8b2d89483702c9d072bcea4401d23b93e5a96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_no_thanks -> audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da334dcd-dade-52ed-a412-58ed1885172c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_no_thanks')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b91d613f300c3bcc2c23ef2b53de52452a7b0e297e3e615026872452e27a2116'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('121d2884-e406-534b-a16e-40b5373c890c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da334dcd-dade-52ed-a412-58ed1885172c', 1), 'b91d613f300c3bcc2c23ef2b53de52452a7b0e297e3e615026872452e27a2116',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3', 862, '2026-09-14 13:13:07.823792', '71807fcf34f1cf69a1455964efff0f20d8a23489d49e83727b70ac27252c9dd7', 'validated', '{"audio_key":"c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047","entity_key":"u_pre_no_thanks","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"71807fcf34f1cf69a1455964efff0f20d8a23489d49e83727b70ac27252c9dd7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_listen -> audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cc26cd1f-04db-58e2-8eb5-38af818946dc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64df403570548cf0d3fbc42eeaa82612d5f224b0b05586984aa2a2abac9b0434'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab46f18e-6b58-5a94-9713-f5ef38de1748', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cc26cd1f-04db-58e2-8eb5-38af818946dc', 1), '64df403570548cf0d3fbc42eeaa82612d5f224b0b05586984aa2a2abac9b0434',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3', 783, '2026-09-14 13:13:08.763429', '49db6ec1bdb288799b867ee4b1345dc43c3a49148f6abf803e08e7cae2a94337', 'validated', '{"audio_key":"c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898","entity_key":"u_pre_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"49db6ec1bdb288799b867ee4b1345dc43c3a49148f6abf803e08e7cae2a94337","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_name_listen -> audio/generated/en-US/utterances/c593419ab58c297a298faa74165f6c4615e14209ca229730c9f46c54e23d6877.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('252ab535-8a50-58b8-82f3-ce26e2005dab', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_name_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55bc3809a9d7c0d16eec8d0cd8ac479a4ab3c1327beb88b1dd7fbd1724f7529b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54c51ab3-02e5-5699-8e72-8e17d3a18d08', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('252ab535-8a50-58b8-82f3-ce26e2005dab', 1), '55bc3809a9d7c0d16eec8d0cd8ac479a4ab3c1327beb88b1dd7fbd1724f7529b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c593419ab58c297a298faa74165f6c4615e14209ca229730c9f46c54e23d6877.mp3', 1253, '2026-09-14 13:13:09.766032', 'e2f289cac4732e857a6f1b8b257636a0d34ace9e3778931b788ca58ae14e1dd6', 'validated', '{"audio_key":"c593419ab58c297a298faa74165f6c4615e14209ca229730c9f46c54e23d6877","entity_key":"ex_pre_name_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e2f289cac4732e857a6f1b8b257636a0d34ace9e3778931b788ca58ae14e1dd6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c593419ab58c297a298faa74165f6c4615e14209ca229730c9f46c54e23d6877.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_phone -> audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b74f116-3416-5416-9e8d-1c1c134c55d5', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_phone')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63db6ca9-c9d1-5615-8cb4-aba8b1c76aaf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b74f116-3416-5416-9e8d-1c1c134c55d5', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3', 3840, '2026-09-14 13:13:10.978999', '61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969', 'validated', '{"audio_key":"c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16","entity_key":"u_en_en-real-life-numbers_phone","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-real-life-numbers:example:1 -> audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-real-life-numbers:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c94cc86c-a326-58ee-ab9c-368090bf4ab2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3', 3840, '2026-09-14 13:13:10.978999', '61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969', 'validated', '{"audio_key":"c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16","entity_key":"g_en_en-real-life-numbers:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-real-world-gate_phone_listen -> audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4b52c3e4-5a5e-5b11-8387-5de87b21522f', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-real-world-gate_phone_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d8cb220-841c-514b-9777-dc3ad49a2777', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4b52c3e4-5a5e-5b11-8387-5de87b21522f', 1), '43e161a2195125f2e3e30f0669f6b1b8f3c5b0a6ce681eec77d686bc9f811fb5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3', 3840, '2026-09-14 13:13:10.978999', '61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969', 'validated', '{"audio_key":"c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16","entity_key":"ex_en_en-real-world-gate_phone_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"61fe2711448b277f39373d5d3e49fff68cb28472e79005701ae8f65c6d879969","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c69ddab211da43d538eeb30c51bc7bba2a187fc35c3d35a4f90654a8304aee16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_pre_letter_name_sound:example:1 -> audio/generated/en-US/utterances/c793d06ec61013c8073eb22d1f669ff77aef3f4a67b7296f464a58a21f054075.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('57e07f24-03c6-5599-869d-183030578546', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_pre_letter_name_sound:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87feaca17f87aa50676a3b52f7955e5110585afffbde69495a0b3e3d7bb86d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('620ebe53-d45d-5e45-a3d9-3dd3d8619244', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('57e07f24-03c6-5599-869d-183030578546', 1), '87feaca17f87aa50676a3b52f7955e5110585afffbde69495a0b3e3d7bb86d85',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c793d06ec61013c8073eb22d1f669ff77aef3f4a67b7296f464a58a21f054075.mp3', 1201, '2026-09-14 13:13:11.946908', 'cab9c1e515692ec47a2eed76c6848fd1524d74903ab4c77c2bf1ffa83be55158', 'validated', '{"audio_key":"c793d06ec61013c8073eb22d1f669ff77aef3f4a67b7296f464a58a21f054075","entity_key":"g_pre_letter_name_sound:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"cab9c1e515692ec47a2eed76c6848fd1524d74903ab4c77c2bf1ffa83be55158","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c793d06ec61013c8073eb22d1f669ff77aef3f4a67b7296f464a58a21f054075.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_u -> audio/generated/en-US/utterances/c9a78a25e4eb2f87235c32171067c29f870b8ff42c8334ede0911c02aefe2708.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('72ada954-d1ae-527c-a205-42d1ef67b585', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_u')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a25513c7e0f6eaa80a3337ee18081b9e2ed09e00af8531c8f7bb2542764027e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cb6f898-7d44-56cb-a450-b34650c1942f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('72ada954-d1ae-527c-a205-42d1ef67b585', 1), 'a25513c7e0f6eaa80a3337ee18081b9e2ed09e00af8531c8f7bb2542764027e7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/c9a78a25e4eb2f87235c32171067c29f870b8ff42c8334ede0911c02aefe2708.mp3', 548, '2026-09-14 13:13:12.888951', '451f3efa6e68073f5caa6f59fcad58fb8afc5602434544f37cd7ae7c5132a056', 'validated', '{"audio_key":"c9a78a25e4eb2f87235c32171067c29f870b8ff42c8334ede0911c02aefe2708","entity_key":"u_fix_letter_u","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"451f3efa6e68073f5caa6f59fcad58fb8afc5602434544f37cd7ae7c5132a056","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c9a78a25e4eb2f87235c32171067c29f870b8ff42c8334ede0911c02aefe2708.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_alpha_n_t -> audio/generated/en-US/utterances/cbdbbd5fee34cfcdcf56f1cf054e191efef1356fe91d07a671d7340240498c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b8ff20d5-6333-5c6d-a92c-9c87030b3808', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_alpha_n_t')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3445cf1c5690f363f05d993f336b01ef09ec4ae84e0f759860c5a49e73d8dff9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9519de1-cf6e-5cfd-8f99-5f6ee8bb879d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b8ff20d5-6333-5c6d-a92c-9c87030b3808', 1), '3445cf1c5690f363f05d993f336b01ef09ec4ae84e0f759860c5a49e73d8dff9',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/cbdbbd5fee34cfcdcf56f1cf054e191efef1356fe91d07a671d7340240498c4c.mp3', 2168, '2026-09-14 13:13:13.966067', '30005e2d7808788444eab612022e027939cd1d2c6dc6b4f56d13ed6a39aa15f6', 'validated', '{"audio_key":"cbdbbd5fee34cfcdcf56f1cf054e191efef1356fe91d07a671d7340240498c4c","entity_key":"u_pre_alpha_n_t","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"30005e2d7808788444eab612022e027939cd1d2c6dc6b4f56d13ed6a39aa15f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/cbdbbd5fee34cfcdcf56f1cf054e191efef1356fe91d07a671d7340240498c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_alpha_h_m -> audio/generated/en-US/utterances/cd39b10dea4b28997348ce99c6e23fa7da72f8143a2324946278856ec988ce55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5819478b-1c6e-554c-b00e-e19016a98046', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_alpha_h_m')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '596943b9edb89663cb2fa213469a9e56250143b65503bae7deecd51605b2b41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d35bcf1-ce02-5d9c-82b5-eeb1f3d5df76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5819478b-1c6e-554c-b00e-e19016a98046', 1), '596943b9edb89663cb2fa213469a9e56250143b65503bae7deecd51605b2b41d',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/cd39b10dea4b28997348ce99c6e23fa7da72f8143a2324946278856ec988ce55.mp3', 1985, '2026-09-14 13:13:15.015908', '60ee90322ad7e13c63a77b5d18ffd330dde475f34f608bbc49395339d6f99eee', 'validated', '{"audio_key":"cd39b10dea4b28997348ce99c6e23fa7da72f8143a2324946278856ec988ce55","entity_key":"u_pre_alpha_h_m","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"60ee90322ad7e13c63a77b5d18ffd330dde475f34f608bbc49395339d6f99eee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/cd39b10dea4b28997348ce99c6e23fa7da72f8143a2324946278856ec988ce55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_price -> audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81bff4d6-e8ae-51d8-9fd6-5c93c2c66b80', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_price')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95a00616-48e5-5e78-bde1-f5eac0e5e62c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81bff4d6-e8ae-51d8-9fd6-5c93c2c66b80', 1), 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3', 1384, '2026-09-14 13:13:16.009467', 'f95bb11b5dcedf6ad4ba55ed57a2578783b714c66d0f57a59f91b06f3d3b0299', 'validated', '{"audio_key":"d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445","entity_key":"u_en_en-real-life-numbers_price","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f95bb11b5dcedf6ad4ba55ed57a2578783b714c66d0f57a59f91b06f3d3b0299","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-real-life-numbers:example:2 -> audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-real-life-numbers:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0435be3e-784e-5eba-a475-f4e53ec273c7', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1), 'f322c03bd85e8fa1611af28d52e968ffe8c9ec6a473548e8502f65d0a62bdec7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3', 1384, '2026-09-14 13:13:16.009467', 'f95bb11b5dcedf6ad4ba55ed57a2578783b714c66d0f57a59f91b06f3d3b0299', 'validated', '{"audio_key":"d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445","entity_key":"g_en_en-real-life-numbers:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f95bb11b5dcedf6ad4ba55ed57a2578783b714c66d0f57a59f91b06f3d3b0299","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d0018c0f699c8a9cf3211c67930200c557458a12bdb2403b869965ce4172d445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_en_en-forms-signs_field_listen -> audio/generated/en-US/utterances/d4eff901dc74a53bbac34e34af4e06981973fca1b50d06e580d6b6827d4b9612.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc091044-6924-57d2-8424-03bf4138a626', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_en_en-forms-signs_field_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63dceb8800b2dd4af9567a1f54f03b7c3dbdc27fac4799091ebfcc4928899ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b787e2a-33ff-5abc-ad3d-07105fbe0c9f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc091044-6924-57d2-8424-03bf4138a626', 1), '63dceb8800b2dd4af9567a1f54f03b7c3dbdc27fac4799091ebfcc4928899ee5',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d4eff901dc74a53bbac34e34af4e06981973fca1b50d06e580d6b6827d4b9612.mp3', 783, '2026-09-14 13:13:16.974067', '459e7b3237aa29734e2a7dd4894076f8d9c2559bc8c47995e6baed72b9685fc3', 'validated', '{"audio_key":"d4eff901dc74a53bbac34e34af4e06981973fca1b50d06e580d6b6827d4b9612","entity_key":"ex_en_en-forms-signs_field_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"459e7b3237aa29734e2a7dd4894076f8d9c2559bc8c47995e6baed72b9685fc3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d4eff901dc74a53bbac34e34af4e06981973fca1b50d06e580d6b6827d4b9612.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_oo_variation:example:2 -> audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('c7a3c8be-63be-57d3-b135-1e2b62a46962', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_oo_variation:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2c70c8f-9cd5-56a1-8f6c-c52b49b548b9', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('c7a3c8be-63be-57d3-b135-1e2b62a46962', 1), '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3', 914, '2026-09-14 13:13:17.952288', '5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1', 'validated', '{"audio_key":"d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98","entity_key":"g_fix_oo_variation:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_foot -> audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85a32aed-95f6-54eb-b17d-30b53806c215', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_foot')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8103a9fb-5e37-50d7-a9a8-889d939a13ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85a32aed-95f6-54eb-b17d-30b53806c215', 1), '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3', 914, '2026-09-14 13:13:17.952288', '5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1', 'validated', '{"audio_key":"d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98","entity_key":"u_fix_sound_foot","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_8 -> audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c41e121b-7eaf-58cb-9788-9e3e8f93b57b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_8')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09b32c2c-86e8-54cb-aba9-8d04d069cec4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c41e121b-7eaf-58cb-9788-9e3e8f93b57b', 1), '22e4f6912a6980d6fd59e0c5409247407491282cc8dbd009734066b8393a5761',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3', 914, '2026-09-14 13:13:17.952288', '5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1', 'validated', '{"audio_key":"d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98","entity_key":"ex_fix_sound_listen_8","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5d06ce8040cc2de1679519c3dd5f14aac9f1171485e2b741179048986ac927e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d5e00cfc6a26152729e25540b01b56489575f600a0895b9e1c81a4cc93d0da98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_letter_name_sound:example:1 -> audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('9cb760f3-4018-5b67-90b0-52c361ae4d62', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_letter_name_sound:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09e91e8e-a75c-59a3-99a2-9ef873f2a3af', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('9cb760f3-4018-5b67-90b0-52c361ae4d62', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3', 679, '2026-09-14 13:13:18.930467', '45028e8c85273e3585fbf42e37524e99c44755580679b2ff0aa51b528853e3a4', 'validated', '{"audio_key":"d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e","entity_key":"g_fix_letter_name_sound:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45028e8c85273e3585fbf42e37524e99c44755580679b2ff0aa51b528853e3a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_a -> audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('89d46c7d-ef58-50cf-a0ee-347dfc381072', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_a')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dfe0ccc-5338-5098-854e-bdc3f8a7c800', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('89d46c7d-ef58-50cf-a0ee-347dfc381072', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3', 679, '2026-09-14 13:13:18.930467', '45028e8c85273e3585fbf42e37524e99c44755580679b2ff0aa51b528853e3a4', 'validated', '{"audio_key":"d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e","entity_key":"u_fix_letter_a","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45028e8c85273e3585fbf42e37524e99c44755580679b2ff0aa51b528853e3a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/d716a707cf1d07d19c1a0a56db03f176afed234913ce94931a938ebc4a572a4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_vowels -> audio/generated/en-US/utterances/dbae0bcc080995d6a17822299d4785fff59d88eaff17d8c5445ee1bfc1ec0ce4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('31e20638-d964-51d5-a4b2-0e57aa5c67ff', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_vowels')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d26850e351de39eda4a75b8cd69a24008726cae04f46b7c485e41617259f6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca5b65e4-fc8e-52ed-bf6f-70add80e253f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('31e20638-d964-51d5-a4b2-0e57aa5c67ff', 1), 'b4d26850e351de39eda4a75b8cd69a24008726cae04f46b7c485e41617259f6e',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/dbae0bcc080995d6a17822299d4785fff59d88eaff17d8c5445ee1bfc1ec0ce4.mp3', 1906, '2026-09-14 13:13:19.919772', '5775136a1181fa0b39e560276db468d351e52dfd218137b0835efa9e4a52e63c', 'validated', '{"audio_key":"dbae0bcc080995d6a17822299d4785fff59d88eaff17d8c5445ee1bfc1ec0ce4","entity_key":"u_pre_vowels","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5775136a1181fa0b39e560276db468d351e52dfd218137b0835efa9e4a52e63c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/dbae0bcc080995d6a17822299d4785fff59d88eaff17d8c5445ee1bfc1ec0ce4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_n -> audio/generated/en-US/utterances/dda12a5f22a20753599101fe0c2b91d15d113cd6112bce9890ed399d799b16ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f71e12a-23a7-5fed-aecd-c3ae3f9f5661', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_n')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ce86a6ae65d3692e7305e2c58ac62eebd97d3d943e093f577da25c36988246b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('262c1fcd-81ff-5b5f-b256-444767e66e47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f71e12a-23a7-5fed-aecd-c3ae3f9f5661', 1), '8ce86a6ae65d3692e7305e2c58ac62eebd97d3d943e093f577da25c36988246b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/dda12a5f22a20753599101fe0c2b91d15d113cd6112bce9890ed399d799b16ee.mp3', 600, '2026-09-14 13:13:20.873035', '9f02f511e8351ded04cd7c24a1ba2f921f6f4cf492c4c93915dbb7e98599602d', 'validated', '{"audio_key":"dda12a5f22a20753599101fe0c2b91d15d113cd6112bce9890ed399d799b16ee","entity_key":"u_fix_letter_n","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"9f02f511e8351ded04cd7c24a1ba2f921f6f4cf492c4c93915dbb7e98599602d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/dda12a5f22a20753599101fe0c2b91d15d113cd6112bce9890ed399d799b16ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_alpha_a_g -> audio/generated/en-US/utterances/de4f995085bb3e684ae96effc6221e33ca135204e28784e73d8c47c384c543f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e676bbe3-03d4-5e64-b7d1-74cde2efae5a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_alpha_a_g')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b35ba1772d906d1046b433555e21b154790af9a79919c065d86ac5d0c5ebdef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed278e55-2d48-58a8-bd4d-b8e02e98f9b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e676bbe3-03d4-5e64-b7d1-74cde2efae5a', 1), 'b35ba1772d906d1046b433555e21b154790af9a79919c065d86ac5d0c5ebdef0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/de4f995085bb3e684ae96effc6221e33ca135204e28784e73d8c47c384c543f7.mp3', 1906, '2026-09-14 13:13:21.899200', '1953b27db1bfaac2bada78c7550c165101132d0af28e74fc9d2f74b4bbadf448', 'validated', '{"audio_key":"de4f995085bb3e684ae96effc6221e33ca135204e28784e73d8c47c384c543f7","entity_key":"u_pre_alpha_a_g","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"1953b27db1bfaac2bada78c7550c165101132d0af28e74fc9d2f74b4bbadf448","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/de4f995085bb3e684ae96effc6221e33ca135204e28784e73d8c47c384c543f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_spell_amy_listen -> audio/generated/en-US/utterances/deb565d3cf3759beb43276218671ca52a25b0fe4c229f9cdc332687a51971d66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca29fb2b-57e8-55a4-b454-27f378188f1c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_spell_amy_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed7fe81fa15d2daad912d66249acd2de6950d474b7305c31cd8b76368cb7bbe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d748dc0-37e0-5752-bc36-a47b5ccd5b63', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca29fb2b-57e8-55a4-b454-27f378188f1c', 1), 'ed7fe81fa15d2daad912d66249acd2de6950d474b7305c31cd8b76368cb7bbe1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/deb565d3cf3759beb43276218671ca52a25b0fe4c229f9cdc332687a51971d66.mp3', 783, '2026-09-14 13:13:22.813462', '822a81c98b5d3ba8e4e97dcce70b18b0bdef045d3ae7d48c7ccd7bf998ca682b', 'validated', '{"audio_key":"deb565d3cf3759beb43276218671ca52a25b0fe4c229f9cdc332687a51971d66","entity_key":"ex_pre_spell_amy_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"822a81c98b5d3ba8e4e97dcce70b18b0bdef045d3ae7d48c7ccd7bf998ca682b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/deb565d3cf3759beb43276218671ca52a25b0fe4c229f9cdc332687a51971d66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_whats -> audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1bbcaba7-403b-59c6-a628-6df679fd587a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_name_whats')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01d1f260-7008-5fc8-8ddb-f142cbe03d33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1bbcaba7-403b-59c6-a628-6df679fd587a', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3', 1018, '2026-09-14 13:13:23.753845', 'de898cdb100ca04450961757aab6bfb09d27e2c49fd67159398238556366ca25', 'validated', '{"audio_key":"e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4","entity_key":"u_pre_name_whats","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"de898cdb100ca04450961757aab6bfb09d27e2c49fd67159398238556366ca25","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_alpha_u_z -> audio/generated/en-US/utterances/e5e35bf5e826a1a000e04d8b6d9395c2f904a415ee976d79e14ab4d64a8bd7ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e97da8d-d5ad-5393-a398-c60e2a5d2bef', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_alpha_u_z')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe8bf2d946ac39ab7ae31afd0a51a417e223ec5596ea628cc2e7b2926dd38cf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4ca1549-a3bf-51ba-8c13-ff0dacb61776', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e97da8d-d5ad-5393-a398-c60e2a5d2bef', 1), 'fe8bf2d946ac39ab7ae31afd0a51a417e223ec5596ea628cc2e7b2926dd38cf2',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e5e35bf5e826a1a000e04d8b6d9395c2f904a415ee976d79e14ab4d64a8bd7ba.mp3', 2638, '2026-09-14 13:13:24.882159', '389c7f91ed7e1864aa41df9be53c58984946314df28df62c13e697370cb5bfc2', 'validated', '{"audio_key":"e5e35bf5e826a1a000e04d8b6d9395c2f904a415ee976d79e14ab4d64a8bd7ba","entity_key":"u_pre_alpha_u_z","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"389c7f91ed7e1864aa41df9be53c58984946314df28df62c13e697370cb5bfc2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e5e35bf5e826a1a000e04d8b6d9395c2f904a415ee976d79e14ab4d64a8bd7ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_t -> audio/generated/en-US/utterances/e614fbc4ac1eaeccff994d1600ae78720c6bdaf8e0e02f218320c1f298af5e8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('efd0dfec-573c-5102-8454-b86fb530680b', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_t')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e632b7095b0bf32c260fa4c539e9fd7b852d0de454e9be26f24d0d6f91d069d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29b20332-93a9-5f75-960a-a00ab5a4bcde', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('efd0dfec-573c-5102-8454-b86fb530680b', 1), 'e632b7095b0bf32c260fa4c539e9fd7b852d0de454e9be26f24d0d6f91d069d3',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e614fbc4ac1eaeccff994d1600ae78720c6bdaf8e0e02f218320c1f298af5e8b.mp3', 653, '2026-09-14 13:13:25.809281', 'd329debdeaa2c4229aa652b0cfaade30c8901c7622b2bcbe30fef611b1c0de97', 'validated', '{"audio_key":"e614fbc4ac1eaeccff994d1600ae78720c6bdaf8e0e02f218320c1f298af5e8b","entity_key":"u_fix_letter_t","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"d329debdeaa2c4229aa652b0cfaade30c8901c7622b2bcbe30fef611b1c0de97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e614fbc4ac1eaeccff994d1600ae78720c6bdaf8e0e02f218320c1f298af5e8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_hello -> audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('174b099d-e7f3-516d-88e7-3ebb99b3d53d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_hello')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ce07c53-8847-5f01-bf3f-ff3692c146b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('174b099d-e7f3-516d-88e7-3ebb99b3d53d', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3', 783, '2026-09-14 13:13:26.728800', 'c7113cb2f3657c3f10df0fe64afc734fdf31ce9ecf916cb7db2f98f6f7cb3fb1', 'validated', '{"audio_key":"e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d","entity_key":"u_pre_hello","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c7113cb2f3657c3f10df0fe64afc734fdf31ce9ecf916cb7db2f98f6f7cb3fb1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_date -> audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('33302a9a-7d2d-53a5-8733-22a670ac3edb', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_date')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ebd1402-4289-50fa-87d4-515216db1e4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('33302a9a-7d2d-53a5-8733-22a670ac3edb', 1), 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3', 1018, '2026-09-14 13:13:27.694717', 'adc89f33d75dccaf29e606ca9df74be9875604c0d273269ba25a561a50ecf687', 'validated', '{"audio_key":"e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452","entity_key":"u_en_en-real-life-numbers_date","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"adc89f33d75dccaf29e606ca9df74be9875604c0d273269ba25a561a50ecf687","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-real-life-numbers:example:3 -> audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-real-life-numbers:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('909c3dbb-941e-58bc-9568-738cbb6b236b', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0f1afc9d-00e9-5749-ba2e-b3f8c2234bdd', 1), 'aa9ed96c8c4fe21722702cf0edfdc8a3502053670f7fbcc9226263e1063f2dc8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3', 1018, '2026-09-14 13:13:27.694717', 'adc89f33d75dccaf29e606ca9df74be9875604c0d273269ba25a561a50ecf687', 'validated', '{"audio_key":"e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452","entity_key":"g_en_en-real-life-numbers:example:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"adc89f33d75dccaf29e606ca9df74be9875604c0d273269ba25a561a50ecf687","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e72b8fa7c0c7aebd016fa3e117b5e532d5dc3d2b842a973f13c010e1da929452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_y -> audio/generated/en-US/utterances/e79c6abfeddf863f4f76bf5258cb44ad732affe2505549f9401470c5cda78bf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cae3cf57-33fa-5bca-8e16-f4685ff94552', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_y')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18f5384d58bcb1bba0bcd9e6a6781d1a6ac2cc280c330ecbab6cb7931b721552'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d92ec1d5-714f-5815-919b-4f35a57ad9bd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cae3cf57-33fa-5bca-8e16-f4685ff94552', 1), '18f5384d58bcb1bba0bcd9e6a6781d1a6ac2cc280c330ecbab6cb7931b721552',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e79c6abfeddf863f4f76bf5258cb44ad732affe2505549f9401470c5cda78bf8.mp3', 548, '2026-09-14 13:13:28.679153', '7b7f30d7ae529dc7b7eb2be410ff14457ee68126546b627b953743609dddaba5', 'validated', '{"audio_key":"e79c6abfeddf863f4f76bf5258cb44ad732affe2505549f9401470c5cda78bf8","entity_key":"u_fix_letter_y","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b7f30d7ae529dc7b7eb2be410ff14457ee68126546b627b953743609dddaba5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e79c6abfeddf863f4f76bf5258cb44ad732affe2505549f9401470c5cda78bf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_ten -> audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('887d0203-c798-5969-805d-7e5fbb1e2609', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_ten')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e0a9348-471e-5339-b2fd-4e188a688e2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('887d0203-c798-5969-805d-7e5fbb1e2609', 1), 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3', 914, '2026-09-14 13:13:29.623682', 'e3d5f5a980f1a16aadd96d226a90e5e94f7e7ed8280fc365d3cb60d72ebcf234', 'validated', '{"audio_key":"e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1","entity_key":"u_pre_ten","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e3d5f5a980f1a16aadd96d226a90e5e94f7e7ed8280fc365d3cb60d72ebcf234","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_sound_ten -> audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('70d9cd72-731e-5f89-b10c-4b8f2b7408a8', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_sound_ten')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7f6577b-75b6-575a-a1e8-e08831d79d95', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('70d9cd72-731e-5f89-b10c-4b8f2b7408a8', 1), 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3', 914, '2026-09-14 13:13:29.623682', 'e3d5f5a980f1a16aadd96d226a90e5e94f7e7ed8280fc365d3cb60d72ebcf234', 'validated', '{"audio_key":"e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1","entity_key":"ex_pre_sound_ten","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e3d5f5a980f1a16aadd96d226a90e5e94f7e7ed8280fc365d3cb60d72ebcf234","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e7c5b402e6889246135b095dda85f6d1ffccc58f7f0a5db523b1ee755ca269b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_letter_name_sound:example:2 -> audio/generated/en-US/utterances/e99b3ee10d903d1b2fdbd62328ecb724efed5ad29553d432c99d207855e96e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('9cb760f3-4018-5b67-90b0-52c361ae4d62', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_letter_name_sound:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77af778b51abd4a3c51c5ddd97204a9c3ae614ebccb75a606c3b6865aed6744e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5ba4107-efbb-5c0a-b579-aaf8e7353403', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('9cb760f3-4018-5b67-90b0-52c361ae4d62', 1), '77af778b51abd4a3c51c5ddd97204a9c3ae614ebccb75a606c3b6865aed6744e',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/e99b3ee10d903d1b2fdbd62328ecb724efed5ad29553d432c99d207855e96e25.mp3', 731, '2026-09-14 13:13:30.576210', '5ac7140232737267e8a8a78d68fe5d9a1ce33b766074d5c091d4f21e22c21c98', 'validated', '{"audio_key":"e99b3ee10d903d1b2fdbd62328ecb724efed5ad29553d432c99d207855e96e25","entity_key":"g_fix_letter_name_sound:example:2","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"5ac7140232737267e8a8a78d68fe5d9a1ce33b766074d5c091d4f21e22c21c98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e99b3ee10d903d1b2fdbd62328ecb724efed5ad29553d432c99d207855e96e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_num_8_listen -> audio/generated/en-US/utterances/ed40204d90ca025ba96c0c0666249495bd08ec4845cf1f2797d9e5053ead8a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e4ffa504-2e1b-5b45-855f-21c23338340f', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_num_8_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('677dfc14-2b1a-5e4c-bcaf-b0e357a2737f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e4ffa504-2e1b-5b45-855f-21c23338340f', 1), 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ed40204d90ca025ba96c0c0666249495bd08ec4845cf1f2797d9e5053ead8a92.mp3', 679, '2026-09-14 13:13:31.509760', 'badfa607bf75d487441fa3e6e5c76def3ac7c7403b73ea5ea992cd927ff09312', 'validated', '{"audio_key":"ed40204d90ca025ba96c0c0666249495bd08ec4845cf1f2797d9e5053ead8a92","entity_key":"ex_pre_num_8_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"badfa607bf75d487441fa3e6e5c76def3ac7c7403b73ea5ea992cd927ff09312","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ed40204d90ca025ba96c0c0666249495bd08ec4845cf1f2797d9e5053ead8a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_ship -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54a30c06-e4bf-5607-a642-8cff05160cef', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_ship')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e8fbc04-ae5c-50f4-b53c-28df152b0a5b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54a30c06-e4bf-5607-a642-8cff05160cef', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 966, '2026-09-14 13:13:32.493422', '45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"u_pre_ship","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_sound_sh -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fd491526-4f73-5c04-a956-5553058e076d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_sound_sh')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40970e1d-38ee-5a34-a93b-6b19524b06ed', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fd491526-4f73-5c04-a956-5553058e076d', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 966, '2026-09-14 13:13:32.493422', '45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"ex_pre_sound_sh","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_sh_ch:example:1 -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('09f532bf-aeaa-50d5-af52-b4695bbf60a5', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_sh_ch:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e5e383d-f8d5-506b-a21e-6ffa7b8916f2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('09f532bf-aeaa-50d5-af52-b4695bbf60a5', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 966, '2026-09-14 13:13:32.493422', '45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"g_fix_sh_ch:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_short_long_i:example:1 -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('bec5b297-1ac5-537f-b686-6ca7140b089e', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_short_long_i:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff28099f-6deb-5150-8634-ed77e4259169', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('bec5b297-1ac5-537f-b686-6ca7140b089e', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 966, '2026-09-14 13:13:32.493422', '45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"g_fix_short_long_i:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_5 -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8e565bbb-6b64-5d9f-970b-6cc0fc6807ee', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b85f500-2d8f-5109-be41-0711ef75d5a3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8e565bbb-6b64-5d9f-970b-6cc0fc6807ee', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 966, '2026-09-14 13:13:32.493422', '45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"ex_fix_sound_listen_5","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c477680d1bb23ab78df1a2145793bdbee2ebfd2eb35b737b6d440e6ed29d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_fix_w_v:example:1 -> audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('8ea1de63-1107-5006-9102-f4ee3f7c10e6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_fix_w_v:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80181d30-f084-5651-a326-b4bd08b09e17', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('8ea1de63-1107-5006-9102-f4ee3f7c10e6', 1), '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3', 679, '2026-09-14 13:13:33.436629', '17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1', 'validated', '{"audio_key":"ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090","entity_key":"g_fix_w_v:example:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_wet -> audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e0c35c0-e71b-5e73-b647-aa57fbadd8e8', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_wet')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2a7ade7-c794-58b9-8080-95e1a35424f0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e0c35c0-e71b-5e73-b647-aa57fbadd8e8', 1), '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3', 679, '2026-09-14 13:13:33.436629', '17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1', 'validated', '{"audio_key":"ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090","entity_key":"u_fix_sound_wet","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_3 -> audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a6b34437-20ab-510a-83b7-f239c0cbd5e3', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf33d877-01e2-5b71-8347-451b79247e18', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a6b34437-20ab-510a-83b7-f239c0cbd5e3', 1), '534c51e17770c9b7a5aa186bec09fd9470653e25f39651277bcc2fb1f620acd0',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3', 679, '2026-09-14 13:13:33.436629', '17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1', 'validated', '{"audio_key":"ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090","entity_key":"ex_fix_sound_listen_3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"17228c8120e929514546c64bc29af84174691a0d4409d1888d3f162ec186bfd1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ee6e671b27ad94580cd8cd8b99beb5e9bce86babb5e93c2b8be3a2ae8d779090.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_hi -> audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3eaa346-1f2f-51c1-ab25-fe3f6eb7f97c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_hi')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab4b81f-c83d-503d-97ea-f069b29431fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3eaa346-1f2f-51c1-ab25-fe3f6eb7f97c', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3', 783, '2026-09-14 13:13:34.372936', 'cb879f26f606fb83660da48e04695c98c101faedde85733bc39efd490db8e398', 'validated', '{"audio_key":"ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4","entity_key":"u_pre_hi","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"cb879f26f606fb83660da48e04695c98c101faedde85733bc39efd490db8e398","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_d -> audio/generated/en-US/utterances/f08b37de7599664e77c30d0b62161ec5b6d80e1cae12b152c0aade6208fb79fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8c305ed5-e768-5b92-9528-2661fcda7a48', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_d')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c47c37d-8d67-51be-a378-bfb05408b41a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8c305ed5-e768-5b92-9528-2661fcda7a48', 1), '3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f08b37de7599664e77c30d0b62161ec5b6d80e1cae12b152c0aade6208fb79fd.mp3', 600, '2026-09-14 13:13:35.277303', 'ce1519c9db7e7ffc08524de65f87dc6c948984ff5fc6786dd8cae66ff21799f3', 'validated', '{"audio_key":"f08b37de7599664e77c30d0b62161ec5b6d80e1cae12b152c0aade6208fb79fd","entity_key":"u_fix_letter_d","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ce1519c9db7e7ffc08524de65f87dc6c948984ff5fc6786dd8cae66ff21799f3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f08b37de7599664e77c30d0b62161ec5b6d80e1cae12b152c0aade6208fb79fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_repeat_that -> audio/generated/en-US/utterances/f0eaa5ca90b01a75d76b88474c5df7c22de66a1f20a04426e328b222efd84c43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d2e9fb4c-79b0-5d96-93de-9b760680286f', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_repeat_that')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0006b6926947b91ba80222f8d1257b0dcf9b90d49eef4150483002b21e146886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f01933c5-90bb-536b-891f-ea40c326a417', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d2e9fb4c-79b0-5d96-93de-9b760680286f', 1), '0006b6926947b91ba80222f8d1257b0dcf9b90d49eef4150483002b21e146886',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f0eaa5ca90b01a75d76b88474c5df7c22de66a1f20a04426e328b222efd84c43.mp3', 1384, '2026-09-14 13:13:36.273292', '44f71cfe3908ecb1d2bec186023678afc2162b73e3b978c55ecac6629461276d', 'validated', '{"audio_key":"f0eaa5ca90b01a75d76b88474c5df7c22de66a1f20a04426e328b222efd84c43","entity_key":"u_repeat_that","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"44f71cfe3908ecb1d2bec186023678afc2162b73e3b978c55ecac6629461276d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f0eaa5ca90b01a75d76b88474c5df7c22de66a1f20a04426e328b222efd84c43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-about-me_feeling -> audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b4b0611-de1c-584a-bce4-cf39d087b9b4', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-about-me_feeling')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('878663e4-9376-56b0-80b6-073a2c582e0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b4b0611-de1c-584a-bce4-cf39d087b9b4', 1), '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3', 1253, '2026-09-14 13:13:37.269124', 'e5ef61c4a10d00fecd3e5eeb8ec948c92af6f88bf7212ed7189a294f147add8c', 'validated', '{"audio_key":"f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e","entity_key":"u_en_en-about-me_feeling","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e5ef61c4a10d00fecd3e5eeb8ec948c92af6f88bf7212ed7189a294f147add8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_en_en-about-me:example:3 -> audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_en_en-about-me:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e20321b-e9c1-5335-b958-a35f39e070da', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('d33ffcc4-acb6-5521-abf4-3dcf04dd26fc', 1), '3e67e2821cdebe3708f9a5388ba59dbed8dd82e3f8befa978078a3f5730a563f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3', 1253, '2026-09-14 13:13:37.269124', 'e5ef61c4a10d00fecd3e5eeb8ec948c92af6f88bf7212ed7189a294f147add8c', 'validated', '{"audio_key":"f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e","entity_key":"g_en_en-about-me:example:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e5ef61c4a10d00fecd3e5eeb8ec948c92af6f88bf7212ed7189a294f147add8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f3c58b4e897d612575b044566801ffa2e09404e1461c17e21d863cc72ef19d0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_yes_please -> audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b615b97b-974a-5739-b085-5b9c9bff0d8c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_pre_yes_please')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df3f68c-576b-5157-9b0f-59ee12097110', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b615b97b-974a-5739-b085-5b9c9bff0d8c', 1), '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3', 1149, '2026-09-14 13:13:38.215388', '176ca4215e4a76b1daa5f6030c1e780292f5606fb0dcef674aa9e2d76baae2f9', 'validated', '{"audio_key":"f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7","entity_key":"u_pre_yes_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"176ca4215e4a76b1daa5f6030c1e780292f5606fb0dcef674aa9e2d76baae2f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_en_en-real-life-numbers_n20 -> audio/generated/en-US/utterances/f7a0e7e8d4718befbe23a1fc5c4da9fbe0caad3ef28b7f36f3905fc73ae55c36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba9a75a5-3c3d-5e59-beb3-2f81136478a6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_en_en-real-life-numbers_n20')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c2c4df740f720b0c861920dc27692c4d4b5daa65d6330a593c931d35f8ac737'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95234795-2906-5042-b5d6-b6c36c3f82ba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba9a75a5-3c3d-5e59-beb3-2f81136478a6', 1), '7c2c4df740f720b0c861920dc27692c4d4b5daa65d6330a593c931d35f8ac737',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/f7a0e7e8d4718befbe23a1fc5c4da9fbe0caad3ef28b7f36f3905fc73ae55c36.mp3', 862, '2026-09-14 13:13:39.168641', '6117a0e5a690d8957ed639f3108683b421a12a286d70bfafb175e9eeca8d2d2c', 'validated', '{"audio_key":"f7a0e7e8d4718befbe23a1fc5c4da9fbe0caad3ef28b7f36f3905fc73ae55c36","entity_key":"u_en_en-real-life-numbers_n20","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"6117a0e5a690d8957ed639f3108683b421a12a286d70bfafb175e9eeca8d2d2c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f7a0e7e8d4718befbe23a1fc5c4da9fbe0caad3ef28b7f36f3905fc73ae55c36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_sound_thin -> audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('844ec285-3381-5355-9bb8-995f63edaccd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_sound_thin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0dc227b5aa78f8400838aec14099a5e23b9da69ff5ee37dffd8b6b40003a95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('add41370-9f2c-57e2-8475-2d33b4bf5c20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('844ec285-3381-5355-9bb8-995f63edaccd', 1), '1a0dc227b5aa78f8400838aec14099a5e23b9da69ff5ee37dffd8b6b40003a95',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3', 966, '2026-09-14 13:13:40.112545', 'a643506c6e3f7e0ebe5f30a5963337738617b6c5bb71f7dfb1d4099738f741bb', 'validated', '{"audio_key":"fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a","entity_key":"u_fix_sound_thin","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a643506c6e3f7e0ebe5f30a5963337738617b6c5bb71f7dfb1d4099738f741bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_fix_sound_listen_1 -> audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('40017e69-f657-52bf-8da6-dacf9289290c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_fix_sound_listen_1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0dc227b5aa78f8400838aec14099a5e23b9da69ff5ee37dffd8b6b40003a95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62231bb1-3b76-55f9-92aa-07572ba1feaf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('40017e69-f657-52bf-8da6-dacf9289290c', 1), '1a0dc227b5aa78f8400838aec14099a5e23b9da69ff5ee37dffd8b6b40003a95',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3', 966, '2026-09-14 13:13:40.112545', 'a643506c6e3f7e0ebe5f30a5963337738617b6c5bb71f7dfb1d4099738f741bb', 'validated', '{"audio_key":"fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a","entity_key":"ex_fix_sound_listen_1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a643506c6e3f7e0ebe5f30a5963337738617b6c5bb71f7dfb1d4099738f741bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/fb7516483e53ef58d5b327774444695e3ad91e1e168774845f2ec1e98580a77a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_fix_letter_e -> audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d2f3b39-aefd-57ea-8243-27cf91c0966c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_fix_letter_e')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9f1c498-fc52-541a-b397-d7ed3fb576a8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d2f3b39-aefd-57ea-8243-27cf91c0966c', 1), 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3', 600, '2026-09-14 13:13:41.022963', '6ade2a25125b12139747667f3c15a615dc91be588b1fa58b3652c12638b4279e', 'validated', '{"audio_key":"fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f","entity_key":"u_fix_letter_e","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"6ade2a25125b12139747667f3c15a615dc91be588b1fa58b3652c12638b4279e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_pre_lettername_e -> audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e4d77498-c531-5e99-b734-dc24ca191154', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_pre_lettername_e')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cae9bd84-d2e0-5077-ba50-18111fe75eb8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e4d77498-c531-5e99-b734-dc24ca191154', 1), 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3', 600, '2026-09-14 13:13:41.022963', '6ade2a25125b12139747667f3c15a615dc91be588b1fa58b3652c12638b4279e', 'validated', '{"audio_key":"fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f","entity_key":"ex_pre_lettername_e","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"6ade2a25125b12139747667f3c15a615dc91be588b1fa58b3652c12638b4279e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/fd3f5fd99cf1e663d8276f01c8a8fc0eb1ddf68bdd1c36b40b182791deb33f9f.mp3"}'
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

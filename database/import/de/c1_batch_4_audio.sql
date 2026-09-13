-- Generated audio link import for de-DE C1
-- Source manifest: audio/manifests/de/C1-batch-4.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_influence_without_authority_03:3 -> audio/generated/de-DE/dialogues/0001f21ea66b79d355b420badd9b66e61ff700901465f468202b68969e639151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37d483fb-13f1-54aa-a524-85c1fe4db52e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81d0dd37817cb4cab2c0e1431f216631280f9e06150836665fa76336a15d13f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4371329c-37fe-5310-9c00-22f112ef10e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37d483fb-13f1-54aa-a524-85c1fe4db52e', 1), '81d0dd37817cb4cab2c0e1431f216631280f9e06150836665fa76336a15d13f1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0001f21ea66b79d355b420badd9b66e61ff700901465f468202b68969e639151.mp3', 4493, '2026-09-13 10:37:16.391791', 'b105b968ce5255f9f1315cee8eba2064586f6fb9ba8a1dce9ee866b5308791b3', 'validated', '{"audio_key":"0001f21ea66b79d355b420badd9b66e61ff700901465f468202b68969e639151","entity_key":"d_influence_without_authority_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b105b968ce5255f9f1315cee8eba2064586f6fb9ba8a1dce9ee866b5308791b3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0001f21ea66b79d355b420badd9b66e61ff700901465f468202b68969e639151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_02:4 -> audio/generated/de-DE/dialogues/029aa582f02cf9c07416fdd18b363db231d4537e71b84429816ecea596ece702.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0fd5744-622a-5d76-8baf-9ee17fa414f3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f62ddc61c351698b37816ba02160c8c4fd400a7beaf096430401da4dea1b0bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3070974a-d307-5744-845d-5eb4cfadb989', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0fd5744-622a-5d76-8baf-9ee17fa414f3', 1), '6f62ddc61c351698b37816ba02160c8c4fd400a7beaf096430401da4dea1b0bf',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/029aa582f02cf9c07416fdd18b363db231d4537e71b84429816ecea596ece702.mp3', 5433, '2026-09-13 10:37:16.493083', 'd2be9634573c82c0cead23b1f49b7bb574ce99d8be3bf10996c847a018e42ed2', 'validated', '{"audio_key":"029aa582f02cf9c07416fdd18b363db231d4537e71b84429816ecea596ece702","entity_key":"d_media_interviews_public_statements_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d2be9634573c82c0cead23b1f49b7bb574ce99d8be3bf10996c847a018e42ed2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/029aa582f02cf9c07416fdd18b363db231d4537e71b84429816ecea596ece702.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_03:2 -> audio/generated/de-DE/dialogues/047df85cc3e2e96353e4950961bee3d63121f9b5db2c613367a7a94908c104de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52ef52a6-9d00-5489-a525-5a70494e64fb', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5508fa927fa02bae7f652a08e3830550d87fbc5bb44d34e3eb1b7f0ce6c7583e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a612456-2cef-5173-8b3d-bee3d47641f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52ef52a6-9d00-5489-a525-5a70494e64fb', 1), '5508fa927fa02bae7f652a08e3830550d87fbc5bb44d34e3eb1b7f0ce6c7583e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/047df85cc3e2e96353e4950961bee3d63121f9b5db2c613367a7a94908c104de.mp3', 5694, '2026-09-13 10:37:18.059176', 'c378cb57cdda542529d1081d237f2062ea175cd75be86eb62879c05b6d654e38', 'validated', '{"audio_key":"047df85cc3e2e96353e4950961bee3d63121f9b5db2c613367a7a94908c104de","entity_key":"d_public_debate_value_conflicts_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c378cb57cdda542529d1081d237f2062ea175cd75be86eb62879c05b6d654e38","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/047df85cc3e2e96353e4950961bee3d63121f9b5db2c613367a7a94908c104de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_01:3 -> audio/generated/de-DE/dialogues/05cdae8c095005f49f575ee2e5c8772698d1204b9b71b734ec814a3eb01ddb0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('add236a3-e1e7-5a58-ac02-ba6fb73b4440', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62f8127cb5dbbe36a872fd50a336efe5daee8290d15b63a82ceb01b2530ea6f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3920ebe-10f6-5cc3-bbd3-d5286e9c428c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('add236a3-e1e7-5a58-ac02-ba6fb73b4440', 1), '62f8127cb5dbbe36a872fd50a336efe5daee8290d15b63a82ceb01b2530ea6f6',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05cdae8c095005f49f575ee2e5c8772698d1204b9b71b734ec814a3eb01ddb0c.mp3', 4493, '2026-09-13 10:37:17.955235', '3957da0ebd97d3a2ae2c68deebd54bfe53a77105216afe53ef8576e935a0e573', 'validated', '{"audio_key":"05cdae8c095005f49f575ee2e5c8772698d1204b9b71b734ec814a3eb01ddb0c","entity_key":"d_ethical_tradeoffs_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3957da0ebd97d3a2ae2c68deebd54bfe53a77105216afe53ef8576e935a0e573","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/05cdae8c095005f49f575ee2e5c8772698d1204b9b71b734ec814a3eb01ddb0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_03:1 -> audio/generated/de-DE/dialogues/0c11325e0c0fec0d76563e323719e90d1237b8663e63c5a94fee121f52157d64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b1d1a2a-e236-5e04-b5ac-4a9e0c539de9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '761f03625c42d503cdabfed63b6a626b7a43dd3a7a14fd93c46e4f6002eccb88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('061db698-f332-5235-8b80-5e1edb6bccac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b1d1a2a-e236-5e04-b5ac-4a9e0c539de9', 1), '761f03625c42d503cdabfed63b6a626b7a43dd3a7a14fd93c46e4f6002eccb88',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c11325e0c0fec0d76563e323719e90d1237b8663e63c5a94fee121f52157d64.mp3', 4545, '2026-09-13 10:37:19.429442', 'a77e514d49fb3ab4737c48cd28f29df9f28b5b342473221cc32df5e315f6f766', 'validated', '{"audio_key":"0c11325e0c0fec0d76563e323719e90d1237b8663e63c5a94fee121f52157d64","entity_key":"d_administrative_appeals_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a77e514d49fb3ab4737c48cd28f29df9f28b5b342473221cc32df5e315f6f766","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0c11325e0c0fec0d76563e323719e90d1237b8663e63c5a94fee121f52157d64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_01:3 -> audio/generated/de-DE/dialogues/0cfdac6ca5a2c285c9ef1cf009b78a67bf6861a1375ed2c6c96af964c588f6a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1339a85f-1302-530f-80d5-661aabcb79b7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d2c615002547afb7dba3c58f42a42f082d69fa233dc33aa0c82df9d8b1700cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('730408c5-5c56-5879-bbfc-7f714fa1774a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1339a85f-1302-530f-80d5-661aabcb79b7', 1), '9d2c615002547afb7dba3c58f42a42f082d69fa233dc33aa0c82df9d8b1700cf',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0cfdac6ca5a2c285c9ef1cf009b78a67bf6861a1375ed2c6c96af964c588f6a2.mp3', 3761, '2026-09-13 10:37:19.310715', '9602941b03837863b44373d6c7746ff3e3b151bc43b3244519e459c4ff8ff2ab', 'validated', '{"audio_key":"0cfdac6ca5a2c285c9ef1cf009b78a67bf6861a1375ed2c6c96af964c588f6a2","entity_key":"d_source_evaluation_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9602941b03837863b44373d6c7746ff3e3b151bc43b3244519e459c4ff8ff2ab","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0cfdac6ca5a2c285c9ef1cf009b78a67bf6861a1375ed2c6c96af964c588f6a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_03:1 -> audio/generated/de-DE/dialogues/0ee96e322a78ef19db25190309e936b8440788011e74acd978cd2e6d963815dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d517346-2dad-5a60-94d8-444b459caa45', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4003abecc3b126954b6d00ab1291831353d7c73dfb1af5646460fb09d694258'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfab80e0-ca9a-5f1f-b3cb-15ebb2ee92e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d517346-2dad-5a60-94d8-444b459caa45', 1), 'f4003abecc3b126954b6d00ab1291831353d7c73dfb1af5646460fb09d694258',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ee96e322a78ef19db25190309e936b8440788011e74acd978cd2e6d963815dd.mp3', 4362, '2026-09-13 10:37:20.643536', '48e3bdf2a5d83d7987f249ee49d24f8cac4632e338801fdae92d22d5bc59d444', 'validated', '{"audio_key":"0ee96e322a78ef19db25190309e936b8440788011e74acd978cd2e6d963815dd","entity_key":"d_community_conflict_mediation_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"48e3bdf2a5d83d7987f249ee49d24f8cac4632e338801fdae92d22d5bc59d444","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0ee96e322a78ef19db25190309e936b8440788011e74acd978cd2e6d963815dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_01:4 -> audio/generated/de-DE/dialogues/111c5d941e0c240521d7b29f4c28cc284c867eedfe3ac2a337a6d13296471028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6f1f425-0bb6-5ef8-a520-8208ef538c93', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe8aa05c575dfabe39e5a7c7a88580c94487ad6f79142e57963a1d9b2c2e05b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28ea2a27-0b99-5be2-a5a1-775bf2363ee9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6f1f425-0bb6-5ef8-a520-8208ef538c93', 1), 'fe8aa05c575dfabe39e5a7c7a88580c94487ad6f79142e57963a1d9b2c2e05b2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/111c5d941e0c240521d7b29f4c28cc284c867eedfe3ac2a337a6d13296471028.mp3', 3160, '2026-09-13 10:37:20.716521', '64a3e97df6ebe5b71118a6866c76f8bec03bd40fdeeac7265a94bd007f69d782', 'validated', '{"audio_key":"111c5d941e0c240521d7b29f4c28cc284c867eedfe3ac2a337a6d13296471028","entity_key":"d_public_debate_value_conflicts_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"64a3e97df6ebe5b71118a6866c76f8bec03bd40fdeeac7265a94bd007f69d782","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/111c5d941e0c240521d7b29f4c28cc284c867eedfe3ac2a337a6d13296471028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_03:2 -> audio/generated/de-DE/dialogues/1458736b3b741886326a95ba6b92417b247cd11d23cf4cc204c41e8a1a904bbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec4d3ddf-74cc-5178-aee7-38d03a909615', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31e63e56089a05b09cf59758b6976d2f54abf98b7baabb6687390e9c7f77e7e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47e818e1-a40f-5006-8097-2277bc5fdb7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec4d3ddf-74cc-5178-aee7-38d03a909615', 1), '31e63e56089a05b09cf59758b6976d2f54abf98b7baabb6687390e9c7f77e7e5',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1458736b3b741886326a95ba6b92417b247cd11d23cf4cc204c41e8a1a904bbc.mp3', 2951, '2026-09-13 10:37:21.814754', 'a14a48aeb4df8e24c8aaaf177c4dfcf4d753e4f4010a77cfca11f4d63567d9d6', 'validated', '{"audio_key":"1458736b3b741886326a95ba6b92417b247cd11d23cf4cc204c41e8a1a904bbc","entity_key":"d_interdisciplinary_collaboration_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a14a48aeb4df8e24c8aaaf177c4dfcf4d753e4f4010a77cfca11f4d63567d9d6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1458736b3b741886326a95ba6b92417b247cd11d23cf4cc204c41e8a1a904bbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_01:4 -> audio/generated/de-DE/dialogues/15867c9377a1fd822102c6e44992dc5e65927f55ea573db0e074509c28a9d1cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e6b83b3-6cd5-5a4f-b7ad-7149736fd1f7', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea655283d5d43d611a80121e8ff732cbaadbc0066b9cf808e79bd734e5b90fbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3ae38fd-3531-5d68-8219-a3de950a03c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e6b83b3-6cd5-5a4f-b7ad-7149736fd1f7', 1), 'ea655283d5d43d611a80121e8ff732cbaadbc0066b9cf808e79bd734e5b90fbe',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15867c9377a1fd822102c6e44992dc5e65927f55ea573db0e074509c28a9d1cb.mp3', 3787, '2026-09-13 10:37:22.092949', '924a3aac25fccdc24c1176e9fc00e4293bba2957ae84de58e11e5c70baa003bf', 'validated', '{"audio_key":"15867c9377a1fd822102c6e44992dc5e65927f55ea573db0e074509c28a9d1cb","entity_key":"d_ethical_tradeoffs_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"924a3aac25fccdc24c1176e9fc00e4293bba2957ae84de58e11e5c70baa003bf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/15867c9377a1fd822102c6e44992dc5e65927f55ea573db0e074509c28a9d1cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_03:1 -> audio/generated/de-DE/dialogues/181576b394efdd3c8ceb302fcedf4a0b57033ca10a9ce5e93be3a04450f945f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4af1cbe-9e45-56bf-a75d-3001d04f51c8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92c5d5126009702cb9733d2d8af2e2085f580e53aafecc01c1f243fdab412325'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fbfb380-a37f-58ec-93bf-b9d4847b6a92', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4af1cbe-9e45-56bf-a75d-3001d04f51c8', 1), '92c5d5126009702cb9733d2d8af2e2085f580e53aafecc01c1f243fdab412325',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/181576b394efdd3c8ceb302fcedf4a0b57033ca10a9ce5e93be3a04450f945f9.mp3', 2768, '2026-09-13 10:37:22.923333', '650c555866da1bfec13971d314e13760e5b0c44a824b9cc4465ff9ca82c19951', 'validated', '{"audio_key":"181576b394efdd3c8ceb302fcedf4a0b57033ca10a9ce5e93be3a04450f945f9","entity_key":"d_ethical_tradeoffs_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"650c555866da1bfec13971d314e13760e5b0c44a824b9cc4465ff9ca82c19951","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/181576b394efdd3c8ceb302fcedf4a0b57033ca10a9ce5e93be3a04450f945f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_01:3 -> audio/generated/de-DE/dialogues/18face5c5f749c8eb81fb9264f02d5f40ffa9ead3bf4b09e6f96b9c3b68c7f40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc3e8357-1e7e-5a69-8078-a8c4ca20149c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '820ad740476a9aae47e3202c48c03f88259c87ac4dff72faee0f273e996a31d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6917d89b-7b5c-5c08-b11b-ae1169bbdaa8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc3e8357-1e7e-5a69-8078-a8c4ca20149c', 1), '820ad740476a9aae47e3202c48c03f88259c87ac4dff72faee0f273e996a31d7',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/18face5c5f749c8eb81fb9264f02d5f40ffa9ead3bf4b09e6f96b9c3b68c7f40.mp3', 7131, '2026-09-13 10:37:24.054060', 'e200609fedbd410f368307c5f1b642303c7790a645c99b1ec2951c6cc423daf2', 'validated', '{"audio_key":"18face5c5f749c8eb81fb9264f02d5f40ffa9ead3bf4b09e6f96b9c3b68c7f40","entity_key":"d_media_interviews_public_statements_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e200609fedbd410f368307c5f1b642303c7790a645c99b1ec2951c6cc423daf2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/18face5c5f749c8eb81fb9264f02d5f40ffa9ead3bf4b09e6f96b9c3b68c7f40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_01:4 -> audio/generated/de-DE/dialogues/20943decf878d8d5456b6f3416007cda82a3c981f3263b6ca6b1c5181448229f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e52a1bf-e580-549a-b433-fabbb3f77139', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04984280ab7ca7c4af75defbb11f35485270221407f1b69f2a92d704ede87dd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('179682f4-8e71-56dc-98c9-c093a9706219', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e52a1bf-e580-549a-b433-fabbb3f77139', 1), '04984280ab7ca7c4af75defbb11f35485270221407f1b69f2a92d704ede87dd6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/20943decf878d8d5456b6f3416007cda82a3c981f3263b6ca6b1c5181448229f.mp3', 3526, '2026-09-13 10:37:24.187474', 'a12c37910d612ab50a85bf6a4f9d2f8a5dd4283140c57f6198eba096758703b6', 'validated', '{"audio_key":"20943decf878d8d5456b6f3416007cda82a3c981f3263b6ca6b1c5181448229f","entity_key":"d_administrative_appeals_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a12c37910d612ab50a85bf6a4f9d2f8a5dd4283140c57f6198eba096758703b6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/20943decf878d8d5456b6f3416007cda82a3c981f3263b6ca6b1c5181448229f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_02:1 -> audio/generated/de-DE/dialogues/22bc53351783bde0a0316ce327d02a2e86859434d49184390f4d0df302cbbf8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('818e5557-45d8-5895-b988-8831180f9987', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d2e98a0f73051e6585320e3a9e4ed9b395aa06ba0a72699e84c2965741000e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7eac57a8-5c1c-50fc-90e7-a50c0c468df1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('818e5557-45d8-5895-b988-8831180f9987', 1), '5d2e98a0f73051e6585320e3a9e4ed9b395aa06ba0a72699e84c2965741000e9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22bc53351783bde0a0316ce327d02a2e86859434d49184390f4d0df302cbbf8e.mp3', 4493, '2026-09-13 10:37:25.374540', 'd7bf121bb57994f3fb62c966a77dad0f7f82ecfd944fb53d511fc6e743cc9675', 'validated', '{"audio_key":"22bc53351783bde0a0316ce327d02a2e86859434d49184390f4d0df302cbbf8e","entity_key":"d_academic_seminar_discussion_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d7bf121bb57994f3fb62c966a77dad0f7f82ecfd944fb53d511fc6e743cc9675","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/22bc53351783bde0a0316ce327d02a2e86859434d49184390f4d0df302cbbf8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_01:4 -> audio/generated/de-DE/dialogues/2955483c4748461519825fdf270a9efbe6ecccb557e1ce6fcfe03b95ca4a0054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a979a2a-83af-5022-bef3-d6b00f37e02a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a2e76641bbeeaa7859918fee03c412014f80f28e7f955399d3f9142f203af29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('774ba6b3-3cc8-5832-a4cb-448ac68ba29f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a979a2a-83af-5022-bef3-d6b00f37e02a', 1), '5a2e76641bbeeaa7859918fee03c412014f80f28e7f955399d3f9142f203af29',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2955483c4748461519825fdf270a9efbe6ecccb557e1ce6fcfe03b95ca4a0054.mp3', 2873, '2026-09-13 10:37:25.368751', '4fb8876c34ee73458fab93d4b717bb2d5f10999decfe0765123704659ef9029b', 'validated', '{"audio_key":"2955483c4748461519825fdf270a9efbe6ecccb557e1ce6fcfe03b95ca4a0054","entity_key":"d_community_conflict_mediation_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4fb8876c34ee73458fab93d4b717bb2d5f10999decfe0765123704659ef9029b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2955483c4748461519825fdf270a9efbe6ecccb557e1ce6fcfe03b95ca4a0054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_02:4 -> audio/generated/de-DE/dialogues/2b6896dcaa85a7a9706c6cf8361003f3acc9cde36d012f161d730bfae573618d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75a11a37-613c-5ea2-9b05-42ee17bf579e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47f91fab140f42ce2dd683fce205e3e161166847977d6ac7efe1498d2d59f4cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80dcdf9e-4d93-5032-8b32-568deb61250a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75a11a37-613c-5ea2-9b05-42ee17bf579e', 1), '47f91fab140f42ce2dd683fce205e3e161166847977d6ac7efe1498d2d59f4cd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b6896dcaa85a7a9706c6cf8361003f3acc9cde36d012f161d730bfae573618d.mp3', 3343, '2026-09-13 10:37:26.608997', 'c568eaed384dd5e18c42690115b80f57b5c5b4e2a1fa2a1d3cbe7a6762ccee23', 'validated', '{"audio_key":"2b6896dcaa85a7a9706c6cf8361003f3acc9cde36d012f161d730bfae573618d","entity_key":"d_ethical_tradeoffs_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c568eaed384dd5e18c42690115b80f57b5c5b4e2a1fa2a1d3cbe7a6762ccee23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2b6896dcaa85a7a9706c6cf8361003f3acc9cde36d012f161d730bfae573618d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_02:1 -> audio/generated/de-DE/dialogues/2bbdd356ab3d38eeb47c42e4e03111655a29a9c39b79a0ea0c75aa3e3ca9b57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2ba8ff1-68f0-5c90-8dd0-401a643bca92', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a4a33297451c51ac66100555b2cc41a0999ede4e900e805a23d4117db12ea69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3124dd1-2d9a-5ecf-acba-40805546a5e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2ba8ff1-68f0-5c90-8dd0-401a643bca92', 1), '4a4a33297451c51ac66100555b2cc41a0999ede4e900e805a23d4117db12ea69',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2bbdd356ab3d38eeb47c42e4e03111655a29a9c39b79a0ea0c75aa3e3ca9b57c.mp3', 4310, '2026-09-13 10:37:26.738218', 'beeb4074b109ad8eeaac163eb0c138328c7b7d7ae673fb38c8c26486e520f4a6', 'validated', '{"audio_key":"2bbdd356ab3d38eeb47c42e4e03111655a29a9c39b79a0ea0c75aa3e3ca9b57c","entity_key":"d_interdisciplinary_collaboration_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"beeb4074b109ad8eeaac163eb0c138328c7b7d7ae673fb38c8c26486e520f4a6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2bbdd356ab3d38eeb47c42e4e03111655a29a9c39b79a0ea0c75aa3e3ca9b57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_01:2 -> audio/generated/de-DE/dialogues/2c37fb30f493b909045957e02698e588fe5843e305556455d320a5d14b646c40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d48719b9-c236-5ffe-9b53-00a3f86b750d', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0680f419d3b5275b5bc3452d03c0432864f8ab60c0be672c96fd4edec69b412f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b52448c-eee7-55ab-bb32-3543405c17b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d48719b9-c236-5ffe-9b53-00a3f86b750d', 1), '0680f419d3b5275b5bc3452d03c0432864f8ab60c0be672c96fd4edec69b412f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c37fb30f493b909045957e02698e588fe5843e305556455d320a5d14b646c40.mp3', 3004, '2026-09-13 10:37:27.787835', '0e552fb416b6916e0ca366411b9d94438752a71561338522c2052cc9260da570', 'validated', '{"audio_key":"2c37fb30f493b909045957e02698e588fe5843e305556455d320a5d14b646c40","entity_key":"d_interdisciplinary_collaboration_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0e552fb416b6916e0ca366411b9d94438752a71561338522c2052cc9260da570","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c37fb30f493b909045957e02698e588fe5843e305556455d320a5d14b646c40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_03:4 -> audio/generated/de-DE/dialogues/2c7a2ad12a9fda0f35b31386d8a483fb9606c1c162bb1622166768ca7fdb8533.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a540f7b7-1095-5a79-882d-14b0c7b5bd3d', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4019c8af1e273f1a8848e8158ce42a480460147a30eca4a4212f204e2c54d02c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e677482d-6790-5033-a000-0366cbda7a03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a540f7b7-1095-5a79-882d-14b0c7b5bd3d', 1), '4019c8af1e273f1a8848e8158ce42a480460147a30eca4a4212f204e2c54d02c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c7a2ad12a9fda0f35b31386d8a483fb9606c1c162bb1622166768ca7fdb8533.mp3', 4022, '2026-09-13 10:37:28.020798', '96f6e8d6bf5cbac3a20bd2e893b4fd01d2e4b5adbf525a4227d32bf600a6083b', 'validated', '{"audio_key":"2c7a2ad12a9fda0f35b31386d8a483fb9606c1c162bb1622166768ca7fdb8533","entity_key":"d_administrative_appeals_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"96f6e8d6bf5cbac3a20bd2e893b4fd01d2e4b5adbf525a4227d32bf600a6083b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c7a2ad12a9fda0f35b31386d8a483fb9606c1c162bb1622166768ca7fdb8533.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_03:4 -> audio/generated/de-DE/dialogues/3114c858fb7375d7180fc0c16f8bca3f81efe25f0f91ebf55fcb8ac4b2dea61c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2857f321-26cc-5714-bc25-93c4732352e7', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d3cece38fde397f5cea40c04cf15f79755664fad3bcd8c823fd4b9ed49ce8d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8f48abd-f781-5cc1-825e-a7feeb862869', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2857f321-26cc-5714-bc25-93c4732352e7', 1), '3d3cece38fde397f5cea40c04cf15f79755664fad3bcd8c823fd4b9ed49ce8d2',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3114c858fb7375d7180fc0c16f8bca3f81efe25f0f91ebf55fcb8ac4b2dea61c.mp3', 3343, '2026-09-13 10:37:29.001170', '4ac03e045876baf8ac7ba2141fd4751b3f18d9ee59cc1ca2502651e630a3ff0f', 'validated', '{"audio_key":"3114c858fb7375d7180fc0c16f8bca3f81efe25f0f91ebf55fcb8ac4b2dea61c","entity_key":"d_ethical_tradeoffs_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4ac03e045876baf8ac7ba2141fd4751b3f18d9ee59cc1ca2502651e630a3ff0f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3114c858fb7375d7180fc0c16f8bca3f81efe25f0f91ebf55fcb8ac4b2dea61c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_02:2 -> audio/generated/de-DE/dialogues/342bbb0117cf094da4ecc6f208d504bff17cf2915d3247bb6686a1d0d5bc59eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03822b8d-9c5f-5e67-b7d5-fa06852f8412', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2264d6a69d6f19cf548104bd1c81c2d9f73d0ff0603eb981d0869274cdf46f2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f63d68f0-569c-55bd-b633-3b19b0e4cf2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03822b8d-9c5f-5e67-b7d5-fa06852f8412', 1), '2264d6a69d6f19cf548104bd1c81c2d9f73d0ff0603eb981d0869274cdf46f2c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/342bbb0117cf094da4ecc6f208d504bff17cf2915d3247bb6686a1d0d5bc59eb.mp3', 4597, '2026-09-13 10:37:29.424484', 'd06b055f4dca2c58ed0bbf19664e357ba5e9190be5bde9b27470955ad7ddd13a', 'validated', '{"audio_key":"342bbb0117cf094da4ecc6f208d504bff17cf2915d3247bb6686a1d0d5bc59eb","entity_key":"d_community_conflict_mediation_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d06b055f4dca2c58ed0bbf19664e357ba5e9190be5bde9b27470955ad7ddd13a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/342bbb0117cf094da4ecc6f208d504bff17cf2915d3247bb6686a1d0d5bc59eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_02:3 -> audio/generated/de-DE/dialogues/3683a0a0fdb2f71767acc16e59f768892ddea8dda74280cc5ebb324d604af57e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eac244f9-f0d0-5063-859b-fadde5e44c7e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68d6f28f8cfcab84421de80244a4f96a1c098602b5bcc7b8cff4931c736fd914'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6bdd6c4-bfba-5bb9-b715-d1a962177540', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eac244f9-f0d0-5063-859b-fadde5e44c7e', 1), '68d6f28f8cfcab84421de80244a4f96a1c098602b5bcc7b8cff4931c736fd914',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3683a0a0fdb2f71767acc16e59f768892ddea8dda74280cc5ebb324d604af57e.mp3', 3422, '2026-09-13 10:37:30.239688', '119ccd267fd39314ca98659c9f15751c4b884fa8090eb45c9abf8259a9cb51f6', 'validated', '{"audio_key":"3683a0a0fdb2f71767acc16e59f768892ddea8dda74280cc5ebb324d604af57e","entity_key":"d_ethical_tradeoffs_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"119ccd267fd39314ca98659c9f15751c4b884fa8090eb45c9abf8259a9cb51f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3683a0a0fdb2f71767acc16e59f768892ddea8dda74280cc5ebb324d604af57e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_01:3 -> audio/generated/de-DE/dialogues/37fa8e451e8cf92211905424b8b92dc21825fc5f2087c8e601d98f02385c9a13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('832086e7-da79-5eb4-9c83-ded5d8634d22', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b3d71da6639e30181b9b1c217daff6a42df7812c6b073e8b3479cef72831fda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17cf6495-55d3-58a0-bbe9-287b69a33ded', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('832086e7-da79-5eb4-9c83-ded5d8634d22', 1), '3b3d71da6639e30181b9b1c217daff6a42df7812c6b073e8b3479cef72831fda',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37fa8e451e8cf92211905424b8b92dc21825fc5f2087c8e601d98f02385c9a13.mp3', 4205, '2026-09-13 10:37:30.842625', '056202b7802106a22990c849361fed171c6be80a7ba4f38f078e8388b61d82f7', 'validated', '{"audio_key":"37fa8e451e8cf92211905424b8b92dc21825fc5f2087c8e601d98f02385c9a13","entity_key":"d_civic_decision_capstone_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"056202b7802106a22990c849361fed171c6be80a7ba4f38f078e8388b61d82f7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/37fa8e451e8cf92211905424b8b92dc21825fc5f2087c8e601d98f02385c9a13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_02:3 -> audio/generated/de-DE/dialogues/3a5872d314d353cbf251d51cb816e7b89467813116f57cd65254942f1b6d1919.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be88e167-46a1-5fc7-97e0-c23591da796c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb125ce18ad50d251cf3a5bf6d73a3ddab9e64cf2fbe582191621393bfef390f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68453527-fd7a-596c-ba15-5f1775652acc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be88e167-46a1-5fc7-97e0-c23591da796c', 1), 'fb125ce18ad50d251cf3a5bf6d73a3ddab9e64cf2fbe582191621393bfef390f',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a5872d314d353cbf251d51cb816e7b89467813116f57cd65254942f1b6d1919.mp3', 5668, '2026-09-13 10:37:31.728060', '33cc4ec852b475bd5bb7805bdd1a241e33476d5b869f0c45d360ce33f23c8c19', 'validated', '{"audio_key":"3a5872d314d353cbf251d51cb816e7b89467813116f57cd65254942f1b6d1919","entity_key":"d_community_conflict_mediation_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"33cc4ec852b475bd5bb7805bdd1a241e33476d5b869f0c45d360ce33f23c8c19","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3a5872d314d353cbf251d51cb816e7b89467813116f57cd65254942f1b6d1919.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_02:3 -> audio/generated/de-DE/dialogues/3d4d089ba4ad24ac0be19ce73a4309799d3ccd8b95e522531960672a588416cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4976e969-d91c-562b-97ce-3ba4e3628a02', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6744b58b231c8ca3123e359bf2a03b835da340fd757afc97b18da1b5d7de340'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab8eca0-899e-5965-8c5f-615004007f45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4976e969-d91c-562b-97ce-3ba4e3628a02', 1), 'b6744b58b231c8ca3123e359bf2a03b835da340fd757afc97b18da1b5d7de340',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d4d089ba4ad24ac0be19ce73a4309799d3ccd8b95e522531960672a588416cb.mp3', 4414, '2026-09-13 10:37:32.174869', 'b8cbb6b60309d3db1dca006f72ae341565bf50a2c9a11ae8eab4a6a55ae8696b', 'validated', '{"audio_key":"3d4d089ba4ad24ac0be19ce73a4309799d3ccd8b95e522531960672a588416cb","entity_key":"d_influence_without_authority_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b8cbb6b60309d3db1dca006f72ae341565bf50a2c9a11ae8eab4a6a55ae8696b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3d4d089ba4ad24ac0be19ce73a4309799d3ccd8b95e522531960672a588416cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_02:1 -> audio/generated/de-DE/dialogues/3f6de58d7c449c9a98c0a853d622b5fde8f50f8a05d40d6fdbec79fc28ad165a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ef6ee39-ea37-5284-abc8-a50907e64abf', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f44750110a4daa27616afa08b6e2856e70edb93a5b9a0de9babbb3522be2b461'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4698396c-fe7e-524c-a970-e4573147ff87', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ef6ee39-ea37-5284-abc8-a50907e64abf', 1), 'f44750110a4daa27616afa08b6e2856e70edb93a5b9a0de9babbb3522be2b461',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f6de58d7c449c9a98c0a853d622b5fde8f50f8a05d40d6fdbec79fc28ad165a.mp3', 4205, '2026-09-13 10:37:33.025591', '360db2da43ba8f9628e334a6faa45b2409c3e516fe0a153e6d83f18848817975', 'validated', '{"audio_key":"3f6de58d7c449c9a98c0a853d622b5fde8f50f8a05d40d6fdbec79fc28ad165a","entity_key":"d_civic_decision_capstone_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"360db2da43ba8f9628e334a6faa45b2409c3e516fe0a153e6d83f18848817975","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f6de58d7c449c9a98c0a853d622b5fde8f50f8a05d40d6fdbec79fc28ad165a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_03:1 -> audio/generated/de-DE/dialogues/414ee2e1eb1825891d848efc28bf38a2449bafa714c45b087c377f78e0227eb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99280246-30f8-5724-b14d-19d7e7e2963e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada28b8e57c2db1d3f621c16dfa3ee45c339e7d640d2f71221df5087f5d3f592'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3b8d823-9487-5481-9a89-c5c966e9703c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99280246-30f8-5724-b14d-19d7e7e2963e', 1), 'ada28b8e57c2db1d3f621c16dfa3ee45c339e7d640d2f71221df5087f5d3f592',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/414ee2e1eb1825891d848efc28bf38a2449bafa714c45b087c377f78e0227eb3.mp3', 5015, '2026-09-13 10:37:33.639735', 'e5ad4af7db1770878251ef4312029d218776cb54a257f549e1520bf9f2b83fdc', 'validated', '{"audio_key":"414ee2e1eb1825891d848efc28bf38a2449bafa714c45b087c377f78e0227eb3","entity_key":"d_academic_seminar_discussion_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e5ad4af7db1770878251ef4312029d218776cb54a257f549e1520bf9f2b83fdc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/414ee2e1eb1825891d848efc28bf38a2449bafa714c45b087c377f78e0227eb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_03:2 -> audio/generated/de-DE/dialogues/418df2a036d1d5430107dffb4dc0881b22a90f13d6b759a19030b3f743f8e610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b0a8dd6-4310-5fa7-8ee0-58149c6801eb', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a77d6fa51234e2b41ea7724a7babd58a82309d094025ed6a81e7937fa5e6d234'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4fa78be-d5af-5313-b052-e8d019ba8ebc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b0a8dd6-4310-5fa7-8ee0-58149c6801eb', 1), 'a77d6fa51234e2b41ea7724a7babd58a82309d094025ed6a81e7937fa5e6d234',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/418df2a036d1d5430107dffb4dc0881b22a90f13d6b759a19030b3f743f8e610.mp3', 4911, '2026-09-13 10:37:34.498015', '3ca0b125ba02d1001a7dce8ac621061d6d7bec4c4288466c7099ad0a6ad90319', 'validated', '{"audio_key":"418df2a036d1d5430107dffb4dc0881b22a90f13d6b759a19030b3f743f8e610","entity_key":"d_academic_seminar_discussion_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3ca0b125ba02d1001a7dce8ac621061d6d7bec4c4288466c7099ad0a6ad90319","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/418df2a036d1d5430107dffb4dc0881b22a90f13d6b759a19030b3f743f8e610.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_01:3 -> audio/generated/de-DE/dialogues/41b4b1b25940ffb2202ce4e26bfd60499f65d40878ff557c5f4dc82bf4490f7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8e77d9d-e69e-501c-86f6-2aa78e234f23', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60d0e2596eb784099d95c3ff9dc0339fb37c7e10af661f5af548fff10c75d423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86197e5a-748c-5adb-88f9-ef4487e5dba8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8e77d9d-e69e-501c-86f6-2aa78e234f23', 1), '60d0e2596eb784099d95c3ff9dc0339fb37c7e10af661f5af548fff10c75d423',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41b4b1b25940ffb2202ce4e26bfd60499f65d40878ff557c5f4dc82bf4490f7d.mp3', 4493, '2026-09-13 10:37:34.986004', 'e64da4f5604125992f67aee442dee5e5f1091f46aa858d77c0c3d7eee56091eb', 'validated', '{"audio_key":"41b4b1b25940ffb2202ce4e26bfd60499f65d40878ff557c5f4dc82bf4490f7d","entity_key":"d_interdisciplinary_collaboration_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e64da4f5604125992f67aee442dee5e5f1091f46aa858d77c0c3d7eee56091eb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/41b4b1b25940ffb2202ce4e26bfd60499f65d40878ff557c5f4dc82bf4490f7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_03:3 -> audio/generated/de-DE/dialogues/4251b956e489d80f8140b5e38fd6cbd0b6c30ec2362bb8177d6da5a7c2007b0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea2f911a-550f-58fa-b90d-4b555c0e1d95', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f5e104ae3ed44f2e9132fcf8573c72db7d473c506672ca549a6e795af18e1eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27d4524d-6e70-5acb-92e9-b29d16febe45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea2f911a-550f-58fa-b90d-4b555c0e1d95', 1), '6f5e104ae3ed44f2e9132fcf8573c72db7d473c506672ca549a6e795af18e1eb',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4251b956e489d80f8140b5e38fd6cbd0b6c30ec2362bb8177d6da5a7c2007b0d.mp3', 5511, '2026-09-13 10:37:36.032833', '1936482d49f91b717c75ddfd968e506af24b1676b67dd0757ae608226f8a63b2', 'validated', '{"audio_key":"4251b956e489d80f8140b5e38fd6cbd0b6c30ec2362bb8177d6da5a7c2007b0d","entity_key":"d_interdisciplinary_collaboration_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1936482d49f91b717c75ddfd968e506af24b1676b67dd0757ae608226f8a63b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4251b956e489d80f8140b5e38fd6cbd0b6c30ec2362bb8177d6da5a7c2007b0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_01:1 -> audio/generated/de-DE/dialogues/465e85cf5ddb60a6bfee83421768650d424ad44e4eb98ad4afaa497ccd17e77b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f4a3648-4db5-57b6-9243-d270a4fbeae8', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c303e4fd3a352179969faaceafb8f696500399b1f621092732a8916ad8fdbbbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca01d231-b888-510f-8c56-2d3fe906e36c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f4a3648-4db5-57b6-9243-d270a4fbeae8', 1), 'c303e4fd3a352179969faaceafb8f696500399b1f621092732a8916ad8fdbbbc',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/465e85cf5ddb60a6bfee83421768650d424ad44e4eb98ad4afaa497ccd17e77b.mp3', 5015, '2026-09-13 10:37:36.414388', '92d7b56a3bdbb0deea15b048076b003e9320f8cb5fbde71516b806b0d33e2231', 'validated', '{"audio_key":"465e85cf5ddb60a6bfee83421768650d424ad44e4eb98ad4afaa497ccd17e77b","entity_key":"d_public_debate_value_conflicts_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"92d7b56a3bdbb0deea15b048076b003e9320f8cb5fbde71516b806b0d33e2231","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/465e85cf5ddb60a6bfee83421768650d424ad44e4eb98ad4afaa497ccd17e77b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_02:2 -> audio/generated/de-DE/dialogues/46febabd12094cece895f8f5691ef53fbd6f3bc29dbee508a96e50816926006b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16108b73-fab8-5a26-ad3b-50e49b6d4ea7', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ee5ff16b6db3906e58bbb098e17b786f815a4a39807a30916b70de878ef6ed4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7c4ce24-84c7-584a-93c4-62ce4e0da198', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16108b73-fab8-5a26-ad3b-50e49b6d4ea7', 1), '3ee5ff16b6db3906e58bbb098e17b786f815a4a39807a30916b70de878ef6ed4',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/46febabd12094cece895f8f5691ef53fbd6f3bc29dbee508a96e50816926006b.mp3', 4414, '2026-09-13 10:37:37.369422', 'e4adad2a57fbf2945e7465ff5af166421a567cbdf91530bd4840b6f6bd48efaa', 'validated', '{"audio_key":"46febabd12094cece895f8f5691ef53fbd6f3bc29dbee508a96e50816926006b","entity_key":"d_academic_seminar_discussion_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e4adad2a57fbf2945e7465ff5af166421a567cbdf91530bd4840b6f6bd48efaa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/46febabd12094cece895f8f5691ef53fbd6f3bc29dbee508a96e50816926006b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_01:1 -> audio/generated/de-DE/dialogues/4ac52cb69c90fc1920b9149ffbdf4e80d5c77f7f2aa57d58040a7e13ea6bbcf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a1915032-9e34-5ee5-9927-8f66e22e5b6d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e4254656e678a450e39500c68c9a5b8a04c2c67cd6db07b47f9ef0402fd08b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d11bd368-3945-5b6a-9601-695d1e665150', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a1915032-9e34-5ee5-9927-8f66e22e5b6d', 1), '2e4254656e678a450e39500c68c9a5b8a04c2c67cd6db07b47f9ef0402fd08b5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ac52cb69c90fc1920b9149ffbdf4e80d5c77f7f2aa57d58040a7e13ea6bbcf7.mp3', 4440, '2026-09-13 10:37:37.740243', 'e84689524b0a26de7f1059da7d916a2c2df5f1567f7c0efc43dc293b7f6ec2cd', 'validated', '{"audio_key":"4ac52cb69c90fc1920b9149ffbdf4e80d5c77f7f2aa57d58040a7e13ea6bbcf7","entity_key":"d_administrative_appeals_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e84689524b0a26de7f1059da7d916a2c2df5f1567f7c0efc43dc293b7f6ec2cd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4ac52cb69c90fc1920b9149ffbdf4e80d5c77f7f2aa57d58040a7e13ea6bbcf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_03:4 -> audio/generated/de-DE/dialogues/4b149677ea2f4bc72bc14cc94f794e12467b66cc89c965b9c8c839ea6615cf44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('127a8f3e-b213-5d3a-8c00-6abb9ce2f57b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad3130d4bbb390a419096614df54e5c52e7bf67c8a7a000c6bd0db55ddad2642'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63324a87-1eba-5efa-8521-12730fd66390', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('127a8f3e-b213-5d3a-8c00-6abb9ce2f57b', 1), 'ad3130d4bbb390a419096614df54e5c52e7bf67c8a7a000c6bd0db55ddad2642',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b149677ea2f4bc72bc14cc94f794e12467b66cc89c965b9c8c839ea6615cf44.mp3', 3474, '2026-09-13 10:37:38.754902', 'c1a31a809a378f41f62e213952c937c05a6faa762e8224ef9eb27d60eb33eae4', 'validated', '{"audio_key":"4b149677ea2f4bc72bc14cc94f794e12467b66cc89c965b9c8c839ea6615cf44","entity_key":"d_source_evaluation_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1a31a809a378f41f62e213952c937c05a6faa762e8224ef9eb27d60eb33eae4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4b149677ea2f4bc72bc14cc94f794e12467b66cc89c965b9c8c839ea6615cf44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_02:3 -> audio/generated/de-DE/dialogues/4c2c37cc2250d4901b1905410be39e971f09bbea6c06ac24e79a24f5ce2cf3a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab7d3d32-b5a7-526c-a2e6-70c275107324', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9ff9137d478ca22bd8da225d793847c8ba5e4434e6bdd5b6dd80ab8289968c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90922134-2154-5355-9bd1-e478937cc949', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab7d3d32-b5a7-526c-a2e6-70c275107324', 1), 'a9ff9137d478ca22bd8da225d793847c8ba5e4434e6bdd5b6dd80ab8289968c4',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4c2c37cc2250d4901b1905410be39e971f09bbea6c06ac24e79a24f5ce2cf3a1.mp3', 4675, '2026-09-13 10:37:39.126848', '5410de39e6ee973150085745b261ee9c29220f02b5f799577e51b6b5c6b16568', 'validated', '{"audio_key":"4c2c37cc2250d4901b1905410be39e971f09bbea6c06ac24e79a24f5ce2cf3a1","entity_key":"d_media_interviews_public_statements_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5410de39e6ee973150085745b261ee9c29220f02b5f799577e51b6b5c6b16568","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4c2c37cc2250d4901b1905410be39e971f09bbea6c06ac24e79a24f5ce2cf3a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_03:3 -> audio/generated/de-DE/dialogues/4dc58089a4d6ec7f5b793fc0c154ecd1b6c46499c88d7461c051b601827f128b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c64fb84-b1a2-5f06-b892-07128843852c', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26c5328081bf9b0086b8c894176178ad632940624506416c6dabbc95799fca1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be92a581-5ae6-5929-a63e-c91e35b481f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c64fb84-b1a2-5f06-b892-07128843852c', 1), '26c5328081bf9b0086b8c894176178ad632940624506416c6dabbc95799fca1b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4dc58089a4d6ec7f5b793fc0c154ecd1b6c46499c88d7461c051b601827f128b.mp3', 3578, '2026-09-13 10:37:41.158229', '9aba11dfff30dbfefafdee02580274579f8b00fabc0200b0b6d0060f5357ec57', 'validated', '{"audio_key":"4dc58089a4d6ec7f5b793fc0c154ecd1b6c46499c88d7461c051b601827f128b","entity_key":"d_source_evaluation_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9aba11dfff30dbfefafdee02580274579f8b00fabc0200b0b6d0060f5357ec57","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4dc58089a4d6ec7f5b793fc0c154ecd1b6c46499c88d7461c051b601827f128b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_01:3 -> audio/generated/de-DE/dialogues/4e67dcdc59daedec49f43358b1325757a7ff1a9c4c17ce3e4f204b80a3bc9ac4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8ca280b-73e2-54ad-abca-97e78f83b140', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2590dd295c82f0faa644d36a75dcdb25b44cb499596d1af84f2f1777de5e731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58268449-e622-50d5-a6a0-2d58ea922887', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8ca280b-73e2-54ad-abca-97e78f83b140', 1), 'b2590dd295c82f0faa644d36a75dcdb25b44cb499596d1af84f2f1777de5e731',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4e67dcdc59daedec49f43358b1325757a7ff1a9c4c17ce3e4f204b80a3bc9ac4.mp3', 5146, '2026-09-13 10:37:40.756747', 'b0402bbf5bd42394b516058c2902e38dcebef41551bf2efe85bfba547865849a', 'validated', '{"audio_key":"4e67dcdc59daedec49f43358b1325757a7ff1a9c4c17ce3e4f204b80a3bc9ac4","entity_key":"d_academic_seminar_discussion_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b0402bbf5bd42394b516058c2902e38dcebef41551bf2efe85bfba547865849a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4e67dcdc59daedec49f43358b1325757a7ff1a9c4c17ce3e4f204b80a3bc9ac4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_03:3 -> audio/generated/de-DE/dialogues/52bb25d73a92b878aeae29b4cba127a8a3edbdbb49f2423d092aa4afe04fdfc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e0107d7a-dcd5-50ca-904d-b18121c9c343', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26491261ea23d871bea4aff8930f5bb964065cc9715e90a72b53947890589ca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b3dbeb8-c1d0-56d7-ba0f-3c9c4ff30a3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e0107d7a-dcd5-50ca-904d-b18121c9c343', 1), '26491261ea23d871bea4aff8930f5bb964065cc9715e90a72b53947890589ca4',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/52bb25d73a92b878aeae29b4cba127a8a3edbdbb49f2423d092aa4afe04fdfc4.mp3', 3474, '2026-09-13 10:37:42.035818', '3e6240551ca91931584a1d490cdfc7c9b2c51ea79387c702679ed7a0665e2bb8', 'validated', '{"audio_key":"52bb25d73a92b878aeae29b4cba127a8a3edbdbb49f2423d092aa4afe04fdfc4","entity_key":"d_media_interviews_public_statements_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e6240551ca91931584a1d490cdfc7c9b2c51ea79387c702679ed7a0665e2bb8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/52bb25d73a92b878aeae29b4cba127a8a3edbdbb49f2423d092aa4afe04fdfc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_02:1 -> audio/generated/de-DE/dialogues/56220f8a9ecb6dc5505dcd0d4fec73e68698e5966e3b3470f5e6bcaec2a698f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49bbbf0e-4554-50c8-a814-a9b3e57cbf00', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e141dba2cc0a04c48e03a71fcc4099fd37f1b6dca8ce4c24c32c813b90f4a0e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1325f57d-0839-5340-833f-2aa12f837a2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49bbbf0e-4554-50c8-a814-a9b3e57cbf00', 1), 'e141dba2cc0a04c48e03a71fcc4099fd37f1b6dca8ce4c24c32c813b90f4a0e7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56220f8a9ecb6dc5505dcd0d4fec73e68698e5966e3b3470f5e6bcaec2a698f6.mp3', 4911, '2026-09-13 10:37:42.681340', '744df5dac5cf897c7dca67e2f71e567bd0ea8b6d83aa93d9bc048f1a55e278bf', 'validated', '{"audio_key":"56220f8a9ecb6dc5505dcd0d4fec73e68698e5966e3b3470f5e6bcaec2a698f6","entity_key":"d_public_debate_value_conflicts_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"744df5dac5cf897c7dca67e2f71e567bd0ea8b6d83aa93d9bc048f1a55e278bf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/56220f8a9ecb6dc5505dcd0d4fec73e68698e5966e3b3470f5e6bcaec2a698f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_01:4 -> audio/generated/de-DE/dialogues/56b1992ddc46f9b97a91c656894137ccd3f2abc7e44f2e7c048ab78fa1ade7bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55ca8e2d-ddba-5d12-9ce1-89ca8df1538d', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29de422a7204d8ded73a73c4e3078397907b94bcfe5b5888273d0c0102ae3317'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10be475e-322a-51a9-8e7a-5cdaac33ba93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55ca8e2d-ddba-5d12-9ce1-89ca8df1538d', 1), '29de422a7204d8ded73a73c4e3078397907b94bcfe5b5888273d0c0102ae3317',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56b1992ddc46f9b97a91c656894137ccd3f2abc7e44f2e7c048ab78fa1ade7bb.mp3', 3004, '2026-09-13 10:37:43.169297', '34f2b1951e553484ab774c7f0b00e428e3496342e22a46784d72503e4c0ecb58', 'validated', '{"audio_key":"56b1992ddc46f9b97a91c656894137ccd3f2abc7e44f2e7c048ab78fa1ade7bb","entity_key":"d_media_interviews_public_statements_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"34f2b1951e553484ab774c7f0b00e428e3496342e22a46784d72503e4c0ecb58","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/56b1992ddc46f9b97a91c656894137ccd3f2abc7e44f2e7c048ab78fa1ade7bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_01:1 -> audio/generated/de-DE/dialogues/56c2809661bff78ee829de3a158206dcfbd57ce05517141e7e1378e35729e84d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6367d4f-68da-5b48-989a-63cd5136a334', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17ed10105fbd07985a90cb5880fa4d25c462d87aa2c7b30f241dfab4e5019c95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95bbe350-909e-5385-84bf-aba153f0ef57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6367d4f-68da-5b48-989a-63cd5136a334', 1), '17ed10105fbd07985a90cb5880fa4d25c462d87aa2c7b30f241dfab4e5019c95',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56c2809661bff78ee829de3a158206dcfbd57ce05517141e7e1378e35729e84d.mp3', 4911, '2026-09-13 10:37:44.105329', '1b7b505ff596c4a9b55ccd17103785e8fd2e54d9e0bbdedb3c10c363f93becf4', 'validated', '{"audio_key":"56c2809661bff78ee829de3a158206dcfbd57ce05517141e7e1378e35729e84d","entity_key":"d_ethical_tradeoffs_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1b7b505ff596c4a9b55ccd17103785e8fd2e54d9e0bbdedb3c10c363f93becf4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/56c2809661bff78ee829de3a158206dcfbd57ce05517141e7e1378e35729e84d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_02:1 -> audio/generated/de-DE/dialogues/56dd5602d3eda655ce67407d55d18067ccf7a39451a42463746a6ca473555054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54339d39-daf8-5265-a2e1-5e584f7e4efb', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57a944a6ab726ed5a4fa7dde5bcf9ecd8bf81b2db96e48f67bb69a9a1daedddd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3589e02-6d6a-58ef-bc5b-69eee08dbfda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54339d39-daf8-5265-a2e1-5e584f7e4efb', 1), '57a944a6ab726ed5a4fa7dde5bcf9ecd8bf81b2db96e48f67bb69a9a1daedddd',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56dd5602d3eda655ce67407d55d18067ccf7a39451a42463746a6ca473555054.mp3', 5746, '2026-09-13 10:37:44.691168', '2d50add9030e3889afd50408f3313081809065d14a85d0702b227f50428751c9', 'validated', '{"audio_key":"56dd5602d3eda655ce67407d55d18067ccf7a39451a42463746a6ca473555054","entity_key":"d_ethical_tradeoffs_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2d50add9030e3889afd50408f3313081809065d14a85d0702b227f50428751c9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/56dd5602d3eda655ce67407d55d18067ccf7a39451a42463746a6ca473555054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_01:1 -> audio/generated/de-DE/dialogues/57c800e245c23fe814df49ae172be68881e93b86f468abc621ceea0ae98ac691.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b0c874a-4a57-5e74-9c43-52efc0272a2e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd5cdcac74a2ca158784362f2d97f02804d56ad021854244a69e6f99a6c7748'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b272fd-3388-54f7-8baa-63347eaff57f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b0c874a-4a57-5e74-9c43-52efc0272a2e', 1), '7bd5cdcac74a2ca158784362f2d97f02804d56ad021854244a69e6f99a6c7748',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/57c800e245c23fe814df49ae172be68881e93b86f468abc621ceea0ae98ac691.mp3', 4310, '2026-09-13 10:37:45.432916', '1feeaa36d778336e2f3444e80e91311fa4f9ded1bee020349031800ee9d0394c', 'validated', '{"audio_key":"57c800e245c23fe814df49ae172be68881e93b86f468abc621ceea0ae98ac691","entity_key":"d_influence_without_authority_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1feeaa36d778336e2f3444e80e91311fa4f9ded1bee020349031800ee9d0394c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/57c800e245c23fe814df49ae172be68881e93b86f468abc621ceea0ae98ac691.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_03:1 -> audio/generated/de-DE/dialogues/58d180ebe4490cc9f3a70f778728f908267094d477a842449075d095a28c4f04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be016a61-eb2e-5259-b765-63c2b702c60d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '397617c0ba937223a1b608c4d254a20096ae19881bc7dd860e9080e9a26e302c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e7035eb-3e0b-5e40-a173-73585457dff7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be016a61-eb2e-5259-b765-63c2b702c60d', 1), '397617c0ba937223a1b608c4d254a20096ae19881bc7dd860e9080e9a26e302c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/58d180ebe4490cc9f3a70f778728f908267094d477a842449075d095a28c4f04.mp3', 4780, '2026-09-13 10:37:46.145810', '779817a75859741f69d3b44201c4c3a6ce75d403fc96af16681e81bfe51f5e77', 'validated', '{"audio_key":"58d180ebe4490cc9f3a70f778728f908267094d477a842449075d095a28c4f04","entity_key":"d_source_evaluation_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"779817a75859741f69d3b44201c4c3a6ce75d403fc96af16681e81bfe51f5e77","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/58d180ebe4490cc9f3a70f778728f908267094d477a842449075d095a28c4f04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_01:4 -> audio/generated/de-DE/dialogues/594d19cd221901a181e418a654a4d45333fd73219d0b74b8b72dcedc00ee8b32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f885d4b5-6b16-53a3-856a-c763e7766a29', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '951c218a170022922ed2819f45bd3b14687faab704797b1c60ef8528c7abf481'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3be9bffa-33be-59e3-b769-4c0a83732ed7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f885d4b5-6b16-53a3-856a-c763e7766a29', 1), '951c218a170022922ed2819f45bd3b14687faab704797b1c60ef8528c7abf481',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/594d19cd221901a181e418a654a4d45333fd73219d0b74b8b72dcedc00ee8b32.mp3', 3186, '2026-09-13 10:37:46.688110', '10048caa6e8aab2e5a64c75abe186115e716ed23652cff3e0d93d37840a25992', 'validated', '{"audio_key":"594d19cd221901a181e418a654a4d45333fd73219d0b74b8b72dcedc00ee8b32","entity_key":"d_civic_decision_capstone_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"10048caa6e8aab2e5a64c75abe186115e716ed23652cff3e0d93d37840a25992","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/594d19cd221901a181e418a654a4d45333fd73219d0b74b8b72dcedc00ee8b32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_02:2 -> audio/generated/de-DE/dialogues/5f0eafbc339583a558870dc27d2bb7e71b619d803769321e9b6bfb29475f707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ac9060f-d8bf-570f-a98a-3bb90a997ff0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07f3ba60d6ba18e963ff1e5ce58bb3d76178c274f0299b98a9e78b1a64094844'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0682ba9-6c2c-53a1-a79e-8f153a162e58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ac9060f-d8bf-570f-a98a-3bb90a997ff0', 1), '07f3ba60d6ba18e963ff1e5ce58bb3d76178c274f0299b98a9e78b1a64094844',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5f0eafbc339583a558870dc27d2bb7e71b619d803769321e9b6bfb29475f707a.mp3', 3343, '2026-09-13 10:37:47.373037', 'ce512d374e1f24796cfb0e02249dbcd8eb3bdd12778ba24725095168152c0188', 'validated', '{"audio_key":"5f0eafbc339583a558870dc27d2bb7e71b619d803769321e9b6bfb29475f707a","entity_key":"d_influence_without_authority_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"ce512d374e1f24796cfb0e02249dbcd8eb3bdd12778ba24725095168152c0188","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5f0eafbc339583a558870dc27d2bb7e71b619d803769321e9b6bfb29475f707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_02:4 -> audio/generated/de-DE/dialogues/6013a61a6f2eab9eb345f7edcabca98f197a8ee2405056b18724288dba5428f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb37ad3b-33ce-5411-9129-2214a7731f1b', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d6060d66519586581287312e4a2c5065afced5e5ff835272f687309e7acb8f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89c72e63-9c69-575b-8164-0515a40fc346', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb37ad3b-33ce-5411-9129-2214a7731f1b', 1), '6d6060d66519586581287312e4a2c5065afced5e5ff835272f687309e7acb8f0',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6013a61a6f2eab9eb345f7edcabca98f197a8ee2405056b18724288dba5428f0.mp3', 4310, '2026-09-13 10:37:48.018329', '73f35c8667e2d745b8535049fa08c7f49d943873e255ca4232fe4b60ebe8b2a7', 'validated', '{"audio_key":"6013a61a6f2eab9eb345f7edcabca98f197a8ee2405056b18724288dba5428f0","entity_key":"d_interdisciplinary_collaboration_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"73f35c8667e2d745b8535049fa08c7f49d943873e255ca4232fe4b60ebe8b2a7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6013a61a6f2eab9eb345f7edcabca98f197a8ee2405056b18724288dba5428f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_03:1 -> audio/generated/de-DE/dialogues/64e485eaee5572f1f19c7bbdd781603e6bf33414bdc08dd59e2c6a59fd087298.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d0d52ae-fce2-5202-b73e-7463ffe8ecbe', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89254494a81d0aa5eb1dc7379949d37cf7f2be501d7c422985e2be98135584e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2a5f6cd-b355-5b9e-82c3-09df072213d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d0d52ae-fce2-5202-b73e-7463ffe8ecbe', 1), '89254494a81d0aa5eb1dc7379949d37cf7f2be501d7c422985e2be98135584e5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/64e485eaee5572f1f19c7bbdd781603e6bf33414bdc08dd59e2c6a59fd087298.mp3', 4911, '2026-09-13 10:37:48.769287', '07647cd31997eda4221fcd959872d44fdd2fb8c7410e0f2613a361cbfff154d1', 'validated', '{"audio_key":"64e485eaee5572f1f19c7bbdd781603e6bf33414bdc08dd59e2c6a59fd087298","entity_key":"d_public_debate_value_conflicts_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07647cd31997eda4221fcd959872d44fdd2fb8c7410e0f2613a361cbfff154d1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/64e485eaee5572f1f19c7bbdd781603e6bf33414bdc08dd59e2c6a59fd087298.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_03:3 -> audio/generated/de-DE/dialogues/65ccc42361b67fc44373b552526ab8b19785c32218fc90c9070722818126f83f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('972f14de-4788-57ac-b66d-4ac4dc5011f6', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '432b0c271c34e46328f663e017acea4cd87b32baf388c1933a0cbe8922015ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e7d7805-bf4e-57ec-a1af-067fa274e4b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('972f14de-4788-57ac-b66d-4ac4dc5011f6', 1), '432b0c271c34e46328f663e017acea4cd87b32baf388c1933a0cbe8922015ef6',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/65ccc42361b67fc44373b552526ab8b19785c32218fc90c9070722818126f83f.mp3', 3892, '2026-09-13 10:37:49.334162', 'b229f08837fc5e374f1239d2959df7163c529e9f5c8a00e9b3333ac96c4b9e70', 'validated', '{"audio_key":"65ccc42361b67fc44373b552526ab8b19785c32218fc90c9070722818126f83f","entity_key":"d_administrative_appeals_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b229f08837fc5e374f1239d2959df7163c529e9f5c8a00e9b3333ac96c4b9e70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/65ccc42361b67fc44373b552526ab8b19785c32218fc90c9070722818126f83f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_02:3 -> audio/generated/de-DE/dialogues/6c7697c47eddfafb6f9538a2752b5ecd19f6cc829ab12b21c19d6766c6e1806b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61989ce1-21dd-5ffb-8754-76b1d5fe3a03', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06065f3532a88d4af61c8214ebac494fea24562336dbccd0fe533f599b17b73f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cd87c89-7872-5971-9bb5-799063347b6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61989ce1-21dd-5ffb-8754-76b1d5fe3a03', 1), '06065f3532a88d4af61c8214ebac494fea24562336dbccd0fe533f599b17b73f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c7697c47eddfafb6f9538a2752b5ecd19f6cc829ab12b21c19d6766c6e1806b.mp3', 4310, '2026-09-13 10:37:50.087453', '16f73a0f4233c0f0ca5600ec658f0581837858b34cd36b4bdca3a931b0c8a3e9', 'validated', '{"audio_key":"6c7697c47eddfafb6f9538a2752b5ecd19f6cc829ab12b21c19d6766c6e1806b","entity_key":"d_administrative_appeals_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"16f73a0f4233c0f0ca5600ec658f0581837858b34cd36b4bdca3a931b0c8a3e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6c7697c47eddfafb6f9538a2752b5ecd19f6cc829ab12b21c19d6766c6e1806b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_03:3 -> audio/generated/de-DE/dialogues/6dedf6ee3222169e47af7869a8b67a5e533ba5af25fb43c1a3e0883c24101a8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6dfb495-b4b7-5d22-95c1-4ed6e267c84c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1873cf7965b1e337de0dae439adc09dc75f1abc95c45145535ddda04234e3049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0246fbae-393c-579d-8046-90dbffc908b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6dfb495-b4b7-5d22-95c1-4ed6e267c84c', 1), '1873cf7965b1e337de0dae439adc09dc75f1abc95c45145535ddda04234e3049',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6dedf6ee3222169e47af7869a8b67a5e533ba5af25fb43c1a3e0883c24101a8a.mp3', 3343, '2026-09-13 10:37:50.552796', '83c2c0509e53708528c1d6b1ea6d39ff212f8d7920a0474080261caf995f20e8', 'validated', '{"audio_key":"6dedf6ee3222169e47af7869a8b67a5e533ba5af25fb43c1a3e0883c24101a8a","entity_key":"d_public_debate_value_conflicts_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"83c2c0509e53708528c1d6b1ea6d39ff212f8d7920a0474080261caf995f20e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6dedf6ee3222169e47af7869a8b67a5e533ba5af25fb43c1a3e0883c24101a8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_02:2 -> audio/generated/de-DE/dialogues/6e0617da7a097d9c69b65ba4c879441b9fdd93c44f1f0d0139d32d0e72fbae1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('422a46cc-a7f7-5a90-9002-3cc6fe930e33', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c762bade28d4caf847275fcdb7db622efff98f154a1294c24036be7bf2b43aba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce4db4b7-2be0-575b-ad5c-576349553881', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('422a46cc-a7f7-5a90-9002-3cc6fe930e33', 1), 'c762bade28d4caf847275fcdb7db622efff98f154a1294c24036be7bf2b43aba',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6e0617da7a097d9c69b65ba4c879441b9fdd93c44f1f0d0139d32d0e72fbae1c.mp3', 3056, '2026-09-13 10:37:51.367371', '1c0921378ca941ce7cac9fe7e0a6a8cd3887880a237d80f8daff073dea989f8c', 'validated', '{"audio_key":"6e0617da7a097d9c69b65ba4c879441b9fdd93c44f1f0d0139d32d0e72fbae1c","entity_key":"d_administrative_appeals_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1c0921378ca941ce7cac9fe7e0a6a8cd3887880a237d80f8daff073dea989f8c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6e0617da7a097d9c69b65ba4c879441b9fdd93c44f1f0d0139d32d0e72fbae1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_03:2 -> audio/generated/de-DE/dialogues/734dbcdc0f6d2a6b68719b3eb3eb1704becbcb8707d2c14260cab1f3b1243844.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f079efbe-0e78-5059-b7d9-614fa44e8f10', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d7c3ff6a5b5b375c6ebf50da213333d1c952c8e09b86398960c33a661556d07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e00f9c1-f013-5930-9a96-0022333c49ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f079efbe-0e78-5059-b7d9-614fa44e8f10', 1), '5d7c3ff6a5b5b375c6ebf50da213333d1c952c8e09b86398960c33a661556d07',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/734dbcdc0f6d2a6b68719b3eb3eb1704becbcb8707d2c14260cab1f3b1243844.mp3', 2768, '2026-09-13 10:37:51.780191', 'fbab64785a99e540c3b8d88eaf72bd09cd93bee137b0e98b0b9a22b7903b7466', 'validated', '{"audio_key":"734dbcdc0f6d2a6b68719b3eb3eb1704becbcb8707d2c14260cab1f3b1243844","entity_key":"d_media_interviews_public_statements_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fbab64785a99e540c3b8d88eaf72bd09cd93bee137b0e98b0b9a22b7903b7466","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/734dbcdc0f6d2a6b68719b3eb3eb1704becbcb8707d2c14260cab1f3b1243844.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_01:2 -> audio/generated/de-DE/dialogues/73e38dc563d5ea8c1b4733a3d4d9431b4bbee2b7dcbcfce2aa11a0e0b3298bf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('898c625b-61c4-5c1c-b607-234e3fd595f5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3537a4e2a769243690e8ed35389f143b1520d0eeae4cc54b1e566ccd463687a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f5f852c-e972-5fab-8fe5-5557552f0129', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('898c625b-61c4-5c1c-b607-234e3fd595f5', 1), 'e3537a4e2a769243690e8ed35389f143b1520d0eeae4cc54b1e566ccd463687a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/73e38dc563d5ea8c1b4733a3d4d9431b4bbee2b7dcbcfce2aa11a0e0b3298bf2.mp3', 4493, '2026-09-13 10:37:52.784400', '0691d99b50f5cd5d1f45ecfde74321506c0884592788c2398640eefae88c3e87', 'validated', '{"audio_key":"73e38dc563d5ea8c1b4733a3d4d9431b4bbee2b7dcbcfce2aa11a0e0b3298bf2","entity_key":"d_influence_without_authority_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0691d99b50f5cd5d1f45ecfde74321506c0884592788c2398640eefae88c3e87","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/73e38dc563d5ea8c1b4733a3d4d9431b4bbee2b7dcbcfce2aa11a0e0b3298bf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_02:3 -> audio/generated/de-DE/dialogues/74a2ae0fb55f90d253bad045b03e8032b85f9be92890e8ce06ec996341d38028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7944e50c-3631-5e26-b029-0c635e601607', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '473b8c4c5a94a42a3cd13cb8dcf46155535becdc1a9f97b6ebe00438c9d4180e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69501409-1dd5-5ad5-9856-5764f57edc1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7944e50c-3631-5e26-b029-0c635e601607', 1), '473b8c4c5a94a42a3cd13cb8dcf46155535becdc1a9f97b6ebe00438c9d4180e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/74a2ae0fb55f90d253bad045b03e8032b85f9be92890e8ce06ec996341d38028.mp3', 4597, '2026-09-13 10:37:53.160791', 'fc68043539468f3b09242b1aa7a5cdba3d931248dd88babba5322a101e85c59d', 'validated', '{"audio_key":"74a2ae0fb55f90d253bad045b03e8032b85f9be92890e8ce06ec996341d38028","entity_key":"d_interdisciplinary_collaboration_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fc68043539468f3b09242b1aa7a5cdba3d931248dd88babba5322a101e85c59d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/74a2ae0fb55f90d253bad045b03e8032b85f9be92890e8ce06ec996341d38028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_02:1 -> audio/generated/de-DE/dialogues/79542c83aac2d7d1f037d3c98275a3cb762d6e718e1fee85c2fb9dc4247fdf82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0638703c-498e-5b1a-8052-df1784612a1d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbdb80c594990c5eeea3600ceef36e7ebf74fee88068a018d47356e6a7f4d1b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('949e68db-7e5f-50a1-ad6d-8e45ed943d08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0638703c-498e-5b1a-8052-df1784612a1d', 1), 'bbdb80c594990c5eeea3600ceef36e7ebf74fee88068a018d47356e6a7f4d1b5',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/79542c83aac2d7d1f037d3c98275a3cb762d6e718e1fee85c2fb9dc4247fdf82.mp3', 5041, '2026-09-13 10:37:54.249716', '581143886d067cd37a7ed06fc5881af1c79c860e8e9b330a31a43c9047fd6e74', 'validated', '{"audio_key":"79542c83aac2d7d1f037d3c98275a3cb762d6e718e1fee85c2fb9dc4247fdf82","entity_key":"d_community_conflict_mediation_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"581143886d067cd37a7ed06fc5881af1c79c860e8e9b330a31a43c9047fd6e74","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/79542c83aac2d7d1f037d3c98275a3cb762d6e718e1fee85c2fb9dc4247fdf82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_02:1 -> audio/generated/de-DE/dialogues/79a65060ed22e2dd5e83bcbffd9f1b8703ec79bb4d6aef172c83bb1acbde05a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40e11854-6063-5152-a550-46dd6a1db6a2', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc4fc80e7eedb657b90ac618ffe09f0347a3d7a4249f121c11c24945880047c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa54a72a-66bf-55ee-ad04-c9ea65dae243', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40e11854-6063-5152-a550-46dd6a1db6a2', 1), 'dc4fc80e7eedb657b90ac618ffe09f0347a3d7a4249f121c11c24945880047c0',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/79a65060ed22e2dd5e83bcbffd9f1b8703ec79bb4d6aef172c83bb1acbde05a7.mp3', 4597, '2026-09-13 10:37:54.567628', 'bafc94fe905b2c63da00899951d688ec2e791605a40aa6418abc561631880810', 'validated', '{"audio_key":"79a65060ed22e2dd5e83bcbffd9f1b8703ec79bb4d6aef172c83bb1acbde05a7","entity_key":"d_administrative_appeals_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bafc94fe905b2c63da00899951d688ec2e791605a40aa6418abc561631880810","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/79a65060ed22e2dd5e83bcbffd9f1b8703ec79bb4d6aef172c83bb1acbde05a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_01:1 -> audio/generated/de-DE/dialogues/7a27bdbc6313f1f7a7c35f68ee35890c88ea59faeeb238276b5c95605a43f8bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40f70ee6-7204-5fa3-9b09-7233d67a3264', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cbbee69f2c8831e781388fde694bde80f7d6fa02b0039b72f97bf529af6c073'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40a913d5-421b-5205-8860-4cd829b2aa19', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40f70ee6-7204-5fa3-9b09-7233d67a3264', 1), '9cbbee69f2c8831e781388fde694bde80f7d6fa02b0039b72f97bf529af6c073',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a27bdbc6313f1f7a7c35f68ee35890c88ea59faeeb238276b5c95605a43f8bd.mp3', 5459, '2026-09-13 10:37:55.767966', '8841abeb80000e4a9a9982acbe335411f54f6492ea1e902c8a0cc116b0cfc30f', 'validated', '{"audio_key":"7a27bdbc6313f1f7a7c35f68ee35890c88ea59faeeb238276b5c95605a43f8bd","entity_key":"d_source_evaluation_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8841abeb80000e4a9a9982acbe335411f54f6492ea1e902c8a0cc116b0cfc30f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7a27bdbc6313f1f7a7c35f68ee35890c88ea59faeeb238276b5c95605a43f8bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_02:4 -> audio/generated/de-DE/dialogues/7ad36e209da6daa8e4b876702575130a8ba406e9ec15ff34d36411a3eab1692e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfef2e85-b9e8-5701-be2d-0e90434bd796', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36362819ae6dbc54a6441b2d425f8a9b4fdb8cb01a939d81f264283e063cc414'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cab0c779-6793-5c10-97f5-da6da1b060bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfef2e85-b9e8-5701-be2d-0e90434bd796', 1), '36362819ae6dbc54a6441b2d425f8a9b4fdb8cb01a939d81f264283e063cc414',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ad36e209da6daa8e4b876702575130a8ba406e9ec15ff34d36411a3eab1692e.mp3', 3761, '2026-09-13 10:37:55.806453', '096e753d785329e3ea706b46d32334625eb3639ad6574b4573c978c7b9e45d5c', 'validated', '{"audio_key":"7ad36e209da6daa8e4b876702575130a8ba406e9ec15ff34d36411a3eab1692e","entity_key":"d_influence_without_authority_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"096e753d785329e3ea706b46d32334625eb3639ad6574b4573c978c7b9e45d5c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7ad36e209da6daa8e4b876702575130a8ba406e9ec15ff34d36411a3eab1692e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_01:4 -> audio/generated/de-DE/dialogues/7e6619e8d82716e2fc606cfbd539f7d8504e00e0427e5b236897e4336c85eceb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10082132-1754-5876-a338-3227c7949f1f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75a7e35ab30df1ded56d43eb3da98b7c069c0a4278ac018faf029ac8a4cf8c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55327584-ca14-59f4-963a-c912d5301639', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10082132-1754-5876-a338-3227c7949f1f', 1), '75a7e35ab30df1ded56d43eb3da98b7c069c0a4278ac018faf029ac8a4cf8c39',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7e6619e8d82716e2fc606cfbd539f7d8504e00e0427e5b236897e4336c85eceb.mp3', 4440, '2026-09-13 10:37:57.119430', '934ef758c9c6e1fd47c8a294b155989b41d93e71b758a4f4698eb60cd38a7f75', 'validated', '{"audio_key":"7e6619e8d82716e2fc606cfbd539f7d8504e00e0427e5b236897e4336c85eceb","entity_key":"d_source_evaluation_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"934ef758c9c6e1fd47c8a294b155989b41d93e71b758a4f4698eb60cd38a7f75","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7e6619e8d82716e2fc606cfbd539f7d8504e00e0427e5b236897e4336c85eceb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_03:4 -> audio/generated/de-DE/dialogues/7ee2c82a259ce75ef5f23eb0a094ddcfb0cd58dd7e49f4e815f730f220e5da93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d791131-cb10-5704-b43c-8701cf423b1f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a890f96edc52bffde99557214bbde4cb9f49623b83aa3466de6d7c318d805ec0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb24630f-3920-5f21-a1d2-6c496699542a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d791131-cb10-5704-b43c-8701cf423b1f', 1), 'a890f96edc52bffde99557214bbde4cb9f49623b83aa3466de6d7c318d805ec0',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ee2c82a259ce75ef5f23eb0a094ddcfb0cd58dd7e49f4e815f730f220e5da93.mp3', 5851, '2026-09-13 10:37:57.306717', 'cfbd183f3a412b4e332e37dfd8c29329a9f100ea339b94ac9cc47e8517e3f4fb', 'validated', '{"audio_key":"7ee2c82a259ce75ef5f23eb0a094ddcfb0cd58dd7e49f4e815f730f220e5da93","entity_key":"d_civic_decision_capstone_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cfbd183f3a412b4e332e37dfd8c29329a9f100ea339b94ac9cc47e8517e3f4fb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7ee2c82a259ce75ef5f23eb0a094ddcfb0cd58dd7e49f4e815f730f220e5da93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_02:2 -> audio/generated/de-DE/dialogues/7f49893862c299c5804f585cc79a9e9eead1dde41663f33bd8fcaabc924c2bcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e89c697-6a91-5543-b4e6-20f166bf5405', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68812e6aff7646f9ebb9f34bf85c48a7e651d56faacc8c42fc0b2ff618169365'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('946f3cb7-1fad-5393-8801-cd73f5d55f74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e89c697-6a91-5543-b4e6-20f166bf5405', 1), '68812e6aff7646f9ebb9f34bf85c48a7e651d56faacc8c42fc0b2ff618169365',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f49893862c299c5804f585cc79a9e9eead1dde41663f33bd8fcaabc924c2bcf.mp3', 4179, '2026-09-13 10:37:58.467056', '3776e1703831253897433bcb60e8429e0111cb6f09cd50b5a6dffad31493fb0c', 'validated', '{"audio_key":"7f49893862c299c5804f585cc79a9e9eead1dde41663f33bd8fcaabc924c2bcf","entity_key":"d_civic_decision_capstone_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3776e1703831253897433bcb60e8429e0111cb6f09cd50b5a6dffad31493fb0c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7f49893862c299c5804f585cc79a9e9eead1dde41663f33bd8fcaabc924c2bcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_01:4 -> audio/generated/de-DE/dialogues/8431868c86cb1a8ae2700b950541a95981a127a247644469c11a11a9af188053.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e533233a-5814-5005-a649-e12822fb577e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a55346922cfafd9c2a5b23878e72690dd4d1f3e1154c66ac22037c1fd254631a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ddf48a5-4f46-5129-bcfe-4c5aeb356e04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e533233a-5814-5005-a649-e12822fb577e', 1), 'a55346922cfafd9c2a5b23878e72690dd4d1f3e1154c66ac22037c1fd254631a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8431868c86cb1a8ae2700b950541a95981a127a247644469c11a11a9af188053.mp3', 3369, '2026-09-13 10:37:58.608421', 'ca6058e46d21b3164b3f63c381359b9720ac4d3b224ec5ec32b044ee044d63eb', 'validated', '{"audio_key":"8431868c86cb1a8ae2700b950541a95981a127a247644469c11a11a9af188053","entity_key":"d_academic_seminar_discussion_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ca6058e46d21b3164b3f63c381359b9720ac4d3b224ec5ec32b044ee044d63eb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8431868c86cb1a8ae2700b950541a95981a127a247644469c11a11a9af188053.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_03:4 -> audio/generated/de-DE/dialogues/8443e8a4fdb3949d377cddbea0c6cb847d5f0ae228897cd85d9e4308644642cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75a51270-29f7-5c61-b2ba-3876267417d0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd9115d44019bb404976c18ebbcce4f0285030f980db276235b36c15b8f9bb43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ababbdc-c1a7-5415-b69b-14518f710103', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75a51270-29f7-5c61-b2ba-3876267417d0', 1), 'bd9115d44019bb404976c18ebbcce4f0285030f980db276235b36c15b8f9bb43',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8443e8a4fdb3949d377cddbea0c6cb847d5f0ae228897cd85d9e4308644642cb.mp3', 2821, '2026-09-13 10:37:59.646668', '4d26db90a74780178e2288a24f02a20607ccc7e7bf8f5f757d27ee12c489854b', 'validated', '{"audio_key":"8443e8a4fdb3949d377cddbea0c6cb847d5f0ae228897cd85d9e4308644642cb","entity_key":"d_influence_without_authority_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4d26db90a74780178e2288a24f02a20607ccc7e7bf8f5f757d27ee12c489854b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8443e8a4fdb3949d377cddbea0c6cb847d5f0ae228897cd85d9e4308644642cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_01:1 -> audio/generated/de-DE/dialogues/85f2470e8f36c623d941c026bb4c4b03a67d594492b32ed34da5572ab6f8ab24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09b1b835-ba0c-50ea-9276-62c83e5b73da', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb0dc66c23acab96ed2a1acc7962ab8c4f940dadfd56fa0804298c92fc2912d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88db777b-c314-57f2-afc5-c82ab6ed40b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09b1b835-ba0c-50ea-9276-62c83e5b73da', 1), 'eb0dc66c23acab96ed2a1acc7962ab8c4f940dadfd56fa0804298c92fc2912d2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/85f2470e8f36c623d941c026bb4c4b03a67d594492b32ed34da5572ab6f8ab24.mp3', 5746, '2026-09-13 10:38:00.120904', '821624b72c43688c3042e6c484a84129f68e342282da65862a1fe9cc62f76a55', 'validated', '{"audio_key":"85f2470e8f36c623d941c026bb4c4b03a67d594492b32ed34da5572ab6f8ab24","entity_key":"d_community_conflict_mediation_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"821624b72c43688c3042e6c484a84129f68e342282da65862a1fe9cc62f76a55","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/85f2470e8f36c623d941c026bb4c4b03a67d594492b32ed34da5572ab6f8ab24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_01:2 -> audio/generated/de-DE/dialogues/88533efe4f4f63cf10225cfc897f5ef6bcbc09268ebeaa665cd06cf832efaeea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01b1b24a-d50b-5827-828b-f4957f4cf9e0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3be641750791192feaca01f6dda6ac3fb6cdd65713c13c5d236f46e1efccd646'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4378be7f-3dd2-5e81-ac41-5e1b442bbadb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01b1b24a-d50b-5827-828b-f4957f4cf9e0', 1), '3be641750791192feaca01f6dda6ac3fb6cdd65713c13c5d236f46e1efccd646',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/88533efe4f4f63cf10225cfc897f5ef6bcbc09268ebeaa665cd06cf832efaeea.mp3', 3604, '2026-09-13 10:38:00.904974', '8f81d4080784ea9f3853173e5866d14ceb58e99c050d18895636b7c4822991b2', 'validated', '{"audio_key":"88533efe4f4f63cf10225cfc897f5ef6bcbc09268ebeaa665cd06cf832efaeea","entity_key":"d_community_conflict_mediation_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8f81d4080784ea9f3853173e5866d14ceb58e99c050d18895636b7c4822991b2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/88533efe4f4f63cf10225cfc897f5ef6bcbc09268ebeaa665cd06cf832efaeea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_01:2 -> audio/generated/de-DE/dialogues/8a9ac139ce411b8bf9b203a5fae1088ae44c553440080bb7688c975bba595c9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6902f7a1-0329-591c-acf4-10734811694f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd0a323be298c71d6e2f9484207ec886b2d046bed1c16711c5a905bfb36b666a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b13cca68-0b0f-5faf-8600-231d2edd83ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6902f7a1-0329-591c-acf4-10734811694f', 1), 'dd0a323be298c71d6e2f9484207ec886b2d046bed1c16711c5a905bfb36b666a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8a9ac139ce411b8bf9b203a5fae1088ae44c553440080bb7688c975bba595c9b.mp3', 5668, '2026-09-13 10:38:01.686520', '35d5326f0035dc55ca4a280be76e77e74af27fb90583a10e0898656766dbc951', 'validated', '{"audio_key":"8a9ac139ce411b8bf9b203a5fae1088ae44c553440080bb7688c975bba595c9b","entity_key":"d_civic_decision_capstone_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"35d5326f0035dc55ca4a280be76e77e74af27fb90583a10e0898656766dbc951","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8a9ac139ce411b8bf9b203a5fae1088ae44c553440080bb7688c975bba595c9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_02:4 -> audio/generated/de-DE/dialogues/8bf8c5e0f55cb56b783a243c63fbed2695387f7a0f33592c56a27ff5ba5f8b5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ec3903f-955e-50b7-b761-23a4cccdad1e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bff23548eae5bb85ece37c4a9623ae2ea14f36a47a94ec70cd4b329240d39b42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d8be011-457c-56ff-9e94-9bce0942586d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ec3903f-955e-50b7-b761-23a4cccdad1e', 1), 'bff23548eae5bb85ece37c4a9623ae2ea14f36a47a94ec70cd4b329240d39b42',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bf8c5e0f55cb56b783a243c63fbed2695387f7a0f33592c56a27ff5ba5f8b5d.mp3', 3709, '2026-09-13 10:38:02.583771', '3e5b978affd6cb046a4daf17f56ac471b6d5626ee0e62a94e78b1ba7fe074dfa', 'validated', '{"audio_key":"8bf8c5e0f55cb56b783a243c63fbed2695387f7a0f33592c56a27ff5ba5f8b5d","entity_key":"d_source_evaluation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"3e5b978affd6cb046a4daf17f56ac471b6d5626ee0e62a94e78b1ba7fe074dfa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8bf8c5e0f55cb56b783a243c63fbed2695387f7a0f33592c56a27ff5ba5f8b5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_01:4 -> audio/generated/de-DE/dialogues/8d4fb301fe96d65ba97c9672064d0bbbc1918615000e17203f227d1fa37c2e4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8b20f96-b71f-5493-8869-33a5d9fe47c9', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c122eb176eb4fc09b3afa537f2d758d436989f948aba461e0f29c3cf41937581'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39c2e827-51cc-5b86-b398-98f5e861fea1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8b20f96-b71f-5493-8869-33a5d9fe47c9', 1), 'c122eb176eb4fc09b3afa537f2d758d436989f948aba461e0f29c3cf41937581',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8d4fb301fe96d65ba97c9672064d0bbbc1918615000e17203f227d1fa37c2e4a.mp3', 4728, '2026-09-13 10:38:03.370578', '0bf75fae05eb6ce247d32aa8d61216e0e88a6458f13ef873aff91e1659e2fb43', 'validated', '{"audio_key":"8d4fb301fe96d65ba97c9672064d0bbbc1918615000e17203f227d1fa37c2e4a","entity_key":"d_influence_without_authority_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0bf75fae05eb6ce247d32aa8d61216e0e88a6458f13ef873aff91e1659e2fb43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8d4fb301fe96d65ba97c9672064d0bbbc1918615000e17203f227d1fa37c2e4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_01:1 -> audio/generated/de-DE/dialogues/8e14e11fc84bb948f37543dda4fe2029de82df98e5bbb003f71f7b06523a0e5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82278673-7a8f-55bd-b63b-e972db495feb', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8ebc76f1d4cccec2a0de3b1ba4670dcc30fa8359456a9484188c7fe63b10f8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85780aab-7fe6-5a55-9e29-880b11dd734a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82278673-7a8f-55bd-b63b-e972db495feb', 1), 'a8ebc76f1d4cccec2a0de3b1ba4670dcc30fa8359456a9484188c7fe63b10f8a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8e14e11fc84bb948f37543dda4fe2029de82df98e5bbb003f71f7b06523a0e5b.mp3', 5746, '2026-09-13 10:38:04.095569', '9bd3ce956cfd42a3ae905037f06cbc145cb632026a74283c8145261794e4c4b0', 'validated', '{"audio_key":"8e14e11fc84bb948f37543dda4fe2029de82df98e5bbb003f71f7b06523a0e5b","entity_key":"d_civic_decision_capstone_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9bd3ce956cfd42a3ae905037f06cbc145cb632026a74283c8145261794e4c4b0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8e14e11fc84bb948f37543dda4fe2029de82df98e5bbb003f71f7b06523a0e5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_02:2 -> audio/generated/de-DE/dialogues/8e967089706d0264bf2c83e7064372e3aace8225cc2c6374b36ddfd66518094a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ab2b138-e3cb-5398-90f7-7d717b2ca980', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18e0c4c36c593b8ecb601bb98d8972285f1c6513775185b2d212c7b9b5329e43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1c39b77-a85e-56f3-bd73-0aa5720ba15d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ab2b138-e3cb-5398-90f7-7d717b2ca980', 1), '18e0c4c36c593b8ecb601bb98d8972285f1c6513775185b2d212c7b9b5329e43',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8e967089706d0264bf2c83e7064372e3aace8225cc2c6374b36ddfd66518094a.mp3', 3604, '2026-09-13 10:38:04.627015', '825eabea291dcebf2a0d389bdfeaef947651ffe9e6150cbb1a4514cc30936915', 'validated', '{"audio_key":"8e967089706d0264bf2c83e7064372e3aace8225cc2c6374b36ddfd66518094a","entity_key":"d_media_interviews_public_statements_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"825eabea291dcebf2a0d389bdfeaef947651ffe9e6150cbb1a4514cc30936915","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8e967089706d0264bf2c83e7064372e3aace8225cc2c6374b36ddfd66518094a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_01:1 -> audio/generated/de-DE/dialogues/927572220b15d47804dd5668406d7d6b4848e4ced2da4fa5748739dd628ab9ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b05e6431-634a-5e99-8386-5d8ec84d24ef', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40438c3074772a75335ca2f496cd93d4b9bcffa24d1123951d2d3e106e46ac75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffced00f-1390-5b2e-a1dc-46594b3cbc4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b05e6431-634a-5e99-8386-5d8ec84d24ef', 1), '40438c3074772a75335ca2f496cd93d4b9bcffa24d1123951d2d3e106e46ac75',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/927572220b15d47804dd5668406d7d6b4848e4ced2da4fa5748739dd628ab9ff.mp3', 5381, '2026-09-13 10:38:05.562321', 'd4609d515e8eabe61ef7a22bfb828903cb993bcc58a797804391448b535e8457', 'validated', '{"audio_key":"927572220b15d47804dd5668406d7d6b4848e4ced2da4fa5748739dd628ab9ff","entity_key":"d_interdisciplinary_collaboration_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d4609d515e8eabe61ef7a22bfb828903cb993bcc58a797804391448b535e8457","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/927572220b15d47804dd5668406d7d6b4848e4ced2da4fa5748739dd628ab9ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_01:2 -> audio/generated/de-DE/dialogues/92eda2496c2e590e643500afa22ad5b08f72b21feedba8ee7201e0744fbe017c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a537f53-abb3-5093-9657-126a8cd73c1f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8506b55faa864e13e40d2e4527568c0b14dc7057f6ae82198eda4fadd6b0cc8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3513c6cd-54d7-566d-925e-172fcfd7764a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a537f53-abb3-5093-9657-126a8cd73c1f', 1), '8506b55faa864e13e40d2e4527568c0b14dc7057f6ae82198eda4fadd6b0cc8c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/92eda2496c2e590e643500afa22ad5b08f72b21feedba8ee7201e0744fbe017c.mp3', 5877, '2026-09-13 10:38:06.162245', '749f7380302b91b0a4044b1a85e5a07fac8078557eac2db4702f38747347b494', 'validated', '{"audio_key":"92eda2496c2e590e643500afa22ad5b08f72b21feedba8ee7201e0744fbe017c","entity_key":"d_source_evaluation_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"749f7380302b91b0a4044b1a85e5a07fac8078557eac2db4702f38747347b494","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/92eda2496c2e590e643500afa22ad5b08f72b21feedba8ee7201e0744fbe017c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_03:2 -> audio/generated/de-DE/dialogues/946e85eefa4799d0e4c04d4ef908b29727a1744a8ea4fd82e9010bea025f10fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d690cdae-55d4-5f8b-b835-6fd9838de758', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c806dfe1557499b5e5caa72f2e93d391062178ce97f448f3633e8849bbfcda9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20e18f7b-ffeb-55cc-a221-adf6a6e1745b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d690cdae-55d4-5f8b-b835-6fd9838de758', 1), 'c806dfe1557499b5e5caa72f2e93d391062178ce97f448f3633e8849bbfcda9e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/946e85eefa4799d0e4c04d4ef908b29727a1744a8ea4fd82e9010bea025f10fe.mp3', 3474, '2026-09-13 10:38:06.806898', '9f549bc83d684d27a248224abebb59de9a5d3f61e78f031a75089365f4174b2e', 'validated', '{"audio_key":"946e85eefa4799d0e4c04d4ef908b29727a1744a8ea4fd82e9010bea025f10fe","entity_key":"d_community_conflict_mediation_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9f549bc83d684d27a248224abebb59de9a5d3f61e78f031a75089365f4174b2e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/946e85eefa4799d0e4c04d4ef908b29727a1744a8ea4fd82e9010bea025f10fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_03:4 -> audio/generated/de-DE/dialogues/973489e1490ddccc550776fe130dd00b6c0c633096e767ada737b2bdeddc74f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46fa0cf3-952a-5331-a660-a5da53f30a7f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0a48a0e438d0652eb53fa0ea2548386b4b33bf0a41b602f755a69e74b2ed291'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ce0017a-28b9-5fa7-8ec3-18bdf0d3e715', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46fa0cf3-952a-5331-a660-a5da53f30a7f', 1), 'e0a48a0e438d0652eb53fa0ea2548386b4b33bf0a41b602f755a69e74b2ed291',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/973489e1490ddccc550776fe130dd00b6c0c633096e767ada737b2bdeddc74f9.mp3', 3604, '2026-09-13 10:38:07.449544', 'aba186b0dd4149c23ffacd68014fd2229946e350d8b0939391554a3a5a0dc774', 'validated', '{"audio_key":"973489e1490ddccc550776fe130dd00b6c0c633096e767ada737b2bdeddc74f9","entity_key":"d_community_conflict_mediation_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"aba186b0dd4149c23ffacd68014fd2229946e350d8b0939391554a3a5a0dc774","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/973489e1490ddccc550776fe130dd00b6c0c633096e767ada737b2bdeddc74f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_03:3 -> audio/generated/de-DE/dialogues/97fd4b3a61b5b81c4e27b209f8ac2f673971569f7ed426bbf12170f1f6cf4ee6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0ae9bc5-b894-5469-a769-7eeb15fbc99b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4c7beb535143497c254f5ac885d76da7edae31805e7a90e9a9865a077055f1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ead285f9-bf30-5eba-be71-15123f50f3ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0ae9bc5-b894-5469-a769-7eeb15fbc99b', 1), 'e4c7beb535143497c254f5ac885d76da7edae31805e7a90e9a9865a077055f1d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/97fd4b3a61b5b81c4e27b209f8ac2f673971569f7ed426bbf12170f1f6cf4ee6.mp3', 4179, '2026-09-13 10:38:08.134917', '7711dce63de6057f7f747aad676549ea65f61d4ae5881e793b3e27c76e76048b', 'validated', '{"audio_key":"97fd4b3a61b5b81c4e27b209f8ac2f673971569f7ed426bbf12170f1f6cf4ee6","entity_key":"d_civic_decision_capstone_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7711dce63de6057f7f747aad676549ea65f61d4ae5881e793b3e27c76e76048b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/97fd4b3a61b5b81c4e27b209f8ac2f673971569f7ed426bbf12170f1f6cf4ee6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_02:4 -> audio/generated/de-DE/dialogues/9e0185730ec644ef012b7cd46e5668d869190be6265d9983a2bff52204cfee3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ee8924c-01e6-5b98-952e-b3b167b9dc97', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ba488e37017e8e7dcda5f4487af9692ad1f02170b6d4346a061581035bf734b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2779cbb-2986-596a-b5fa-d49cc4d85b77', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ee8924c-01e6-5b98-952e-b3b167b9dc97', 1), '7ba488e37017e8e7dcda5f4487af9692ad1f02170b6d4346a061581035bf734b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e0185730ec644ef012b7cd46e5668d869190be6265d9983a2bff52204cfee3c.mp3', 4022, '2026-09-13 10:38:08.737835', '1730d3c9613831018c9990997d7c0fa4898df8c2b0906f0ba6ac48be0ad9325d', 'validated', '{"audio_key":"9e0185730ec644ef012b7cd46e5668d869190be6265d9983a2bff52204cfee3c","entity_key":"d_community_conflict_mediation_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1730d3c9613831018c9990997d7c0fa4898df8c2b0906f0ba6ac48be0ad9325d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9e0185730ec644ef012b7cd46e5668d869190be6265d9983a2bff52204cfee3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_02:2 -> audio/generated/de-DE/dialogues/9e32b9a784cd087a770e090da51c7dfeee96e816bf28cb03b61639bd6e1df2e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66246b29-9515-5bac-b393-71f344ed4432', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9834ee90bd9f7d2c337729bf72b510c1da5d0f11188e63b003e5188482eb04db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09635a74-2301-5bc2-a7e4-0422a9516616', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66246b29-9515-5bac-b393-71f344ed4432', 1), '9834ee90bd9f7d2c337729bf72b510c1da5d0f11188e63b003e5188482eb04db',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e32b9a784cd087a770e090da51c7dfeee96e816bf28cb03b61639bd6e1df2e9.mp3', 2768, '2026-09-13 10:38:09.288427', '4dcf213410eed95361be143c5834eb93805aca3e54cb8afdc0ebb976f49478d4', 'validated', '{"audio_key":"9e32b9a784cd087a770e090da51c7dfeee96e816bf28cb03b61639bd6e1df2e9","entity_key":"d_ethical_tradeoffs_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4dcf213410eed95361be143c5834eb93805aca3e54cb8afdc0ebb976f49478d4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9e32b9a784cd087a770e090da51c7dfeee96e816bf28cb03b61639bd6e1df2e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_02:2 -> audio/generated/de-DE/dialogues/a04abcdf1266a9d7f7265d4c83b19e3ac9e8289cfad9dde7d215acc1ba6f30fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4f770c2f-8897-559e-a085-25261640e1c0', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b436b06f072d0ebec2524f35beef799f44d3a7fde94c103cb3c09158985a841'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b603bb7d-e971-50a2-9f15-49115d09544f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4f770c2f-8897-559e-a085-25261640e1c0', 1), '7b436b06f072d0ebec2524f35beef799f44d3a7fde94c103cb3c09158985a841',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a04abcdf1266a9d7f7265d4c83b19e3ac9e8289cfad9dde7d215acc1ba6f30fd.mp3', 4780, '2026-09-13 10:38:10.132438', 'a2caaf408d774a4ef00960c53d818744e24fb5a868e75622ee9337235bff93db', 'validated', '{"audio_key":"a04abcdf1266a9d7f7265d4c83b19e3ac9e8289cfad9dde7d215acc1ba6f30fd","entity_key":"d_interdisciplinary_collaboration_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a2caaf408d774a4ef00960c53d818744e24fb5a868e75622ee9337235bff93db","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a04abcdf1266a9d7f7265d4c83b19e3ac9e8289cfad9dde7d215acc1ba6f30fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_03:1 -> audio/generated/de-DE/dialogues/a71833dca0029a7fee3105aa80eb0d4bd0aeb96e494e75cd4147eeaf351e53f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b056ca43-0edd-59bd-b2a5-e65a1007a29d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '326b709b88235e1c54354a65a09a52e905501369837f55df1d19a88680da3aa3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('625c7734-9436-5bf0-bc27-3a21abaf253b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b056ca43-0edd-59bd-b2a5-e65a1007a29d', 1), '326b709b88235e1c54354a65a09a52e905501369837f55df1d19a88680da3aa3',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a71833dca0029a7fee3105aa80eb0d4bd0aeb96e494e75cd4147eeaf351e53f6.mp3', 4493, '2026-09-13 10:38:10.630532', '35d214da2ce01de88ba7420dab6ddc736de636f0f4100fb5f7bbb14c832d77a9', 'validated', '{"audio_key":"a71833dca0029a7fee3105aa80eb0d4bd0aeb96e494e75cd4147eeaf351e53f6","entity_key":"d_interdisciplinary_collaboration_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"35d214da2ce01de88ba7420dab6ddc736de636f0f4100fb5f7bbb14c832d77a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a71833dca0029a7fee3105aa80eb0d4bd0aeb96e494e75cd4147eeaf351e53f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_01:2 -> audio/generated/de-DE/dialogues/a86ab8c47c00be427fd3314db921536defbc07918d089b0cbacd266ae423d7d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55697556-c3f7-564c-9239-f417d919d46b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13001fc025690bf49134c217fefbc5078764c2cdc57edb10d1e714faee357ce5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e2b4f9a-beb9-55dc-82ac-a92133d23d72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55697556-c3f7-564c-9239-f417d919d46b', 1), '13001fc025690bf49134c217fefbc5078764c2cdc57edb10d1e714faee357ce5',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a86ab8c47c00be427fd3314db921536defbc07918d089b0cbacd266ae423d7d7.mp3', 5093, '2026-09-13 10:38:11.598266', 'c2c9ff82d6e512fff54f1128f35162addb492d4074d452deafbd4a6e05acd394', 'validated', '{"audio_key":"a86ab8c47c00be427fd3314db921536defbc07918d089b0cbacd266ae423d7d7","entity_key":"d_public_debate_value_conflicts_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c2c9ff82d6e512fff54f1128f35162addb492d4074d452deafbd4a6e05acd394","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a86ab8c47c00be427fd3314db921536defbc07918d089b0cbacd266ae423d7d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_03:2 -> audio/generated/de-DE/dialogues/ade0e1d6c0f8e711c6d84d4ed060d25069421aed9bfe762c6951b5b5c9320de5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c4136a1-d9ea-546c-a8d6-e3bb6ea936a5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2156ea2fe0185d36b9fd12163cfc78ddc41425a9651727a360ca96c830abaa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4757be3-6c85-5c2f-9d0c-a572bd0b58c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c4136a1-d9ea-546c-a8d6-e3bb6ea936a5', 1), 'e2156ea2fe0185d36b9fd12163cfc78ddc41425a9651727a360ca96c830abaa6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ade0e1d6c0f8e711c6d84d4ed060d25069421aed9bfe762c6951b5b5c9320de5.mp3', 3422, '2026-09-13 10:38:11.893843', '27014bd9e00d9abe7cca1646be4914688d7aed34788c00e845d3b0106d77c930', 'validated', '{"audio_key":"ade0e1d6c0f8e711c6d84d4ed060d25069421aed9bfe762c6951b5b5c9320de5","entity_key":"d_ethical_tradeoffs_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"27014bd9e00d9abe7cca1646be4914688d7aed34788c00e845d3b0106d77c930","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ade0e1d6c0f8e711c6d84d4ed060d25069421aed9bfe762c6951b5b5c9320de5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_01:4 -> audio/generated/de-DE/dialogues/af998cda759fdf2426835a933c685ea6defd66d9c8be5d1823a03ed276241701.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28680fe7-2844-5265-8aee-efb04c3391bf', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c94c993dc3c99dd94fb93654ed524ae1573cb638c70c780ca970deaf7dbc0424'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad08b958-c2e2-59de-91ac-db7bb1d11c68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28680fe7-2844-5265-8aee-efb04c3391bf', 1), 'c94c993dc3c99dd94fb93654ed524ae1573cb638c70c780ca970deaf7dbc0424',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af998cda759fdf2426835a933c685ea6defd66d9c8be5d1823a03ed276241701.mp3', 2403, '2026-09-13 10:38:12.706306', '1023943657dabac8ec8f069cd2d9a8d0adb9adc1fbc72908a3085740a9b7ab9b', 'validated', '{"audio_key":"af998cda759fdf2426835a933c685ea6defd66d9c8be5d1823a03ed276241701","entity_key":"d_interdisciplinary_collaboration_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"1023943657dabac8ec8f069cd2d9a8d0adb9adc1fbc72908a3085740a9b7ab9b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/af998cda759fdf2426835a933c685ea6defd66d9c8be5d1823a03ed276241701.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_01:1 -> audio/generated/de-DE/dialogues/b14ff08d2d6843013e2850e4e15dcbe53d842e72b29b030f5b7001639d428fec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35cdb503-3575-5367-96b2-4b9c76298800', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6dfc06fbd2d49ff03e8146765f86f77512f128954912b90205001ad1e6777a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b9f4add-dc8d-51f6-b169-ea44c0bae680', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35cdb503-3575-5367-96b2-4b9c76298800', 1), 'af6dfc06fbd2d49ff03e8146765f86f77512f128954912b90205001ad1e6777a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b14ff08d2d6843013e2850e4e15dcbe53d842e72b29b030f5b7001639d428fec.mp3', 3369, '2026-09-13 10:38:13.140431', '8298b12770656548d5c2f60924e4e016f5582b36808f2f926f301e1b501dc832', 'validated', '{"audio_key":"b14ff08d2d6843013e2850e4e15dcbe53d842e72b29b030f5b7001639d428fec","entity_key":"d_media_interviews_public_statements_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8298b12770656548d5c2f60924e4e016f5582b36808f2f926f301e1b501dc832","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b14ff08d2d6843013e2850e4e15dcbe53d842e72b29b030f5b7001639d428fec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_03:2 -> audio/generated/de-DE/dialogues/b1802a76f84814e28c27b11c8a3360e86dc9fb9728bbef77bfcfb94c962164a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a5ceaea-7ab3-573f-9211-d6adf949b6ba', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69da8d7ea653b4585e2e2f202ff63c06220cb562cb04c6fe504dd6b2ef16cef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bac9e450-6940-525c-bcc2-eab065276d87', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a5ceaea-7ab3-573f-9211-d6adf949b6ba', 1), '69da8d7ea653b4585e2e2f202ff63c06220cb562cb04c6fe504dd6b2ef16cef6',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1802a76f84814e28c27b11c8a3360e86dc9fb9728bbef77bfcfb94c962164a7.mp3', 3369, '2026-09-13 10:38:14.293287', '716eeb747441149d6b313109d28692c1f7ed8806f66a8d97363dc688847cd724', 'validated', '{"audio_key":"b1802a76f84814e28c27b11c8a3360e86dc9fb9728bbef77bfcfb94c962164a7","entity_key":"d_administrative_appeals_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"716eeb747441149d6b313109d28692c1f7ed8806f66a8d97363dc688847cd724","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b1802a76f84814e28c27b11c8a3360e86dc9fb9728bbef77bfcfb94c962164a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_03:3 -> audio/generated/de-DE/dialogues/b24f665fe0cb64b35319f3c101dbba715e604e2c10e18301da051fa046b97937.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f784d8bf-ff88-5fe3-a290-cc3d5aa2211f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f4da4bdf38b83de53ef3e4282633a36a5ae736164981c38e8ece8564e60f71a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70dcc54-7462-5de7-97d4-e77823d8bcd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f784d8bf-ff88-5fe3-a290-cc3d5aa2211f', 1), '6f4da4bdf38b83de53ef3e4282633a36a5ae736164981c38e8ece8564e60f71a',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b24f665fe0cb64b35319f3c101dbba715e604e2c10e18301da051fa046b97937.mp3', 4075, '2026-09-13 10:38:14.446008', 'bcd15faced47baa6be70edcb1fb7a4293671b344cbe10f7f59543eead3107762', 'validated', '{"audio_key":"b24f665fe0cb64b35319f3c101dbba715e604e2c10e18301da051fa046b97937","entity_key":"d_academic_seminar_discussion_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bcd15faced47baa6be70edcb1fb7a4293671b344cbe10f7f59543eead3107762","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b24f665fe0cb64b35319f3c101dbba715e604e2c10e18301da051fa046b97937.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_01:1 -> audio/generated/de-DE/dialogues/b34eb4d268ef7ccdc34b76a920b0a7b85d3ceec326048624cf1ab11e6299b7c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c377b58-6ca1-5379-9010-2a39884d4531', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '317b77bca69b8f305b3f6253a7113ec1e0d5a96742d13cdae1a215504f448fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('797dce19-ccac-579b-ab35-1c8d38cdfea2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c377b58-6ca1-5379-9010-2a39884d4531', 1), '317b77bca69b8f305b3f6253a7113ec1e0d5a96742d13cdae1a215504f448fff',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b34eb4d268ef7ccdc34b76a920b0a7b85d3ceec326048624cf1ab11e6299b7c7.mp3', 4127, '2026-09-13 10:38:15.655489', 'b0ca5342bad3468d45cc086cc9b5c911d2c5c22c1328e8bbb6075aee93000339', 'validated', '{"audio_key":"b34eb4d268ef7ccdc34b76a920b0a7b85d3ceec326048624cf1ab11e6299b7c7","entity_key":"d_academic_seminar_discussion_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b0ca5342bad3468d45cc086cc9b5c911d2c5c22c1328e8bbb6075aee93000339","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b34eb4d268ef7ccdc34b76a920b0a7b85d3ceec326048624cf1ab11e6299b7c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_02:4 -> audio/generated/de-DE/dialogues/b4d00d54086f61e797d970713e69ee55d3b6d9051116c699b099dd1666fc3e74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e9f1438-ead5-51b6-add8-2fd8d1030820', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0005132e10358fa32b3b734fa77e085143566dd24e49e617dad2f352ce830b08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aeb8f065-7c19-5acb-8c23-204343de8a58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e9f1438-ead5-51b6-add8-2fd8d1030820', 1), '0005132e10358fa32b3b734fa77e085143566dd24e49e617dad2f352ce830b08',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4d00d54086f61e797d970713e69ee55d3b6d9051116c699b099dd1666fc3e74.mp3', 3343, '2026-09-13 10:38:15.690635', '697f9b26431049291a9c30b3ed61595dde174f158840234547e0b1e898d3de7f', 'validated', '{"audio_key":"b4d00d54086f61e797d970713e69ee55d3b6d9051116c699b099dd1666fc3e74","entity_key":"d_academic_seminar_discussion_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"697f9b26431049291a9c30b3ed61595dde174f158840234547e0b1e898d3de7f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b4d00d54086f61e797d970713e69ee55d3b6d9051116c699b099dd1666fc3e74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_02:1 -> audio/generated/de-DE/dialogues/b58d0e4b931b79d13234535bfe6b77ef20b39547723c0741c173dd5f223dc703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04f04ab1-bd2a-53bb-85fd-9947b3d9da5c', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82f5c5344fd0eea859fa30ac5685efae840f2bb47e07b795d0586bbcd2f5f03a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba9a6492-06fc-562c-9bb7-972a31f96676', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04f04ab1-bd2a-53bb-85fd-9947b3d9da5c', 1), '82f5c5344fd0eea859fa30ac5685efae840f2bb47e07b795d0586bbcd2f5f03a',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b58d0e4b931b79d13234535bfe6b77ef20b39547723c0741c173dd5f223dc703.mp3', 3578, '2026-09-13 10:38:16.935960', '76fcad647973160ac04f1da38b16b15fe9202a80d800d33a6a04fac7b9f684fc', 'validated', '{"audio_key":"b58d0e4b931b79d13234535bfe6b77ef20b39547723c0741c173dd5f223dc703","entity_key":"d_influence_without_authority_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"76fcad647973160ac04f1da38b16b15fe9202a80d800d33a6a04fac7b9f684fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b58d0e4b931b79d13234535bfe6b77ef20b39547723c0741c173dd5f223dc703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_03:4 -> audio/generated/de-DE/dialogues/b6cf47fe44b88630457d7678faee9dad7f88d08103f2e1dd501faf55fd541a4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa25f0e2-0ab5-5b85-bfa7-031763777a6b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce29cd38422ff0aecec3d578352d0ef5a7f25143cbf7abc72dead2db97243530'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cda9dc71-8f5f-5e09-8c35-22c5b36b7c1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa25f0e2-0ab5-5b85-bfa7-031763777a6b', 1), 'ce29cd38422ff0aecec3d578352d0ef5a7f25143cbf7abc72dead2db97243530',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b6cf47fe44b88630457d7678faee9dad7f88d08103f2e1dd501faf55fd541a4d.mp3', 3474, '2026-09-13 10:38:16.916744', '46581f7a798f48d0bc1a8fe6f7bc46ceab0f8482cfc9941b23beed3552499c8f', 'validated', '{"audio_key":"b6cf47fe44b88630457d7678faee9dad7f88d08103f2e1dd501faf55fd541a4d","entity_key":"d_academic_seminar_discussion_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"46581f7a798f48d0bc1a8fe6f7bc46ceab0f8482cfc9941b23beed3552499c8f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b6cf47fe44b88630457d7678faee9dad7f88d08103f2e1dd501faf55fd541a4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_02:1 -> audio/generated/de-DE/dialogues/b90c29347364198ca7ecdf04238ac3cda758ae9ae571e8536f6522edf5423105.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8c7cca9-4640-5f45-bf06-d44ebba3069e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5929ed1da2241f237c8e3ade3c3ad3ec1a5610b416f7b681da33229dd98886ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41881b13-add7-5b31-a7b9-46ef6ee7a3c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8c7cca9-4640-5f45-bf06-d44ebba3069e', 1), '5929ed1da2241f237c8e3ade3c3ad3ec1a5610b416f7b681da33229dd98886ad',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b90c29347364198ca7ecdf04238ac3cda758ae9ae571e8536f6522edf5423105.mp3', 4362, '2026-09-13 10:38:18.247260', '9d6648372fdedb03219d0efd3e821138f0230d6cd45ff532d180419d642fb679', 'validated', '{"audio_key":"b90c29347364198ca7ecdf04238ac3cda758ae9ae571e8536f6522edf5423105","entity_key":"d_source_evaluation_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9d6648372fdedb03219d0efd3e821138f0230d6cd45ff532d180419d642fb679","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b90c29347364198ca7ecdf04238ac3cda758ae9ae571e8536f6522edf5423105.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_01:2 -> audio/generated/de-DE/dialogues/bbe6da7cdbb524ec04e9f0dd2e07346f97ee28e7997c1bafcf02422fbc289417.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cb0eda0-6698-5870-aad8-24e5a39567bb', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a5b467a80f52979ee6b4b9e8f7e175a881ea8e90767b0ec02663e58bcc746b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6c4317d-76dc-5ede-9dec-78a6a7950d00', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cb0eda0-6698-5870-aad8-24e5a39567bb', 1), '5a5b467a80f52979ee6b4b9e8f7e175a881ea8e90767b0ec02663e58bcc746b5',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bbe6da7cdbb524ec04e9f0dd2e07346f97ee28e7997c1bafcf02422fbc289417.mp3', 3787, '2026-09-13 10:38:18.226081', '21e26d973240167f1274cfc39e1fa7ffe858f832329e7e8de77c64601c834f8c', 'validated', '{"audio_key":"bbe6da7cdbb524ec04e9f0dd2e07346f97ee28e7997c1bafcf02422fbc289417","entity_key":"d_administrative_appeals_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"21e26d973240167f1274cfc39e1fa7ffe858f832329e7e8de77c64601c834f8c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bbe6da7cdbb524ec04e9f0dd2e07346f97ee28e7997c1bafcf02422fbc289417.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_02:1 -> audio/generated/de-DE/dialogues/bcfbf53c9d77fff87258f62a6b65265369825f3e54907d9816a5886dfef1c935.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf5a4525-cda2-5a9f-b00d-6fbaa245675e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a701d5ad40780cf41f35ff186da15bfb36753850a8a5f5f7abc430413299e7ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4884789e-4a6f-5044-8ee0-3c5b09c4e1e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf5a4525-cda2-5a9f-b00d-6fbaa245675e', 1), 'a701d5ad40780cf41f35ff186da15bfb36753850a8a5f5f7abc430413299e7ad',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bcfbf53c9d77fff87258f62a6b65265369825f3e54907d9816a5886dfef1c935.mp3', 4832, '2026-09-13 10:38:19.697822', '75c20b04232c356f5746a6cd14359d3c323f80b447088e64b1586aab3e757a59', 'validated', '{"audio_key":"bcfbf53c9d77fff87258f62a6b65265369825f3e54907d9816a5886dfef1c935","entity_key":"d_media_interviews_public_statements_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"75c20b04232c356f5746a6cd14359d3c323f80b447088e64b1586aab3e757a59","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bcfbf53c9d77fff87258f62a6b65265369825f3e54907d9816a5886dfef1c935.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_02:2 -> audio/generated/de-DE/dialogues/bf84ed8efa9cab7d3c2c83c83b6738805ff9ee56151a8576ccf8370f22031c3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e88be583-7b7a-58a7-97f3-29247195f1fb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45e8b902801c5114f726c4b40f816fc72bd904d495c73c43590f651142eb93bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('825fc9c3-fdac-53b7-a33d-004bb7fcffd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e88be583-7b7a-58a7-97f3-29247195f1fb', 1), '45e8b902801c5114f726c4b40f816fc72bd904d495c73c43590f651142eb93bc',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bf84ed8efa9cab7d3c2c83c83b6738805ff9ee56151a8576ccf8370f22031c3c.mp3', 3787, '2026-09-13 10:38:19.510092', '84e0cb8c81bb8a6bf3aaaafe95a1344407b817fc3d6bf08ce7b7b9e24cf8ca90', 'validated', '{"audio_key":"bf84ed8efa9cab7d3c2c83c83b6738805ff9ee56151a8576ccf8370f22031c3c","entity_key":"d_source_evaluation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"84e0cb8c81bb8a6bf3aaaafe95a1344407b817fc3d6bf08ce7b7b9e24cf8ca90","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bf84ed8efa9cab7d3c2c83c83b6738805ff9ee56151a8576ccf8370f22031c3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_03:1 -> audio/generated/de-DE/dialogues/c4a9cdf35260d02ccf9b8896099907eceb0e19675732b6504dc1b96ee07e9d28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e2dce3e8-b729-5639-841c-982d45c993ae', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cad378dc2ae50ccea2d565f918d19f4097c56fca7b4690c9646690a9e05dd9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('569d8ed6-7519-5b42-84ff-bb4f767dda12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e2dce3e8-b729-5639-841c-982d45c993ae', 1), '4cad378dc2ae50ccea2d565f918d19f4097c56fca7b4690c9646690a9e05dd9c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4a9cdf35260d02ccf9b8896099907eceb0e19675732b6504dc1b96ee07e9d28.mp3', 4858, '2026-09-13 10:38:20.911922', 'feaca64f2b2e194b23a9765623614de67799b988813575d2c041908826998faa', 'validated', '{"audio_key":"c4a9cdf35260d02ccf9b8896099907eceb0e19675732b6504dc1b96ee07e9d28","entity_key":"d_civic_decision_capstone_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"feaca64f2b2e194b23a9765623614de67799b988813575d2c041908826998faa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c4a9cdf35260d02ccf9b8896099907eceb0e19675732b6504dc1b96ee07e9d28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interdisciplinary_collaboration_03:4 -> audio/generated/de-DE/dialogues/cb8b2d3095dbf1a16a80de600c417f41ef1e958cfbce5b485b8111428efe9bf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('636cc25a-fa2b-5f35-b0eb-b9e5d0e152a0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interdisciplinary_collaboration_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bcd32706d656b95a9ede8652f0cca33c8535c75b75989c5114b785ba9797fdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd8c535-8979-5103-bf2e-26ab41ab859e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('636cc25a-fa2b-5f35-b0eb-b9e5d0e152a0', 1), '7bcd32706d656b95a9ede8652f0cca33c8535c75b75989c5114b785ba9797fdc',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb8b2d3095dbf1a16a80de600c417f41ef1e958cfbce5b485b8111428efe9bf9.mp3', 3108, '2026-09-13 10:38:20.923453', '672b88f09409157d0a1a500fd57b3337f1b75f565f0f3659698388ffdc4f6d04', 'validated', '{"audio_key":"cb8b2d3095dbf1a16a80de600c417f41ef1e958cfbce5b485b8111428efe9bf9","entity_key":"d_interdisciplinary_collaboration_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"672b88f09409157d0a1a500fd57b3337f1b75f565f0f3659698388ffdc4f6d04","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cb8b2d3095dbf1a16a80de600c417f41ef1e958cfbce5b485b8111428efe9bf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_02:3 -> audio/generated/de-DE/dialogues/cc418a4481ea3915b0c7bee09a8f7480c0856f7282cdb63c096aef87e2090b70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9cf46a9e-238d-5555-a10f-09974108d43b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c6bd2058d325b6a6017f6532b3729cdab953e3d307f236d75324c695a54d5ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe84e4c3-e513-502e-b69d-ffa8cd265fb1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9cf46a9e-238d-5555-a10f-09974108d43b', 1), '8c6bd2058d325b6a6017f6532b3729cdab953e3d307f236d75324c695a54d5ad',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc418a4481ea3915b0c7bee09a8f7480c0856f7282cdb63c096aef87e2090b70.mp3', 4257, '2026-09-13 10:38:22.267702', '73280ada6d66a0be45b4499727729068ae719f9627c81d0c8024f64bd9ecd2fa', 'validated', '{"audio_key":"cc418a4481ea3915b0c7bee09a8f7480c0856f7282cdb63c096aef87e2090b70","entity_key":"d_civic_decision_capstone_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"73280ada6d66a0be45b4499727729068ae719f9627c81d0c8024f64bd9ecd2fa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cc418a4481ea3915b0c7bee09a8f7480c0856f7282cdb63c096aef87e2090b70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_03:2 -> audio/generated/de-DE/dialogues/cfe8e62702bdf5c41e60bf60c84085e92019946265d7ec0e586ca5c840805b54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4c1e8ee-6c4f-59ad-b014-6a4ca24ca59a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '132cdbb3f8439008fc78e65d9ed3bd85bc0ea2fccaedc9879d73ced4aa5d1e00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daeba222-d317-5106-87d1-a356992f5fde', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4c1e8ee-6c4f-59ad-b014-6a4ca24ca59a', 1), '132cdbb3f8439008fc78e65d9ed3bd85bc0ea2fccaedc9879d73ced4aa5d1e00',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cfe8e62702bdf5c41e60bf60c84085e92019946265d7ec0e586ca5c840805b54.mp3', 2507, '2026-09-13 10:38:22.102205', '567c3b0d257fbf96d866c108d64f28cad9cd0c070fd005a686b98e533e74651e', 'validated', '{"audio_key":"cfe8e62702bdf5c41e60bf60c84085e92019946265d7ec0e586ca5c840805b54","entity_key":"d_influence_without_authority_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"567c3b0d257fbf96d866c108d64f28cad9cd0c070fd005a686b98e533e74651e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cfe8e62702bdf5c41e60bf60c84085e92019946265d7ec0e586ca5c840805b54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_01:2 -> audio/generated/de-DE/dialogues/d378b771b082b056840245fc5b8aad0ca9888b83fff719a8e0b417a4326d1354.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64022e8f-7c09-5c85-af40-d73f91119bee', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c385642088fde140ac1d51310c3759a3f8780e1c97084a4cefce5226166c5f5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b447c66f-d5c4-5570-b8ca-146031c48ee9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64022e8f-7c09-5c85-af40-d73f91119bee', 1), 'c385642088fde140ac1d51310c3759a3f8780e1c97084a4cefce5226166c5f5e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d378b771b082b056840245fc5b8aad0ca9888b83fff719a8e0b417a4326d1354.mp3', 3526, '2026-09-13 10:38:23.351292', '884a54db1f3eb8c9c521feedff9700aedd400c44fad787893fae9ce4edc9e1a4', 'validated', '{"audio_key":"d378b771b082b056840245fc5b8aad0ca9888b83fff719a8e0b417a4326d1354","entity_key":"d_academic_seminar_discussion_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"884a54db1f3eb8c9c521feedff9700aedd400c44fad787893fae9ce4edc9e1a4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d378b771b082b056840245fc5b8aad0ca9888b83fff719a8e0b417a4326d1354.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_01:3 -> audio/generated/de-DE/dialogues/d4b31b67d1519bade7ab3966a1fcb9deb597b71f313de1d27a5a8c2d808bfdfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7e81e7c1-80ba-5e86-af27-7eebf0f169ca', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a1ff64104280c209c5aa25b2d3635380a3d80950a0f863895287eadc292c556'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b374cc5-7d8e-587f-a2a5-a5bb9d32cb50', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7e81e7c1-80ba-5e86-af27-7eebf0f169ca', 1), '5a1ff64104280c209c5aa25b2d3635380a3d80950a0f863895287eadc292c556',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d4b31b67d1519bade7ab3966a1fcb9deb597b71f313de1d27a5a8c2d808bfdfa.mp3', 4832, '2026-09-13 10:38:23.666311', '11595df663e8d2cf603cb23b11b11ee20da839c16cc24c034c88b6c2c7ed467b', 'validated', '{"audio_key":"d4b31b67d1519bade7ab3966a1fcb9deb597b71f313de1d27a5a8c2d808bfdfa","entity_key":"d_public_debate_value_conflicts_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"11595df663e8d2cf603cb23b11b11ee20da839c16cc24c034c88b6c2c7ed467b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d4b31b67d1519bade7ab3966a1fcb9deb597b71f313de1d27a5a8c2d808bfdfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_02:2 -> audio/generated/de-DE/dialogues/d5cab8cc217b5aed87eebf318992b1f17ba8318ff35121cb192c8bd5353a5e84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb9eceed-a3b6-5dc1-a618-298d787e946c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd626b86c19ad06076a2868d9bd1bb46a529e90cf6853c54a1287dd6ad92292fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3c2a07d-9b78-5957-827c-a673cacb5c4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb9eceed-a3b6-5dc1-a618-298d787e946c', 1), 'd626b86c19ad06076a2868d9bd1bb46a529e90cf6853c54a1287dd6ad92292fb',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d5cab8cc217b5aed87eebf318992b1f17ba8318ff35121cb192c8bd5353a5e84.mp3', 4075, '2026-09-13 10:38:24.660382', '90ae49100807a4e84d87d9f46625722903310e48d644e54d91a9f758ac16bf6e', 'validated', '{"audio_key":"d5cab8cc217b5aed87eebf318992b1f17ba8318ff35121cb192c8bd5353a5e84","entity_key":"d_public_debate_value_conflicts_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"90ae49100807a4e84d87d9f46625722903310e48d644e54d91a9f758ac16bf6e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d5cab8cc217b5aed87eebf318992b1f17ba8318ff35121cb192c8bd5353a5e84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_02:3 -> audio/generated/de-DE/dialogues/d7c8408cfd3549a90f99a40ea422c61fe63f4cba2b879a84f6b1a42b7821be2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01fbf9bc-6791-5a47-8005-7aa345c2e63d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb466e31c9ccae6cdecb246b1a058a59a4c87f4cc4e505c2c28fd2e06863287b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4644e0e0-bb55-551d-b699-f66f85ae8e74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01fbf9bc-6791-5a47-8005-7aa345c2e63d', 1), 'bb466e31c9ccae6cdecb246b1a058a59a4c87f4cc4e505c2c28fd2e06863287b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d7c8408cfd3549a90f99a40ea422c61fe63f4cba2b879a84f6b1a42b7821be2d.mp3', 4545, '2026-09-13 10:38:25.021876', '34c44c87cb97fa314f321e9294e4b30afab3f3baa89e394d8eecb1a0498e3f94', 'validated', '{"audio_key":"d7c8408cfd3549a90f99a40ea422c61fe63f4cba2b879a84f6b1a42b7821be2d","entity_key":"d_source_evaluation_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"34c44c87cb97fa314f321e9294e4b30afab3f3baa89e394d8eecb1a0498e3f94","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d7c8408cfd3549a90f99a40ea422c61fe63f4cba2b879a84f6b1a42b7821be2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_01:2 -> audio/generated/de-DE/dialogues/d854526d7ffc7967f99ec841cbdb1dd6941906204be6709b41181f7b938a06c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88cf6b4c-d605-5201-9221-4160e0e36924', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d52cf98198ccb22f0779c35e38a035b1ec536c840e1c05ebc0980ba260660cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('676f4f54-f369-5327-b193-e20a992512f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88cf6b4c-d605-5201-9221-4160e0e36924', 1), '8d52cf98198ccb22f0779c35e38a035b1ec536c840e1c05ebc0980ba260660cc',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d854526d7ffc7967f99ec841cbdb1dd6941906204be6709b41181f7b938a06c9.mp3', 4597, '2026-09-13 10:38:26.043882', '67d1e2d172cec4160083077ff0ebea3895edd2d474bd67379bfe70e3d19a5b0e', 'validated', '{"audio_key":"d854526d7ffc7967f99ec841cbdb1dd6941906204be6709b41181f7b938a06c9","entity_key":"d_ethical_tradeoffs_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"67d1e2d172cec4160083077ff0ebea3895edd2d474bd67379bfe70e3d19a5b0e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d854526d7ffc7967f99ec841cbdb1dd6941906204be6709b41181f7b938a06c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_01:3 -> audio/generated/de-DE/dialogues/da7e5528885fd2a45845f7c37a60f5b52e3d5079a9d2ad070457db4027966419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e19b4bfe-7d5a-56f4-8d4b-9686bdee13a8', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbc8fcaba095e7c08736e711867e3489af8a5ca1407aab677a1bdb96f1eb53bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a374709-3f43-5ff5-85da-1cf46be99832', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e19b4bfe-7d5a-56f4-8d4b-9686bdee13a8', 1), 'fbc8fcaba095e7c08736e711867e3489af8a5ca1407aab677a1bdb96f1eb53bc',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da7e5528885fd2a45845f7c37a60f5b52e3d5079a9d2ad070457db4027966419.mp3', 4597, '2026-09-13 10:38:26.410415', 'bae5282ee37e8c3a715f491b74f3cc8adae185c2875b1150641c6457435be82c', 'validated', '{"audio_key":"da7e5528885fd2a45845f7c37a60f5b52e3d5079a9d2ad070457db4027966419","entity_key":"d_community_conflict_mediation_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bae5282ee37e8c3a715f491b74f3cc8adae185c2875b1150641c6457435be82c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/da7e5528885fd2a45845f7c37a60f5b52e3d5079a9d2ad070457db4027966419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_03:1 -> audio/generated/de-DE/dialogues/da8eca243a87fa0e61ee2f362d4ac7e6fe9afcc02e066196153d3e58a025ff17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34d169b6-64f2-5e51-b621-41b12ddcb5b8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e173e39e2aa70bb56850b17b63f5b34d2312dd3f46a1dadf7069b3d721350fd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9dbbf98-63c1-5f9c-af3e-e8a776e46065', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34d169b6-64f2-5e51-b621-41b12ddcb5b8', 1), 'e173e39e2aa70bb56850b17b63f5b34d2312dd3f46a1dadf7069b3d721350fd7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da8eca243a87fa0e61ee2f362d4ac7e6fe9afcc02e066196153d3e58a025ff17.mp3', 2742, '2026-09-13 10:38:27.205932', 'c0d6936ce52f879f1e4596f7ff589642e6c1cad22b8bd62271060e25f41439ca', 'validated', '{"audio_key":"da8eca243a87fa0e61ee2f362d4ac7e6fe9afcc02e066196153d3e58a025ff17","entity_key":"d_influence_without_authority_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c0d6936ce52f879f1e4596f7ff589642e6c1cad22b8bd62271060e25f41439ca","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/da8eca243a87fa0e61ee2f362d4ac7e6fe9afcc02e066196153d3e58a025ff17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_seminar_discussion_02:3 -> audio/generated/de-DE/dialogues/dad5686a668d7bb8a8d075c694394c977cdf62a63bd9033117919d687d9bee83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c154167-3783-5a58-babe-798c0bb77fb4', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_seminar_discussion_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ca21f4ece2147f968b0874f244b04885114251f46f66cbda733f5d81d532791'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91e974c2-ac48-5a0d-9c00-375ce220ff08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c154167-3783-5a58-babe-798c0bb77fb4', 1), '3ca21f4ece2147f968b0874f244b04885114251f46f66cbda733f5d81d532791',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dad5686a668d7bb8a8d075c694394c977cdf62a63bd9033117919d687d9bee83.mp3', 3056, '2026-09-13 10:38:27.589285', 'f17ac613e3b4b19d2aee47cf0417ed0e188418e94e88adb52e9c2bca510a25fc', 'validated', '{"audio_key":"dad5686a668d7bb8a8d075c694394c977cdf62a63bd9033117919d687d9bee83","entity_key":"d_academic_seminar_discussion_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f17ac613e3b4b19d2aee47cf0417ed0e188418e94e88adb52e9c2bca510a25fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dad5686a668d7bb8a8d075c694394c977cdf62a63bd9033117919d687d9bee83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_01:3 -> audio/generated/de-DE/dialogues/dba66a11d9093b7a1a4ac207bfbaeb625d71f9d6c8152b0ea5f2a16fddc2b7ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90f9f125-53c5-51dd-b2de-4086e86a4d3a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd8327123140d8a9841d98a5140049ab6d48b8f64c7d5fa24ccf8a8d424f1ef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2535ed95-778b-53b0-915c-34137339d6d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90f9f125-53c5-51dd-b2de-4086e86a4d3a', 1), 'cd8327123140d8a9841d98a5140049ab6d48b8f64c7d5fa24ccf8a8d424f1ef0',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dba66a11d9093b7a1a4ac207bfbaeb625d71f9d6c8152b0ea5f2a16fddc2b7ab.mp3', 4022, '2026-09-13 10:38:28.509624', '55b3655f35b97f8c64e3d133f614878eb7b474737d795bf42477cb363f03a102', 'validated', '{"audio_key":"dba66a11d9093b7a1a4ac207bfbaeb625d71f9d6c8152b0ea5f2a16fddc2b7ab","entity_key":"d_administrative_appeals_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"55b3655f35b97f8c64e3d133f614878eb7b474737d795bf42477cb363f03a102","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/dba66a11d9093b7a1a4ac207bfbaeb625d71f9d6c8152b0ea5f2a16fddc2b7ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_02:4 -> audio/generated/de-DE/dialogues/e0ef419ef5084db8a3bb745f683d59bcfee64a3082dfa7b44a34c1f28bc45fd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6d1a3d3-5d59-5c2b-8900-31c49a18470e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c53693b637235b8210041069aa99e6dfd06e4407b698c34cc55b68d11836c80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a057c24b-75e4-5aa5-b430-0b662c11a030', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6d1a3d3-5d59-5c2b-8900-31c49a18470e', 1), '8c53693b637235b8210041069aa99e6dfd06e4407b698c34cc55b68d11836c80',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e0ef419ef5084db8a3bb745f683d59bcfee64a3082dfa7b44a34c1f28bc45fd5.mp3', 3291, '2026-09-13 10:38:28.823734', '3da03d892d8c36720c103da08b167c9177a170941a4142e281f39f9488fc23ca', 'validated', '{"audio_key":"e0ef419ef5084db8a3bb745f683d59bcfee64a3082dfa7b44a34c1f28bc45fd5","entity_key":"d_civic_decision_capstone_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3da03d892d8c36720c103da08b167c9177a170941a4142e281f39f9488fc23ca","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e0ef419ef5084db8a3bb745f683d59bcfee64a3082dfa7b44a34c1f28bc45fd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_community_conflict_mediation_03:3 -> audio/generated/de-DE/dialogues/ea78e4a1613c0cc0282d5c6bdd43985fb6c022918aad05c279fa830aa75a58c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3127f9c8-53d4-5b70-ac25-75f2c1cf955a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_community_conflict_mediation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc724f2c95a7b70e35c28b72e6c3ca361afca874fa49da52714c38666de4a263'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f85bddd-289c-5aa7-869e-d6539d27b020', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3127f9c8-53d4-5b70-ac25-75f2c1cf955a', 1), 'cc724f2c95a7b70e35c28b72e6c3ca361afca874fa49da52714c38666de4a263',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ea78e4a1613c0cc0282d5c6bdd43985fb6c022918aad05c279fa830aa75a58c6.mp3', 4022, '2026-09-13 10:38:29.785375', '7d7fedcc96e21127c0437c251f953078bfb1bbcb29bd5f074e8f0f2634a67b60', 'validated', '{"audio_key":"ea78e4a1613c0cc0282d5c6bdd43985fb6c022918aad05c279fa830aa75a58c6","entity_key":"d_community_conflict_mediation_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d7fedcc96e21127c0437c251f953078bfb1bbcb29bd5f074e8f0f2634a67b60","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ea78e4a1613c0cc0282d5c6bdd43985fb6c022918aad05c279fa830aa75a58c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_influence_without_authority_01:3 -> audio/generated/de-DE/dialogues/ebb440b8cb693278faac500f03657ac5bb622b02569172e9ba7a613ceaaf524f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6314b4e-0915-5b76-82b8-437c5cfccaf0', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_influence_without_authority_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '788464a5bae8f89dcea9d96e186f36d794f86f2a3e6317961f04bee5aa39b42f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d846a0f-5444-5276-bfd7-7fbe8e450bd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6314b4e-0915-5b76-82b8-437c5cfccaf0', 1), '788464a5bae8f89dcea9d96e186f36d794f86f2a3e6317961f04bee5aa39b42f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ebb440b8cb693278faac500f03657ac5bb622b02569172e9ba7a613ceaaf524f.mp3', 4257, '2026-09-13 10:38:30.140100', 'fd41fa6bcdedd474c4c8e16d554efcac6ea2db528a67de0be04edd9db52c0daf', 'validated', '{"audio_key":"ebb440b8cb693278faac500f03657ac5bb622b02569172e9ba7a613ceaaf524f","entity_key":"d_influence_without_authority_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fd41fa6bcdedd474c4c8e16d554efcac6ea2db528a67de0be04edd9db52c0daf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ebb440b8cb693278faac500f03657ac5bb622b02569172e9ba7a613ceaaf524f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_02:4 -> audio/generated/de-DE/dialogues/ebf567396bbd35ad0940d3a8e3a5805358a4f1f5bf40f1f3dec3b0a25387d65d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a9ac3c2f-b104-5062-9bcc-d18d92d174c3', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '906256c00cd3ede346429b0a9bb41391d8f863488ba59470b89197fc2f73863c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65f87927-706e-5f24-802c-98ab43bae81e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a9ac3c2f-b104-5062-9bcc-d18d92d174c3', 1), '906256c00cd3ede346429b0a9bb41391d8f863488ba59470b89197fc2f73863c',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ebf567396bbd35ad0940d3a8e3a5805358a4f1f5bf40f1f3dec3b0a25387d65d.mp3', 4022, '2026-09-13 10:38:31.128283', '69dfc8e42594db87cc10b52a8ee195055143ecb7a3cd106a65d17c5e2474fe01', 'validated', '{"audio_key":"ebf567396bbd35ad0940d3a8e3a5805358a4f1f5bf40f1f3dec3b0a25387d65d","entity_key":"d_public_debate_value_conflicts_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"69dfc8e42594db87cc10b52a8ee195055143ecb7a3cd106a65d17c5e2474fe01","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ebf567396bbd35ad0940d3a8e3a5805358a4f1f5bf40f1f3dec3b0a25387d65d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ethical_tradeoffs_03:3 -> audio/generated/de-DE/dialogues/ec901bacd8a3f6ef9bc24ae15ce65e3f553dc870fdffa6f5e10dcca535e5af7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e418efe6-a9a5-5592-bbb4-78e030b3a040', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ethical_tradeoffs_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a48eec07aa16a04187cca431f157a63d335bd142d78a9e2117678f8f52b14027'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e058c581-77f3-58ad-99f3-e66679b815dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e418efe6-a9a5-5592-bbb4-78e030b3a040', 1), 'a48eec07aa16a04187cca431f157a63d335bd142d78a9e2117678f8f52b14027',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ec901bacd8a3f6ef9bc24ae15ce65e3f553dc870fdffa6f5e10dcca535e5af7b.mp3', 4623, '2026-09-13 10:38:31.575325', '05dc2d56fccb0b078c2a89b96518ab283306f544edf95619b56a43df2d5f0373', 'validated', '{"audio_key":"ec901bacd8a3f6ef9bc24ae15ce65e3f553dc870fdffa6f5e10dcca535e5af7b","entity_key":"d_ethical_tradeoffs_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"05dc2d56fccb0b078c2a89b96518ab283306f544edf95619b56a43df2d5f0373","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ec901bacd8a3f6ef9bc24ae15ce65e3f553dc870fdffa6f5e10dcca535e5af7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_01:2 -> audio/generated/de-DE/dialogues/f058485a4c9bbc5d2489a1c76c05d358afb8e25cc065d7577930e32e46d251dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('306b1ec5-218c-54d8-89d4-1ca7a17e69b4', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd253bac809e1b6a3dfaf5cbfd67cdc96682dca294357fb5bedc93f89cb83c238'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04721449-f6f1-53e4-93e3-c7806579bc8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('306b1ec5-218c-54d8-89d4-1ca7a17e69b4', 1), 'd253bac809e1b6a3dfaf5cbfd67cdc96682dca294357fb5bedc93f89cb83c238',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f058485a4c9bbc5d2489a1c76c05d358afb8e25cc065d7577930e32e46d251dd.mp3', 3944, '2026-09-13 10:38:32.413599', '6cfd473078cf0aedc69aec0a9fedacc782d0f98605629f5844958e5a0363ce84', 'validated', '{"audio_key":"f058485a4c9bbc5d2489a1c76c05d358afb8e25cc065d7577930e32e46d251dd","entity_key":"d_media_interviews_public_statements_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"6cfd473078cf0aedc69aec0a9fedacc782d0f98605629f5844958e5a0363ce84","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f058485a4c9bbc5d2489a1c76c05d358afb8e25cc065d7577930e32e46d251dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_civic_decision_capstone_03:2 -> audio/generated/de-DE/dialogues/f38c82a934c06b4e0289b3008411e0ba5e5c3c49bfaaab4cbbccb0e2a14e8b00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('222f7f62-b41b-5d86-ab64-8c720f158ef5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_civic_decision_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3a5b65cd039f76791d6767b895685241682b881bbb5a8bf80ba17d86444fd4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5707e081-bd80-52d1-b52a-ee174db76b1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('222f7f62-b41b-5d86-ab64-8c720f158ef5', 1), 'f3a5b65cd039f76791d6767b895685241682b881bbb5a8bf80ba17d86444fd4d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f38c82a934c06b4e0289b3008411e0ba5e5c3c49bfaaab4cbbccb0e2a14e8b00.mp3', 4597, '2026-09-13 10:38:32.954501', '746b0ed8ca5c59790aac1a6f164227f82180cb8093e1132d685407ec0ff78758', 'validated', '{"audio_key":"f38c82a934c06b4e0289b3008411e0ba5e5c3c49bfaaab4cbbccb0e2a14e8b00","entity_key":"d_civic_decision_capstone_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"746b0ed8ca5c59790aac1a6f164227f82180cb8093e1132d685407ec0ff78758","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f38c82a934c06b4e0289b3008411e0ba5e5c3c49bfaaab4cbbccb0e2a14e8b00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_03:1 -> audio/generated/de-DE/dialogues/f6dd9886e4cb8cb0e2b2be25586a81c58bfc0c12269293a7bb43b84ded95ac5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b10ce71-5985-5758-b6f8-4aff7b46ec04', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a96103eb21b1de332de81703b8c21a4d25984501da54f40c3b2a188c080bf245'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1912ab8f-d948-52cc-a8af-540ae36808a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b10ce71-5985-5758-b6f8-4aff7b46ec04', 1), 'a96103eb21b1de332de81703b8c21a4d25984501da54f40c3b2a188c080bf245',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6dd9886e4cb8cb0e2b2be25586a81c58bfc0c12269293a7bb43b84ded95ac5b.mp3', 3604, '2026-09-13 10:38:33.697777', '076353beac81c4596a0b94915366bbfa79f4ef89d9a3a648d5498f2e1dcd8f6d', 'validated', '{"audio_key":"f6dd9886e4cb8cb0e2b2be25586a81c58bfc0c12269293a7bb43b84ded95ac5b","entity_key":"d_media_interviews_public_statements_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"076353beac81c4596a0b94915366bbfa79f4ef89d9a3a648d5498f2e1dcd8f6d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f6dd9886e4cb8cb0e2b2be25586a81c58bfc0c12269293a7bb43b84ded95ac5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_evaluation_03:2 -> audio/generated/de-DE/dialogues/f81b51aef1ce54763c9fec6c8523df9983b3d89024f0641e70b78b1b75eab9e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0aa67627-7f0d-5666-9c76-c2176258ee34', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_evaluation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfc3b182357314a267e537c27641853891671afc470ba080710781c5ad9a78ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0baf172-6d41-5abb-82b2-d7d9f9ff5bbb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0aa67627-7f0d-5666-9c76-c2176258ee34', 1), 'cfc3b182357314a267e537c27641853891671afc470ba080710781c5ad9a78ef',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f81b51aef1ce54763c9fec6c8523df9983b3d89024f0641e70b78b1b75eab9e5.mp3', 5328, '2026-09-13 10:38:34.386089', '6e10c9cd57791bf74f187380840875519886435ff50811f044ab1ec2295df690', 'validated', '{"audio_key":"f81b51aef1ce54763c9fec6c8523df9983b3d89024f0641e70b78b1b75eab9e5","entity_key":"d_source_evaluation_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6e10c9cd57791bf74f187380840875519886435ff50811f044ab1ec2295df690","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f81b51aef1ce54763c9fec6c8523df9983b3d89024f0641e70b78b1b75eab9e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_administrative_appeals_02:4 -> audio/generated/de-DE/dialogues/fb9989047bac9decaee978c0306e7f1fcd4b8ca23195d3d33ecff934639a288c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15eb0775-288c-540d-8ad1-865e01c7577f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_administrative_appeals_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9675dff9891bfcaea05d6608497c36a21b0f75d9e9e275c127cbe76d12eb1c86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea62fd11-c41f-5c97-bf25-e0e01e356acd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15eb0775-288c-540d-8ad1-865e01c7577f', 1), '9675dff9891bfcaea05d6608497c36a21b0f75d9e9e275c127cbe76d12eb1c86',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fb9989047bac9decaee978c0306e7f1fcd4b8ca23195d3d33ecff934639a288c.mp3', 3892, '2026-09-13 10:38:34.983956', 'ef9e85633066a0455c3083005ce118df158b4ea28f356232861e9a2ce4185821', 'validated', '{"audio_key":"fb9989047bac9decaee978c0306e7f1fcd4b8ca23195d3d33ecff934639a288c","entity_key":"d_administrative_appeals_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ef9e85633066a0455c3083005ce118df158b4ea28f356232861e9a2ce4185821","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/fb9989047bac9decaee978c0306e7f1fcd4b8ca23195d3d33ecff934639a288c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_interviews_public_statements_03:4 -> audio/generated/de-DE/dialogues/fc69c09444abd3de27fe56400ec30cdaf1b470bb82c0f2c42b7a3dff4e6e6385.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72f5815d-076b-51d1-8322-e4c44c681ce9', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_interviews_public_statements_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5686f18bd1650a5f3bb303e6a9dc027f5aa401cd36b7bb56812b1917e7dc7944'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbc0e299-1149-5d5e-b89d-28a2ba2d8452', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72f5815d-076b-51d1-8322-e4c44c681ce9', 1), '5686f18bd1650a5f3bb303e6a9dc027f5aa401cd36b7bb56812b1917e7dc7944',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc69c09444abd3de27fe56400ec30cdaf1b470bb82c0f2c42b7a3dff4e6e6385.mp3', 3160, '2026-09-13 10:38:35.606287', '26e26b1ccc7c29fa214b5467a23eaabd857bee2f3d5097dacdabcbf7ad4037a8', 'validated', '{"audio_key":"fc69c09444abd3de27fe56400ec30cdaf1b470bb82c0f2c42b7a3dff4e6e6385","entity_key":"d_media_interviews_public_statements_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26e26b1ccc7c29fa214b5467a23eaabd857bee2f3d5097dacdabcbf7ad4037a8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fc69c09444abd3de27fe56400ec30cdaf1b470bb82c0f2c42b7a3dff4e6e6385.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_02:3 -> audio/generated/de-DE/dialogues/fe166bc589a5231524db2358416ca3c53a6e799aa9b894ef254c18d8d9c552d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea163dd0-fbb3-5823-b965-64a70c5ba636', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3cf74f560a5de448eb8431dcc15187e140c338ec3e4afd70def631c00a961c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62a5fed4-2bb3-52e8-acb3-d79ec3b91d4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea163dd0-fbb3-5823-b965-64a70c5ba636', 1), 'a3cf74f560a5de448eb8431dcc15187e140c338ec3e4afd70def631c00a961c9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fe166bc589a5231524db2358416ca3c53a6e799aa9b894ef254c18d8d9c552d4.mp3', 5015, '2026-09-13 10:38:36.419227', '581401a19828c8292e0ee83bfb5f372370b749b988b0d5a4aecbb5a67461d75a', 'validated', '{"audio_key":"fe166bc589a5231524db2358416ca3c53a6e799aa9b894ef254c18d8d9c552d4","entity_key":"d_public_debate_value_conflicts_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"581401a19828c8292e0ee83bfb5f372370b749b988b0d5a4aecbb5a67461d75a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fe166bc589a5231524db2358416ca3c53a6e799aa9b894ef254c18d8d9c552d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_debate_value_conflicts_03:4 -> audio/generated/de-DE/dialogues/ffe211a0b477e0653254de99b04c66d3d1aecad5202d6b5a190b8e4a7ee71a2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08a7760f-371f-514f-aa62-6cd7e4b47089', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_debate_value_conflicts_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3f1cca333f3d6f986e18cd7bfc68d38d3af95075f1d34b6ddd6bf0541becc17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53dacff6-85b7-5089-8eb8-9168993665ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08a7760f-371f-514f-aa62-6cd7e4b47089', 1), 'e3f1cca333f3d6f986e18cd7bfc68d38d3af95075f1d34b6ddd6bf0541becc17',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ffe211a0b477e0653254de99b04c66d3d1aecad5202d6b5a190b8e4a7ee71a2c.mp3', 4911, '2026-09-13 10:38:37.073482', '4e3b794f4d848fc9d1f9006123525e903b4a74006fda1c373a0eeae298f59f92', 'validated', '{"audio_key":"ffe211a0b477e0653254de99b04c66d3d1aecad5202d6b5a190b8e4a7ee71a2c","entity_key":"d_public_debate_value_conflicts_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e3b794f4d848fc9d1f9006123525e903b4a74006fda1c373a0eeae298f59f92","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ffe211a0b477e0653254de99b04c66d3d1aecad5202d6b5a190b8e4a7ee71a2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_02 -> audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b2cf3379-f86e-5a8a-b043-91c247127cec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b8af8fd6673036c905d897ff88327507160c4c87399fa5e07f530019babdc43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ef04f6c-ed66-5e30-bf71-43077bb1c411', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b2cf3379-f86e-5a8a-b043-91c247127cec', 1), '8b8af8fd6673036c905d897ff88327507160c4c87399fa5e07f530019babdc43',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3', 1201, '2026-09-13 10:38:37.421792', 'f2d3d5a041ecb5d59466de9abb815ec9019ad545dea9886391917cc05090323b', 'validated', '{"audio_key":"057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1","entity_key":"lx_influence_without_authority_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d3d5a041ecb5d59466de9abb815ec9019ad545dea9886391917cc05090323b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_02 -> audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71722d9f-55a9-5a00-a1e6-ebb0955a59fb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b8af8fd6673036c905d897ff88327507160c4c87399fa5e07f530019babdc43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16a6aa78-70f7-5ed7-875d-d00ce6131311', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71722d9f-55a9-5a00-a1e6-ebb0955a59fb', 1), '8b8af8fd6673036c905d897ff88327507160c4c87399fa5e07f530019babdc43',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3', 1201, '2026-09-13 10:38:37.421792', 'f2d3d5a041ecb5d59466de9abb815ec9019ad545dea9886391917cc05090323b', 'validated', '{"audio_key":"057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1","entity_key":"wf_influence_without_authority_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d3d5a041ecb5d59466de9abb815ec9019ad545dea9886391917cc05090323b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/057fa4d37ce0602e73d85c37dd8fd1c0b482f624d917b5cda9fe92de89e4e7d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_01 -> audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('000023ff-7789-57d1-9492-dcd74a1df356', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '237b3b03569bfcd652348a97c13057a8c9d2c8c167a390e26c8013c841ac3f80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0c44dad-99e6-50f7-82c1-668c43a1ca44', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('000023ff-7789-57d1-9492-dcd74a1df356', 1), '237b3b03569bfcd652348a97c13057a8c9d2c8c167a390e26c8013c841ac3f80',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3', 1567, '2026-09-13 10:38:38.100252', '82294121341c1ef749a1c4f8eaae556729efaac87469691330cacf699091ed25', 'validated', '{"audio_key":"05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7","entity_key":"lx_civic_decision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82294121341c1ef749a1c4f8eaae556729efaac87469691330cacf699091ed25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_01 -> audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('658d4bba-ea28-5738-a4bd-43a3316488a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '237b3b03569bfcd652348a97c13057a8c9d2c8c167a390e26c8013c841ac3f80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cacb3e2-a172-5e51-9d9e-4d87cf94b90f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('658d4bba-ea28-5738-a4bd-43a3316488a6', 1), '237b3b03569bfcd652348a97c13057a8c9d2c8c167a390e26c8013c841ac3f80',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3', 1567, '2026-09-13 10:38:38.100252', '82294121341c1ef749a1c4f8eaae556729efaac87469691330cacf699091ed25', 'validated', '{"audio_key":"05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7","entity_key":"wf_civic_decision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82294121341c1ef749a1c4f8eaae556729efaac87469691330cacf699091ed25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/05b78ddbf575b2bb1675518f581c57aa6c02543a65a897843a38cf5b63df66d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_06 -> audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c1b2cf7-8e44-54a6-a3cf-79f0f86178c8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b936ba82ebdbc54d3270198dab318bd098086f282699a05a311cc0731fa2ac1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb1639d6-b1f1-5e8c-83c5-3bb60126301f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c1b2cf7-8e44-54a6-a3cf-79f0f86178c8', 1), '7b936ba82ebdbc54d3270198dab318bd098086f282699a05a311cc0731fa2ac1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3', 1201, '2026-09-13 10:38:38.416257', '9613dffa8aea76786baee039b8d6a72d6a61c0f96c5bad123d0f7bcfe18fec83', 'validated', '{"audio_key":"09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575","entity_key":"lx_civic_decision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9613dffa8aea76786baee039b8d6a72d6a61c0f96c5bad123d0f7bcfe18fec83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_06 -> audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f04fb7be-587d-528c-b9ce-1e2e904bce95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b936ba82ebdbc54d3270198dab318bd098086f282699a05a311cc0731fa2ac1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4c60fd7-e3a4-5879-88de-60f1d6819a57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f04fb7be-587d-528c-b9ce-1e2e904bce95', 1), '7b936ba82ebdbc54d3270198dab318bd098086f282699a05a311cc0731fa2ac1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3', 1201, '2026-09-13 10:38:38.416257', '9613dffa8aea76786baee039b8d6a72d6a61c0f96c5bad123d0f7bcfe18fec83', 'validated', '{"audio_key":"09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575","entity_key":"wf_civic_decision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9613dffa8aea76786baee039b8d6a72d6a61c0f96c5bad123d0f7bcfe18fec83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09061d5e720ce7c426fdb4740b4c4a7ff83b41a124e35871dff9d0aa4d041575.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_academic_seminar_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('220d8061-4df5-5da2-9563-b4a7b672d328', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcd94711-9089-5862-962d-a9dd28ddebaa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('220d8061-4df5-5da2-9563-b4a7b672d328', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_academic_seminar_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_media_interviews_public_statements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48715c5c-358e-52ce-8da0-4a1b3482c3d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d50ed930-8c25-5252-a394-6716a9333eb1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48715c5c-358e-52ce-8da0-4a1b3482c3d4', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_media_interviews_public_statements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_03 -> audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5f6a8dfb-2ca4-54aa-a1e0-5abc406cb72a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a799251fa8a28c5abd6bb369a3429ca6cab08aa700d69201f8317ad127ef1d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40fc0c49-dc0f-5551-9752-cd383985a425', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5f6a8dfb-2ca4-54aa-a1e0-5abc406cb72a', 1), '2a799251fa8a28c5abd6bb369a3429ca6cab08aa700d69201f8317ad127ef1d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3', 1697, '2026-09-13 10:38:39.152469', '7bed480eda098d2e208ef16c05752ccfa3c88100f2131418ced9c49447dc6107', 'validated', '{"audio_key":"0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f","entity_key":"lx_interdisciplinary_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bed480eda098d2e208ef16c05752ccfa3c88100f2131418ced9c49447dc6107","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_03 -> audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7819af6-d32d-506f-aad8-da955525ce15', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a799251fa8a28c5abd6bb369a3429ca6cab08aa700d69201f8317ad127ef1d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('405032f8-db17-5c4d-8b78-e4a1c6d6cf2e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7819af6-d32d-506f-aad8-da955525ce15', 1), '2a799251fa8a28c5abd6bb369a3429ca6cab08aa700d69201f8317ad127ef1d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3', 1697, '2026-09-13 10:38:39.152469', '7bed480eda098d2e208ef16c05752ccfa3c88100f2131418ced9c49447dc6107', 'validated', '{"audio_key":"0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f","entity_key":"wf_interdisciplinary_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bed480eda098d2e208ef16c05752ccfa3c88100f2131418ced9c49447dc6107","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d450cf7770d951e6670f391195736ad091419fbc706c152f3402f9a6a868e7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_04 -> audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c173dd65-f516-5b19-95a3-c75c86409c85', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c41b816c64c24c42ce623a24833501cd19ba2c1ac8e5641c84fcdc4cefeb3b91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a33de68-2061-5439-95a3-3fc09ab3c132', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c173dd65-f516-5b19-95a3-c75c86409c85', 1), 'c41b816c64c24c42ce623a24833501cd19ba2c1ac8e5641c84fcdc4cefeb3b91',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3', 1253, '2026-09-13 10:38:39.423095', '95be30057add0795a3a88260fec0f4b18dc5ccfbd613a9ceab20a164efb6e7ee', 'validated', '{"audio_key":"10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80","entity_key":"lx_source_evaluation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95be30057add0795a3a88260fec0f4b18dc5ccfbd613a9ceab20a164efb6e7ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_04 -> audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abe80850-4393-5c63-8cda-1b823d5d2948', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c41b816c64c24c42ce623a24833501cd19ba2c1ac8e5641c84fcdc4cefeb3b91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab2f6bee-c924-5f41-87d3-84b2287836ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abe80850-4393-5c63-8cda-1b823d5d2948', 1), 'c41b816c64c24c42ce623a24833501cd19ba2c1ac8e5641c84fcdc4cefeb3b91',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3', 1253, '2026-09-13 10:38:39.423095', '95be30057add0795a3a88260fec0f4b18dc5ccfbd613a9ceab20a164efb6e7ee', 'validated', '{"audio_key":"10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80","entity_key":"wf_source_evaluation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95be30057add0795a3a88260fec0f4b18dc5ccfbd613a9ceab20a164efb6e7ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/10f453ef599c299d3bd41c8e8083437f0ec1d382970e903692e910357b6d4b80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_05 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_source_evaluation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_05 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97257d62-421f-52c0-b8e8-bfab493e980c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d24d8e25-2c13-54b0-8776-73becc046f60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97257d62-421f-52c0-b8e8-bfab493e980c', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_source_evaluation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_01 -> audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a3b65bd6-40e1-565d-b505-62c8fc1128c1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a95063546f58719dbee41efb2638918067c98cbf4498f1c79cb30e8ca1dc1883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('740f6172-3937-5f14-9243-ea1ee464c06a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a3b65bd6-40e1-565d-b505-62c8fc1128c1', 1), 'a95063546f58719dbee41efb2638918067c98cbf4498f1c79cb30e8ca1dc1883',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3', 1280, '2026-09-13 10:38:40.136178', '45cd66e79938a475f218d6fb5f5f3d8ec5764b74bc397321779d2cc651011b8e', 'validated', '{"audio_key":"165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9","entity_key":"lx_public_debate_value_conflicts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45cd66e79938a475f218d6fb5f5f3d8ec5764b74bc397321779d2cc651011b8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_01 -> audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('299f7eb6-3d9e-5d58-a02e-ea9262db2713', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a95063546f58719dbee41efb2638918067c98cbf4498f1c79cb30e8ca1dc1883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae0dcab2-fffb-5333-975f-e8123c3e87c5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('299f7eb6-3d9e-5d58-a02e-ea9262db2713', 1), 'a95063546f58719dbee41efb2638918067c98cbf4498f1c79cb30e8ca1dc1883',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3', 1280, '2026-09-13 10:38:40.136178', '45cd66e79938a475f218d6fb5f5f3d8ec5764b74bc397321779d2cc651011b8e', 'validated', '{"audio_key":"165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9","entity_key":"wf_public_debate_value_conflicts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45cd66e79938a475f218d6fb5f5f3d8ec5764b74bc397321779d2cc651011b8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/165f9f3cd7d6098e59a100cfa7f0643dfe986b87b0f69bd2fcc1471bb7e2bee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_01 -> audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6bfa72e5-1219-504c-aac3-f9fe59e1ade9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b76d1060588dd044b483652b1d702b4236e604da86976d49ffb93455ae298eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f63ca8ec-ef4f-54e7-9d1b-efedb4d62fc8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6bfa72e5-1219-504c-aac3-f9fe59e1ade9', 1), '0b76d1060588dd044b483652b1d702b4236e604da86976d49ffb93455ae298eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3', 1018, '2026-09-13 10:38:40.404251', '63de2322d146d4c1986fd701e98c6d3cf31b49b88eac3563747c0078a7965417', 'validated', '{"audio_key":"174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28","entity_key":"lx_ethical_tradeoffs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63de2322d146d4c1986fd701e98c6d3cf31b49b88eac3563747c0078a7965417","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_01 -> audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4ea71d0-5259-526c-b893-97b779639f06', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b76d1060588dd044b483652b1d702b4236e604da86976d49ffb93455ae298eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('376abd6e-0a86-5634-b4db-666dbe270a28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4ea71d0-5259-526c-b893-97b779639f06', 1), '0b76d1060588dd044b483652b1d702b4236e604da86976d49ffb93455ae298eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3', 1018, '2026-09-13 10:38:40.404251', '63de2322d146d4c1986fd701e98c6d3cf31b49b88eac3563747c0078a7965417', 'validated', '{"audio_key":"174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28","entity_key":"wf_ethical_tradeoffs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63de2322d146d4c1986fd701e98c6d3cf31b49b88eac3563747c0078a7965417","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/174e2948b5442918e25c7bfdfef5d877be32c64b598d976cd737885025861c28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_06 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba9cf499-ea9f-5bf2-86d5-1cd4e4f3e90c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"lx_interdisciplinary_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_06 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('989844f6-72f4-50c2-961b-9dc432dbf04f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f2aedf5-b87d-57e5-be42-80c5578928e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('989844f6-72f4-50c2-961b-9dc432dbf04f', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"wf_interdisciplinary_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_01 -> audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a61a4778-cd96-5354-ac6d-fb83ce614e2b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1f57747-1873-5d8d-b3c3-f2d388dd813f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a61a4778-cd96-5354-ac6d-fb83ce614e2b', 1), '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3', 1201, '2026-09-13 08:32:24.115387', 'f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600', 'validated', '{"audio_key":"2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792","entity_key":"lx_administrative_appeals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_01 -> audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4cc227b2-e986-5772-8bfa-4da4af42abb0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0847647b-61b4-5ff0-9eb9-8bb5e6d7eb3f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4cc227b2-e986-5772-8bfa-4da4af42abb0', 1), '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3', 1201, '2026-09-13 08:32:24.115387', 'f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600', 'validated', '{"audio_key":"2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792","entity_key":"wf_administrative_appeals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_public_debate_value_conflicts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e25a02c-c44a-5717-9a79-56f4bd75d792', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47aa4ea9-0c47-5aeb-8a36-e42685492d0d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e25a02c-c44a-5717-9a79-56f4bd75d792', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_public_debate_value_conflicts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_03 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ac9b86-d70b-58c5-bd3b-2809e05ad52d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"lx_administrative_appeals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_03 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('521c75bd-1800-574c-a93a-0b208d7d2691', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ef456a0-7b4d-5b5d-a792-07cf1efff9f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('521c75bd-1800-574c-a93a-0b208d7d2691', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"wf_administrative_appeals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_02 -> audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9475036-87d4-502d-ac21-20e513a77cb1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cf62e4f-d08a-55cd-9b62-feeffdb9da45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9475036-87d4-502d-ac21-20e513a77cb1', 1), '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3', 1201, '2026-09-13 10:21:15.979109', '924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e', 'validated', '{"audio_key":"33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3","entity_key":"lx_media_interviews_public_statements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_02 -> audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2ef5381-fdd8-5be1-92e7-0b69293609df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6964d32b-a904-5e47-9e5c-0a5b329d1417', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2ef5381-fdd8-5be1-92e7-0b69293609df', 1), '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3', 1201, '2026-09-13 10:21:15.979109', '924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e', 'validated', '{"audio_key":"33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3","entity_key":"wf_media_interviews_public_statements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_06 -> audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('221e7a17-104c-513f-83a5-a26c6f56d761', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f04b0669991054a3279e5e712cb1246383b36612fd9800b222a39996cab1e3bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a36fce4e-fa44-5f15-8177-02984901dc7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('221e7a17-104c-513f-83a5-a26c6f56d761', 1), 'f04b0669991054a3279e5e712cb1246383b36612fd9800b222a39996cab1e3bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3', 1280, '2026-09-13 10:38:41.152303', '6c3303848949f544a8e10a31fba84aed787904c5c58c42a829c4cb9e9dac3e33', 'validated', '{"audio_key":"3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923","entity_key":"lx_media_interviews_public_statements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c3303848949f544a8e10a31fba84aed787904c5c58c42a829c4cb9e9dac3e33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_06 -> audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d1e5ee4a-7139-58c3-93e0-e101459b1ceb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f04b0669991054a3279e5e712cb1246383b36612fd9800b222a39996cab1e3bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df029a23-68ad-50be-834b-67d6d1cd7167', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d1e5ee4a-7139-58c3-93e0-e101459b1ceb', 1), 'f04b0669991054a3279e5e712cb1246383b36612fd9800b222a39996cab1e3bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3', 1280, '2026-09-13 10:38:41.152303', '6c3303848949f544a8e10a31fba84aed787904c5c58c42a829c4cb9e9dac3e33', 'validated', '{"audio_key":"3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923","entity_key":"wf_media_interviews_public_statements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c3303848949f544a8e10a31fba84aed787904c5c58c42a829c4cb9e9dac3e33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3b354eb56c0ed44e374a756f373f23f476d360b10ca28cfc5542f1969251b923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_05 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc32be3-dc4c-5e4f-887b-c9062f3cbb19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"lx_interdisciplinary_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_05 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d095ba8-1224-57b7-a069-d64443463f69', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01f765a2-a87c-54ef-b264-26aad1d0e6eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d095ba8-1224-57b7-a069-d64443463f69', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"wf_interdisciplinary_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_05 -> audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d539c837-c42e-59b1-8d3d-fd438f3a7fdc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31b29f5174a2a031b2f79a2b325c64dfc095c3c5bb946158f24a45b2c27b7da5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30eb50f2-7bd9-51cc-9dc2-c908a16100c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d539c837-c42e-59b1-8d3d-fd438f3a7fdc', 1), '31b29f5174a2a031b2f79a2b325c64dfc095c3c5bb946158f24a45b2c27b7da5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3', 1280, '2026-09-13 10:38:42.173242', '2ff9a8b4f19838196f9cbdc48539b52b43ad9d380fef98a41b1b41968aca9ad5', 'validated', '{"audio_key":"4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f","entity_key":"lx_civic_decision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ff9a8b4f19838196f9cbdc48539b52b43ad9d380fef98a41b1b41968aca9ad5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_05 -> audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7013d76b-46ab-5010-bc99-983f4d320f65', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31b29f5174a2a031b2f79a2b325c64dfc095c3c5bb946158f24a45b2c27b7da5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93ff76ca-a78e-5d83-a7a8-5011c5b8135c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7013d76b-46ab-5010-bc99-983f4d320f65', 1), '31b29f5174a2a031b2f79a2b325c64dfc095c3c5bb946158f24a45b2c27b7da5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3', 1280, '2026-09-13 10:38:42.173242', '2ff9a8b4f19838196f9cbdc48539b52b43ad9d380fef98a41b1b41968aca9ad5', 'validated', '{"audio_key":"4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f","entity_key":"wf_civic_decision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ff9a8b4f19838196f9cbdc48539b52b43ad9d380fef98a41b1b41968aca9ad5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4342beff3690a0f7b13622330240c88107458fdd29728e594dcb0bf8c842a15f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_06 -> audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8667dd2-489b-569b-920e-f38c945f5efc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89a87a98dad6e11d0907f9da5ab0a1210c3ffa3cec82e0a9304a672bbeca5bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73db680c-1565-55bc-8d33-1f728fe986c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8667dd2-489b-569b-920e-f38c945f5efc', 1), '89a87a98dad6e11d0907f9da5ab0a1210c3ffa3cec82e0a9304a672bbeca5bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3', 1253, '2026-09-13 10:38:42.604275', '2b8f7fbf223994639e8b363082425a6a64a360c9a7046a9631f8da244efee22e', 'validated', '{"audio_key":"4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14","entity_key":"lx_community_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b8f7fbf223994639e8b363082425a6a64a360c9a7046a9631f8da244efee22e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_06 -> audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('755d4572-526c-5af6-9d16-ec542dc2df9a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89a87a98dad6e11d0907f9da5ab0a1210c3ffa3cec82e0a9304a672bbeca5bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9eddc189-6eac-560f-9168-fd3a20fb43af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('755d4572-526c-5af6-9d16-ec542dc2df9a', 1), '89a87a98dad6e11d0907f9da5ab0a1210c3ffa3cec82e0a9304a672bbeca5bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3', 1253, '2026-09-13 10:38:42.604275', '2b8f7fbf223994639e8b363082425a6a64a360c9a7046a9631f8da244efee22e', 'validated', '{"audio_key":"4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14","entity_key":"wf_community_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b8f7fbf223994639e8b363082425a6a64a360c9a7046a9631f8da244efee22e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf72a5f150db8350f8b8a36d49d32f5e38739749c28dd07f1945e93e01dcc14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_06 -> audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c8df309-6796-5a2d-8081-2c884a016afa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31f0c23e-e2b5-5272-b9d6-744955717bf8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c8df309-6796-5a2d-8081-2c884a016afa', 1), '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3', 1149, '2026-09-13 07:53:14.555951', 'b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23', 'validated', '{"audio_key":"4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5","entity_key":"lx_source_evaluation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_06 -> audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99c73e90-3e3f-5e91-93b4-85fb491d6670', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ccc028e-c79a-5106-a13f-f2dca8b968ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99c73e90-3e3f-5e91-93b4-85fb491d6670', 1), '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3', 1149, '2026-09-13 07:53:14.555951', 'b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23', 'validated', '{"audio_key":"4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5","entity_key":"wf_source_evaluation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_03 -> audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a718706-b79d-53f8-8850-8b3f19514077', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '514fce97d25723d5c4fba35c38a0147f8c7af1722fb7e616ece3c1a7abf34c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d859648-a14b-5bde-953e-546bc5b3b67c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a718706-b79d-53f8-8850-8b3f19514077', 1), '514fce97d25723d5c4fba35c38a0147f8c7af1722fb7e616ece3c1a7abf34c5c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3', 1149, '2026-09-13 10:38:43.158023', '1bfe23076e8eaa9ce22122b28a39b19f7b23a1c7bcdf567983d25835c8a539b5', 'validated', '{"audio_key":"4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985","entity_key":"lx_source_evaluation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bfe23076e8eaa9ce22122b28a39b19f7b23a1c7bcdf567983d25835c8a539b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_03 -> audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad0fb44d-5027-5eb2-adb2-78368ffcf97c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '514fce97d25723d5c4fba35c38a0147f8c7af1722fb7e616ece3c1a7abf34c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89d78753-d8eb-5681-a033-30d409f03ccc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad0fb44d-5027-5eb2-adb2-78368ffcf97c', 1), '514fce97d25723d5c4fba35c38a0147f8c7af1722fb7e616ece3c1a7abf34c5c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3', 1149, '2026-09-13 10:38:43.158023', '1bfe23076e8eaa9ce22122b28a39b19f7b23a1c7bcdf567983d25835c8a539b5', 'validated', '{"audio_key":"4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985","entity_key":"wf_source_evaluation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bfe23076e8eaa9ce22122b28a39b19f7b23a1c7bcdf567983d25835c8a539b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c5cda7b1eaa11391641cc129e7f161aca8301d53baec116959091a3cf36b985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_06 -> audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50aeb366-6f8d-5614-b282-d8c1bb57fbca', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '303fdb026a120b80a20f59ed5b4ea89419c74ff58c35e5af01da75cea3a1049b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d682d34-6007-5324-8b9f-58561f00d6b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50aeb366-6f8d-5614-b282-d8c1bb57fbca', 1), '303fdb026a120b80a20f59ed5b4ea89419c74ff58c35e5af01da75cea3a1049b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3', 1071, '2026-09-13 10:38:43.581597', 'b28844762d94e70e7026e321a7f0d9ec195c97e4bd54d584583303ec6a44ae59', 'validated', '{"audio_key":"4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144","entity_key":"lx_ethical_tradeoffs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b28844762d94e70e7026e321a7f0d9ec195c97e4bd54d584583303ec6a44ae59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_06 -> audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90201caa-b155-5f6b-8673-e2855f4e220e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '303fdb026a120b80a20f59ed5b4ea89419c74ff58c35e5af01da75cea3a1049b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11a11b53-a855-5beb-a465-3a0a14245cfb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90201caa-b155-5f6b-8673-e2855f4e220e', 1), '303fdb026a120b80a20f59ed5b4ea89419c74ff58c35e5af01da75cea3a1049b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3', 1071, '2026-09-13 10:38:43.581597', 'b28844762d94e70e7026e321a7f0d9ec195c97e4bd54d584583303ec6a44ae59', 'validated', '{"audio_key":"4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144","entity_key":"wf_ethical_tradeoffs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b28844762d94e70e7026e321a7f0d9ec195c97e4bd54d584583303ec6a44ae59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d3341ce5070594c9fd4fcdb5b881e1036c9d3def7cbe774444ce875f85c9144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_05 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('219efc04-7f40-5cd6-872b-2958d68d7b60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"lx_ethical_tradeoffs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_05 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77a8b02d-fb25-54e7-b5b5-0c3dffa620d5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d98b2be1-57a0-550a-b217-7025ae745185', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77a8b02d-fb25-54e7-b5b5-0c3dffa620d5', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"wf_ethical_tradeoffs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_02 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d53367f7-8170-5e47-9b0a-726e7b1ef5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"lx_source_evaluation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_02 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2562edce-de38-593b-8402-f56083df75d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5753f38-3286-5554-9051-6378041e6aee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2562edce-de38-593b-8402-f56083df75d3', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"wf_source_evaluation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_05 -> audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6db0d7c7-7ef7-5651-8ab5-cecbd03d2abc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230b62e669451fb24c8ba2cc46dcda3358b3e417cb32d35a8d46fde71cf26fa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de54b303-2817-5801-b425-42c95544607e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6db0d7c7-7ef7-5651-8ab5-cecbd03d2abc', 1), '230b62e669451fb24c8ba2cc46dcda3358b3e417cb32d35a8d46fde71cf26fa2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3', 1097, '2026-09-13 10:38:44.161758', 'e2e5a43b7d7715b2d3f1a8ed289d69bcecfbc6bdaa78c4afc0570e8ecb0e79d8', 'validated', '{"audio_key":"5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed","entity_key":"lx_community_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2e5a43b7d7715b2d3f1a8ed289d69bcecfbc6bdaa78c4afc0570e8ecb0e79d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_05 -> audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4dfa405-df5a-5b89-8216-832f0aa20dfa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230b62e669451fb24c8ba2cc46dcda3358b3e417cb32d35a8d46fde71cf26fa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59dd3de5-f598-5420-b325-4caffbae1f9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4dfa405-df5a-5b89-8216-832f0aa20dfa', 1), '230b62e669451fb24c8ba2cc46dcda3358b3e417cb32d35a8d46fde71cf26fa2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3', 1097, '2026-09-13 10:38:44.161758', 'e2e5a43b7d7715b2d3f1a8ed289d69bcecfbc6bdaa78c4afc0570e8ecb0e79d8', 'validated', '{"audio_key":"5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed","entity_key":"wf_community_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2e5a43b7d7715b2d3f1a8ed289d69bcecfbc6bdaa78c4afc0570e8ecb0e79d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5cf83f159501d556ec0ffeeba7e30b660176416e442625a8bf15287b374c9bed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_03 -> audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cf4c339d-8cfd-5989-8281-f475d644785d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e48183d5a87dd861663602e871b281f61b6eccc63a8b3669960f5a27d2aaa01c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ac0a184-d6f3-5b7b-b3a0-3b7e97201d6f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cf4c339d-8cfd-5989-8281-f475d644785d', 1), 'e48183d5a87dd861663602e871b281f61b6eccc63a8b3669960f5a27d2aaa01c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3', 1253, '2026-09-13 10:38:44.666431', '0b06e7915a7c02866bc342eb9923075945b53131029de59ff61dd1d999dca96b', 'validated', '{"audio_key":"5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9","entity_key":"lx_ethical_tradeoffs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b06e7915a7c02866bc342eb9923075945b53131029de59ff61dd1d999dca96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_03 -> audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('606046de-8881-583d-b934-3a24f8e7632e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e48183d5a87dd861663602e871b281f61b6eccc63a8b3669960f5a27d2aaa01c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49b3172e-c0fe-5a17-9fd9-0d0a23571eb0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('606046de-8881-583d-b934-3a24f8e7632e', 1), 'e48183d5a87dd861663602e871b281f61b6eccc63a8b3669960f5a27d2aaa01c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3', 1253, '2026-09-13 10:38:44.666431', '0b06e7915a7c02866bc342eb9923075945b53131029de59ff61dd1d999dca96b', 'validated', '{"audio_key":"5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9","entity_key":"wf_ethical_tradeoffs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b06e7915a7c02866bc342eb9923075945b53131029de59ff61dd1d999dca96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dfd57c8e57ffeb1f539b6f1278b41da61dc089c922c5be1cc35a45a053074b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_02 -> audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('140b2579-b520-56ca-bd30-840271fbbd04', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff0b83d6874f5714d92f5300b13d9280a21a8574a3d0239d264cfb87e5e3b77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2da2184-7ce5-50a6-b33d-4dfd51ac6cc9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('140b2579-b520-56ca-bd30-840271fbbd04', 1), 'eff0b83d6874f5714d92f5300b13d9280a21a8574a3d0239d264cfb87e5e3b77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3', 1071, '2026-09-13 10:38:45.165656', '1831b1d7001f2c8d805620cb3903400932b1dbb33a5281b551128491ae6862fb', 'validated', '{"audio_key":"5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d","entity_key":"lx_community_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1831b1d7001f2c8d805620cb3903400932b1dbb33a5281b551128491ae6862fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_02 -> audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6fc33ca0-528c-5ee5-a88a-16f2d04f32bb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff0b83d6874f5714d92f5300b13d9280a21a8574a3d0239d264cfb87e5e3b77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3734dbb-78a3-5644-9c20-4018db9664c8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6fc33ca0-528c-5ee5-a88a-16f2d04f32bb', 1), 'eff0b83d6874f5714d92f5300b13d9280a21a8574a3d0239d264cfb87e5e3b77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3', 1071, '2026-09-13 10:38:45.165656', '1831b1d7001f2c8d805620cb3903400932b1dbb33a5281b551128491ae6862fb', 'validated', '{"audio_key":"5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d","entity_key":"wf_community_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1831b1d7001f2c8d805620cb3903400932b1dbb33a5281b551128491ae6862fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5f3b7186f771182a3c046d9305dd35cd1c18cc78dfe8738e1d65c067e4c3526d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c4c3a8e-958d-56ca-b95e-1506b839bf72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"lx_media_interviews_public_statements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('65675e4a-6e6d-5b8b-8b68-954da4efd435', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aed31fd3-565c-5d8f-90ac-6e9a47d8e3a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('65675e4a-6e6d-5b8b-8b68-954da4efd435', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"wf_media_interviews_public_statements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aff4bb1-be43-5c9e-8fc9-aa79c6e4f7ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"lx_community_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2aaac8f4-d681-599c-84c2-0226bdfa131f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cff81a53-c3a9-5046-b9ab-5c696349deaa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2aaac8f4-d681-599c-84c2-0226bdfa131f', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"wf_community_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_05 -> audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3120080d-0116-5f3f-99d0-d382f8dd2af2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f91ea6d1-65b1-5cce-8efa-6ea398ab074b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3120080d-0116-5f3f-99d0-d382f8dd2af2', 1), 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3', 1097, '2026-09-13 08:47:59.692915', '4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3', 'validated', '{"audio_key":"6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54","entity_key":"lx_administrative_appeals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_05 -> audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3439322d-c6fa-543d-a673-11c423783b31', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4724ebc2-3138-5b18-ad1e-fd99565af4da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3439322d-c6fa-543d-a673-11c423783b31', 1), 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3', 1097, '2026-09-13 08:47:59.692915', '4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3', 'validated', '{"audio_key":"6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54","entity_key":"wf_administrative_appeals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_02 -> audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d3a2edb-62de-5404-9789-a21205f089e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5738ed2d-d1da-5f42-8d01-d52f601de21f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d3a2edb-62de-5404-9789-a21205f089e1', 1), '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3', 1071, '2026-09-13 07:53:18.846988', 'dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9', 'validated', '{"audio_key":"737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4","entity_key":"lx_academic_seminar_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_02 -> audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aa3be48b-d136-5c59-b82a-1bde1e47d877', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52504196-12af-5c76-9af0-04635975f56f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aa3be48b-d136-5c59-b82a-1bde1e47d877', 1), '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3', 1071, '2026-09-13 07:53:18.846988', 'dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9', 'validated', '{"audio_key":"737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4","entity_key":"wf_academic_seminar_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_06 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('076e87b4-e8a8-5f0e-bc68-094a2af5aea2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"lx_public_debate_value_conflicts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_06 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c71e664e-528a-5533-9ed9-00daf2258ba0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('246836bc-c17c-5ff7-a62f-586886e3df97', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c71e664e-528a-5533-9ed9-00daf2258ba0', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"wf_public_debate_value_conflicts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_06 -> audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28125ec9-16dd-5569-aa20-3baf81351614', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49829b65e0616f0747a969376bc7cd48391976870851b16b44fa631a1aad8bfd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d019362-df9c-5e6b-862c-d8d7bba336f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28125ec9-16dd-5569-aa20-3baf81351614', 1), '49829b65e0616f0747a969376bc7cd48391976870851b16b44fa631a1aad8bfd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3', 966, '2026-09-13 10:38:45.694549', '96e7f22255a9b5688ed2f4b79114410e950616a0cf407b6faed0bfe9dd3f25cc', 'validated', '{"audio_key":"7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a","entity_key":"lx_influence_without_authority_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96e7f22255a9b5688ed2f4b79114410e950616a0cf407b6faed0bfe9dd3f25cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_06 -> audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('703a96f9-41b4-54f9-87a6-95a1b392ec48', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49829b65e0616f0747a969376bc7cd48391976870851b16b44fa631a1aad8bfd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ecba86c-fa99-50d9-8db5-d504888972cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('703a96f9-41b4-54f9-87a6-95a1b392ec48', 1), '49829b65e0616f0747a969376bc7cd48391976870851b16b44fa631a1aad8bfd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3', 966, '2026-09-13 10:38:45.694549', '96e7f22255a9b5688ed2f4b79114410e950616a0cf407b6faed0bfe9dd3f25cc', 'validated', '{"audio_key":"7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a","entity_key":"wf_influence_without_authority_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96e7f22255a9b5688ed2f4b79114410e950616a0cf407b6faed0bfe9dd3f25cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a3649e30eebd2ee1d26f469061208b83c3a187be192c0699a1a4d561b031a7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_06 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('361c079f-d85c-519d-b931-34e1d1ecdb08', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"lx_academic_seminar_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_06 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1f976c6-b185-5ca3-a0fc-fe37847f7324', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06442006-fb5c-5504-96a0-0ea7d57c277b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1f976c6-b185-5ca3-a0fc-fe37847f7324', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"wf_academic_seminar_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_04 -> audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1fc3f1da-cf5d-52ca-95d3-58a67c56ab73', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6fd33f98b1e307183799596e20b80778d95cdd8f07051393688372c32b10129'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d66c979-590a-51e2-8f60-8fa5fc56e721', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1fc3f1da-cf5d-52ca-95d3-58a67c56ab73', 1), 'b6fd33f98b1e307183799596e20b80778d95cdd8f07051393688372c32b10129',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3', 1515, '2026-09-13 10:38:46.184350', 'a89d7ecfae8bf0d5024d064e6391df1b191af8280200cabd663238b872436bcb', 'validated', '{"audio_key":"7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5","entity_key":"lx_civic_decision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a89d7ecfae8bf0d5024d064e6391df1b191af8280200cabd663238b872436bcb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_04 -> audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f388355a-1ee6-5fdf-bf34-0fb214d19b33', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6fd33f98b1e307183799596e20b80778d95cdd8f07051393688372c32b10129'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3fa914b-2a14-5df7-b655-17223c71fea2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f388355a-1ee6-5fdf-bf34-0fb214d19b33', 1), 'b6fd33f98b1e307183799596e20b80778d95cdd8f07051393688372c32b10129',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3', 1515, '2026-09-13 10:38:46.184350', 'a89d7ecfae8bf0d5024d064e6391df1b191af8280200cabd663238b872436bcb', 'validated', '{"audio_key":"7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5","entity_key":"wf_civic_decision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a89d7ecfae8bf0d5024d064e6391df1b191af8280200cabd663238b872436bcb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7fba12d3c2d30a0f65afba9f9e6736fb35b0aa28b342b5e6575166dd528251c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_public_debate_value_conflicts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a91ba459-b623-5c40-90de-9716337a6e5c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87efd4d0-ff5c-576e-98c7-bfc65d59b045', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a91ba459-b623-5c40-90de-9716337a6e5c', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_public_debate_value_conflicts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_03 -> audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('205a07c2-79d2-5a96-92eb-c6e4f0a011a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d808188b8d754afcaed8fbd9fb98eb78b9d5a839348a7ff7fa4764816978879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cad36ff-8563-56cd-b9f7-1b9dfa985373', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('205a07c2-79d2-5a96-92eb-c6e4f0a011a0', 1), '7d808188b8d754afcaed8fbd9fb98eb78b9d5a839348a7ff7fa4764816978879',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3', 1332, '2026-09-13 10:38:46.687006', '20e49a1ec567cdb5fbc418613c8bce88e1eb445fb0cebeda20cddbc6956efb03', 'validated', '{"audio_key":"896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2","entity_key":"lx_civic_decision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20e49a1ec567cdb5fbc418613c8bce88e1eb445fb0cebeda20cddbc6956efb03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_03 -> audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3c051700-813e-5a52-95a6-fac39b178937', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d808188b8d754afcaed8fbd9fb98eb78b9d5a839348a7ff7fa4764816978879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b24f1aa5-5814-5529-8878-da06acdb73c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3c051700-813e-5a52-95a6-fac39b178937', 1), '7d808188b8d754afcaed8fbd9fb98eb78b9d5a839348a7ff7fa4764816978879',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3', 1332, '2026-09-13 10:38:46.687006', '20e49a1ec567cdb5fbc418613c8bce88e1eb445fb0cebeda20cddbc6956efb03', 'validated', '{"audio_key":"896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2","entity_key":"wf_civic_decision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20e49a1ec567cdb5fbc418613c8bce88e1eb445fb0cebeda20cddbc6956efb03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/896b308bd961cbe8f46b42dfadeebb4c64f24f5b95f3dc8729b6f78b29f23ea2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_05 -> audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('505c3bea-1f2b-50d9-bb7f-12ed773c3f80', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ffc82ee7a9ae83280f4c04653195c231d99483404d7e74b5d2d33ad550c93ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('509d4ec1-bd62-559f-80fc-a11e77cd42a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('505c3bea-1f2b-50d9-bb7f-12ed773c3f80', 1), '5ffc82ee7a9ae83280f4c04653195c231d99483404d7e74b5d2d33ad550c93ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3', 1567, '2026-09-13 10:38:47.215280', '90bdf6b7fa6924839e07e735418d851a01a7b9e260885c1a53c201f0ef0edaf8', 'validated', '{"audio_key":"8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791","entity_key":"lx_public_debate_value_conflicts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90bdf6b7fa6924839e07e735418d851a01a7b9e260885c1a53c201f0ef0edaf8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_05 -> audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4c593507-2ff1-579c-bc5a-7c63783683b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ffc82ee7a9ae83280f4c04653195c231d99483404d7e74b5d2d33ad550c93ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e176ccb-4525-544c-8d78-28489447af34', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4c593507-2ff1-579c-bc5a-7c63783683b5', 1), '5ffc82ee7a9ae83280f4c04653195c231d99483404d7e74b5d2d33ad550c93ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3', 1567, '2026-09-13 10:38:47.215280', '90bdf6b7fa6924839e07e735418d851a01a7b9e260885c1a53c201f0ef0edaf8', 'validated', '{"audio_key":"8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791","entity_key":"wf_public_debate_value_conflicts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90bdf6b7fa6924839e07e735418d851a01a7b9e260885c1a53c201f0ef0edaf8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a9269b59e44473d6bf829e9508c5d36b0efdce5392c8875e415f342bd2bf791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_04 -> audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f247ea7e-15ca-5806-a0f2-c4842b470c34', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20f098fa-fe14-5d49-b881-9bf04a009257', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f247ea7e-15ca-5806-a0f2-c4842b470c34', 1), 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3', 1097, '2026-09-13 09:41:00.399946', '21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d', 'validated', '{"audio_key":"8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af","entity_key":"lx_administrative_appeals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_04 -> audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e5e29f4-ed03-588c-bdb0-83953e694733', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80f85308-a5aa-54d9-8813-e949eda12298', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e5e29f4-ed03-588c-bdb0-83953e694733', 1), 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3', 1097, '2026-09-13 09:41:00.399946', '21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d', 'validated', '{"audio_key":"8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af","entity_key":"wf_administrative_appeals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_civic_decision_capstone_02 -> audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f7dd781-aa80-5a0f-914a-ace103208f8a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_civic_decision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d957f755ed42bd63276875e61c0ede6739ae940513590ba970e44825fae67f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e0ab1f4-de1e-5ca8-8d8e-e88ab4ec3bf0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f7dd781-aa80-5a0f-914a-ace103208f8a', 1), 'c1d957f755ed42bd63276875e61c0ede6739ae940513590ba970e44825fae67f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3', 1280, '2026-09-13 10:38:47.688329', '75db679ea2520fe0dd4bde6b2af97d183e57025f5b950d9e5454100cf5cb91d8', 'validated', '{"audio_key":"8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d","entity_key":"lx_civic_decision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75db679ea2520fe0dd4bde6b2af97d183e57025f5b950d9e5454100cf5cb91d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_civic_decision_capstone_02 -> audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8dc4f0bc-ba6e-5db1-a329-932e386c6f92', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_civic_decision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d957f755ed42bd63276875e61c0ede6739ae940513590ba970e44825fae67f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0b0461e-cb69-5322-a3af-6603ba94264e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8dc4f0bc-ba6e-5db1-a329-932e386c6f92', 1), 'c1d957f755ed42bd63276875e61c0ede6739ae940513590ba970e44825fae67f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3', 1280, '2026-09-13 10:38:47.688329', '75db679ea2520fe0dd4bde6b2af97d183e57025f5b950d9e5454100cf5cb91d8', 'validated', '{"audio_key":"8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d","entity_key":"wf_civic_decision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75db679ea2520fe0dd4bde6b2af97d183e57025f5b950d9e5454100cf5cb91d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ea0723ae2c13d8a877911a86dd0ecfa146b68dcdc9d663b83523667a1bbb58d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_debate_value_conflicts_04 -> audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43437264-51bd-54e0-ab18-49a9d4e11fc8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_debate_value_conflicts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('955f26e8-980b-5d0e-87ff-06c2d8ee08b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43437264-51bd-54e0-ab18-49a9d4e11fc8', 1), 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3', 1280, '2026-09-13 07:53:21.992388', '898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427', 'validated', '{"audio_key":"8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738","entity_key":"lx_public_debate_value_conflicts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_debate_value_conflicts_04 -> audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a7c86c58-92ee-541c-b5b3-9bde86393477', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_debate_value_conflicts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('202882ef-335b-5e6a-9233-2fbe3bc36816', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a7c86c58-92ee-541c-b5b3-9bde86393477', 1), 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3', 1280, '2026-09-13 07:53:21.992388', '898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427', 'validated', '{"audio_key":"8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738","entity_key":"wf_public_debate_value_conflicts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_06 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5663ecd3-8673-5288-96c3-97863e9fa771', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"lx_administrative_appeals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_06 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6747c5e6-1f69-5241-989d-810a29ee8161', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a2e402d-2ea8-51d9-b9d9-b95a2a7320b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6747c5e6-1f69-5241-989d-810a29ee8161', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"wf_administrative_appeals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_03 -> audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d1478954-1ebe-5027-abc6-2a52deb4a595', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adfb9562-0f1d-5b80-9514-cb8f125c6535', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d1478954-1ebe-5027-abc6-2a52deb4a595', 1), 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3', 1280, '2026-09-13 09:41:04.252565', '7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3', 'validated', '{"audio_key":"a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd","entity_key":"lx_influence_without_authority_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_03 -> audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c05c7b4a-a4c6-5be0-b63b-aae993beb72d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dca0917-6239-5d31-b50f-6411b42faa50', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c05c7b4a-a4c6-5be0-b63b-aae993beb72d', 1), 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3', 1280, '2026-09-13 09:41:04.252565', '7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3', 'validated', '{"audio_key":"a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd","entity_key":"wf_influence_without_authority_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_01 -> audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a383f134-16be-58a2-a27b-74d6893db8c4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d132cc3791eb9fff336a40f88d66bed47833b72b88f7519038c7d87b45d594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b5009eb-d035-5687-afea-af840fcb7769', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a383f134-16be-58a2-a27b-74d6893db8c4', 1), '30d132cc3791eb9fff336a40f88d66bed47833b72b88f7519038c7d87b45d594',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3', 1201, '2026-09-13 10:38:48.274115', 'ba716271eb69baff34f6f88690596ca53a4ffb6c19f169d761086c753ab4f417', 'validated', '{"audio_key":"a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1","entity_key":"lx_community_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba716271eb69baff34f6f88690596ca53a4ffb6c19f169d761086c753ab4f417","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_01 -> audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('62f751d8-0f2b-5fbf-a3be-5f21d205e0e0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d132cc3791eb9fff336a40f88d66bed47833b72b88f7519038c7d87b45d594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5c5a771-d022-5d39-9fee-ec17cea73256', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('62f751d8-0f2b-5fbf-a3be-5f21d205e0e0', 1), '30d132cc3791eb9fff336a40f88d66bed47833b72b88f7519038c7d87b45d594',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3', 1201, '2026-09-13 10:38:48.274115', 'ba716271eb69baff34f6f88690596ca53a4ffb6c19f169d761086c753ab4f417', 'validated', '{"audio_key":"a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1","entity_key":"wf_community_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba716271eb69baff34f6f88690596ca53a4ffb6c19f169d761086c753ab4f417","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a6919c76b414c628740a528ec36c0b84643e4dcbcb1fdc7c07e0034fbebae9f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_01 -> audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ccb2165f-f3e3-559b-9df6-197bae999cc1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91273d498d36840939198a595c15be1749ad54bf693637c602695124e97a2565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4a5401b-7d73-52d4-83b9-fabb3e8ecfd2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ccb2165f-f3e3-559b-9df6-197bae999cc1', 1), '91273d498d36840939198a595c15be1749ad54bf693637c602695124e97a2565',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3', 966, '2026-09-13 10:38:48.677232', 'c21c4641cee8cce94920fb80b1905087723654e366991a376d55b8ff7e82bb7a', 'validated', '{"audio_key":"a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7","entity_key":"lx_academic_seminar_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c21c4641cee8cce94920fb80b1905087723654e366991a376d55b8ff7e82bb7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_01 -> audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ac2c880d-ac71-5d70-a194-8c8b2362dcf6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91273d498d36840939198a595c15be1749ad54bf693637c602695124e97a2565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('296e8a68-6373-5f1c-96e9-f7d245b26a2b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ac2c880d-ac71-5d70-a194-8c8b2362dcf6', 1), '91273d498d36840939198a595c15be1749ad54bf693637c602695124e97a2565',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3', 966, '2026-09-13 10:38:48.677232', 'c21c4641cee8cce94920fb80b1905087723654e366991a376d55b8ff7e82bb7a', 'validated', '{"audio_key":"a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7","entity_key":"wf_academic_seminar_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c21c4641cee8cce94920fb80b1905087723654e366991a376d55b8ff7e82bb7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a9d9521e9b551376763706fb392b62b8ee950c0ee688877aea384e0ce7b426b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_02 -> audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e430be77-97fa-5ba7-8a3d-c77845225350', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a51effcbb7be75389612cc89590da845460eb4edfa99fc413e2c0ed678eaf937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f480d5e-2443-5dbe-a317-973c399b9556', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e430be77-97fa-5ba7-8a3d-c77845225350', 1), 'a51effcbb7be75389612cc89590da845460eb4edfa99fc413e2c0ed678eaf937',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3', 1149, '2026-09-13 10:38:49.285517', 'ec953f2816c55fb462505ea8b3c48ae262b41aa1a5780318844ac9ffc308fbcc', 'validated', '{"audio_key":"aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45","entity_key":"lx_interdisciplinary_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec953f2816c55fb462505ea8b3c48ae262b41aa1a5780318844ac9ffc308fbcc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_02 -> audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('761654a8-eebf-5f2b-aa4f-08f630b29b44', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a51effcbb7be75389612cc89590da845460eb4edfa99fc413e2c0ed678eaf937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4bb2806-40ad-55a9-9424-b9d6dae61101', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('761654a8-eebf-5f2b-aa4f-08f630b29b44', 1), 'a51effcbb7be75389612cc89590da845460eb4edfa99fc413e2c0ed678eaf937',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3', 1149, '2026-09-13 10:38:49.285517', 'ec953f2816c55fb462505ea8b3c48ae262b41aa1a5780318844ac9ffc308fbcc', 'validated', '{"audio_key":"aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45","entity_key":"wf_interdisciplinary_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec953f2816c55fb462505ea8b3c48ae262b41aa1a5780318844ac9ffc308fbcc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa329885a2d3571ff78a824e61e0c7eb60a7caec53aecdb1e02c13a8c6a81f45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_03 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b46ea9f-5d2d-50ff-a39b-e1d7ba913cef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"lx_academic_seminar_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_03 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3324baa-72cf-502b-be33-c9f2175e7834', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab3631e3-c979-57c5-b921-c8aa71c1e67e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3324baa-72cf-502b-be33-c9f2175e7834', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"wf_academic_seminar_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_04 -> audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70620b91-964a-5940-8493-b0cb64e287fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d2eed1b-fd01-5d51-8c49-92e5b77b6035', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70620b91-964a-5940-8493-b0cb64e287fa', 1), '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3', 1097, '2026-09-13 07:53:26.459427', '25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f', 'validated', '{"audio_key":"ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a","entity_key":"lx_influence_without_authority_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_04 -> audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2294872-f312-579a-ad31-0b0a7bfe4789', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a485c9e7-058a-5083-b07e-5fb4a7047891', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2294872-f312-579a-ad31-0b0a7bfe4789', 1), '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3', 1097, '2026-09-13 07:53:26.459427', '25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f', 'validated', '{"audio_key":"ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a","entity_key":"wf_influence_without_authority_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_evaluation_01 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_evaluation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8e60eed-96d7-5acb-a58c-cbc6a8a661d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"lx_source_evaluation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_evaluation_01 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec3b092e-bc84-52fa-9224-27f83ea7f04b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_evaluation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab4e8caf-3295-5227-8e75-29d96a663885', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec3b092e-bc84-52fa-9224-27f83ea7f04b', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"wf_source_evaluation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_04 -> audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('726048af-2188-56c6-8198-b3e5104b1c94', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '800631415493b5acee4a615c111926acef77b0a44e487b88b53397c97282a8f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('403d4279-87e2-5d5a-bc2b-76733bced7d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('726048af-2188-56c6-8198-b3e5104b1c94', 1), '800631415493b5acee4a615c111926acef77b0a44e487b88b53397c97282a8f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3', 1488, '2026-09-13 10:38:49.687634', 'a75a8dc637a091467e534fc0f0d253ca1e8b4694a0f28d97cf0502a7161dedc0', 'validated', '{"audio_key":"bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6","entity_key":"lx_interdisciplinary_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a75a8dc637a091467e534fc0f0d253ca1e8b4694a0f28d97cf0502a7161dedc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_04 -> audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17d8292c-0290-5f52-84b1-3e3fa89c55ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '800631415493b5acee4a615c111926acef77b0a44e487b88b53397c97282a8f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38230ff4-d437-5e79-bc2a-58bcdb82bef2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17d8292c-0290-5f52-84b1-3e3fa89c55ab', 1), '800631415493b5acee4a615c111926acef77b0a44e487b88b53397c97282a8f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3', 1488, '2026-09-13 10:38:49.687634', 'a75a8dc637a091467e534fc0f0d253ca1e8b4694a0f28d97cf0502a7161dedc0', 'validated', '{"audio_key":"bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6","entity_key":"wf_interdisciplinary_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a75a8dc637a091467e534fc0f0d253ca1e8b4694a0f28d97cf0502a7161dedc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bd46d17b00b5419407d3ef1bf9275eaa31641f0b5ca3f61e2c8a669b24a047d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_seminar_discussion_05 -> audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab5cb9b5-1f16-529a-a684-a7d67972bc9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_seminar_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd8b4dfa-0ed9-5080-afbf-84baab771c3c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab5cb9b5-1f16-529a-a684-a7d67972bc9d', 1), '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3', 1332, '2026-09-13 10:01:14.343838', '98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5', 'validated', '{"audio_key":"ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509","entity_key":"lx_academic_seminar_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_seminar_discussion_05 -> audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f546b3e-df97-5d38-83e4-560e1c67d7d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_seminar_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39796b3d-02e4-5132-aa6c-036820783375', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f546b3e-df97-5d38-83e4-560e1c67d7d6', 1), '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3', 1332, '2026-09-13 10:01:14.343838', '98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5', 'validated', '{"audio_key":"ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509","entity_key":"wf_academic_seminar_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_03 -> audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9966089b-da11-5eb0-95e8-123b94d60d82', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c31df5db-25e8-5fde-a44b-03d5da658a0e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9966089b-da11-5eb0-95e8-123b94d60d82', 1), '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3', 1149, '2026-09-13 10:21:29.460166', '777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3', 'validated', '{"audio_key":"d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655","entity_key":"lx_media_interviews_public_statements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_03 -> audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('942a6327-06e0-5ed3-8265-aa2b320f7058', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601c8582-1a9d-5ae8-af7f-3aa389aa1112', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('942a6327-06e0-5ed3-8265-aa2b320f7058', 1), '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3', 1149, '2026-09-13 10:21:29.460166', '777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3', 'validated', '{"audio_key":"d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655","entity_key":"wf_media_interviews_public_statements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_01 -> audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a63ff2f-f7a2-5b9d-8b34-c6d7f5c8c47b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '330d66ba5a1dd65f13815e299211cc64e2251bdb7b0d8e36adb785c18cebb918'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d585f84e-25f3-5ecc-bcd0-1cc32865410c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a63ff2f-f7a2-5b9d-8b34-c6d7f5c8c47b', 1), '330d66ba5a1dd65f13815e299211cc64e2251bdb7b0d8e36adb785c18cebb918',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3', 966, '2026-09-13 10:38:50.251593', 'fe5f3a882fa4a2549bbc29d2616fcb7630792d6d76c3c10c653bb20237c5f111', 'validated', '{"audio_key":"d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47","entity_key":"lx_influence_without_authority_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe5f3a882fa4a2549bbc29d2616fcb7630792d6d76c3c10c653bb20237c5f111","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_01 -> audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4112f2bf-6552-5eb5-802b-49d6fa3a9de2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '330d66ba5a1dd65f13815e299211cc64e2251bdb7b0d8e36adb785c18cebb918'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea115ed3-e6f9-5e27-82bc-4f97fa1f51b2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4112f2bf-6552-5eb5-802b-49d6fa3a9de2', 1), '330d66ba5a1dd65f13815e299211cc64e2251bdb7b0d8e36adb785c18cebb918',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3', 966, '2026-09-13 10:38:50.251593', 'fe5f3a882fa4a2549bbc29d2616fcb7630792d6d76c3c10c653bb20237c5f111', 'validated', '{"audio_key":"d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47","entity_key":"wf_influence_without_authority_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe5f3a882fa4a2549bbc29d2616fcb7630792d6d76c3c10c653bb20237c5f111","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d9d8155b6c05e838787b3bac2c050f96f0868fa176bb6288237c723d56131e47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_interviews_public_statements_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_interviews_public_statements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8df51b5-89a2-5c87-97da-495f77ba89ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"lx_media_interviews_public_statements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_interviews_public_statements_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4992415e-bb4c-5017-97b7-3a0dbb898af4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_interviews_public_statements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c53f5752-e492-5cef-8a14-82304962ebe5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4992415e-bb4c-5017-97b7-3a0dbb898af4', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"wf_media_interviews_public_statements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_community_conflict_mediation_03 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_community_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('158e0c8f-743e-51af-b9b8-72297acf16f1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"lx_community_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_community_conflict_mediation_03 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('05e9e4fe-8602-5591-8971-3f60ac0b4329', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_community_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('113050b6-4eee-5364-bf0a-6570345785cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('05e9e4fe-8602-5591-8971-3f60ac0b4329', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"wf_community_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_04 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6c041ff-4d52-5dee-b041-73478325e265', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"lx_ethical_tradeoffs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_04 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8ff1842-6d75-5c9f-acda-726deea21190', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a212a4f-685d-5fd0-b7f1-009b92341ecf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8ff1842-6d75-5c9f-acda-726deea21190', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"wf_ethical_tradeoffs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_influence_without_authority_05 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_influence_without_authority_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97eaf1d6-f1c2-534b-a928-0e42d06ad049', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"lx_influence_without_authority_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_influence_without_authority_05 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('375e45ab-f5fc-5a5b-a3cb-f193c7bc7e89', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_influence_without_authority_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('586fd47f-abdd-5078-ad19-5301659145b4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('375e45ab-f5fc-5a5b-a3cb-f193c7bc7e89', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"wf_influence_without_authority_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_administrative_appeals_02 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_administrative_appeals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c275d3bd-bb50-54c4-98f0-6cd5d631e3ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"lx_administrative_appeals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_administrative_appeals_02 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('089be451-6dfe-5518-abbb-b7bdaf665137', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_administrative_appeals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14cf09e1-b986-574f-bf52-2eae7ba54f85', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('089be451-6dfe-5518-abbb-b7bdaf665137', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"wf_administrative_appeals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ethical_tradeoffs_02 -> audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5be18d9f-0be0-5858-8ab7-03a4b66c71a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ethical_tradeoffs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49b5dd8f-ed4a-59e7-93e9-2f785078d645', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5be18d9f-0be0-5858-8ab7-03a4b66c71a6', 1), 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3', 1253, '2026-09-13 10:01:17.305682', '588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39', 'validated', '{"audio_key":"ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467","entity_key":"lx_ethical_tradeoffs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ethical_tradeoffs_02 -> audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6175feeb-71ea-5e88-ad78-030cb1ae8881', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ethical_tradeoffs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b649f4ee-0177-5e71-a7a9-370e6537a534', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6175feeb-71ea-5e88-ad78-030cb1ae8881', 1), 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3', 1253, '2026-09-13 10:01:17.305682', '588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39', 'validated', '{"audio_key":"ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467","entity_key":"wf_ethical_tradeoffs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interdisciplinary_collaboration_01 -> audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db96e86b-c07f-5ddb-879f-cd23a4f56bbe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interdisciplinary_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32044ee42f95f08e02ac618c7486dfb44fd46c30a10120af6ea6980271f882b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d51bd61a-041b-5a67-b74d-c2bef9a540bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db96e86b-c07f-5ddb-879f-cd23a4f56bbe', 1), '32044ee42f95f08e02ac618c7486dfb44fd46c30a10120af6ea6980271f882b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3', 1384, '2026-09-13 10:38:50.689098', '71baf75a612abb2a1084bd02ba9d005830d9c839f8d57687bf690536e26c9577', 'validated', '{"audio_key":"f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb","entity_key":"lx_interdisciplinary_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71baf75a612abb2a1084bd02ba9d005830d9c839f8d57687bf690536e26c9577","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interdisciplinary_collaboration_01 -> audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e870475f-bb08-509d-98cf-82a45deb53ac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interdisciplinary_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32044ee42f95f08e02ac618c7486dfb44fd46c30a10120af6ea6980271f882b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c926a4ed-32a4-5cfb-913d-dbf49b9a7648', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e870475f-bb08-509d-98cf-82a45deb53ac', 1), '32044ee42f95f08e02ac618c7486dfb44fd46c30a10120af6ea6980271f882b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3', 1384, '2026-09-13 10:38:50.689098', '71baf75a612abb2a1084bd02ba9d005830d9c839f8d57687bf690536e26c9577', 'validated', '{"audio_key":"f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb","entity_key":"wf_interdisciplinary_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71baf75a612abb2a1084bd02ba9d005830d9c839f8d57687bf690536e26c9577","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f39c68fc00b6fc46fb1eef551c5820c10b8d2ee305ba2dd4305cc024c5c4bcbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_03 -> audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c33bfff1-2981-534d-8cea-18937cba872d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62fb739d30a82f58cf41fee2321e04a600fb6895bd4e5701fd07a2fe3a84d6cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bb58adb-55bf-589d-98b7-fd1d792370c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c33bfff1-2981-534d-8cea-18937cba872d', 1), '62fb739d30a82f58cf41fee2321e04a600fb6895bd4e5701fd07a2fe3a84d6cc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3', 4414, '2026-09-13 10:38:51.670243', '52cae49871bf7a5ce005866deeba6ec53b9a17508c069c4a36137b2193a14df0', 'validated', '{"audio_key":"06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69","entity_key":"u_academic_seminar_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52cae49871bf7a5ce005866deeba6ec53b9a17508c069c4a36137b2193a14df0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_seminar_discussion_02_listen -> audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4ae6a2c0-4841-5422-a6b7-bf8e2d445242', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_seminar_discussion_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62fb739d30a82f58cf41fee2321e04a600fb6895bd4e5701fd07a2fe3a84d6cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1104939c-ee24-5d21-bb7a-de40ba21b2c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4ae6a2c0-4841-5422-a6b7-bf8e2d445242', 1), '62fb739d30a82f58cf41fee2321e04a600fb6895bd4e5701fd07a2fe3a84d6cc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3', 4414, '2026-09-13 10:38:51.670243', '52cae49871bf7a5ce005866deeba6ec53b9a17508c069c4a36137b2193a14df0', 'validated', '{"audio_key":"06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69","entity_key":"ex_academic_seminar_discussion_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52cae49871bf7a5ce005866deeba6ec53b9a17508c069c4a36137b2193a14df0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06562ce521de8f205a05080945a33c78b76f4043fd544654f72ae40a693bfb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_06 -> audio/generated/de-DE/utterances/0a7dd9bc16ac2d0623b858cb4f2a77bd717dd59efd4e57c704c28c80ae552914.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d83dbdb-e73d-527d-8af9-f5e0bdacc63c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2366cd43862557e8dc5d2545177863aa9efe4005d978fae239b6c78b1f9326eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33f814ef-23c2-5978-8858-07ca903b6168', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d83dbdb-e73d-527d-8af9-f5e0bdacc63c', 1), '2366cd43862557e8dc5d2545177863aa9efe4005d978fae239b6c78b1f9326eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0a7dd9bc16ac2d0623b858cb4f2a77bd717dd59efd4e57c704c28c80ae552914.mp3', 5381, '2026-09-13 10:38:52.176863', '18b2e6fce1e1b944e095097cd6975a2c6ae70ce002d0de021bfa7868d741f176', 'validated', '{"audio_key":"0a7dd9bc16ac2d0623b858cb4f2a77bd717dd59efd4e57c704c28c80ae552914","entity_key":"u_public_debate_value_conflicts_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18b2e6fce1e1b944e095097cd6975a2c6ae70ce002d0de021bfa7868d741f176","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0a7dd9bc16ac2d0623b858cb4f2a77bd717dd59efd4e57c704c28c80ae552914.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_05 -> audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0b8672b-2068-5598-bc6e-4f69e16797f2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '262eaab8184bc3886bac7349a21442e4dab16b5d9cd793000bf9cd18b3d62739'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9657e0d-ba2f-5ae8-98fe-878479c6759f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0b8672b-2068-5598-bc6e-4f69e16797f2', 1), '262eaab8184bc3886bac7349a21442e4dab16b5d9cd793000bf9cd18b3d62739',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3', 4257, '2026-09-13 10:38:53.020884', '30728a1ebbc75cdd9e5b8ff5a27e2e98b4bb09be32de593825d486d5618e6ef6', 'validated', '{"audio_key":"0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901","entity_key":"u_public_debate_value_conflicts_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30728a1ebbc75cdd9e5b8ff5a27e2e98b4bb09be32de593825d486d5618e6ef6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_debate_value_conflicts_03_listen -> audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bae5f6d3-1b35-537f-a87a-83eb671c9f3f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_debate_value_conflicts_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '262eaab8184bc3886bac7349a21442e4dab16b5d9cd793000bf9cd18b3d62739'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ec154f9-fbab-5e63-aafa-b050acca3bd8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bae5f6d3-1b35-537f-a87a-83eb671c9f3f', 1), '262eaab8184bc3886bac7349a21442e4dab16b5d9cd793000bf9cd18b3d62739',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3', 4257, '2026-09-13 10:38:53.020884', '30728a1ebbc75cdd9e5b8ff5a27e2e98b4bb09be32de593825d486d5618e6ef6', 'validated', '{"audio_key":"0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901","entity_key":"ex_public_debate_value_conflicts_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30728a1ebbc75cdd9e5b8ff5a27e2e98b4bb09be32de593825d486d5618e6ef6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b0174c23b3595acc97a61ded2acf87fa8a9ba6834bd34b3bb2c48175a548901.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_05 -> audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ee97a9c-d85c-5139-aaee-94a257b6491d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed91bece720ee52032cca5c9e98eddcf81c989b4712009734cdd94d54bbbbfc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7a511c0-e223-509c-bee2-de0e83cc6577', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ee97a9c-d85c-5139-aaee-94a257b6491d', 1), 'ed91bece720ee52032cca5c9e98eddcf81c989b4712009734cdd94d54bbbbfc0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3', 4440, '2026-09-13 10:38:53.542659', '08230ea250928ec68998583f530ab0da606268f2f67361e0ff486fa83624c852', 'validated', '{"audio_key":"1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6","entity_key":"u_academic_seminar_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08230ea250928ec68998583f530ab0da606268f2f67361e0ff486fa83624c852","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_seminar_discussion_03_listen -> audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cce4deeb-a8e2-58c5-991e-f488e1fe9957', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_seminar_discussion_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed91bece720ee52032cca5c9e98eddcf81c989b4712009734cdd94d54bbbbfc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3689b4e-7b85-51cd-92b3-242470cef9e5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cce4deeb-a8e2-58c5-991e-f488e1fe9957', 1), 'ed91bece720ee52032cca5c9e98eddcf81c989b4712009734cdd94d54bbbbfc0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3', 4440, '2026-09-13 10:38:53.542659', '08230ea250928ec68998583f530ab0da606268f2f67361e0ff486fa83624c852', 'validated', '{"audio_key":"1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6","entity_key":"ex_academic_seminar_discussion_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08230ea250928ec68998583f530ab0da606268f2f67361e0ff486fa83624c852","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1182634dce1bf643f30b91a5f40bac46ede2e3dfc091fd41529f0e3c864ab4d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_03 -> audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6b6dfd0f-e147-54dc-948e-4cc716f2c96c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e735f8943a84e13086de0b2d654d8e8311733fa3f935643955d2d32aa1fa2f31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9bb2c0d-4c2b-5efe-8e4b-95c71ff57f92', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6b6dfd0f-e147-54dc-948e-4cc716f2c96c', 1), 'e735f8943a84e13086de0b2d654d8e8311733fa3f935643955d2d32aa1fa2f31',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3', 3944, '2026-09-13 10:38:54.294368', 'b317fe7fd0a01600495c562211d0937c32319173141120e5cc555ff668ba2beb', 'validated', '{"audio_key":"11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d","entity_key":"u_administrative_appeals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b317fe7fd0a01600495c562211d0937c32319173141120e5cc555ff668ba2beb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_administrative_appeals_02_listen -> audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1e3cdb0-7e5c-5b17-9897-ee24378118b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_administrative_appeals_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e735f8943a84e13086de0b2d654d8e8311733fa3f935643955d2d32aa1fa2f31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8881bba5-55c3-50c8-85f6-d6aab7b88b6f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1e3cdb0-7e5c-5b17-9897-ee24378118b3', 1), 'e735f8943a84e13086de0b2d654d8e8311733fa3f935643955d2d32aa1fa2f31',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3', 3944, '2026-09-13 10:38:54.294368', 'b317fe7fd0a01600495c562211d0937c32319173141120e5cc555ff668ba2beb', 'validated', '{"audio_key":"11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d","entity_key":"ex_administrative_appeals_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b317fe7fd0a01600495c562211d0937c32319173141120e5cc555ff668ba2beb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11fe482e03cb2f65705127b1368252daa045b56466f61cb1c19d6c71df5d165d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_03 -> audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d2a358f-c054-5944-8064-4366141bf1d4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70707b390dc916c25070e98fd628d5bbd4365eff7444a3541c1b97d0a77f2625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caedd1cf-d77e-5086-ba71-2bfae8979d17', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d2a358f-c054-5944-8064-4366141bf1d4', 1), '70707b390dc916c25070e98fd628d5bbd4365eff7444a3541c1b97d0a77f2625',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3', 3996, '2026-09-13 10:38:54.875149', '3e01aabac2c632b00b01d505683742d10ac8c44c4c7c87bb65a74f1dc901b68f', 'validated', '{"audio_key":"13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316","entity_key":"u_source_evaluation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e01aabac2c632b00b01d505683742d10ac8c44c4c7c87bb65a74f1dc901b68f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_evaluation_02_listen -> audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cdf64daf-1c97-554b-b44d-b182e639e1f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_evaluation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70707b390dc916c25070e98fd628d5bbd4365eff7444a3541c1b97d0a77f2625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddc70f54-7ff5-588f-9ff7-e995d8c3d881', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cdf64daf-1c97-554b-b44d-b182e639e1f3', 1), '70707b390dc916c25070e98fd628d5bbd4365eff7444a3541c1b97d0a77f2625',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3', 3996, '2026-09-13 10:38:54.875149', '3e01aabac2c632b00b01d505683742d10ac8c44c4c7c87bb65a74f1dc901b68f', 'validated', '{"audio_key":"13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316","entity_key":"ex_source_evaluation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e01aabac2c632b00b01d505683742d10ac8c44c4c7c87bb65a74f1dc901b68f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/13ba03820bc7e42ae7030a7275689e24ae91575f7b14b69e05fc5774e1ff9316.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_03 -> audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b8a88cce-b931-57ad-97fc-ce0dd697ddfc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a09369ea68e35e2adca8813ed02b8e67ebfde7ec0927fe3f6c1e057ed6603c72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cc28b7e-08a4-555e-875f-f26ebe263267', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b8a88cce-b931-57ad-97fc-ce0dd697ddfc', 1), 'a09369ea68e35e2adca8813ed02b8e67ebfde7ec0927fe3f6c1e057ed6603c72',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3', 4362, '2026-09-13 10:38:55.616508', '6beb2b2b83a397aa00a7504ae9d62ab52cdb06dcb217680bc1c7e762e369597f', 'validated', '{"audio_key":"16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d","entity_key":"u_community_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6beb2b2b83a397aa00a7504ae9d62ab52cdb06dcb217680bc1c7e762e369597f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_community_conflict_mediation_02_listen -> audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7918b332-ca16-5d9a-b64b-db920c6978ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_community_conflict_mediation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a09369ea68e35e2adca8813ed02b8e67ebfde7ec0927fe3f6c1e057ed6603c72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1299317-71d6-583b-bb68-42f930600471', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7918b332-ca16-5d9a-b64b-db920c6978ca', 1), 'a09369ea68e35e2adca8813ed02b8e67ebfde7ec0927fe3f6c1e057ed6603c72',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3', 4362, '2026-09-13 10:38:55.616508', '6beb2b2b83a397aa00a7504ae9d62ab52cdb06dcb217680bc1c7e762e369597f', 'validated', '{"audio_key":"16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d","entity_key":"ex_community_conflict_mediation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6beb2b2b83a397aa00a7504ae9d62ab52cdb06dcb217680bc1c7e762e369597f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/16d13446191ce9bf72572077e4d05ef2fbe099fbc5f5e5e38c4a7f175a02733d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_05 -> audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d384c195-7df2-506d-810f-0dff779286bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f2402158dd48cd3c078b7b034c91878a6ea6a28b9041e39f5e524c765c35124'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e13f9992-c603-5194-a165-13f831d4652b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d384c195-7df2-506d-810f-0dff779286bd', 1), '0f2402158dd48cd3c078b7b034c91878a6ea6a28b9041e39f5e524c765c35124',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3', 6086, '2026-09-13 10:38:56.504921', 'c358f898893c3091f7e3db847182977813a4c2e655b92e7000e4b7813cce9e7f', 'validated', '{"audio_key":"1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0","entity_key":"u_media_interviews_public_statements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c358f898893c3091f7e3db847182977813a4c2e655b92e7000e4b7813cce9e7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_interviews_public_statements_03_listen -> audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0040c3b1-92f7-5a27-b52f-c668c786ec29', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_interviews_public_statements_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f2402158dd48cd3c078b7b034c91878a6ea6a28b9041e39f5e524c765c35124'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba4d4079-7776-5508-95b9-218e198eaa01', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0040c3b1-92f7-5a27-b52f-c668c786ec29', 1), '0f2402158dd48cd3c078b7b034c91878a6ea6a28b9041e39f5e524c765c35124',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3', 6086, '2026-09-13 10:38:56.504921', 'c358f898893c3091f7e3db847182977813a4c2e655b92e7000e4b7813cce9e7f', 'validated', '{"audio_key":"1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0","entity_key":"ex_media_interviews_public_statements_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c358f898893c3091f7e3db847182977813a4c2e655b92e7000e4b7813cce9e7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1aabe836047a008617f8000e7cf3ec6a56fba2618abcf6b05ed3816af1da0ed0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_01 -> audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('63bf6bce-08ca-517b-8a21-9bbb5bf22244', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbc345d866667392ccd20a97aa583cab84f4f08ced7b56dcb2dcd4b781abcae0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b10c630b-09e4-525c-9a06-8f5b04c6038f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('63bf6bce-08ca-517b-8a21-9bbb5bf22244', 1), 'bbc345d866667392ccd20a97aa583cab84f4f08ced7b56dcb2dcd4b781abcae0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3', 5015, '2026-09-13 10:38:57.048475', '70aab9da8e3a298ccc87bbd667b39791cb981c9018e6124c2299030bdc693e74', 'validated', '{"audio_key":"1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1","entity_key":"u_public_debate_value_conflicts_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70aab9da8e3a298ccc87bbd667b39791cb981c9018e6124c2299030bdc693e74","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_debate_value_conflicts_01_listen -> audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a41e6ec2-b429-525e-8cfe-6eb6953f17f6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_debate_value_conflicts_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbc345d866667392ccd20a97aa583cab84f4f08ced7b56dcb2dcd4b781abcae0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7474ba63-4856-5b4d-87ec-137ade0b5ec2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a41e6ec2-b429-525e-8cfe-6eb6953f17f6', 1), 'bbc345d866667392ccd20a97aa583cab84f4f08ced7b56dcb2dcd4b781abcae0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3', 5015, '2026-09-13 10:38:57.048475', '70aab9da8e3a298ccc87bbd667b39791cb981c9018e6124c2299030bdc693e74', 'validated', '{"audio_key":"1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1","entity_key":"ex_public_debate_value_conflicts_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70aab9da8e3a298ccc87bbd667b39791cb981c9018e6124c2299030bdc693e74","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1e2276da0feded3d293f09775fa1796102834ea41a2e08c2c61f893a7b670dc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_02 -> audio/generated/de-DE/utterances/20fe6a177b6ad9f786ee89ec5a3cb4aeb3e394d50905e913890b6669ef283fba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e3ea8768-859d-59bb-b287-34c6d7339076', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbfcdc5b370b44d13df891deabdadd46e6d1d3a8a7d745101984fd4e07b8faad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7029042-13ab-5068-af68-5f853fbbe0e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e3ea8768-859d-59bb-b287-34c6d7339076', 1), 'bbfcdc5b370b44d13df891deabdadd46e6d1d3a8a7d745101984fd4e07b8faad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/20fe6a177b6ad9f786ee89ec5a3cb4aeb3e394d50905e913890b6669ef283fba.mp3', 4493, '2026-09-13 10:38:57.857517', 'e7e7bd6e6e6e4f95871bf9cb2c96c6a641edf6526bd60d664e66135e8d1367f4', 'validated', '{"audio_key":"20fe6a177b6ad9f786ee89ec5a3cb4aeb3e394d50905e913890b6669ef283fba","entity_key":"u_administrative_appeals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7e7bd6e6e6e4f95871bf9cb2c96c6a641edf6526bd60d664e66135e8d1367f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/20fe6a177b6ad9f786ee89ec5a3cb4aeb3e394d50905e913890b6669ef283fba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_03 -> audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6352cf5-89e0-5426-a035-8a07100bf133', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34b09a0c39279bba7e211dcb37dc62173b0012161ebcf6923271adb3acbf9e41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bf92b33-cb4e-56e7-b6fa-b9bcc1657bc9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6352cf5-89e0-5426-a035-8a07100bf133', 1), '34b09a0c39279bba7e211dcb37dc62173b0012161ebcf6923271adb3acbf9e41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3', 3996, '2026-09-13 10:38:58.383455', '0a711d76e64b150da8701e46552875497acc0b26b73599b2bbbe4dde04cbe82a', 'validated', '{"audio_key":"30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187","entity_key":"u_public_debate_value_conflicts_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a711d76e64b150da8701e46552875497acc0b26b73599b2bbbe4dde04cbe82a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_debate_value_conflicts_02_listen -> audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9fbfbfe6-82d2-5c75-abaa-3a235ac20477', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_debate_value_conflicts_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34b09a0c39279bba7e211dcb37dc62173b0012161ebcf6923271adb3acbf9e41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dae87ab-f179-51ac-9908-5be46320d457', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9fbfbfe6-82d2-5c75-abaa-3a235ac20477', 1), '34b09a0c39279bba7e211dcb37dc62173b0012161ebcf6923271adb3acbf9e41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3', 3996, '2026-09-13 10:38:58.383455', '0a711d76e64b150da8701e46552875497acc0b26b73599b2bbbe4dde04cbe82a', 'validated', '{"audio_key":"30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187","entity_key":"ex_public_debate_value_conflicts_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a711d76e64b150da8701e46552875497acc0b26b73599b2bbbe4dde04cbe82a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/30818e60d5e28a48630e0ad73c8ca266b2007284dfa4e6f6e2889aa1499ed187.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_01 -> audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd8b3854-d3b0-5886-8c92-438ddf96733d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dae991039bbf36066e514a047da3208dd24bfcde8c427b61f63182c5da09af0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01af5ca9-1c19-5cf1-bec6-4a5f164af895', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd8b3854-d3b0-5886-8c92-438ddf96733d', 1), 'dae991039bbf36066e514a047da3208dd24bfcde8c427b61f63182c5da09af0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3', 5616, '2026-09-13 10:38:59.367070', '7adbe7654e2f1b28dc97d0dd756f1f3ed846df04b31e2cb66a91ed7543f349e7', 'validated', '{"audio_key":"42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d","entity_key":"u_community_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7adbe7654e2f1b28dc97d0dd756f1f3ed846df04b31e2cb66a91ed7543f349e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_community_conflict_mediation_01_listen -> audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b1f964b0-df6f-535c-9d66-aed9ce6e13d9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_community_conflict_mediation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dae991039bbf36066e514a047da3208dd24bfcde8c427b61f63182c5da09af0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46933c44-0608-5acc-92b9-15f4659d48d1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b1f964b0-df6f-535c-9d66-aed9ce6e13d9', 1), 'dae991039bbf36066e514a047da3208dd24bfcde8c427b61f63182c5da09af0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3', 5616, '2026-09-13 10:38:59.367070', '7adbe7654e2f1b28dc97d0dd756f1f3ed846df04b31e2cb66a91ed7543f349e7', 'validated', '{"audio_key":"42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d","entity_key":"ex_community_conflict_mediation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7adbe7654e2f1b28dc97d0dd756f1f3ed846df04b31e2cb66a91ed7543f349e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/42f66848963ce53421a559f61266f8f4cab4782db781e2d9159e6a78816da93d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_02 -> audio/generated/de-DE/utterances/4c1d1f86b23e9332229ed6dd797f396b67d1458a55ee1844d26c9b591ad5bf27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7f7c9247-17c3-502e-9ad3-9e5a1c03e4bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ce99b217ffa205a5622b3b1a91ddb161935ea39104d22e6355c92a1d1175793'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebecd05c-8b3a-561d-a613-8c4ba2c0f597', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7f7c9247-17c3-502e-9ad3-9e5a1c03e4bc', 1), '1ce99b217ffa205a5622b3b1a91ddb161935ea39104d22e6355c92a1d1175793',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4c1d1f86b23e9332229ed6dd797f396b67d1458a55ee1844d26c9b591ad5bf27.mp3', 5799, '2026-09-13 10:38:59.854382', 'a49a310f9970502c883c07650b9dde15e7abac1b8e46e02037a2b90073458981', 'validated', '{"audio_key":"4c1d1f86b23e9332229ed6dd797f396b67d1458a55ee1844d26c9b591ad5bf27","entity_key":"u_civic_decision_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a49a310f9970502c883c07650b9dde15e7abac1b8e46e02037a2b90073458981","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4c1d1f86b23e9332229ed6dd797f396b67d1458a55ee1844d26c9b591ad5bf27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_01 -> audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('faa0739f-941a-5708-a944-d02faf2e0bfb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92ffe0d692ac8bc115b3469609ef93ad72e4f02f5fcd992f27a5ac381cff552f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0331b2e-1fc3-52cf-84b0-5e7c25f8dfac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('faa0739f-941a-5708-a944-d02faf2e0bfb', 1), '92ffe0d692ac8bc115b3469609ef93ad72e4f02f5fcd992f27a5ac381cff552f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3', 4075, '2026-09-13 10:39:00.684170', '2b6d2d653767f46512f09b9d37f4720718dd47426c8bd0881d3d9e3a062bb965', 'validated', '{"audio_key":"500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71","entity_key":"u_media_interviews_public_statements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b6d2d653767f46512f09b9d37f4720718dd47426c8bd0881d3d9e3a062bb965","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_interviews_public_statements_01_listen -> audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fccc1ea1-eccb-59f1-91aa-1f823481d26c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_interviews_public_statements_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92ffe0d692ac8bc115b3469609ef93ad72e4f02f5fcd992f27a5ac381cff552f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efd77064-1d50-5f35-8ca0-5f7e1e4c2894', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fccc1ea1-eccb-59f1-91aa-1f823481d26c', 1), '92ffe0d692ac8bc115b3469609ef93ad72e4f02f5fcd992f27a5ac381cff552f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3', 4075, '2026-09-13 10:39:00.684170', '2b6d2d653767f46512f09b9d37f4720718dd47426c8bd0881d3d9e3a062bb965', 'validated', '{"audio_key":"500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71","entity_key":"ex_media_interviews_public_statements_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b6d2d653767f46512f09b9d37f4720718dd47426c8bd0881d3d9e3a062bb965","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/500f387a9e358c5c2b34f97a8b518cacafbe281f67c4677b3885ee185da04b71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_04 -> audio/generated/de-DE/utterances/5270a3d6e659050975c496faa9ee4eb5965b0d3641080a01e0dbde97020b24ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7233cebd-5722-57e3-b9da-b63a62081371', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85fde5342ce598737fbe78c0409be52dc44912bf2c507701ae6824db27e6acc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('208396fa-da52-595b-b7f7-089cecaf78fc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7233cebd-5722-57e3-b9da-b63a62081371', 1), '85fde5342ce598737fbe78c0409be52dc44912bf2c507701ae6824db27e6acc4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5270a3d6e659050975c496faa9ee4eb5965b0d3641080a01e0dbde97020b24ae.mp3', 4728, '2026-09-13 10:39:01.254010', '8f78b773ff36d41b3c6128e41f2335b3539b140d4eb524a4d141032945dfc163', 'validated', '{"audio_key":"5270a3d6e659050975c496faa9ee4eb5965b0d3641080a01e0dbde97020b24ae","entity_key":"u_media_interviews_public_statements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f78b773ff36d41b3c6128e41f2335b3539b140d4eb524a4d141032945dfc163","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5270a3d6e659050975c496faa9ee4eb5965b0d3641080a01e0dbde97020b24ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_02 -> audio/generated/de-DE/utterances/52a64d77c7c70af9f843c66a1f936d9f1e15a6346b0761f41c4c31ff7c347075.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ff14ea4f-fc85-5990-a1ef-8d3b9b22b0ec', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41f0733fa179ebc4f5766fa56a6cd59609b03a200603e0ac32f195467cd4c7f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9855862c-f2f7-5eba-a4df-bc231ba35851', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ff14ea4f-fc85-5990-a1ef-8d3b9b22b0ec', 1), '41f0733fa179ebc4f5766fa56a6cd59609b03a200603e0ac32f195467cd4c7f5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/52a64d77c7c70af9f843c66a1f936d9f1e15a6346b0761f41c4c31ff7c347075.mp3', 5093, '2026-09-13 10:39:02.240012', 'd76a7654c4f425a575dc8e8f87923a0a21b5b1db9f277f93577b945914d22241', 'validated', '{"audio_key":"52a64d77c7c70af9f843c66a1f936d9f1e15a6346b0761f41c4c31ff7c347075","entity_key":"u_community_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d76a7654c4f425a575dc8e8f87923a0a21b5b1db9f277f93577b945914d22241","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/52a64d77c7c70af9f843c66a1f936d9f1e15a6346b0761f41c4c31ff7c347075.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_03 -> audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8465b8cb-238b-5d8f-996c-156fac7c7048', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a3411a67e5f315a962c374de72fb3e067dfe38d0c884e9b55b22d2f68176bcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1300fdfe-c9d7-5fd8-b6cd-711c17fa7603', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8465b8cb-238b-5d8f-996c-156fac7c7048', 1), '3a3411a67e5f315a962c374de72fb3e067dfe38d0c884e9b55b22d2f68176bcf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3', 5459, '2026-09-13 10:39:02.763622', '7ff373bd9dc20ee546ebdfc385dd2382b1fe69e2868ed6e83f5026feb66b1f0f', 'validated', '{"audio_key":"54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802","entity_key":"u_ethical_tradeoffs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ff373bd9dc20ee546ebdfc385dd2382b1fe69e2868ed6e83f5026feb66b1f0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ethical_tradeoffs_02_listen -> audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6cae3c78-7934-5275-9906-9078ecb93b81', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ethical_tradeoffs_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a3411a67e5f315a962c374de72fb3e067dfe38d0c884e9b55b22d2f68176bcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f2f91a2-8e62-55f7-99f3-2755b28ba71f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6cae3c78-7934-5275-9906-9078ecb93b81', 1), '3a3411a67e5f315a962c374de72fb3e067dfe38d0c884e9b55b22d2f68176bcf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3', 5459, '2026-09-13 10:39:02.763622', '7ff373bd9dc20ee546ebdfc385dd2382b1fe69e2868ed6e83f5026feb66b1f0f', 'validated', '{"audio_key":"54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802","entity_key":"ex_ethical_tradeoffs_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ff373bd9dc20ee546ebdfc385dd2382b1fe69e2868ed6e83f5026feb66b1f0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54a48cf07d11cf98a89008f80e2cb7e1489dd6ffed0adecc1f89f8510e430802.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_01 -> audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('399a2bcf-8b9d-518c-9c6e-198cead4de83', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4492025de2e574374cbaabd910b5996cdfffa2c0777454821401d604eb9cbcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ec7446e-39f5-560f-98a2-916a4c44ad9d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('399a2bcf-8b9d-518c-9c6e-198cead4de83', 1), 'e4492025de2e574374cbaabd910b5996cdfffa2c0777454821401d604eb9cbcc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3', 4362, '2026-09-13 10:39:04.090087', '739f8e7298593fcc26d063be9418b702b047f42fd371451c0890917e10f81122', 'validated', '{"audio_key":"572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37","entity_key":"u_academic_seminar_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"739f8e7298593fcc26d063be9418b702b047f42fd371451c0890917e10f81122","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_seminar_discussion_01_listen -> audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7cdc83b6-00ae-5348-b6c6-04acac362d17', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_seminar_discussion_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4492025de2e574374cbaabd910b5996cdfffa2c0777454821401d604eb9cbcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('128068ed-dcc7-5045-ac19-ff51aadfb534', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7cdc83b6-00ae-5348-b6c6-04acac362d17', 1), 'e4492025de2e574374cbaabd910b5996cdfffa2c0777454821401d604eb9cbcc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3', 4362, '2026-09-13 10:39:04.090087', '739f8e7298593fcc26d063be9418b702b047f42fd371451c0890917e10f81122', 'validated', '{"audio_key":"572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37","entity_key":"ex_academic_seminar_discussion_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"739f8e7298593fcc26d063be9418b702b047f42fd371451c0890917e10f81122","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/572fa8c1728840243ecfdf9cd49fe122588b7e92ab73071bce878d6ce0bc5b37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_06 -> audio/generated/de-DE/utterances/5922f07d75f95b8e107999b12c80e841c724f14394ec302fa897f5f10b933430.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6dd960d8-1bf4-562d-b788-0e910788d42f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49801db6b50afc610ae062f55bf355d31d49f2db10f0e204722f2d6bcff98c90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3739a550-027f-58eb-b573-4282b0f8f9e4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6dd960d8-1bf4-562d-b788-0e910788d42f', 1), '49801db6b50afc610ae062f55bf355d31d49f2db10f0e204722f2d6bcff98c90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5922f07d75f95b8e107999b12c80e841c724f14394ec302fa897f5f10b933430.mp3', 5511, '2026-09-13 10:39:04.324682', '15e2230b4a81c12d544edf6924459987cd28ad553fbead64fda9215eaeee2032', 'validated', '{"audio_key":"5922f07d75f95b8e107999b12c80e841c724f14394ec302fa897f5f10b933430","entity_key":"u_civic_decision_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15e2230b4a81c12d544edf6924459987cd28ad553fbead64fda9215eaeee2032","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5922f07d75f95b8e107999b12c80e841c724f14394ec302fa897f5f10b933430.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_02 -> audio/generated/de-DE/utterances/5fd674667ceb690be807df7fee5bffd1535c8f01146b549a797c8c72d4902075.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44102f43-b22a-51e4-9928-3ea8ab4c54e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0310315ea8e8d7b4d5fce9afea8850ec26b1b3307b0fb35db019dbeb33fdc8a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('559fa1a9-7fb5-58ce-9b70-1685d94c8b50', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44102f43-b22a-51e4-9928-3ea8ab4c54e3', 1), '0310315ea8e8d7b4d5fce9afea8850ec26b1b3307b0fb35db019dbeb33fdc8a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5fd674667ceb690be807df7fee5bffd1535c8f01146b549a797c8c72d4902075.mp3', 4911, '2026-09-13 10:39:05.510185', 'be038e97ce252c3c9451098fd892c015f111c4382c4fa7c1bf26e5d4456385fd', 'validated', '{"audio_key":"5fd674667ceb690be807df7fee5bffd1535c8f01146b549a797c8c72d4902075","entity_key":"u_influence_without_authority_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be038e97ce252c3c9451098fd892c015f111c4382c4fa7c1bf26e5d4456385fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5fd674667ceb690be807df7fee5bffd1535c8f01146b549a797c8c72d4902075.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_01 -> audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('35841664-f4bc-5b50-af21-6551cbc3a0cd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '508dd83a533bc4bd124b862d533b5fb0713472603a3fb86bea47b9ad3d8baaad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a19954ee-e3fd-5764-9902-b63e4025a5aa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('35841664-f4bc-5b50-af21-6551cbc3a0cd', 1), '508dd83a533bc4bd124b862d533b5fb0713472603a3fb86bea47b9ad3d8baaad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3', 4493, '2026-09-13 10:39:05.661550', '45c7b8a8da59d60ae1e961f9064e56f72e5ea0e4e10c6b4491c2c97aa742f08f', 'validated', '{"audio_key":"6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15","entity_key":"u_interdisciplinary_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45c7b8a8da59d60ae1e961f9064e56f72e5ea0e4e10c6b4491c2c97aa742f08f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interdisciplinary_collaboration_01_listen -> audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d5e3cb1e-571c-5f8a-8309-6687cceea755', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interdisciplinary_collaboration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '508dd83a533bc4bd124b862d533b5fb0713472603a3fb86bea47b9ad3d8baaad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3805ca65-4fba-54f5-a6b9-58890ba04351', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d5e3cb1e-571c-5f8a-8309-6687cceea755', 1), '508dd83a533bc4bd124b862d533b5fb0713472603a3fb86bea47b9ad3d8baaad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3', 4493, '2026-09-13 10:39:05.661550', '45c7b8a8da59d60ae1e961f9064e56f72e5ea0e4e10c6b4491c2c97aa742f08f', 'validated', '{"audio_key":"6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15","entity_key":"ex_interdisciplinary_collaboration_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45c7b8a8da59d60ae1e961f9064e56f72e5ea0e4e10c6b4491c2c97aa742f08f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c54a3b7da435c8a7333b34a5c283e69535a8b28523f66b81091e2c7201d5d15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_02 -> audio/generated/de-DE/utterances/743afb83ab25ce49537f8a7b789002347f5838cac85af54c1b84fb1dcf03991b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b622409-30d2-5c45-945f-72e72fc632c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fc348f0d50bddb2a770b5083e6f2a0c2feeeba4227d59b76f746af5394e271d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c06d8abc-f123-5bbf-99a3-658acd2d1928', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b622409-30d2-5c45-945f-72e72fc632c8', 1), '9fc348f0d50bddb2a770b5083e6f2a0c2feeeba4227d59b76f746af5394e271d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/743afb83ab25ce49537f8a7b789002347f5838cac85af54c1b84fb1dcf03991b.mp3', 5668, '2026-09-13 10:39:07.024969', 'ed6458673173848215eb06b9a8fcae43df9e1a8ad074fcbad2a4fa2a2d6efac7', 'validated', '{"audio_key":"743afb83ab25ce49537f8a7b789002347f5838cac85af54c1b84fb1dcf03991b","entity_key":"u_interdisciplinary_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed6458673173848215eb06b9a8fcae43df9e1a8ad074fcbad2a4fa2a2d6efac7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/743afb83ab25ce49537f8a7b789002347f5838cac85af54c1b84fb1dcf03991b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_04 -> audio/generated/de-DE/utterances/7de7ae6f623b45796aea5fb309c7cbde971b1d1c6fa0870eadba2d4782244165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a8909df6-90b8-5539-ba90-bad7f08760b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9491bb2d6c3281934f9dd82ccd4bb1c6763d8039a3e20dcd066d3a85f5a05ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('135cdb4c-4461-58f8-9fd4-3a819f93af27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a8909df6-90b8-5539-ba90-bad7f08760b3', 1), 'a9491bb2d6c3281934f9dd82ccd4bb1c6763d8039a3e20dcd066d3a85f5a05ea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7de7ae6f623b45796aea5fb309c7cbde971b1d1c6fa0870eadba2d4782244165.mp3', 5276, '2026-09-13 10:39:07.153151', 'e62fa05f1ee012719c9b4d1ceccb6d368f331fd5947306793b2acc2e8d132f28', 'validated', '{"audio_key":"7de7ae6f623b45796aea5fb309c7cbde971b1d1c6fa0870eadba2d4782244165","entity_key":"u_civic_decision_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e62fa05f1ee012719c9b4d1ceccb6d368f331fd5947306793b2acc2e8d132f28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7de7ae6f623b45796aea5fb309c7cbde971b1d1c6fa0870eadba2d4782244165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_01 -> audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6acb1a1-f934-5b73-96c7-ae2cff2ec6ec', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f38b75052437c80481a758637bca03f35d27199f371ee145ca8e7abc5e02ea3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25b781b8-48a7-5f31-9a5d-e9baf51ba7a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6acb1a1-f934-5b73-96c7-ae2cff2ec6ec', 1), 'f38b75052437c80481a758637bca03f35d27199f371ee145ca8e7abc5e02ea3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3', 5616, '2026-09-13 10:39:08.563689', '5e44d9e01b9a7d0fd8ae5212cbb2958947b0eefd4cc9bd4dedf4dd4b2e37b8d9', 'validated', '{"audio_key":"7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd","entity_key":"u_influence_without_authority_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e44d9e01b9a7d0fd8ae5212cbb2958947b0eefd4cc9bd4dedf4dd4b2e37b8d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_influence_without_authority_01_listen -> audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('457dd511-491e-56ab-9186-28f2213c3855', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_influence_without_authority_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f38b75052437c80481a758637bca03f35d27199f371ee145ca8e7abc5e02ea3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a84aa86c-b7de-528f-b6c0-f3c932bf4571', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('457dd511-491e-56ab-9186-28f2213c3855', 1), 'f38b75052437c80481a758637bca03f35d27199f371ee145ca8e7abc5e02ea3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3', 5616, '2026-09-13 10:39:08.563689', '5e44d9e01b9a7d0fd8ae5212cbb2958947b0eefd4cc9bd4dedf4dd4b2e37b8d9', 'validated', '{"audio_key":"7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd","entity_key":"ex_influence_without_authority_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e44d9e01b9a7d0fd8ae5212cbb2958947b0eefd4cc9bd4dedf4dd4b2e37b8d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f44141f0ec55b37acfc475cf6f3fbbcb0d0d7176bf7555a55e2111730cae0bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_03 -> audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e6d64b8f-d97e-5b27-87f8-d67f1ca4abe5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9fecac5ec1e449d001c103a716863323ee164f010c014e49842f459553b6556'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f053d16-f31f-518c-b8da-3a66b50deb41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e6d64b8f-d97e-5b27-87f8-d67f1ca4abe5', 1), 'a9fecac5ec1e449d001c103a716863323ee164f010c014e49842f459553b6556',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3', 5276, '2026-09-13 10:39:08.641024', '5a531d23adb78dc3536c2692e935c957681338e735063fc98f4cf15238580d66', 'validated', '{"audio_key":"80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1","entity_key":"u_civic_decision_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a531d23adb78dc3536c2692e935c957681338e735063fc98f4cf15238580d66","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_civic_decision_capstone_02_listen -> audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c6505362-f6f0-526c-ac0e-a303b4b83b56', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_civic_decision_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9fecac5ec1e449d001c103a716863323ee164f010c014e49842f459553b6556'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7d58680-324d-528c-b9c5-417d296b95bc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c6505362-f6f0-526c-ac0e-a303b4b83b56', 1), 'a9fecac5ec1e449d001c103a716863323ee164f010c014e49842f459553b6556',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3', 5276, '2026-09-13 10:39:08.641024', '5a531d23adb78dc3536c2692e935c957681338e735063fc98f4cf15238580d66', 'validated', '{"audio_key":"80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1","entity_key":"ex_civic_decision_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a531d23adb78dc3536c2692e935c957681338e735063fc98f4cf15238580d66","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/80fbe1a0311159200b68919eca7d03c956f94a98350a834cfe43e87d35b6cbe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_06 -> audio/generated/de-DE/utterances/87ce26bb78c1ce23e613db06c6ffb2616449039656eb1b8d39d92ad89b1e1961.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88aedccd-3fb4-5b34-b9b6-04781d1766de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd87d49eeb6ba83e4a932088edc2c455dc9905c1ac4eac2c0f7c2df281c250a28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a4928e4-18bf-575b-b494-55666e90e5ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88aedccd-3fb4-5b34-b9b6-04781d1766de', 1), 'd87d49eeb6ba83e4a932088edc2c455dc9905c1ac4eac2c0f7c2df281c250a28',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87ce26bb78c1ce23e613db06c6ffb2616449039656eb1b8d39d92ad89b1e1961.mp3', 5982, '2026-09-13 10:39:10.091803', '67861d2155f0c0f050c2a9271d6c04794659be72e7a134cd5a8253c682b7f72b', 'validated', '{"audio_key":"87ce26bb78c1ce23e613db06c6ffb2616449039656eb1b8d39d92ad89b1e1961","entity_key":"u_ethical_tradeoffs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"67861d2155f0c0f050c2a9271d6c04794659be72e7a134cd5a8253c682b7f72b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87ce26bb78c1ce23e613db06c6ffb2616449039656eb1b8d39d92ad89b1e1961.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_03 -> audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('12026d42-734c-5e63-b8de-ecd91f53d755', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01e18ddab4190411fa06ef38a05370a30d78185ca33e4a41d76f872df27f9e67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d28ab4ee-74ab-5321-a057-05a29120c6ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('12026d42-734c-5e63-b8de-ecd91f53d755', 1), '01e18ddab4190411fa06ef38a05370a30d78185ca33e4a41d76f872df27f9e67',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3', 3239, '2026-09-13 10:39:09.879496', 'c37f67c1402a97ae59763abe7caae582560c940e3990f2b876e508b37884cebc', 'validated', '{"audio_key":"881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511","entity_key":"u_influence_without_authority_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c37f67c1402a97ae59763abe7caae582560c940e3990f2b876e508b37884cebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_influence_without_authority_02_listen -> audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b248a96-b69c-55be-8c1f-1d9a1afe9c81', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_influence_without_authority_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01e18ddab4190411fa06ef38a05370a30d78185ca33e4a41d76f872df27f9e67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47dacc95-14a7-5571-bf99-d9324ed170b7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b248a96-b69c-55be-8c1f-1d9a1afe9c81', 1), '01e18ddab4190411fa06ef38a05370a30d78185ca33e4a41d76f872df27f9e67',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3', 3239, '2026-09-13 10:39:09.879496', 'c37f67c1402a97ae59763abe7caae582560c940e3990f2b876e508b37884cebc', 'validated', '{"audio_key":"881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511","entity_key":"ex_influence_without_authority_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c37f67c1402a97ae59763abe7caae582560c940e3990f2b876e508b37884cebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/881c672ad71de32258cde2352228ff9a5b94e9044c6443861185173d81f5c511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_02 -> audio/generated/de-DE/utterances/89b8dbecae184e779318197671f8c80ad8542ddb86b66205e01574c07ef7ca38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('77258139-c5a7-5c69-9adc-9db5f845e741', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a55489ff5a87d2ab96af284de5048a4f7cc85062e459ab69a5358e03821b0b13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4913ce3d-9ce2-5029-bb17-3abd69bbd73f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('77258139-c5a7-5c69-9adc-9db5f845e741', 1), 'a55489ff5a87d2ab96af284de5048a4f7cc85062e459ab69a5358e03821b0b13',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89b8dbecae184e779318197671f8c80ad8542ddb86b66205e01574c07ef7ca38.mp3', 4832, '2026-09-13 10:39:11.323284', 'c224c59fc7ff7a70e206107100ccf778566897e869282ac399228d8e6b4fc62b', 'validated', '{"audio_key":"89b8dbecae184e779318197671f8c80ad8542ddb86b66205e01574c07ef7ca38","entity_key":"u_source_evaluation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c224c59fc7ff7a70e206107100ccf778566897e869282ac399228d8e6b4fc62b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89b8dbecae184e779318197671f8c80ad8542ddb86b66205e01574c07ef7ca38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_05 -> audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4115e80c-4466-51a7-b90b-e7cb88b8e84c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12bb57d9ab82e52d5bea1027796a0a377b06f5ed3d0292af917d3651edef52f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a806dfc-1797-5a29-b795-e360970cbecd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4115e80c-4466-51a7-b90b-e7cb88b8e84c', 1), '12bb57d9ab82e52d5bea1027796a0a377b06f5ed3d0292af917d3651edef52f8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3', 6713, '2026-09-13 10:39:11.813790', '78155d1548430af46a15715606ae6669590b29293cd57cebaba63067d280ee92', 'validated', '{"audio_key":"90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0","entity_key":"u_civic_decision_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78155d1548430af46a15715606ae6669590b29293cd57cebaba63067d280ee92","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_civic_decision_capstone_03_listen -> audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5e72ff16-7e75-53f0-b0e9-8eed744a6180', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_civic_decision_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12bb57d9ab82e52d5bea1027796a0a377b06f5ed3d0292af917d3651edef52f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99ac2b1e-30f9-5eaa-a326-0ebe9316d220', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5e72ff16-7e75-53f0-b0e9-8eed744a6180', 1), '12bb57d9ab82e52d5bea1027796a0a377b06f5ed3d0292af917d3651edef52f8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3', 6713, '2026-09-13 10:39:11.813790', '78155d1548430af46a15715606ae6669590b29293cd57cebaba63067d280ee92', 'validated', '{"audio_key":"90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0","entity_key":"ex_civic_decision_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78155d1548430af46a15715606ae6669590b29293cd57cebaba63067d280ee92","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90cd5b4601f0d8428a8ee584b595cf4503a4319b1dd8b954e84b70bea6913bc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_01 -> audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49e8f0fc-8a9e-5a6c-aab3-870d2d4c1842', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d2f11576a5f1a297de5148b3ed0d6698d9b8057164ad42f08631912a724bac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71106448-e5df-5ca8-b286-8b9f5763e05b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49e8f0fc-8a9e-5a6c-aab3-870d2d4c1842', 1), '1d2f11576a5f1a297de5148b3ed0d6698d9b8057164ad42f08631912a724bac2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3', 4075, '2026-09-13 10:39:12.712712', '1a7fdbda89f26da3906efad135cff12b36accfe92137b36beae96bf7efdcdf75', 'validated', '{"audio_key":"946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459","entity_key":"u_source_evaluation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a7fdbda89f26da3906efad135cff12b36accfe92137b36beae96bf7efdcdf75","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_evaluation_01_listen -> audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('56ed955c-24c9-5ef8-b893-cc147b29afa0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_evaluation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d2f11576a5f1a297de5148b3ed0d6698d9b8057164ad42f08631912a724bac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b92fa80-4975-57db-b0a1-8fe93f67b06d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('56ed955c-24c9-5ef8-b893-cc147b29afa0', 1), '1d2f11576a5f1a297de5148b3ed0d6698d9b8057164ad42f08631912a724bac2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3', 4075, '2026-09-13 10:39:12.712712', '1a7fdbda89f26da3906efad135cff12b36accfe92137b36beae96bf7efdcdf75', 'validated', '{"audio_key":"946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459","entity_key":"ex_source_evaluation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a7fdbda89f26da3906efad135cff12b36accfe92137b36beae96bf7efdcdf75","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/946f7b3e158ff8e3af6169e91bd1bbdb6d413d269fabfc3ac68a127e447c4459.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_04 -> audio/generated/de-DE/utterances/9731314cd41fbfeb9bc3e31fbc8d7c1d60e294b2c8dde5dff1d609ab67c62773.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c87c7fd-c167-51a3-94c4-84c3e2bcd843', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce9d1a6429541cbb1beebf8b224d5fd24f0192ee7bf57db0ebb36d68d3303f31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3ace197-1b63-5e12-82cf-cb033e631a47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c87c7fd-c167-51a3-94c4-84c3e2bcd843', 1), 'ce9d1a6429541cbb1beebf8b224d5fd24f0192ee7bf57db0ebb36d68d3303f31',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9731314cd41fbfeb9bc3e31fbc8d7c1d60e294b2c8dde5dff1d609ab67c62773.mp3', 4414, '2026-09-13 10:39:13.171474', '3518a453b0070c4944a51b19be34f4a4487f32b1dbd4ba9342094c38a0802288', 'validated', '{"audio_key":"9731314cd41fbfeb9bc3e31fbc8d7c1d60e294b2c8dde5dff1d609ab67c62773","entity_key":"u_interdisciplinary_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3518a453b0070c4944a51b19be34f4a4487f32b1dbd4ba9342094c38a0802288","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9731314cd41fbfeb9bc3e31fbc8d7c1d60e294b2c8dde5dff1d609ab67c62773.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_06 -> audio/generated/de-DE/utterances/98223b7f58a98a8d65ea2eee97912aaf9fc3b76b236b015e19fe21c892428cb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66394639-7ca4-54d4-94c2-61c33bba4002', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c38eb5b6e089defc1232e154d6f2077966ab6546f2ed7bebec7aede27d9d250'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e4bac97-7a22-5ebb-b19d-ff11f9d35e36', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66394639-7ca4-54d4-94c2-61c33bba4002', 1), '8c38eb5b6e089defc1232e154d6f2077966ab6546f2ed7bebec7aede27d9d250',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/98223b7f58a98a8d65ea2eee97912aaf9fc3b76b236b015e19fe21c892428cb1.mp3', 5433, '2026-09-13 10:39:14.225014', 'de180a59f2fa7da1bd6a41f6cd406a77f2d4f1521702c30376afc98e4f99a8f2', 'validated', '{"audio_key":"98223b7f58a98a8d65ea2eee97912aaf9fc3b76b236b015e19fe21c892428cb1","entity_key":"u_media_interviews_public_statements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de180a59f2fa7da1bd6a41f6cd406a77f2d4f1521702c30376afc98e4f99a8f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/98223b7f58a98a8d65ea2eee97912aaf9fc3b76b236b015e19fe21c892428cb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_04 -> audio/generated/de-DE/utterances/98e3b9cafdb3cabe7b2ca66526c532f0144a83201d8b5db29b608c765a64b276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('abe95bd6-0fcc-56ab-83d6-c6a29733fce1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd71ac8ccab678851ac33ef7a15c5093dbf82ddd549a8a7768cae9b7164f99c84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0af33d-4a21-566d-a9e3-e8ff72d9647d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('abe95bd6-0fcc-56ab-83d6-c6a29733fce1', 1), 'd71ac8ccab678851ac33ef7a15c5093dbf82ddd549a8a7768cae9b7164f99c84',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/98e3b9cafdb3cabe7b2ca66526c532f0144a83201d8b5db29b608c765a64b276.mp3', 4362, '2026-09-13 10:39:14.524291', '051e6feba6bc0e05df7ac6e942941cae9899ea770a4aa9eaaacd01d7e5ccae77', 'validated', '{"audio_key":"98e3b9cafdb3cabe7b2ca66526c532f0144a83201d8b5db29b608c765a64b276","entity_key":"u_public_debate_value_conflicts_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"051e6feba6bc0e05df7ac6e942941cae9899ea770a4aa9eaaacd01d7e5ccae77","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/98e3b9cafdb3cabe7b2ca66526c532f0144a83201d8b5db29b608c765a64b276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_01 -> audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6a137cbe-1676-5d34-ae2f-1066c751e378', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21162ebc48e6cd0f411477a6acd6ad3dc49e6019555da8367f84b696c8ed8be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4da5b910-c89c-5107-885c-58e06e77dd28', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6a137cbe-1676-5d34-ae2f-1066c751e378', 1), '21162ebc48e6cd0f411477a6acd6ad3dc49e6019555da8367f84b696c8ed8be8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3', 5381, '2026-09-13 10:39:15.680371', 'eb2cf74409cf2525ca3b1cc68d2a958122c69be628ccc037922630e7923c06ff', 'validated', '{"audio_key":"9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7","entity_key":"u_administrative_appeals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb2cf74409cf2525ca3b1cc68d2a958122c69be628ccc037922630e7923c06ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_administrative_appeals_01_listen -> audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('55f8c1c8-20d6-5192-a86b-95b27193a3e8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_administrative_appeals_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21162ebc48e6cd0f411477a6acd6ad3dc49e6019555da8367f84b696c8ed8be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a4a62d5-cf9e-57b2-a96a-b63e901955b1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('55f8c1c8-20d6-5192-a86b-95b27193a3e8', 1), '21162ebc48e6cd0f411477a6acd6ad3dc49e6019555da8367f84b696c8ed8be8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3', 5381, '2026-09-13 10:39:15.680371', 'eb2cf74409cf2525ca3b1cc68d2a958122c69be628ccc037922630e7923c06ff', 'validated', '{"audio_key":"9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7","entity_key":"ex_administrative_appeals_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb2cf74409cf2525ca3b1cc68d2a958122c69be628ccc037922630e7923c06ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9a5fa618a24526627f329ed254c64e62eafda7dd91bd97096f2d0df2aeef03e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_06 -> audio/generated/de-DE/utterances/9f231c4cdd6a8d46d40721e01eadef923d440d666927e3e9572ccf501f570e2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bec3f758-7009-5da1-8934-944a2a19b3b4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e15a60a36b17d11625b88293dd227e16a5a937cb3c826438bb234108c2d78bb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6d7d1cd-9ae4-508a-9ddb-23191e681a2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bec3f758-7009-5da1-8934-944a2a19b3b4', 1), 'e15a60a36b17d11625b88293dd227e16a5a937cb3c826438bb234108c2d78bb1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f231c4cdd6a8d46d40721e01eadef923d440d666927e3e9572ccf501f570e2b.mp3', 5041, '2026-09-13 10:39:15.991428', 'd408ac05a672298f939e3a8d902f5739f6d0dc09c45a510b1b3d23549247cc4b', 'validated', '{"audio_key":"9f231c4cdd6a8d46d40721e01eadef923d440d666927e3e9572ccf501f570e2b","entity_key":"u_administrative_appeals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d408ac05a672298f939e3a8d902f5739f6d0dc09c45a510b1b3d23549247cc4b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f231c4cdd6a8d46d40721e01eadef923d440d666927e3e9572ccf501f570e2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_06 -> audio/generated/de-DE/utterances/9f4ab38fcad8d50ac9a592f564f74480fc5af350350bf94057692fee66fdbea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0dbab475-e4a2-5b3e-bf12-1d3aea5a0b12', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '969dac109784ee2bf2dec67eff4ab28b3759e9fa73505892af6b69ca1a92c857'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aaed73c-8f8f-5b07-b811-bbf5267a7139', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0dbab475-e4a2-5b3e-bf12-1d3aea5a0b12', 1), '969dac109784ee2bf2dec67eff4ab28b3759e9fa73505892af6b69ca1a92c857',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f4ab38fcad8d50ac9a592f564f74480fc5af350350bf94057692fee66fdbea5.mp3', 5381, '2026-09-13 10:39:17.196917', 'b61cfe217edcfff44720e948ddaf50b27e6dc90f647c91dcca3bd65b6724386d', 'validated', '{"audio_key":"9f4ab38fcad8d50ac9a592f564f74480fc5af350350bf94057692fee66fdbea5","entity_key":"u_community_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b61cfe217edcfff44720e948ddaf50b27e6dc90f647c91dcca3bd65b6724386d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f4ab38fcad8d50ac9a592f564f74480fc5af350350bf94057692fee66fdbea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_04 -> audio/generated/de-DE/utterances/a1c6172cbb0578f6993682048fbf30f478ee3c063ffe967cc194d99bc8a0d0d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7e7ecd72-273e-571e-b358-351569683315', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd88a76010b63856f92be05a76bed41f3e897e5f59cb0542c8ffea7e9838a0e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7c8357a-f882-5996-9dbd-e6e54bc956cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7e7ecd72-273e-571e-b358-351569683315', 1), 'fd88a76010b63856f92be05a76bed41f3e897e5f59cb0542c8ffea7e9838a0e9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a1c6172cbb0578f6993682048fbf30f478ee3c063ffe967cc194d99bc8a0d0d4.mp3', 5041, '2026-09-13 10:39:17.508363', 'cd115ba5d684b998ee7ae637deb67f5f0bc3134c8853aa491b911e6518740901', 'validated', '{"audio_key":"a1c6172cbb0578f6993682048fbf30f478ee3c063ffe967cc194d99bc8a0d0d4","entity_key":"u_ethical_tradeoffs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd115ba5d684b998ee7ae637deb67f5f0bc3134c8853aa491b911e6518740901","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a1c6172cbb0578f6993682048fbf30f478ee3c063ffe967cc194d99bc8a0d0d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_06 -> audio/generated/de-DE/utterances/aa3abf8e008134dc0f6cab2a1d004cf7be4ca9e22cb0eb138a2647ba162ff6fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1c6a91cb-e0fe-507a-90d2-ad081ef12ace', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85a863b2010028368f54a4f67dff65dd4c78f1f53dd7948c3f1540a390585359'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbfe66bb-dbeb-53fc-83dc-2f40a5a6fbb3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1c6a91cb-e0fe-507a-90d2-ad081ef12ace', 1), '85a863b2010028368f54a4f67dff65dd4c78f1f53dd7948c3f1540a390585359',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa3abf8e008134dc0f6cab2a1d004cf7be4ca9e22cb0eb138a2647ba162ff6fe.mp3', 5668, '2026-09-13 10:39:19.012149', '60b0391c9510119ebc424f62587b15e3a4515a05572f02558ef96c40a1d64947', 'validated', '{"audio_key":"aa3abf8e008134dc0f6cab2a1d004cf7be4ca9e22cb0eb138a2647ba162ff6fe","entity_key":"u_interdisciplinary_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60b0391c9510119ebc424f62587b15e3a4515a05572f02558ef96c40a1d64947","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa3abf8e008134dc0f6cab2a1d004cf7be4ca9e22cb0eb138a2647ba162ff6fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_05 -> audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('032f5dd8-149d-5f82-bfee-47f746a99ad6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'faedce102baaf748d787dbf8bb31c4ba542bde7ab682ef9d43a90b0952555311'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c7f637e-da4a-56be-8d3b-2548c580ed3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('032f5dd8-149d-5f82-bfee-47f746a99ad6', 1), 'faedce102baaf748d787dbf8bb31c4ba542bde7ab682ef9d43a90b0952555311',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3', 5015, '2026-09-13 10:39:18.942431', '12a608da69e733a34d9aec846c886912f0623da260c8d92ddcf11d76ec170515', 'validated', '{"audio_key":"ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c","entity_key":"u_source_evaluation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12a608da69e733a34d9aec846c886912f0623da260c8d92ddcf11d76ec170515","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_evaluation_03_listen -> audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('34c1562e-75dc-5e0a-a2ab-4b22c440d1ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_evaluation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'faedce102baaf748d787dbf8bb31c4ba542bde7ab682ef9d43a90b0952555311'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cfe4e8c-f4b8-5105-b034-c9dda80640f3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('34c1562e-75dc-5e0a-a2ab-4b22c440d1ba', 1), 'faedce102baaf748d787dbf8bb31c4ba542bde7ab682ef9d43a90b0952555311',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3', 5015, '2026-09-13 10:39:18.942431', '12a608da69e733a34d9aec846c886912f0623da260c8d92ddcf11d76ec170515', 'validated', '{"audio_key":"ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c","entity_key":"ex_source_evaluation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12a608da69e733a34d9aec846c886912f0623da260c8d92ddcf11d76ec170515","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab149ca46c89cee3fb46b5205240ced0e89cd58b5b0185dbc63048cf3c3c948c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_06 -> audio/generated/de-DE/utterances/ae7a91b19afe4442d2ec7c9a8e214c4e5fd32fbd8c01183b16f9010c78277618.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d268c868-b8d5-5165-b5fd-98b8af0ce0fb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '165d3a73cb5f110e9a555daf443209650d8a8e03ef5dcb30574add1cb32eec03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('041099b9-9f85-5840-a190-29e1813c5986', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d268c868-b8d5-5165-b5fd-98b8af0ce0fb', 1), '165d3a73cb5f110e9a555daf443209650d8a8e03ef5dcb30574add1cb32eec03',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ae7a91b19afe4442d2ec7c9a8e214c4e5fd32fbd8c01183b16f9010c78277618.mp3', 5694, '2026-09-13 10:39:20.459137', 'd00e97a04d7a5b781d8c0edb0300587ca59ca75fdc8fecab8653c0781b587fe3', 'validated', '{"audio_key":"ae7a91b19afe4442d2ec7c9a8e214c4e5fd32fbd8c01183b16f9010c78277618","entity_key":"u_academic_seminar_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d00e97a04d7a5b781d8c0edb0300587ca59ca75fdc8fecab8653c0781b587fe3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ae7a91b19afe4442d2ec7c9a8e214c4e5fd32fbd8c01183b16f9010c78277618.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_05 -> audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5aea44cb-b8a8-5fc8-b973-cc833a93dc89', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a842760cad460bb26048322e1700c1805210b704eff3024559f69fbaec1c2f59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('226d86f7-706f-5750-a3df-13c3bf4a785c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5aea44cb-b8a8-5fc8-b973-cc833a93dc89', 1), 'a842760cad460bb26048322e1700c1805210b704eff3024559f69fbaec1c2f59',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3', 5250, '2026-09-13 10:39:20.511458', '9e1b229cb163e2fa373d9ab5db9cc096606fcddf0f60735a3c3180eaf09ecead', 'validated', '{"audio_key":"ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4","entity_key":"u_ethical_tradeoffs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e1b229cb163e2fa373d9ab5db9cc096606fcddf0f60735a3c3180eaf09ecead","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ethical_tradeoffs_03_listen -> audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('af7943da-544c-5a66-a014-0fbe5951c508', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ethical_tradeoffs_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a842760cad460bb26048322e1700c1805210b704eff3024559f69fbaec1c2f59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a651d19b-4797-54c3-b5a3-8bdcb62b769b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('af7943da-544c-5a66-a014-0fbe5951c508', 1), 'a842760cad460bb26048322e1700c1805210b704eff3024559f69fbaec1c2f59',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3', 5250, '2026-09-13 10:39:20.511458', '9e1b229cb163e2fa373d9ab5db9cc096606fcddf0f60735a3c3180eaf09ecead', 'validated', '{"audio_key":"ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4","entity_key":"ex_ethical_tradeoffs_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e1b229cb163e2fa373d9ab5db9cc096606fcddf0f60735a3c3180eaf09ecead","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ae9823adab6c0b3638a935a23f2be04728ae006df2a2fe353085b5ca6b98e7e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_06 -> audio/generated/de-DE/utterances/b0bd35da847de579528ab4d56322e7709a81822c7bcb41b82f2dcf9833b3fec2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1f693743-2736-5d39-bbd8-6837de9cf7a0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be8798a4b9789bfc396b14c8dc77ad0504b6a4317b86c9fb175830984e908935'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32360207-5b67-520b-ae0c-e26833c8252b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1f693743-2736-5d39-bbd8-6837de9cf7a0', 1), 'be8798a4b9789bfc396b14c8dc77ad0504b6a4317b86c9fb175830984e908935',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b0bd35da847de579528ab4d56322e7709a81822c7bcb41b82f2dcf9833b3fec2.mp3', 5799, '2026-09-13 10:39:22.045069', '915e9dd4fc2ace420f0783648b62c24e5530b6ae36163c8827ccf75c62235f2d', 'validated', '{"audio_key":"b0bd35da847de579528ab4d56322e7709a81822c7bcb41b82f2dcf9833b3fec2","entity_key":"u_source_evaluation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"915e9dd4fc2ace420f0783648b62c24e5530b6ae36163c8827ccf75c62235f2d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b0bd35da847de579528ab4d56322e7709a81822c7bcb41b82f2dcf9833b3fec2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_04 -> audio/generated/de-DE/utterances/b5d60ee7f1c58fa1f2c59d0b68b0982ec200837f00a1f4aeb53030695c5a554d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58fd21da-bd1c-5f6e-ac67-660c95f181fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f65d3baee0cc712eea0188891cb388c8301ea45dec6014e1aba9c0502695c01e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5870b8e-5d77-50de-9ea3-6cd818000c15', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58fd21da-bd1c-5f6e-ac67-660c95f181fe', 1), 'f65d3baee0cc712eea0188891cb388c8301ea45dec6014e1aba9c0502695c01e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5d60ee7f1c58fa1f2c59d0b68b0982ec200837f00a1f4aeb53030695c5a554d.mp3', 4414, '2026-09-13 10:39:21.829029', '5e1e031fa14a0fe13995422e60b69406cf94d22c294e4c3ed9537a15682d89f6', 'validated', '{"audio_key":"b5d60ee7f1c58fa1f2c59d0b68b0982ec200837f00a1f4aeb53030695c5a554d","entity_key":"u_academic_seminar_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e1e031fa14a0fe13995422e60b69406cf94d22c294e4c3ed9537a15682d89f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5d60ee7f1c58fa1f2c59d0b68b0982ec200837f00a1f4aeb53030695c5a554d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_seminar_discussion_02 -> audio/generated/de-DE/utterances/b6e89cc5da14c61655f1b80cf3f744a5d97fbffcc661fb846845746c764dd75a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d31c447f-48ec-5f17-8d17-6b928ba38948', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_seminar_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95fcff38d01a0f0fab8c92f4442d751458fd4c76c2755ef796908dac1819f6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bf5f088-a9ef-53f7-b387-fa28f21a371f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d31c447f-48ec-5f17-8d17-6b928ba38948', 1), '95fcff38d01a0f0fab8c92f4442d751458fd4c76c2755ef796908dac1819f6ed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b6e89cc5da14c61655f1b80cf3f744a5d97fbffcc661fb846845746c764dd75a.mp3', 4257, '2026-09-13 10:39:23.158336', '296908b6e5db266cf373db0e227514b5623102e073553a5411ec1712e5819e76', 'validated', '{"audio_key":"b6e89cc5da14c61655f1b80cf3f744a5d97fbffcc661fb846845746c764dd75a","entity_key":"u_academic_seminar_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"296908b6e5db266cf373db0e227514b5623102e073553a5411ec1712e5819e76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b6e89cc5da14c61655f1b80cf3f744a5d97fbffcc661fb846845746c764dd75a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_debate_value_conflicts_02 -> audio/generated/de-DE/utterances/b6f993e1be5cd009ad050489296eac325e3989cf48f76d1a0a69bf75af0b08bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e033afd3-eac7-580a-a146-a45df170f1a4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_debate_value_conflicts_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec669758a853956474246c6d0640ce4080f545439ece6be17135401b4e97a65a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('313b1ef2-557f-533d-afba-1c2d7c707b04', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e033afd3-eac7-580a-a146-a45df170f1a4', 1), 'ec669758a853956474246c6d0640ce4080f545439ece6be17135401b4e97a65a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b6f993e1be5cd009ad050489296eac325e3989cf48f76d1a0a69bf75af0b08bc.mp3', 5511, '2026-09-13 10:39:23.576865', '24526df7230ebbc19e5ff666000ac392816fac14dfd74226a4a51a422908dbe3', 'validated', '{"audio_key":"b6f993e1be5cd009ad050489296eac325e3989cf48f76d1a0a69bf75af0b08bc","entity_key":"u_public_debate_value_conflicts_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24526df7230ebbc19e5ff666000ac392816fac14dfd74226a4a51a422908dbe3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b6f993e1be5cd009ad050489296eac325e3989cf48f76d1a0a69bf75af0b08bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_05 -> audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3256279b-d539-58df-a195-bc50efdb186f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8bb06690d3f19dfea838c02b89124c247eb908fcdd47c515bc0ef0796a788c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a6a9727-2a27-59ac-a1f7-45639adfef7e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3256279b-d539-58df-a195-bc50efdb186f', 1), 'c8bb06690d3f19dfea838c02b89124c247eb908fcdd47c515bc0ef0796a788c4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3', 5041, '2026-09-13 10:39:24.596161', '6e4946d750c4535db96cf2afec7b93f6767466a8cd8d594a083cdecf94aa6fb7', 'validated', '{"audio_key":"ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738","entity_key":"u_community_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e4946d750c4535db96cf2afec7b93f6767466a8cd8d594a083cdecf94aa6fb7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_community_conflict_mediation_03_listen -> audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f82b2df2-7b80-57e6-b9d2-d3a92ca273ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_community_conflict_mediation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8bb06690d3f19dfea838c02b89124c247eb908fcdd47c515bc0ef0796a788c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b591ebe9-5038-5e5b-b67b-30878654557e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f82b2df2-7b80-57e6-b9d2-d3a92ca273ce', 1), 'c8bb06690d3f19dfea838c02b89124c247eb908fcdd47c515bc0ef0796a788c4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3', 5041, '2026-09-13 10:39:24.596161', '6e4946d750c4535db96cf2afec7b93f6767466a8cd8d594a083cdecf94aa6fb7', 'validated', '{"audio_key":"ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738","entity_key":"ex_community_conflict_mediation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e4946d750c4535db96cf2afec7b93f6767466a8cd8d594a083cdecf94aa6fb7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ba0efb590ab6ca3b8a97f443de29f117994304d4804bba9dcdfa5b3db5443738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_05 -> audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f5e55ede-0ee6-5dec-9e3d-77d1ce222a55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0030d619f50bc1cf06e0dd8071159d13c54942768b0f3b2e9dad6af3971740d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b1e3010-abdb-5003-afff-45de6678524c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f5e55ede-0ee6-5dec-9e3d-77d1ce222a55', 1), '0030d619f50bc1cf06e0dd8071159d13c54942768b0f3b2e9dad6af3971740d0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3', 5041, '2026-09-13 10:39:25.034061', 'a0d05e6f86e3482f06d2acddf66c92140d6891929308932f63bb9b7cdea3f380', 'validated', '{"audio_key":"c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e","entity_key":"u_administrative_appeals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0d05e6f86e3482f06d2acddf66c92140d6891929308932f63bb9b7cdea3f380","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_administrative_appeals_03_listen -> audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('036bc619-6841-5332-b195-98b67de60746', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_administrative_appeals_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0030d619f50bc1cf06e0dd8071159d13c54942768b0f3b2e9dad6af3971740d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a44072b4-ccfb-5194-aa58-8370bbcc7d73', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('036bc619-6841-5332-b195-98b67de60746', 1), '0030d619f50bc1cf06e0dd8071159d13c54942768b0f3b2e9dad6af3971740d0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3', 5041, '2026-09-13 10:39:25.034061', 'a0d05e6f86e3482f06d2acddf66c92140d6891929308932f63bb9b7cdea3f380', 'validated', '{"audio_key":"c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e","entity_key":"ex_administrative_appeals_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0d05e6f86e3482f06d2acddf66c92140d6891929308932f63bb9b7cdea3f380","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c2e3811e48c49329f70944e74df4e421851d758d85cca93d46d0203b2696ab9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_evaluation_04 -> audio/generated/de-DE/utterances/c5060d41de319eef1e241634823b9a5b271680ebbf42ec4bf8b0140c6af4f245.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc49e71d-99ce-5c65-9355-409653163fd3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_evaluation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf498a03c43f6518fda97c2ab748412aa2598461f9aea98af61be548c51a595d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cd1f68e-532a-563e-9830-49a76e65ed1b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc49e71d-99ce-5c65-9355-409653163fd3', 1), 'bf498a03c43f6518fda97c2ab748412aa2598461f9aea98af61be548c51a595d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c5060d41de319eef1e241634823b9a5b271680ebbf42ec4bf8b0140c6af4f245.mp3', 5015, '2026-09-13 10:39:26.050787', '55cf3e8646a4bf346b26743ae23190e6902bbc7c5b39d087ae185a125893684d', 'validated', '{"audio_key":"c5060d41de319eef1e241634823b9a5b271680ebbf42ec4bf8b0140c6af4f245","entity_key":"u_source_evaluation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55cf3e8646a4bf346b26743ae23190e6902bbc7c5b39d087ae185a125893684d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c5060d41de319eef1e241634823b9a5b271680ebbf42ec4bf8b0140c6af4f245.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_01 -> audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e527b8f2-15b5-57e8-a917-6a32d4b06530', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acaae9165c62c82967551a16c01be07eb227ae3c6a458783f2dfbc3ca9c97306'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68e5e078-7c8b-5ed8-afdf-d544954e0ff0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e527b8f2-15b5-57e8-a917-6a32d4b06530', 1), 'acaae9165c62c82967551a16c01be07eb227ae3c6a458783f2dfbc3ca9c97306',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3', 5459, '2026-09-13 10:39:26.583231', '4b60f13f4aa1a31d3e0744cb95096b1ad20a64579b767fbe20a3d6ce9c7565dc', 'validated', '{"audio_key":"c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144","entity_key":"u_ethical_tradeoffs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b60f13f4aa1a31d3e0744cb95096b1ad20a64579b767fbe20a3d6ce9c7565dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ethical_tradeoffs_01_listen -> audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1d43b91a-d7a2-513a-9c79-1c168b1c3b59', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ethical_tradeoffs_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acaae9165c62c82967551a16c01be07eb227ae3c6a458783f2dfbc3ca9c97306'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24586c4f-6088-54b0-9dc1-1f04ee695be9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1d43b91a-d7a2-513a-9c79-1c168b1c3b59', 1), 'acaae9165c62c82967551a16c01be07eb227ae3c6a458783f2dfbc3ca9c97306',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3', 5459, '2026-09-13 10:39:26.583231', '4b60f13f4aa1a31d3e0744cb95096b1ad20a64579b767fbe20a3d6ce9c7565dc', 'validated', '{"audio_key":"c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144","entity_key":"ex_ethical_tradeoffs_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b60f13f4aa1a31d3e0744cb95096b1ad20a64579b767fbe20a3d6ce9c7565dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c9bc984241937c86747636a0dd0d87f7d62b4bbd9404f045a01a2af1928fb144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_administrative_appeals_04 -> audio/generated/de-DE/utterances/ca8720687e8c1e08a2ecc7e4d3f683ffb33f68d949969b0c980eafc6992abfa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7fdc711a-8260-53be-a7aa-33f26b2a5153', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_administrative_appeals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b45e36c4c011b4e0f770bc474544714006eab13c7a6a6c8bbee37e130dcfa90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d9a1de6-8013-5807-a876-e59db65dad41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7fdc711a-8260-53be-a7aa-33f26b2a5153', 1), '4b45e36c4c011b4e0f770bc474544714006eab13c7a6a6c8bbee37e130dcfa90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca8720687e8c1e08a2ecc7e4d3f683ffb33f68d949969b0c980eafc6992abfa4.mp3', 5276, '2026-09-13 10:39:27.578823', 'd0483dd503b6021eede29d9755363f407a28687bccdcb2a1b2a857e63087530c', 'validated', '{"audio_key":"ca8720687e8c1e08a2ecc7e4d3f683ffb33f68d949969b0c980eafc6992abfa4","entity_key":"u_administrative_appeals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0483dd503b6021eede29d9755363f407a28687bccdcb2a1b2a857e63087530c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca8720687e8c1e08a2ecc7e4d3f683ffb33f68d949969b0c980eafc6992abfa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_03 -> audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9048b3d9-329d-5d81-8cee-2a598540adbf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42fcf3c72b55c0b966aa53956760ddf294f78785dc5766cf3549ded9e7315b55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('343cea0b-fdab-5c21-a405-28dc8a328414', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9048b3d9-329d-5d81-8cee-2a598540adbf', 1), '42fcf3c72b55c0b966aa53956760ddf294f78785dc5766cf3549ded9e7315b55',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3', 4075, '2026-09-13 10:39:27.881951', 'd95330696e615bec9ed6cf4c10383937f777e04e1077248c4c86987ccaf08029', 'validated', '{"audio_key":"cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c","entity_key":"u_media_interviews_public_statements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d95330696e615bec9ed6cf4c10383937f777e04e1077248c4c86987ccaf08029","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_interviews_public_statements_02_listen -> audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2e6ea72d-f5fb-58b6-9683-6e4197a980e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_interviews_public_statements_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42fcf3c72b55c0b966aa53956760ddf294f78785dc5766cf3549ded9e7315b55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b18b795b-7450-5560-aae5-53bf61b12e99', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2e6ea72d-f5fb-58b6-9683-6e4197a980e3', 1), '42fcf3c72b55c0b966aa53956760ddf294f78785dc5766cf3549ded9e7315b55',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3', 4075, '2026-09-13 10:39:27.881951', 'd95330696e615bec9ed6cf4c10383937f777e04e1077248c4c86987ccaf08029', 'validated', '{"audio_key":"cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c","entity_key":"ex_media_interviews_public_statements_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d95330696e615bec9ed6cf4c10383937f777e04e1077248c4c86987ccaf08029","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cdc3c80ed9cda02ff7bd9e86a1723794106c82fcb302ba4b86a43cedd1b2652c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_04 -> audio/generated/de-DE/utterances/d5cd5ee2a55ae4f320ed559a8f44a9b229d911fd2789db52e014813f82a53905.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e302a15f-ae6f-5c3b-a40f-edfb0390a05e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60e28737810f3de5c7c25449ce702ef7390117bd97d66558dca6731a7d3306cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec3fd7a0-69f3-59d4-9ceb-c7f326b5c8ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e302a15f-ae6f-5c3b-a40f-edfb0390a05e', 1), '60e28737810f3de5c7c25449ce702ef7390117bd97d66558dca6731a7d3306cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d5cd5ee2a55ae4f320ed559a8f44a9b229d911fd2789db52e014813f82a53905.mp3', 4545, '2026-09-13 10:39:29.000956', '0e3db19c4d38b70adfa6027842f4b6d57d86a2c5d81948b13832d2e6c1e88059', 'validated', '{"audio_key":"d5cd5ee2a55ae4f320ed559a8f44a9b229d911fd2789db52e014813f82a53905","entity_key":"u_influence_without_authority_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e3db19c4d38b70adfa6027842f4b6d57d86a2c5d81948b13832d2e6c1e88059","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d5cd5ee2a55ae4f320ed559a8f44a9b229d911fd2789db52e014813f82a53905.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_05 -> audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a15c5f4b-acc1-5d02-941c-5537f46946d6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6789f425cd59ba2e9b81a8f55707302cd90b8fc7bb6978cc782ae509c7ff4a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0972b95c-5d04-55c3-8a41-0593888ffc04', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a15c5f4b-acc1-5d02-941c-5537f46946d6', 1), 'b6789f425cd59ba2e9b81a8f55707302cd90b8fc7bb6978cc782ae509c7ff4a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3', 4780, '2026-09-13 10:39:29.369242', '9aced1bbde063771e8e1515d8f77c8c79953baf81ef09d70f642aa07a0042d14', 'validated', '{"audio_key":"d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347","entity_key":"u_influence_without_authority_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9aced1bbde063771e8e1515d8f77c8c79953baf81ef09d70f642aa07a0042d14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_influence_without_authority_03_listen -> audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('914729f3-4766-55a3-9b1b-ea95b2c400fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_influence_without_authority_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6789f425cd59ba2e9b81a8f55707302cd90b8fc7bb6978cc782ae509c7ff4a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b16a5ef-4b89-5e36-9975-e0f278687949', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('914729f3-4766-55a3-9b1b-ea95b2c400fd', 1), 'b6789f425cd59ba2e9b81a8f55707302cd90b8fc7bb6978cc782ae509c7ff4a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3', 4780, '2026-09-13 10:39:29.369242', '9aced1bbde063771e8e1515d8f77c8c79953baf81ef09d70f642aa07a0042d14', 'validated', '{"audio_key":"d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347","entity_key":"ex_influence_without_authority_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9aced1bbde063771e8e1515d8f77c8c79953baf81ef09d70f642aa07a0042d14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d60297fe73e3d48414d2d2a01753e3b6a7204d63bd28431ae13c1d01249be347.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_civic_decision_capstone_01 -> audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d062c69-f744-5ec5-8b60-97aaf31ea754', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_civic_decision_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16869db8c4ee3a4cd8ea241afed8cb9ca09a134a240dba8b95e2b306beada76b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c9f6f18-9a62-5773-8a88-71ec6d70f97f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d062c69-f744-5ec5-8b60-97aaf31ea754', 1), '16869db8c4ee3a4cd8ea241afed8cb9ca09a134a240dba8b95e2b306beada76b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3', 6713, '2026-09-13 10:39:30.688816', '61471604a6e3a8a5b350e6188a8ac1e36c34981fd4667bc4be89c9a770471711', 'validated', '{"audio_key":"e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89","entity_key":"u_civic_decision_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61471604a6e3a8a5b350e6188a8ac1e36c34981fd4667bc4be89c9a770471711","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_civic_decision_capstone_01_listen -> audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4714cf40-609e-53a8-bafd-f4810396a7ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_civic_decision_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16869db8c4ee3a4cd8ea241afed8cb9ca09a134a240dba8b95e2b306beada76b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c86b7f22-86c6-5cc5-b0fb-57e1a5b32a31', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4714cf40-609e-53a8-bafd-f4810396a7ab', 1), '16869db8c4ee3a4cd8ea241afed8cb9ca09a134a240dba8b95e2b306beada76b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3', 6713, '2026-09-13 10:39:30.688816', '61471604a6e3a8a5b350e6188a8ac1e36c34981fd4667bc4be89c9a770471711', 'validated', '{"audio_key":"e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89","entity_key":"ex_civic_decision_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61471604a6e3a8a5b350e6188a8ac1e36c34981fd4667bc4be89c9a770471711","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e3df7f18caa638e78fa8023b140daafd42cad0566b5ba89c222206e648464b89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_interviews_public_statements_02 -> audio/generated/de-DE/utterances/e4210cdf1d29b6827d2ac68bde68b47bb8bb96fe1fd90f6c7fc0dcff87cc89fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd230bb6-574b-5702-b293-a8b09285720a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_interviews_public_statements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '112f5806e64ecec3c3b5b6fad350d7539037afc5a2f51aa318ddbc9dfc5923ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8e4d3f1-55c6-5f55-8f20-98444206b10a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd230bb6-574b-5702-b293-a8b09285720a', 1), '112f5806e64ecec3c3b5b6fad350d7539037afc5a2f51aa318ddbc9dfc5923ec',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4210cdf1d29b6827d2ac68bde68b47bb8bb96fe1fd90f6c7fc0dcff87cc89fc.mp3', 3709, '2026-09-13 10:39:30.660027', '5423bc63452f54c6ca95fcd3e85955fe130ab8f48b7f30ebc953d435e59e8872', 'validated', '{"audio_key":"e4210cdf1d29b6827d2ac68bde68b47bb8bb96fe1fd90f6c7fc0dcff87cc89fc","entity_key":"u_media_interviews_public_statements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5423bc63452f54c6ca95fcd3e85955fe130ab8f48b7f30ebc953d435e59e8872","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4210cdf1d29b6827d2ac68bde68b47bb8bb96fe1fd90f6c7fc0dcff87cc89fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_community_conflict_mediation_04 -> audio/generated/de-DE/utterances/eb7c8b74b9c51a1cc1274fc42babda255220220537ef1a8a69d20087b203b93f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c01d3da4-7c36-5613-930c-da323357a176', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_community_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a617a36f73b15b455e4fe8b18372e5a74ae168db809b65260207cdec206d8858'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c646d827-4a98-5db3-9297-9d15a54cba54', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c01d3da4-7c36-5613-930c-da323357a176', 1), 'a617a36f73b15b455e4fe8b18372e5a74ae168db809b65260207cdec206d8858',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eb7c8b74b9c51a1cc1274fc42babda255220220537ef1a8a69d20087b203b93f.mp3', 6452, '2026-09-13 10:39:32.289235', 'f079acc7b2d3233fa6108c1f611ea14dcf50f48ad875c42fc6746a53c8a1828c', 'validated', '{"audio_key":"eb7c8b74b9c51a1cc1274fc42babda255220220537ef1a8a69d20087b203b93f","entity_key":"u_community_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f079acc7b2d3233fa6108c1f611ea14dcf50f48ad875c42fc6746a53c8a1828c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eb7c8b74b9c51a1cc1274fc42babda255220220537ef1a8a69d20087b203b93f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_03 -> audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a75301bf-1bc5-5f97-8657-8d6bc8ea52b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f88abf5006c023c504fa1f71502d136bf21f1040a4f159748621687512a56fc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2448638e-349e-56fd-bbd3-1d804fd834c3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a75301bf-1bc5-5f97-8657-8d6bc8ea52b6', 1), 'f88abf5006c023c504fa1f71502d136bf21f1040a4f159748621687512a56fc4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3', 5459, '2026-09-13 10:39:32.179825', 'c09f0b772d761d5baa53f6e40bef5692dd7113cd523d0e9e1a1e482b388996dc', 'validated', '{"audio_key":"f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e","entity_key":"u_interdisciplinary_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c09f0b772d761d5baa53f6e40bef5692dd7113cd523d0e9e1a1e482b388996dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interdisciplinary_collaboration_02_listen -> audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3ca5cf1b-6dd6-598e-bba2-7690106badf3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interdisciplinary_collaboration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f88abf5006c023c504fa1f71502d136bf21f1040a4f159748621687512a56fc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf395ab-aa66-5ac9-9abd-6b2da8d69f0d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3ca5cf1b-6dd6-598e-bba2-7690106badf3', 1), 'f88abf5006c023c504fa1f71502d136bf21f1040a4f159748621687512a56fc4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3', 5459, '2026-09-13 10:39:32.179825', 'c09f0b772d761d5baa53f6e40bef5692dd7113cd523d0e9e1a1e482b388996dc', 'validated', '{"audio_key":"f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e","entity_key":"ex_interdisciplinary_collaboration_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c09f0b772d761d5baa53f6e40bef5692dd7113cd523d0e9e1a1e482b388996dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f34f29cc2073149613a5e45e077a02cc8e0f72d860aa385e52fe4f7d57f8416e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_influence_without_authority_06 -> audio/generated/de-DE/utterances/f3799befe07e18d9ed2871da9cbe9045e350b6d82b6ad57cf3f659005a8a6590.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('796d0807-1713-56ac-a815-d8ca10135a84', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_influence_without_authority_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f346eb53e0684be9470c1d8d0d2bf1d755c9d9557e1affa6c5a29711f69fd239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91680dae-36da-5817-bbf8-cb919a80f8cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('796d0807-1713-56ac-a815-d8ca10135a84', 1), 'f346eb53e0684be9470c1d8d0d2bf1d755c9d9557e1affa6c5a29711f69fd239',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f3799befe07e18d9ed2871da9cbe9045e350b6d82b6ad57cf3f659005a8a6590.mp3', 6687, '2026-09-13 10:39:33.821522', '4d659e4eef702ce65902bdc68ea021d57085919189cd8d78faaf944537d391b2', 'validated', '{"audio_key":"f3799befe07e18d9ed2871da9cbe9045e350b6d82b6ad57cf3f659005a8a6590","entity_key":"u_influence_without_authority_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d659e4eef702ce65902bdc68ea021d57085919189cd8d78faaf944537d391b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f3799befe07e18d9ed2871da9cbe9045e350b6d82b6ad57cf3f659005a8a6590.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ethical_tradeoffs_02 -> audio/generated/de-DE/utterances/f576c6a5f2d3b642193990ec3e3329707ce81c71ffbaa2e0795e658c56c3d830.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6883878b-30b4-5e07-af50-abd465296adf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ethical_tradeoffs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e06f783f87f8b443e760d8ade6b19b844998b63910ac6957a20c9089ad660cf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5705b4e7-265c-5be9-9c34-59f14a2b83c7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6883878b-30b4-5e07-af50-abd465296adf', 1), 'e06f783f87f8b443e760d8ade6b19b844998b63910ac6957a20c9089ad660cf8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f576c6a5f2d3b642193990ec3e3329707ce81c71ffbaa2e0795e658c56c3d830.mp3', 4205, '2026-09-13 10:39:33.630575', 'cd89e8381268e458ff138c9de3b70408de4ae67cbbc30d25d3557f28f5ca4747', 'validated', '{"audio_key":"f576c6a5f2d3b642193990ec3e3329707ce81c71ffbaa2e0795e658c56c3d830","entity_key":"u_ethical_tradeoffs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd89e8381268e458ff138c9de3b70408de4ae67cbbc30d25d3557f28f5ca4747","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f576c6a5f2d3b642193990ec3e3329707ce81c71ffbaa2e0795e658c56c3d830.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interdisciplinary_collaboration_05 -> audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9346e6f9-d26f-5c49-b793-b5744bfe85e5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interdisciplinary_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b872cfb37e1bb79473466a140be438442d45595732d530844a3ccfcd70a2a2b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe088210-60ec-56f7-8d13-782bd5db9cae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9346e6f9-d26f-5c49-b793-b5744bfe85e5', 1), 'b872cfb37e1bb79473466a140be438442d45595732d530844a3ccfcd70a2a2b3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3', 5459, '2026-09-13 10:39:35.097285', '2ba6591601a19a4e84b4d7157332ec72be6d7b51e35a13a792cb0c32deb2a0be', 'validated', '{"audio_key":"f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff","entity_key":"u_interdisciplinary_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ba6591601a19a4e84b4d7157332ec72be6d7b51e35a13a792cb0c32deb2a0be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interdisciplinary_collaboration_03_listen -> audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9def73b9-0d01-56b7-a74f-27f97a02353a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interdisciplinary_collaboration_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b872cfb37e1bb79473466a140be438442d45595732d530844a3ccfcd70a2a2b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1553f75-72b3-5205-b652-59fac3c8a252', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9def73b9-0d01-56b7-a74f-27f97a02353a', 1), 'b872cfb37e1bb79473466a140be438442d45595732d530844a3ccfcd70a2a2b3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3', 5459, '2026-09-13 10:39:35.097285', '2ba6591601a19a4e84b4d7157332ec72be6d7b51e35a13a792cb0c32deb2a0be', 'validated', '{"audio_key":"f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff","entity_key":"ex_interdisciplinary_collaboration_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ba6591601a19a4e84b4d7157332ec72be6d7b51e35a13a792cb0c32deb2a0be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f84c326344162a2fa61a50b15210e9366bd568b2d6f69be202144b19de12acff.mp3"}'
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

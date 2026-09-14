-- Generated audio link import for ko-KR C2
-- Source manifest: audio/manifests/ko/C2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_c2_seoul_deliberation_capstone_02:2 -> audio/generated/ko-KR/dialogues/0861c71bb3aefa00ae43a33b26bbfe6d83c8c2f4fece953c4c0a05aff1b35473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac7055eb-6889-5597-a970-a7699a3bb3ca', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '268149348e7d06b5ef4a0963af3ddd71c693856015aa6a0ceee353c11715f0e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91cf992c-8339-5252-9986-f5d04a52b7d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac7055eb-6889-5597-a970-a7699a3bb3ca', 1), '268149348e7d06b5ef4a0963af3ddd71c693856015aa6a0ceee353c11715f0e6',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0861c71bb3aefa00ae43a33b26bbfe6d83c8c2f4fece953c4c0a05aff1b35473.mp3', 4440, '2026-09-14 01:30:23.755659', '995012316c0b02b9afd25410b088a94c18aefa28ddca3c307ee1ccfe6a26107d', 'validated', '{"audio_key":"0861c71bb3aefa00ae43a33b26bbfe6d83c8c2f4fece953c4c0a05aff1b35473","entity_key":"d_c2_seoul_deliberation_capstone_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"995012316c0b02b9afd25410b088a94c18aefa28ddca3c307ee1ccfe6a26107d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/0861c71bb3aefa00ae43a33b26bbfe6d83c8c2f4fece953c4c0a05aff1b35473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_01:3 -> audio/generated/ko-KR/dialogues/0cbc63e3bdf93425a3380ef8d48855986026275cc7f236503ba9f518f7152d8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('213e225a-e669-5268-bc46-2a43437ca15d', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6dad9a14286927d460ed2a1f523b08504525b359641f6818e6708ce595bb0a30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0f8e47a-37a5-5fab-a7f9-69d4d1b4e8ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('213e225a-e669-5268-bc46-2a43437ca15d', 1), '6dad9a14286927d460ed2a1f523b08504525b359641f6818e6708ce595bb0a30',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0cbc63e3bdf93425a3380ef8d48855986026275cc7f236503ba9f518f7152d8b.mp3', 3239, '2026-09-14 01:30:23.637605', 'ce3be1bf41c8d1605f594e71862faceb581d381663f4ad2c5a8b92260be5d698', 'validated', '{"audio_key":"0cbc63e3bdf93425a3380ef8d48855986026275cc7f236503ba9f518f7152d8b","entity_key":"d_sociolinguistic_indexicality_01:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce3be1bf41c8d1605f594e71862faceb581d381663f4ad2c5a8b92260be5d698","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/0cbc63e3bdf93425a3380ef8d48855986026275cc7f236503ba9f518f7152d8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_01:4 -> audio/generated/ko-KR/dialogues/10adcf3f3b2f69e2ef34398d549fda772e03be435b37f7c9df28e68a93dbef43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd772334-265e-5628-aaea-fcfbbb3d7bdf', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f15c9beae6aacb27b09812b01029d36067f34b2569c5d27029d4809b505ec0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a985e1c-6e38-5c8b-834b-aafa0c766db5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd772334-265e-5628-aaea-fcfbbb3d7bdf', 1), '8f15c9beae6aacb27b09812b01029d36067f34b2569c5d27029d4809b505ec0f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/10adcf3f3b2f69e2ef34398d549fda772e03be435b37f7c9df28e68a93dbef43.mp3', 3840, '2026-09-14 01:30:24.923570', '4368fe2f482675cb1ecbc21e6919ed7c18ee629e79a03aaafb24755edf26a91f', 'validated', '{"audio_key":"10adcf3f3b2f69e2ef34398d549fda772e03be435b37f7c9df28e68a93dbef43","entity_key":"d_high_stakes_negotiation_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4368fe2f482675cb1ecbc21e6919ed7c18ee629e79a03aaafb24755edf26a91f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/10adcf3f3b2f69e2ef34398d549fda772e03be435b37f7c9df28e68a93dbef43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_01:1 -> audio/generated/ko-KR/dialogues/11158be53ec7438fc7ce8ebce125589c064d9ce97bcf00c071047052bc787139.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73492c70-0c4a-5518-b31e-720d61a7ff9e', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2ad409b16e44a706faa6e8a51ece9c2e7b457deb8665c993272d06222e3acdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('542a9e4a-a090-5f7e-b8e8-88d5f5e4ff04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73492c70-0c4a-5518-b31e-720d61a7ff9e', 1), 'c2ad409b16e44a706faa6e8a51ece9c2e7b457deb8665c993272d06222e3acdf',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/11158be53ec7438fc7ce8ebce125589c064d9ce97bcf00c071047052bc787139.mp3', 4597, '2026-09-14 01:30:25.308085', '86711e704eb77c4343fc5c791cd8c661d84073947921213481d989e9da56cd85', 'validated', '{"audio_key":"11158be53ec7438fc7ce8ebce125589c064d9ce97bcf00c071047052bc787139","entity_key":"d_high_stakes_negotiation_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86711e704eb77c4343fc5c791cd8c661d84073947921213481d989e9da56cd85","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/11158be53ec7438fc7ce8ebce125589c064d9ce97bcf00c071047052bc787139.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_01:4 -> audio/generated/ko-KR/dialogues/185652f2ab0c5490fa8cf932c18248f9bed1f19fa3a5c6c3aa5e5066705fdd11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5a27039-2d41-5918-ae13-0d8d98d56548', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bccdc4772f3fe1898bf85cbd83f9acca47fb847e5e124a1447057db23f4ab1b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf318f01-8e70-5434-894e-36e5b1a18eea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5a27039-2d41-5918-ae13-0d8d98d56548', 1), 'bccdc4772f3fe1898bf85cbd83f9acca47fb847e5e124a1447057db23f4ab1b8',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/185652f2ab0c5490fa8cf932c18248f9bed1f19fa3a5c6c3aa5e5066705fdd11.mp3', 2742, '2026-09-14 01:30:26.113744', '7679b004e842c8b013f6e7276b6f3646c04bc132d0268912f14dea6fc5ebc2c1', 'validated', '{"audio_key":"185652f2ab0c5490fa8cf932c18248f9bed1f19fa3a5c6c3aa5e5066705fdd11","entity_key":"d_sociolinguistic_indexicality_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7679b004e842c8b013f6e7276b6f3646c04bc132d0268912f14dea6fc5ebc2c1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/185652f2ab0c5490fa8cf932c18248f9bed1f19fa3a5c6c3aa5e5066705fdd11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_02:4 -> audio/generated/ko-KR/dialogues/24fcb9e35b39f6a5b94c7665f958b4896096b9fce2d1df6fd54da51936f8ec65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('880571f7-e392-51c1-b443-17160967a925', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47b8db4194ac1f8444e0f90d56c950782567cf8468f287e0f75a6e744e5dc3c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0605509e-ef28-55cc-9302-3e2373cb8a3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('880571f7-e392-51c1-b443-17160967a925', 1), '47b8db4194ac1f8444e0f90d56c950782567cf8468f287e0f75a6e744e5dc3c8',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/24fcb9e35b39f6a5b94c7665f958b4896096b9fce2d1df6fd54da51936f8ec65.mp3', 4205, '2026-09-14 01:30:26.606962', '2ff825713ebc270dcd0d04f38aec83b5db92e4a21001fdf88cb00c2ca291dfc7', 'validated', '{"audio_key":"24fcb9e35b39f6a5b94c7665f958b4896096b9fce2d1df6fd54da51936f8ec65","entity_key":"d_high_stakes_negotiation_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2ff825713ebc270dcd0d04f38aec83b5db92e4a21001fdf88cb00c2ca291dfc7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/24fcb9e35b39f6a5b94c7665f958b4896096b9fce2d1df6fd54da51936f8ec65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_01:1 -> audio/generated/ko-KR/dialogues/2820a906f3a32c989b34e2002b8e54cea3b33ca8ce944c1514679840145b770f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('769676fe-9e3d-57fd-b3fe-35b23853e9a6', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e53f8e2582564472e1282b652bea0ac121eaa70410e55c83d1e3efad7db9f57c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5ad603e-dae6-5ef5-8044-a645214d5623', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('769676fe-9e3d-57fd-b3fe-35b23853e9a6', 1), 'e53f8e2582564472e1282b652bea0ac121eaa70410e55c83d1e3efad7db9f57c',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2820a906f3a32c989b34e2002b8e54cea3b33ca8ce944c1514679840145b770f.mp3', 3892, '2026-09-14 01:30:27.366406', '7b7f0d476bad43800d326c9e85df8b97fa538b42fb7fb748a9e1e6fbb0c797ad', 'validated', '{"audio_key":"2820a906f3a32c989b34e2002b8e54cea3b33ca8ce944c1514679840145b770f","entity_key":"d_institutional_accountability_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b7f0d476bad43800d326c9e85df8b97fa538b42fb7fb748a9e1e6fbb0c797ad","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2820a906f3a32c989b34e2002b8e54cea3b33ca8ce944c1514679840145b770f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_01:2 -> audio/generated/ko-KR/dialogues/28796856e365ad75e098a45a018287ecf9bcf8175722b65d8322392df9a24e0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23788742-31b6-59b0-bb91-4060cd2ebe6e', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4239afac1e69412ed38532d536b0028b2db9f859d84c6357da2fb418c3009b0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4072a75-f099-5772-9fb0-6810646e2ca3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23788742-31b6-59b0-bb91-4060cd2ebe6e', 1), '4239afac1e69412ed38532d536b0028b2db9f859d84c6357da2fb418c3009b0b',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/28796856e365ad75e098a45a018287ecf9bcf8175722b65d8322392df9a24e0a.mp3', 4545, '2026-09-14 01:30:28.023866', '2a9795d79739783df9a235dec4d56ca38a3956cadbd500232ea7f5e797111ac6', 'validated', '{"audio_key":"28796856e365ad75e098a45a018287ecf9bcf8175722b65d8322392df9a24e0a","entity_key":"d_sociolinguistic_indexicality_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2a9795d79739783df9a235dec4d56ca38a3956cadbd500232ea7f5e797111ac6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/28796856e365ad75e098a45a018287ecf9bcf8175722b65d8322392df9a24e0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_02:4 -> audio/generated/ko-KR/dialogues/29ab7274f00b78b7e47a829f23e25602df98270267e7c852ade231909f251965.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c8e0274-58b7-57d8-a5bc-a877c4ebaf40', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a82cc4a2341bac38171c909c012055987d79aae90efc20ee5bfb1942e0eea6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('937ebafb-629a-5d5b-b116-f151dfe6f2cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c8e0274-58b7-57d8-a5bc-a877c4ebaf40', 1), '2a82cc4a2341bac38171c909c012055987d79aae90efc20ee5bfb1942e0eea6b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/29ab7274f00b78b7e47a829f23e25602df98270267e7c852ade231909f251965.mp3', 3186, '2026-09-14 01:30:28.705447', '071f47280e39fb2073a41abf18a6384a8a05efafc86dba9eac768bd2bf404936', 'validated', '{"audio_key":"29ab7274f00b78b7e47a829f23e25602df98270267e7c852ade231909f251965","entity_key":"d_register_orchestration_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"071f47280e39fb2073a41abf18a6384a8a05efafc86dba9eac768bd2bf404936","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/29ab7274f00b78b7e47a829f23e25602df98270267e7c852ade231909f251965.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_01:2 -> audio/generated/ko-KR/dialogues/29ad8db792dc6c49cc2e8f94ee5515978f8b77a53a19256089449ac87a0b8ab0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11cb9669-b43e-58c7-a9fb-ec81e5e2ca19', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81b78c6d1f1333db729d5ddacf7d1b19241327be977cf19137fd46d3dd265555'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab32c022-ff8d-5dea-b85b-d076b926b800', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11cb9669-b43e-58c7-a9fb-ec81e5e2ca19', 1), '81b78c6d1f1333db729d5ddacf7d1b19241327be977cf19137fd46d3dd265555',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/29ad8db792dc6c49cc2e8f94ee5515978f8b77a53a19256089449ac87a0b8ab0.mp3', 4623, '2026-09-14 01:30:29.473533', '61edd0e001af9b7c047e92a6510b7cc2add304ece53ea9e7255c9044dd26dec7', 'validated', '{"audio_key":"29ad8db792dc6c49cc2e8f94ee5515978f8b77a53a19256089449ac87a0b8ab0","entity_key":"d_institutional_accountability_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61edd0e001af9b7c047e92a6510b7cc2add304ece53ea9e7255c9044dd26dec7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/29ad8db792dc6c49cc2e8f94ee5515978f8b77a53a19256089449ac87a0b8ab0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_02:2 -> audio/generated/ko-KR/dialogues/2cfccbc22fa6470173904b47b9d3250466b5790dbea8b9f82d95d1d8888d001c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe86a0a5-5bd6-5217-98cd-4c881574665d', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7f41e14822d0227aa5a77ea163fe2604ecb25976d7f8173e577eaa45a3c1d1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('284aaf62-e28c-58d1-9c44-2578599c3b99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe86a0a5-5bd6-5217-98cd-4c881574665d', 1), 'f7f41e14822d0227aa5a77ea163fe2604ecb25976d7f8173e577eaa45a3c1d1a',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2cfccbc22fa6470173904b47b9d3250466b5790dbea8b9f82d95d1d8888d001c.mp3', 4257, '2026-09-14 01:30:30.028901', '915308ce3d4051203db5bfd7d4d4c136d197a0b027c54d771373bebef5d55319', 'validated', '{"audio_key":"2cfccbc22fa6470173904b47b9d3250466b5790dbea8b9f82d95d1d8888d001c","entity_key":"d_register_orchestration_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"915308ce3d4051203db5bfd7d4d4c136d197a0b027c54d771373bebef5d55319","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2cfccbc22fa6470173904b47b9d3250466b5790dbea8b9f82d95d1d8888d001c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_01:3 -> audio/generated/ko-KR/dialogues/2f02627f9ce01424c519acf806040caabd283e65ccd4c165c4201fd8a91df708.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88e1a1c3-a8d7-5088-96c1-71c65ee810c9', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c745a4ba2d6dd4f15184a36ebf6e540835d3daf5154833b57b575c59587aa71f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8e63892-1632-53ba-934a-be95ee23186e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88e1a1c3-a8d7-5088-96c1-71c65ee810c9', 1), 'c745a4ba2d6dd4f15184a36ebf6e540835d3daf5154833b57b575c59587aa71f',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2f02627f9ce01424c519acf806040caabd283e65ccd4c165c4201fd8a91df708.mp3', 5198, '2026-09-14 01:30:30.941484', 'e055c05b54d2c05ca8558c577d90c7591278d86ef2b478f5b0c2f0dd29666d16', 'validated', '{"audio_key":"2f02627f9ce01424c519acf806040caabd283e65ccd4c165c4201fd8a91df708","entity_key":"d_c2_seoul_deliberation_capstone_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e055c05b54d2c05ca8558c577d90c7591278d86ef2b478f5b0c2f0dd29666d16","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2f02627f9ce01424c519acf806040caabd283e65ccd4c165c4201fd8a91df708.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_02:2 -> audio/generated/ko-KR/dialogues/311bd5a125b08e6e81f6453fcf4c7df88b6b7ee9effdb944d4c7357fb4332396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0303971f-3c4e-54ac-8c0d-9e81b7c75fcc', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4361bc71eff60dc5c92128b0477ff98002de312b3af6c850d4339b4e0cada260'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('139895e3-2dfe-5496-880e-e5dea373dc3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0303971f-3c4e-54ac-8c0d-9e81b7c75fcc', 1), '4361bc71eff60dc5c92128b0477ff98002de312b3af6c850d4339b4e0cada260',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/311bd5a125b08e6e81f6453fcf4c7df88b6b7ee9effdb944d4c7357fb4332396.mp3', 5511, '2026-09-14 01:30:31.434184', 'ae0dc20bc68ba51610f842f9cb866eb6adc3c903749853c59a82e153267ee548', 'validated', '{"audio_key":"311bd5a125b08e6e81f6453fcf4c7df88b6b7ee9effdb944d4c7357fb4332396","entity_key":"d_institutional_accountability_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae0dc20bc68ba51610f842f9cb866eb6adc3c903749853c59a82e153267ee548","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/311bd5a125b08e6e81f6453fcf4c7df88b6b7ee9effdb944d4c7357fb4332396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_02:4 -> audio/generated/ko-KR/dialogues/332d32a998177f7eb3c2fbe9957425534d3216b9d24b9b9eddc9f1295c609272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9adce79-d8d9-57b3-8cde-bea22f864375', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae77923851b2a3ad97105879d984ff7f392d5f11ad537d3cff6f6bbf840947f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e640df39-28d2-5a77-8911-6d8e2ccd3111', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9adce79-d8d9-57b3-8cde-bea22f864375', 1), 'ae77923851b2a3ad97105879d984ff7f392d5f11ad537d3cff6f6bbf840947f7',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/332d32a998177f7eb3c2fbe9957425534d3216b9d24b9b9eddc9f1295c609272.mp3', 4832, '2026-09-14 01:30:32.281995', '1a03910ca6dcb78ebc7e2e3051643ea63aa2124f47716f36380d1f039eb23d33', 'validated', '{"audio_key":"332d32a998177f7eb3c2fbe9957425534d3216b9d24b9b9eddc9f1295c609272","entity_key":"d_institutional_accountability_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a03910ca6dcb78ebc7e2e3051643ea63aa2124f47716f36380d1f039eb23d33","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/332d32a998177f7eb3c2fbe9957425534d3216b9d24b9b9eddc9f1295c609272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_01:4 -> audio/generated/ko-KR/dialogues/342c4e2ae1bbae369c4f88f2f558b6047ef5abad0f87024731da97824b6210ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21be33be-2075-5910-b9d2-585d54d6d8ff', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951b4ba6be9172c0abad6954289c6f8a5c1068121e8d7edf1c6a828137eccff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0f228bb-22b3-50a3-ba81-b3a93688f1bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21be33be-2075-5910-b9d2-585d54d6d8ff', 1), 'e951b4ba6be9172c0abad6954289c6f8a5c1068121e8d7edf1c6a828137eccff',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/342c4e2ae1bbae369c4f88f2f558b6047ef5abad0f87024731da97824b6210ed.mp3', 4205, '2026-09-14 01:30:32.937230', 'a2ea6a56e33b653d189fa74494bfe38b9a14232bf83843a6c92015552e3a9eaf', 'validated', '{"audio_key":"342c4e2ae1bbae369c4f88f2f558b6047ef5abad0f87024731da97824b6210ed","entity_key":"d_institutional_accountability_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2ea6a56e33b653d189fa74494bfe38b9a14232bf83843a6c92015552e3a9eaf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/342c4e2ae1bbae369c4f88f2f558b6047ef5abad0f87024731da97824b6210ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_02:2 -> audio/generated/ko-KR/dialogues/38e047962c573f6eb67d6e8b477cf87f28b268301722c7e3538acff7ac24eab7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ecaf59c-335e-5df6-a1df-6f1181d67c73', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00fa798db3968278ee22ac7610f1cfab304a659804ce13116d2e9a276c10a264'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18c3574d-c017-523b-9211-de8336936f6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ecaf59c-335e-5df6-a1df-6f1181d67c73', 1), '00fa798db3968278ee22ac7610f1cfab304a659804ce13116d2e9a276c10a264',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/38e047962c573f6eb67d6e8b477cf87f28b268301722c7e3538acff7ac24eab7.mp3', 5511, '2026-09-14 01:30:33.791292', 'e42cbb732cb7ad7c0ec1133480382efb89cec5942f343fd916a17c47cfd4e372', 'validated', '{"audio_key":"38e047962c573f6eb67d6e8b477cf87f28b268301722c7e3538acff7ac24eab7","entity_key":"d_essayistic_rhythm_style_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e42cbb732cb7ad7c0ec1133480382efb89cec5942f343fd916a17c47cfd4e372","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/38e047962c573f6eb67d6e8b477cf87f28b268301722c7e3538acff7ac24eab7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_02:1 -> audio/generated/ko-KR/dialogues/396ff3c705dbef1cf2d8d6844ec85a2bbb342f1d3db72be36a0a60bc77f458c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4034d84-8f1e-5bfe-b962-310c440aec42', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38182874ab9fab2b66749adb70ee9ad6cef106427b7ee7334eea7e29ef9aed88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3109fcf-6504-5ff4-b89f-0f04f70efea5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4034d84-8f1e-5bfe-b962-310c440aec42', 1), '38182874ab9fab2b66749adb70ee9ad6cef106427b7ee7334eea7e29ef9aed88',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/396ff3c705dbef1cf2d8d6844ec85a2bbb342f1d3db72be36a0a60bc77f458c6.mp3', 4597, '2026-09-14 01:30:34.322884', 'a78c1ca6fbc582aaf29dc34ea6fc50f489f46d6d9c19f75c5c2bf459fbcdcfb7', 'validated', '{"audio_key":"396ff3c705dbef1cf2d8d6844ec85a2bbb342f1d3db72be36a0a60bc77f458c6","entity_key":"d_sociolinguistic_indexicality_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a78c1ca6fbc582aaf29dc34ea6fc50f489f46d6d9c19f75c5c2bf459fbcdcfb7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/396ff3c705dbef1cf2d8d6844ec85a2bbb342f1d3db72be36a0a60bc77f458c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_01:1 -> audio/generated/ko-KR/dialogues/3b7568a92569a7dea3c4cb7eff3a22f37e359ddb6b9eb6bdc19d6763347abe3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2671c897-a590-506b-b641-d8ed6f0583fa', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65c839229902464b68aca85c78ac163002166a4d99becb28d44ffa64507f17ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85d8df17-4427-53e6-b0e5-3d97050103ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2671c897-a590-506b-b641-d8ed6f0583fa', 1), '65c839229902464b68aca85c78ac163002166a4d99becb28d44ffa64507f17ff',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3b7568a92569a7dea3c4cb7eff3a22f37e359ddb6b9eb6bdc19d6763347abe3b.mp3', 3369, '2026-09-14 01:30:35.053676', '35d3dc384bbb250e1e5a1c23862486d2e27341652fbcd867428a7162a6d1f62e', 'validated', '{"audio_key":"3b7568a92569a7dea3c4cb7eff3a22f37e359ddb6b9eb6bdc19d6763347abe3b","entity_key":"d_essayistic_rhythm_style_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35d3dc384bbb250e1e5a1c23862486d2e27341652fbcd867428a7162a6d1f62e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/3b7568a92569a7dea3c4cb7eff3a22f37e359ddb6b9eb6bdc19d6763347abe3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_02:2 -> audio/generated/ko-KR/dialogues/3eba96dd87826cfa0a78eab0c52344f0a24865de0c1a4b73d7c18ee5c9580901.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a15a3128-052d-5eaf-a2c5-499a9118f907', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b80fc2269073283863f7bcb1dd047826650ad902e6e97b5bfa90a0283ce45659'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd6cc926-0b5b-51c8-a2e8-46d31e48bf12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a15a3128-052d-5eaf-a2c5-499a9118f907', 1), 'b80fc2269073283863f7bcb1dd047826650ad902e6e97b5bfa90a0283ce45659',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3eba96dd87826cfa0a78eab0c52344f0a24865de0c1a4b73d7c18ee5c9580901.mp3', 3343, '2026-09-14 01:30:35.516023', 'e394b7f128e4c076f86a425adc21ad4ee317bf0e8077da760b49faa5176a64a1', 'validated', '{"audio_key":"3eba96dd87826cfa0a78eab0c52344f0a24865de0c1a4b73d7c18ee5c9580901","entity_key":"d_compressed_argumentation_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e394b7f128e4c076f86a425adc21ad4ee317bf0e8077da760b49faa5176a64a1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/3eba96dd87826cfa0a78eab0c52344f0a24865de0c1a4b73d7c18ee5c9580901.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_02:4 -> audio/generated/ko-KR/dialogues/416c9f420906977c65eed4122615bfb06355688f3559ac43ea000240235ebaaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('baac08d8-7469-5bec-a0de-710fbbf35c9a', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '339122095ec8994a85d445192af36e5136a055490b3959a82a61e1e5a64650e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35bb2d5f-02c8-5e82-8217-b6dafcb40542', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('baac08d8-7469-5bec-a0de-710fbbf35c9a', 1), '339122095ec8994a85d445192af36e5136a055490b3959a82a61e1e5a64650e9',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/416c9f420906977c65eed4122615bfb06355688f3559ac43ea000240235ebaaa.mp3', 5015, '2026-09-14 01:30:36.468237', '6a2fdbc413ff5cfc119ce12d52a4ef66ecc1f153fe6cea8275bdfb0b748f642e', 'validated', '{"audio_key":"416c9f420906977c65eed4122615bfb06355688f3559ac43ea000240235ebaaa","entity_key":"d_media_framing_intertextuality_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a2fdbc413ff5cfc119ce12d52a4ef66ecc1f153fe6cea8275bdfb0b748f642e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/416c9f420906977c65eed4122615bfb06355688f3559ac43ea000240235ebaaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_01:1 -> audio/generated/ko-KR/dialogues/4361c65c855ca3674eef163b2494106abb470793291cd66a998e8b5c74f55e6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93997e89-8fe5-5780-9d28-3ff6e5546213', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78be456d288cf8a41b97e8b4c246cea09606d42914310947cb1a2b51383001f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73770c8f-a19b-5fd9-a3ed-b356688904f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93997e89-8fe5-5780-9d28-3ff6e5546213', 1), '78be456d288cf8a41b97e8b4c246cea09606d42914310947cb1a2b51383001f0',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4361c65c855ca3674eef163b2494106abb470793291cd66a998e8b5c74f55e6d.mp3', 4310, '2026-09-14 01:30:36.814517', '491a4f37720369cd722af388910bddf6241167e5037a12276973719f96ff706c', 'validated', '{"audio_key":"4361c65c855ca3674eef163b2494106abb470793291cd66a998e8b5c74f55e6d","entity_key":"d_methodological_critique_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"491a4f37720369cd722af388910bddf6241167e5037a12276973719f96ff706c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4361c65c855ca3674eef163b2494106abb470793291cd66a998e8b5c74f55e6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_01:4 -> audio/generated/ko-KR/dialogues/45ff6cf0cc73091853f8904abbf510bd7c4caa5308b66a78365d5d2d038b96ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ab1dad5-4ba2-5570-ad98-ad5a9a6c6f3c', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1aee7811afc4b3f684d81d30019f7fcb9d4b7775a4fe9340d476689e6b5d937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72ace84e-ff42-59bb-85bb-660f905ed9fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ab1dad5-4ba2-5570-ad98-ad5a9a6c6f3c', 1), 'e1aee7811afc4b3f684d81d30019f7fcb9d4b7775a4fe9340d476689e6b5d937',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/45ff6cf0cc73091853f8904abbf510bd7c4caa5308b66a78365d5d2d038b96ae.mp3', 3761, '2026-09-14 01:30:37.721571', '10fc23a7ceba9168a79ea68e3b8468ef9c0a49ee12cabbde7d7751dcc7ac94e0', 'validated', '{"audio_key":"45ff6cf0cc73091853f8904abbf510bd7c4caa5308b66a78365d5d2d038b96ae","entity_key":"d_register_orchestration_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"10fc23a7ceba9168a79ea68e3b8468ef9c0a49ee12cabbde7d7751dcc7ac94e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/45ff6cf0cc73091853f8904abbf510bd7c4caa5308b66a78365d5d2d038b96ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_02:2 -> audio/generated/ko-KR/dialogues/495f9bf6f2b4c5b08ff13a1e8101b8ab2d25d08d9a0849f760ba9b5bdb2fdee2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59fe9665-0859-58eb-84f2-03bbe1cbd0c8', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4bacfd39fa631626045f9873cf05c525febee3fbafd0470c3275b1e847306c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0614f42-8040-5b5b-91c1-b4da16f5537e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59fe9665-0859-58eb-84f2-03bbe1cbd0c8', 1), 'e4bacfd39fa631626045f9873cf05c525febee3fbafd0470c3275b1e847306c1',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/495f9bf6f2b4c5b08ff13a1e8101b8ab2d25d08d9a0849f760ba9b5bdb2fdee2.mp3', 3526, '2026-09-14 01:30:38.156507', 'b783afe71bf39db4745c0f2d8efe8035b15fda6ad29eb4fa71793525478aada9', 'validated', '{"audio_key":"495f9bf6f2b4c5b08ff13a1e8101b8ab2d25d08d9a0849f760ba9b5bdb2fdee2","entity_key":"d_sociolinguistic_indexicality_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b783afe71bf39db4745c0f2d8efe8035b15fda6ad29eb4fa71793525478aada9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/495f9bf6f2b4c5b08ff13a1e8101b8ab2d25d08d9a0849f760ba9b5bdb2fdee2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_02:4 -> audio/generated/ko-KR/dialogues/49f3e0f6c7791cd2d8f3372c4bf2a030ca020ea4b21f58b126736750fa021217.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fdf97bbe-ea54-5700-989a-e15d718931b7', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f707d65ebea5336226964afb84fb987db320d0cb01751dd14fcd0ea3f9c88c2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c959e150-ca3a-5a06-8ec2-fe40c12ea550', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fdf97bbe-ea54-5700-989a-e15d718931b7', 1), 'f707d65ebea5336226964afb84fb987db320d0cb01751dd14fcd0ea3f9c88c2d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/49f3e0f6c7791cd2d8f3372c4bf2a030ca020ea4b21f58b126736750fa021217.mp3', 3474, '2026-09-14 01:30:38.937575', '223707cb68ccdd7e343b5f84959f9e2d739e3e6c1eb3321217eb089ef7c7465e', 'validated', '{"audio_key":"49f3e0f6c7791cd2d8f3372c4bf2a030ca020ea4b21f58b126736750fa021217","entity_key":"d_strategic_ambiguity_irony_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223707cb68ccdd7e343b5f84959f9e2d739e3e6c1eb3321217eb089ef7c7465e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/49f3e0f6c7791cd2d8f3372c4bf2a030ca020ea4b21f58b126736750fa021217.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_01:2 -> audio/generated/ko-KR/dialogues/4c00ebecaa97d481b73dfa229b118c3888541253af15e96f69fa31a15abfd1dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e390b4dc-5f15-5a2d-8ddd-694e6db19ccf', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3de828e7fcfd32efd7d92e8557043be7fd5cd2dc837e2b80e97448141165c82f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75697830-ab39-59d5-8a83-1b2e9561e8ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e390b4dc-5f15-5a2d-8ddd-694e6db19ccf', 1), '3de828e7fcfd32efd7d92e8557043be7fd5cd2dc837e2b80e97448141165c82f',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4c00ebecaa97d481b73dfa229b118c3888541253af15e96f69fa31a15abfd1dc.mp3', 5511, '2026-09-14 01:30:39.622790', '8088bb27b01537e927fbdd8360e8da496279b69d23b9c83dc46c7cc3b5ed589f', 'validated', '{"audio_key":"4c00ebecaa97d481b73dfa229b118c3888541253af15e96f69fa31a15abfd1dc","entity_key":"d_methodological_critique_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8088bb27b01537e927fbdd8360e8da496279b69d23b9c83dc46c7cc3b5ed589f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/4c00ebecaa97d481b73dfa229b118c3888541253af15e96f69fa31a15abfd1dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_02:3 -> audio/generated/ko-KR/dialogues/4ce4dd33fed93b65e8ab423ed7c2eadc35b90d9223f50fe34eb855cc990d70d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa60cf5b-f4cd-542a-9ccb-c7f1def098fd', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de3d7e49d7dae6c1c75d1d531e9e405735e2d73e148c99ce14d03c7cb6a2f330'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('388bc68c-0a75-55ac-b30e-7aa3ea194e2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa60cf5b-f4cd-542a-9ccb-c7f1def098fd', 1), 'de3d7e49d7dae6c1c75d1d531e9e405735e2d73e148c99ce14d03c7cb6a2f330',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4ce4dd33fed93b65e8ab423ed7c2eadc35b90d9223f50fe34eb855cc990d70d7.mp3', 3291, '2026-09-14 01:30:40.200325', '091cbfdd881af9015acf9dfa4b352fd0d6d7840706bbe4f2a1c28ed31a5cacc4', 'validated', '{"audio_key":"4ce4dd33fed93b65e8ab423ed7c2eadc35b90d9223f50fe34eb855cc990d70d7","entity_key":"d_media_framing_intertextuality_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"091cbfdd881af9015acf9dfa4b352fd0d6d7840706bbe4f2a1c28ed31a5cacc4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/4ce4dd33fed93b65e8ab423ed7c2eadc35b90d9223f50fe34eb855cc990d70d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_02:1 -> audio/generated/ko-KR/dialogues/4ddc99355e27c119e0cd04461f6371e164e0be395a9535635a993107c76afde0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7f3a4fa-0d36-5f17-b8ff-ced30f3cc761', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfbc24cc4d267a8d3b4139f3e4833140cbd410c59e15257f2456960953c36767'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45840bd2-00fe-5e15-8077-241978ab3da3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7f3a4fa-0d36-5f17-b8ff-ced30f3cc761', 1), 'bfbc24cc4d267a8d3b4139f3e4833140cbd410c59e15257f2456960953c36767',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4ddc99355e27c119e0cd04461f6371e164e0be395a9535635a993107c76afde0.mp3', 4963, '2026-09-14 01:30:40.988134', 'd980d612fb39c163731dda7514276ca2a5d570f31aa96edade7a0dd195c92c4f', 'validated', '{"audio_key":"4ddc99355e27c119e0cd04461f6371e164e0be395a9535635a993107c76afde0","entity_key":"d_strategic_ambiguity_irony_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d980d612fb39c163731dda7514276ca2a5d570f31aa96edade7a0dd195c92c4f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4ddc99355e27c119e0cd04461f6371e164e0be395a9535635a993107c76afde0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_02:2 -> audio/generated/ko-KR/dialogues/503b6cacca40814cc83db0ef10eb24d1396212ec8675d62362608de8e6d3ac5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b361437-76fc-5846-82ad-f57a28eeb425', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59845697011e347a1e9d095904cb4ebfe6fa6539c996b0dd26b3c24264a31481'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e27793c3-02f8-5185-9040-5499ed9d221d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b361437-76fc-5846-82ad-f57a28eeb425', 1), '59845697011e347a1e9d095904cb4ebfe6fa6539c996b0dd26b3c24264a31481',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/503b6cacca40814cc83db0ef10eb24d1396212ec8675d62362608de8e6d3ac5c.mp3', 4179, '2026-09-14 01:30:41.665809', '23e16cc740daffc1be65e704bd6c7183ad74a5554762a09644787fbd2a01c7cb', 'validated', '{"audio_key":"503b6cacca40814cc83db0ef10eb24d1396212ec8675d62362608de8e6d3ac5c","entity_key":"d_strategic_ambiguity_irony_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23e16cc740daffc1be65e704bd6c7183ad74a5554762a09644787fbd2a01c7cb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/503b6cacca40814cc83db0ef10eb24d1396212ec8675d62362608de8e6d3ac5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_02:4 -> audio/generated/ko-KR/dialogues/52de6a3bf49aeb97287906e6a0f630d9c6423971278f110a527fd43e8d14e89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92659cde-6cc9-5d8b-8721-fb93f60fa4eb', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dacc3ae09bef3d10696a88ce92138430b46c929e708b7e0cf8f91b0cb9b105a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab0f78cf-b364-518c-b3fa-da5024cf35a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92659cde-6cc9-5d8b-8721-fb93f60fa4eb', 1), '8dacc3ae09bef3d10696a88ce92138430b46c929e708b7e0cf8f91b0cb9b105a',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/52de6a3bf49aeb97287906e6a0f630d9c6423971278f110a527fd43e8d14e89a.mp3', 2089, '2026-09-14 01:30:42.064765', '5e7081e611db388e9086d63b94b205501b088b87d8162222aafa850c3a8a460f', 'validated', '{"audio_key":"52de6a3bf49aeb97287906e6a0f630d9c6423971278f110a527fd43e8d14e89a","entity_key":"d_methodological_critique_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e7081e611db388e9086d63b94b205501b088b87d8162222aafa850c3a8a460f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/52de6a3bf49aeb97287906e6a0f630d9c6423971278f110a527fd43e8d14e89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_02:1 -> audio/generated/ko-KR/dialogues/576991ccd5f8508bc4817437fbf4548cd06643e5e7a3dbdd8b5b466c2837906f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68b78356-220c-5dde-9d3b-5c48cbc87e30', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31b708d294ceb79e003aa4b71babf728741b9885d0aec33e36ac6819614a1749'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28b29001-c98e-5941-a337-af841216bde3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68b78356-220c-5dde-9d3b-5c48cbc87e30', 1), '31b708d294ceb79e003aa4b71babf728741b9885d0aec33e36ac6819614a1749',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/576991ccd5f8508bc4817437fbf4548cd06643e5e7a3dbdd8b5b466c2837906f.mp3', 3291, '2026-09-14 01:30:42.862211', 'dddf1b631c08bd7fff50e7a4ea276ca93e3c536f48ea0ab9ecc20fcd0a7194ac', 'validated', '{"audio_key":"576991ccd5f8508bc4817437fbf4548cd06643e5e7a3dbdd8b5b466c2837906f","entity_key":"d_institutional_accountability_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dddf1b631c08bd7fff50e7a4ea276ca93e3c536f48ea0ab9ecc20fcd0a7194ac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/576991ccd5f8508bc4817437fbf4548cd06643e5e7a3dbdd8b5b466c2837906f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_01:1 -> audio/generated/ko-KR/dialogues/5aa696083e90b6f87d7e070f51dc93a80f90952a54a13e431d53823eacdbfe77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93fb85f5-bce2-5995-835c-866abcd6bc47', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91d0bfc9d2b1660ceedc61e08883ec8a13f5730a408bebca50235de2be4280c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('082a2b63-0f39-5495-8ca4-bc05ae49811d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93fb85f5-bce2-5995-835c-866abcd6bc47', 1), '91d0bfc9d2b1660ceedc61e08883ec8a13f5730a408bebca50235de2be4280c6',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5aa696083e90b6f87d7e070f51dc93a80f90952a54a13e431d53823eacdbfe77.mp3', 3840, '2026-09-14 01:30:43.348590', 'af9efc5a517e68ebc2484a713b97f6b95cf18886b5ab26ba0fb3b9eee77a2e99', 'validated', '{"audio_key":"5aa696083e90b6f87d7e070f51dc93a80f90952a54a13e431d53823eacdbfe77","entity_key":"d_sociolinguistic_indexicality_01:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af9efc5a517e68ebc2484a713b97f6b95cf18886b5ab26ba0fb3b9eee77a2e99","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5aa696083e90b6f87d7e070f51dc93a80f90952a54a13e431d53823eacdbfe77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_01:4 -> audio/generated/ko-KR/dialogues/5c42f93fd7719db42b49eb63fdb28d3c3ac64e32b4379033c02428b9da7c8309.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba5c3b33-80c2-5283-a3ca-51778334b851', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1498a1a2423ca868a41e3065c3b5a07993abaf6760746d553a626af326631afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1d384e2-f503-56bd-aab1-cff97c5fca8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba5c3b33-80c2-5283-a3ca-51778334b851', 1), '1498a1a2423ca868a41e3065c3b5a07993abaf6760746d553a626af326631afb',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5c42f93fd7719db42b49eb63fdb28d3c3ac64e32b4379033c02428b9da7c8309.mp3', 4022, '2026-09-14 01:30:44.115303', '965a7cbf32cc052cc5d8b9def14fb0d5e84696f1adff1bc690160d4157a229ae', 'validated', '{"audio_key":"5c42f93fd7719db42b49eb63fdb28d3c3ac64e32b4379033c02428b9da7c8309","entity_key":"d_media_framing_intertextuality_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"965a7cbf32cc052cc5d8b9def14fb0d5e84696f1adff1bc690160d4157a229ae","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5c42f93fd7719db42b49eb63fdb28d3c3ac64e32b4379033c02428b9da7c8309.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_02:3 -> audio/generated/ko-KR/dialogues/62925179b448e0297f0986a032cb2d459be864a4a326242753451110c26a45d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56d4e88c-a035-5189-aa2a-78fbbf935af9', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2336eb25576a4632d095ac3ffc988c6648dfaf2ffe2faa47861b056b3901e7d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ab2a406-cf11-5a3a-bc7e-4db87c41d848', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56d4e88c-a035-5189-aa2a-78fbbf935af9', 1), '2336eb25576a4632d095ac3ffc988c6648dfaf2ffe2faa47861b056b3901e7d4',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/62925179b448e0297f0986a032cb2d459be864a4a326242753451110c26a45d9.mp3', 4179, '2026-09-14 01:30:44.678329', 'e52811e60401ade2e3cdb859303dae08a160739cd802735a57fc848288f4757d', 'validated', '{"audio_key":"62925179b448e0297f0986a032cb2d459be864a4a326242753451110c26a45d9","entity_key":"d_sociolinguistic_indexicality_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e52811e60401ade2e3cdb859303dae08a160739cd802735a57fc848288f4757d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/62925179b448e0297f0986a032cb2d459be864a4a326242753451110c26a45d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_01:3 -> audio/generated/ko-KR/dialogues/67ecc46c8915a8d59fa5c1a2d37bca139729d0f9fb30bb0992bb22f60b97bbc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec2a9d3e-e7c4-5ffb-9586-1f4b3933fb69', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6c92986b61aa85abf6c15ca4416450e07cd2544fbc0d3840c3d2034d3187717'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e433f4e-e4f3-5a2e-93a2-c1c268354204', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec2a9d3e-e7c4-5ffb-9586-1f4b3933fb69', 1), 'c6c92986b61aa85abf6c15ca4416450e07cd2544fbc0d3840c3d2034d3187717',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/67ecc46c8915a8d59fa5c1a2d37bca139729d0f9fb30bb0992bb22f60b97bbc3.mp3', 3239, '2026-09-14 01:30:45.340847', 'f77c648e254548da9797f8fd42e3acdf33b625d59a5ee69a11b9d8b5a9287dbe', 'validated', '{"audio_key":"67ecc46c8915a8d59fa5c1a2d37bca139729d0f9fb30bb0992bb22f60b97bbc3","entity_key":"d_high_stakes_negotiation_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f77c648e254548da9797f8fd42e3acdf33b625d59a5ee69a11b9d8b5a9287dbe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/67ecc46c8915a8d59fa5c1a2d37bca139729d0f9fb30bb0992bb22f60b97bbc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_01:2 -> audio/generated/ko-KR/dialogues/68be0e759fe7bbe232e9b8c37998a787cf7a786db040f87083135a7f8707ef18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c95b3e4-da3b-5ff8-b6d6-091ef3839c9c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac3b0a33da8872168c2a1101dc133a5b4c30e0f8600c2223a697c1ae461410d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('609a24bd-ed8f-515e-9eb5-9c593635b075', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c95b3e4-da3b-5ff8-b6d6-091ef3839c9c', 1), 'ac3b0a33da8872168c2a1101dc133a5b4c30e0f8600c2223a697c1ae461410d5',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/68be0e759fe7bbe232e9b8c37998a787cf7a786db040f87083135a7f8707ef18.mp3', 3892, '2026-09-14 01:30:45.914760', 'c725809fbee89669ae5051c3a1f485416e7d15855381b3aa69e43bfc5b91dc79', 'validated', '{"audio_key":"68be0e759fe7bbe232e9b8c37998a787cf7a786db040f87083135a7f8707ef18","entity_key":"d_essayistic_rhythm_style_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c725809fbee89669ae5051c3a1f485416e7d15855381b3aa69e43bfc5b91dc79","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/68be0e759fe7bbe232e9b8c37998a787cf7a786db040f87083135a7f8707ef18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_01:3 -> audio/generated/ko-KR/dialogues/6b9cc634bdbf474e88b207df32150494ecfff012b8b6ca4b8572d3b8eae2193e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('581e2304-be87-5cd4-ba9b-562cbfe496fb', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd7d22c522e2da196a3895e192e36eb3ff7e454cf0ffccee2d0a767d1581a349'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b762b27-209a-5263-a7a6-f3b57e74a8ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('581e2304-be87-5cd4-ba9b-562cbfe496fb', 1), 'dd7d22c522e2da196a3895e192e36eb3ff7e454cf0ffccee2d0a767d1581a349',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6b9cc634bdbf474e88b207df32150494ecfff012b8b6ca4b8572d3b8eae2193e.mp3', 3369, '2026-09-14 01:30:46.512214', 'c892d5560afd90ceed12301b64a73239459350bcab0709b5c19e11e45b7b2352', 'validated', '{"audio_key":"6b9cc634bdbf474e88b207df32150494ecfff012b8b6ca4b8572d3b8eae2193e","entity_key":"d_institutional_accountability_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c892d5560afd90ceed12301b64a73239459350bcab0709b5c19e11e45b7b2352","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6b9cc634bdbf474e88b207df32150494ecfff012b8b6ca4b8572d3b8eae2193e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_01:2 -> audio/generated/ko-KR/dialogues/6bdda0c4e1ec9b9c16d53093283eb4127f8d23b25b77d1f6688bc426cb270f6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1014c43-1226-565b-91d9-e69db043aa43', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd082cdd02871f30787c4a905f61106077f4c6423749c5049db1c02d233dee9f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9f70e5f-f9ac-5dee-ac73-ad5734d95022', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1014c43-1226-565b-91d9-e69db043aa43', 1), 'd082cdd02871f30787c4a905f61106077f4c6423749c5049db1c02d233dee9f6',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6bdda0c4e1ec9b9c16d53093283eb4127f8d23b25b77d1f6688bc426cb270f6d.mp3', 6530, '2026-09-14 01:30:47.557016', 'e6e08ab109afe2ea36bc41b8b17a7fc3708e8c7a3cc0e0cc1dc849ee020be3de', 'validated', '{"audio_key":"6bdda0c4e1ec9b9c16d53093283eb4127f8d23b25b77d1f6688bc426cb270f6d","entity_key":"d_register_orchestration_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6e08ab109afe2ea36bc41b8b17a7fc3708e8c7a3cc0e0cc1dc849ee020be3de","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6bdda0c4e1ec9b9c16d53093283eb4127f8d23b25b77d1f6688bc426cb270f6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_01:4 -> audio/generated/ko-KR/dialogues/6e6e3cd1ade9570d62ffbe89f12d6ef643187cb68368a4f1b3828fc644c0df0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e557279-f552-536b-8b87-1c925d056fc8', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '616edc26a76d7eabb4e2e1cd5bb859a84874f31d85ec0d12eb30e147e9a8a3f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a388cc5-00cc-5c24-a5eb-3915bf073526', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e557279-f552-536b-8b87-1c925d056fc8', 1), '616edc26a76d7eabb4e2e1cd5bb859a84874f31d85ec0d12eb30e147e9a8a3f9',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6e6e3cd1ade9570d62ffbe89f12d6ef643187cb68368a4f1b3828fc644c0df0c.mp3', 4597, '2026-09-14 01:30:48.214055', '4e8d28fc22f773a9415c399389a5a539ff48d566846dfd3caa3115a77dde074f', 'validated', '{"audio_key":"6e6e3cd1ade9570d62ffbe89f12d6ef643187cb68368a4f1b3828fc644c0df0c","entity_key":"d_c2_seoul_deliberation_capstone_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e8d28fc22f773a9415c399389a5a539ff48d566846dfd3caa3115a77dde074f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6e6e3cd1ade9570d62ffbe89f12d6ef643187cb68368a4f1b3828fc644c0df0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_01:2 -> audio/generated/ko-KR/dialogues/721d3cd88163cc8294ea0ec61256897d150957582bec2241a1b205d2c49ca796.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0806b404-b5a6-5cab-9848-d7291402ee28', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59d424aee41c597bdab15b999dc40200d59ec3130912c7635aa6d9c55b1970ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c699a2d-10c7-5d4d-825a-519054ec2a89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0806b404-b5a6-5cab-9848-d7291402ee28', 1), '59d424aee41c597bdab15b999dc40200d59ec3130912c7635aa6d9c55b1970ad',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/721d3cd88163cc8294ea0ec61256897d150957582bec2241a1b205d2c49ca796.mp3', 3343, '2026-09-14 01:30:48.828814', '0f04ecaf1f97184dd6f8356a5b978607f2241c9714556b1aec632d023b6d4036', 'validated', '{"audio_key":"721d3cd88163cc8294ea0ec61256897d150957582bec2241a1b205d2c49ca796","entity_key":"d_c2_seoul_deliberation_capstone_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f04ecaf1f97184dd6f8356a5b978607f2241c9714556b1aec632d023b6d4036","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/721d3cd88163cc8294ea0ec61256897d150957582bec2241a1b205d2c49ca796.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_accountability_02:3 -> audio/generated/ko-KR/dialogues/725c0d55cd651c7599cd14144e7c1b8c7e11f21496659c1c603a352ea9d37f2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad24f540-9e63-5c6e-bfd5-3957ed3db0e8', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_accountability_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '778bfb19d769108c3b3fb31993afdc683dc763d988bae803ba956efab46c69a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94d08f3e-4237-5074-84a0-9aeebcfc0ddb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad24f540-9e63-5c6e-bfd5-3957ed3db0e8', 1), '778bfb19d769108c3b3fb31993afdc683dc763d988bae803ba956efab46c69a2',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/725c0d55cd651c7599cd14144e7c1b8c7e11f21496659c1c603a352ea9d37f2c.mp3', 2324, '2026-09-14 01:30:49.307265', 'a1c3c077d1056299b6f81b9fb6aa4a77b9b5fc5465eee1f051334f888702adcd', 'validated', '{"audio_key":"725c0d55cd651c7599cd14144e7c1b8c7e11f21496659c1c603a352ea9d37f2c","entity_key":"d_institutional_accountability_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1c3c077d1056299b6f81b9fb6aa4a77b9b5fc5465eee1f051334f888702adcd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/725c0d55cd651c7599cd14144e7c1b8c7e11f21496659c1c603a352ea9d37f2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_01:4 -> audio/generated/ko-KR/dialogues/7419e91bd0f86c24c750e97e18f53c42e6a7c5db5ba18dfbd7c147098b65a9f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e0b163a-0b72-5a8b-8d28-64e40d609891', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f9fbc1d0ef3aa60cf215ea5f5828b40423ea6acb89d100c02ecf6b6725e8464'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb2071dc-863a-5119-a7b8-0ed07ac13657', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e0b163a-0b72-5a8b-8d28-64e40d609891', 1), '3f9fbc1d0ef3aa60cf215ea5f5828b40423ea6acb89d100c02ecf6b6725e8464',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7419e91bd0f86c24c750e97e18f53c42e6a7c5db5ba18dfbd7c147098b65a9f4.mp3', 4597, '2026-09-14 01:30:50.290046', 'a8bb7a19d4623b2674c58336a7a7d448cd5f304f72db43e56050d8ce283e154e', 'validated', '{"audio_key":"7419e91bd0f86c24c750e97e18f53c42e6a7c5db5ba18dfbd7c147098b65a9f4","entity_key":"d_strategic_ambiguity_irony_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8bb7a19d4623b2674c58336a7a7d448cd5f304f72db43e56050d8ce283e154e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/7419e91bd0f86c24c750e97e18f53c42e6a7c5db5ba18dfbd7c147098b65a9f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_01:1 -> audio/generated/ko-KR/dialogues/7501d70afc69b9e1669857af4c0a821de0fee7c928c7fca0d3ffe9fbff9775ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8be94895-d5cc-5962-8c48-af6806422670', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fb79223a82422a33e35fe6ad19d9e8199cb08b107dbe1f6c58b010b438e466d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21d57ade-2875-5876-acef-7fcabef4bdf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8be94895-d5cc-5962-8c48-af6806422670', 1), '4fb79223a82422a33e35fe6ad19d9e8199cb08b107dbe1f6c58b010b438e466d',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7501d70afc69b9e1669857af4c0a821de0fee7c928c7fca0d3ffe9fbff9775ad.mp3', 5198, '2026-09-14 01:30:50.752378', '020a73355312e528c90fc4ff0ec3da3f7804e8cfe38bc5a4aca44c381bcb588f', 'validated', '{"audio_key":"7501d70afc69b9e1669857af4c0a821de0fee7c928c7fca0d3ffe9fbff9775ad","entity_key":"d_compressed_argumentation_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"020a73355312e528c90fc4ff0ec3da3f7804e8cfe38bc5a4aca44c381bcb588f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/7501d70afc69b9e1669857af4c0a821de0fee7c928c7fca0d3ffe9fbff9775ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_02:2 -> audio/generated/ko-KR/dialogues/7633b59faf64b1e8d4cf839cb316714a94a8a984398454a051c8aa3a09c8a29f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('709a073f-8e21-5c3d-bdaa-4e32dbe18224', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed39f03955b66136df1b771ea7ef9613c3a4e9838be84f88f0f42ecdbe15ebf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('313540b2-6263-52d6-8193-3c1d465b6de1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('709a073f-8e21-5c3d-bdaa-4e32dbe18224', 1), 'ed39f03955b66136df1b771ea7ef9613c3a4e9838be84f88f0f42ecdbe15ebf7',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7633b59faf64b1e8d4cf839cb316714a94a8a984398454a051c8aa3a09c8a29f.mp3', 3108, '2026-09-14 01:30:51.469274', 'ce8d11b9c6bcc8ce616c7bd5f4b5f1270d64278351a0062d1190465200f0db3e', 'validated', '{"audio_key":"7633b59faf64b1e8d4cf839cb316714a94a8a984398454a051c8aa3a09c8a29f","entity_key":"d_media_framing_intertextuality_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce8d11b9c6bcc8ce616c7bd5f4b5f1270d64278351a0062d1190465200f0db3e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/7633b59faf64b1e8d4cf839cb316714a94a8a984398454a051c8aa3a09c8a29f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_01:1 -> audio/generated/ko-KR/dialogues/7a164c1ef7d2a2576a396ca57e2bcdfa1a52bd42ced3ec80163dbf3ecb40863b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f00aeb50-481f-51e4-9f0c-5614b0f0f391', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c394e5272199302c5ca09aded85ad6c0ca92a5399e99cf8b61fe119101ef1a37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4db179bd-be60-5861-82ab-4fb9ea91478d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f00aeb50-481f-51e4-9f0c-5614b0f0f391', 1), 'c394e5272199302c5ca09aded85ad6c0ca92a5399e99cf8b61fe119101ef1a37',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7a164c1ef7d2a2576a396ca57e2bcdfa1a52bd42ced3ec80163dbf3ecb40863b.mp3', 4623, '2026-09-14 01:30:52.198024', 'bbdc5124b507b71c83468f44822ba32698adf281b7e20eea43a711080dae9bea', 'validated', '{"audio_key":"7a164c1ef7d2a2576a396ca57e2bcdfa1a52bd42ced3ec80163dbf3ecb40863b","entity_key":"d_strategic_ambiguity_irony_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bbdc5124b507b71c83468f44822ba32698adf281b7e20eea43a711080dae9bea","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7a164c1ef7d2a2576a396ca57e2bcdfa1a52bd42ced3ec80163dbf3ecb40863b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_02:1 -> audio/generated/ko-KR/dialogues/7ff7f3ca4d251b63b8fe6edbbd8e7c8fff6571a0f9b69a1498b5ec0b10ded8af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec4ec185-b788-56b2-a6f5-baf0e59992da', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '231676a365d43e7c9f0a56335f4ec416f7df854442e14d7ea7fc6a77f183ae9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('904146a1-882d-55b1-9c7a-fe3be97e4e1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec4ec185-b788-56b2-a6f5-baf0e59992da', 1), '231676a365d43e7c9f0a56335f4ec416f7df854442e14d7ea7fc6a77f183ae9c',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7ff7f3ca4d251b63b8fe6edbbd8e7c8fff6571a0f9b69a1498b5ec0b10ded8af.mp3', 4963, '2026-09-14 01:30:52.900902', '6d2e4e7eb2f4d964f6249da73b2ae69daa2363e5ba680a77d9019494169df0d1', 'validated', '{"audio_key":"7ff7f3ca4d251b63b8fe6edbbd8e7c8fff6571a0f9b69a1498b5ec0b10ded8af","entity_key":"d_c2_seoul_deliberation_capstone_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d2e4e7eb2f4d964f6249da73b2ae69daa2363e5ba680a77d9019494169df0d1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7ff7f3ca4d251b63b8fe6edbbd8e7c8fff6571a0f9b69a1498b5ec0b10ded8af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_01:3 -> audio/generated/ko-KR/dialogues/804ab85aeb315991523091806e85bafede9db3ddd16c915a0ee404233a62849e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4003d40-c474-5503-be15-11a78eadf57e', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90604b14028134722166a536bfa6a9b1df6144e7e1df054b55a53054b8ffdece'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b8f25a1-5741-5bd4-b0bb-ba66fe1139c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4003d40-c474-5503-be15-11a78eadf57e', 1), '90604b14028134722166a536bfa6a9b1df6144e7e1df054b55a53054b8ffdece',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/804ab85aeb315991523091806e85bafede9db3ddd16c915a0ee404233a62849e.mp3', 3944, '2026-09-14 01:30:53.464574', 'ecf01d17e2b165b332f8497010a433aa71c770c06c688d7f0809dad6d46b6d7a', 'validated', '{"audio_key":"804ab85aeb315991523091806e85bafede9db3ddd16c915a0ee404233a62849e","entity_key":"d_strategic_ambiguity_irony_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ecf01d17e2b165b332f8497010a433aa71c770c06c688d7f0809dad6d46b6d7a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/804ab85aeb315991523091806e85bafede9db3ddd16c915a0ee404233a62849e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_02:3 -> audio/generated/ko-KR/dialogues/8144265224143d80ba2670e14a852c8d7ceefafeb1c9b188e46c3962467a1a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc0a8f8f-71ae-569a-bce5-5fef76bee08f', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84f28c01da83f9c244b539131f13b3ac36bff68c94b4f0db5ba9da7ed904c503'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54c1ebb0-b7f0-5171-a6d0-2543c27e2e5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc0a8f8f-71ae-569a-bce5-5fef76bee08f', 1), '84f28c01da83f9c244b539131f13b3ac36bff68c94b4f0db5ba9da7ed904c503',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8144265224143d80ba2670e14a852c8d7ceefafeb1c9b188e46c3962467a1a5e.mp3', 3604, '2026-09-14 01:30:54.149916', 'ae7502f7b63c6d3ffd925c4db56b1a94d718a04a4d069801ed5703f79c2ed7ba', 'validated', '{"audio_key":"8144265224143d80ba2670e14a852c8d7ceefafeb1c9b188e46c3962467a1a5e","entity_key":"d_strategic_ambiguity_irony_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ae7502f7b63c6d3ffd925c4db56b1a94d718a04a4d069801ed5703f79c2ed7ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/8144265224143d80ba2670e14a852c8d7ceefafeb1c9b188e46c3962467a1a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_02:3 -> audio/generated/ko-KR/dialogues/8537592a1238d733f91eba5baf9be2c7d23c2ff2dfd885edf5089afc152b1741.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adbaf03a-0d68-579d-823b-f2b232e187ce', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e675bba4f7cf4e81c9cf201306886c5c43b6b5781026b7d4ab452ec0cadb2ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c0a103d-81fe-5204-a6a9-c06575f39d6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adbaf03a-0d68-579d-823b-f2b232e187ce', 1), 'e675bba4f7cf4e81c9cf201306886c5c43b6b5781026b7d4ab452ec0cadb2ddc',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8537592a1238d733f91eba5baf9be2c7d23c2ff2dfd885edf5089afc152b1741.mp3', 4597, '2026-09-14 01:30:54.810018', '02be8ffea73dd7fc91614f8d3571fad3990ab24330fdcbb3446c8d45d1bd8167', 'validated', '{"audio_key":"8537592a1238d733f91eba5baf9be2c7d23c2ff2dfd885edf5089afc152b1741","entity_key":"d_c2_seoul_deliberation_capstone_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02be8ffea73dd7fc91614f8d3571fad3990ab24330fdcbb3446c8d45d1bd8167","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/8537592a1238d733f91eba5baf9be2c7d23c2ff2dfd885edf5089afc152b1741.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_01:4 -> audio/generated/ko-KR/dialogues/8bed9c76ae638caffdccae61cf318a60e1cf5c22c4e30a90f4b5a12eb7b224e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20efa51e-b21e-57aa-b496-7a2613686c75', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9450e8451cb6be04977e48f073518753a958449061ea1e11d11bcead1df33595'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78d7ccee-3798-5d2a-bf58-9d8b1b22504d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20efa51e-b21e-57aa-b496-7a2613686c75', 1), '9450e8451cb6be04977e48f073518753a958449061ea1e11d11bcead1df33595',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8bed9c76ae638caffdccae61cf318a60e1cf5c22c4e30a90f4b5a12eb7b224e7.mp3', 4310, '2026-09-14 01:30:55.500252', 'e3e5d09b948d02bcc34ed22b244e5cad438fe0434963747fbf7aea75c9a609c5', 'validated', '{"audio_key":"8bed9c76ae638caffdccae61cf318a60e1cf5c22c4e30a90f4b5a12eb7b224e7","entity_key":"d_methodological_critique_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3e5d09b948d02bcc34ed22b244e5cad438fe0434963747fbf7aea75c9a609c5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/8bed9c76ae638caffdccae61cf318a60e1cf5c22c4e30a90f4b5a12eb7b224e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_01:1 -> audio/generated/ko-KR/dialogues/8ff96581dc6be07de880f3c26c14c606b9014f998763ca6b0ac3218f2421ddab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('553466da-6fb1-5e01-8204-313c74abed81', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41c18cd3e6dec6b58f44a408150f31404e04e93bd9fbf6f736dc27a082059d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76e4e69c-3252-5d8e-b39b-e21e0222eec0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('553466da-6fb1-5e01-8204-313c74abed81', 1), 'b41c18cd3e6dec6b58f44a408150f31404e04e93bd9fbf6f736dc27a082059d4',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8ff96581dc6be07de880f3c26c14c606b9014f998763ca6b0ac3218f2421ddab.mp3', 3604, '2026-09-14 01:30:56.052704', 'f70a71a7a13de2d27cc67ce3c72af7501c4dc5e4e87d7fbd7e37061359a99009', 'validated', '{"audio_key":"8ff96581dc6be07de880f3c26c14c606b9014f998763ca6b0ac3218f2421ddab","entity_key":"d_register_orchestration_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f70a71a7a13de2d27cc67ce3c72af7501c4dc5e4e87d7fbd7e37061359a99009","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/8ff96581dc6be07de880f3c26c14c606b9014f998763ca6b0ac3218f2421ddab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_01:3 -> audio/generated/ko-KR/dialogues/905714807cc1136a7c11f82efe44d41370c459acd3af217099c0ee9fee0ea24d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b93c1b5-13ac-5c2d-b253-c65d34b145dc', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca6bf40f2878b42afe90028fb4305f1838ac36b2461e942898e8f0bbf9cc0d2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20c6eef0-442c-5f9e-9109-cb96904ecba0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b93c1b5-13ac-5c2d-b253-c65d34b145dc', 1), 'ca6bf40f2878b42afe90028fb4305f1838ac36b2461e942898e8f0bbf9cc0d2f',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/905714807cc1136a7c11f82efe44d41370c459acd3af217099c0ee9fee0ea24d.mp3', 2586, '2026-09-14 01:30:56.669078', 'b2928a41faf3853d05861b9d4465f2d67219b13ae8fb9cf84c6261703da292aa', 'validated', '{"audio_key":"905714807cc1136a7c11f82efe44d41370c459acd3af217099c0ee9fee0ea24d","entity_key":"d_essayistic_rhythm_style_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2928a41faf3853d05861b9d4465f2d67219b13ae8fb9cf84c6261703da292aa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/905714807cc1136a7c11f82efe44d41370c459acd3af217099c0ee9fee0ea24d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_01:4 -> audio/generated/ko-KR/dialogues/965ec420be70b02a1252ac645b26e06092faf656d56dc396ed8c1209c1d0e5d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('281be054-a41c-563b-8e65-a26357a53384', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d6dd24480293d850cf5795e43fa6b49c9f93fc3df202f65445fb1e883b885c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('464a4c96-d986-5259-8fcc-ca339451517e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('281be054-a41c-563b-8e65-a26357a53384', 1), '1d6dd24480293d850cf5795e43fa6b49c9f93fc3df202f65445fb1e883b885c5',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/965ec420be70b02a1252ac645b26e06092faf656d56dc396ed8c1209c1d0e5d8.mp3', 5276, '2026-09-14 01:30:57.436883', '39ce724ea8dd45c97bf4f4f8d619b9f5f9142bbf8e8869e107fb387a505c4ac0', 'validated', '{"audio_key":"965ec420be70b02a1252ac645b26e06092faf656d56dc396ed8c1209c1d0e5d8","entity_key":"d_compressed_argumentation_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39ce724ea8dd45c97bf4f4f8d619b9f5f9142bbf8e8869e107fb387a505c4ac0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/965ec420be70b02a1252ac645b26e06092faf656d56dc396ed8c1209c1d0e5d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_02:2 -> audio/generated/ko-KR/dialogues/9936e2ead2e73eb76120d271f28217a3f1605f27c85de3d6421839157da24c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34f15f52-152a-5648-a7f3-d72d39cef399', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a0db3024ec0b92360ff6cdf2060ba4cdb680ca456c037c85d4c6d5b9ab0db4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79d31bee-4679-51a9-b971-35272dc29390', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34f15f52-152a-5648-a7f3-d72d39cef399', 1), '9a0db3024ec0b92360ff6cdf2060ba4cdb680ca456c037c85d4c6d5b9ab0db4d',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9936e2ead2e73eb76120d271f28217a3f1605f27c85de3d6421839157da24c3f.mp3', 4728, '2026-09-14 01:30:58.030613', 'cc246802834370fc12d063b66aeb8738600b4f9fa340e735695cace62f90652f', 'validated', '{"audio_key":"9936e2ead2e73eb76120d271f28217a3f1605f27c85de3d6421839157da24c3f","entity_key":"d_high_stakes_negotiation_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc246802834370fc12d063b66aeb8738600b4f9fa340e735695cace62f90652f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9936e2ead2e73eb76120d271f28217a3f1605f27c85de3d6421839157da24c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_01:2 -> audio/generated/ko-KR/dialogues/9debad18cd373d86e62465f7bd6ffcf29bccd22f0e40c57f004d917ce655c2cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('612753c0-6a79-5c2b-a1e3-63c560aeaf6d', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52d72e7a97ad5a860882b9a3aa81a52cf66dcc6e91329452adf2924fad6c79cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('290f5c8a-c6a8-5ca6-bb6a-a7a7b9523b89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('612753c0-6a79-5c2b-a1e3-63c560aeaf6d', 1), '52d72e7a97ad5a860882b9a3aa81a52cf66dcc6e91329452adf2924fad6c79cf',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9debad18cd373d86e62465f7bd6ffcf29bccd22f0e40c57f004d917ce655c2cc.mp3', 4728, '2026-09-14 01:30:58.817721', '1abdcefa3f8a8da1bb04cb71379487d77ae1e101e6d40a87712bb810001cb485', 'validated', '{"audio_key":"9debad18cd373d86e62465f7bd6ffcf29bccd22f0e40c57f004d917ce655c2cc","entity_key":"d_high_stakes_negotiation_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1abdcefa3f8a8da1bb04cb71379487d77ae1e101e6d40a87712bb810001cb485","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9debad18cd373d86e62465f7bd6ffcf29bccd22f0e40c57f004d917ce655c2cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_01:3 -> audio/generated/ko-KR/dialogues/a430e0a5edc5acbdb6b1936a3d4eefad865d66ca7a4a808e56a3f7b4861e1964.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24b1ee7f-ea04-5a92-b35a-0359d00e7e04', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b30f54cac3a4e2dd6f944ff0f881066eb15ee20b740c2a0a2cd67bdb9e2528ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e404af67-c0c8-588a-b47a-d2a7170ce493', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24b1ee7f-ea04-5a92-b35a-0359d00e7e04', 1), 'b30f54cac3a4e2dd6f944ff0f881066eb15ee20b740c2a0a2cd67bdb9e2528ee',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a430e0a5edc5acbdb6b1936a3d4eefad865d66ca7a4a808e56a3f7b4861e1964.mp3', 3944, '2026-09-14 01:30:59.302135', '28158304073a0e3fffbf8cc9f75a10f7b2e2fde1dd4dbade0c722a75267bfabb', 'validated', '{"audio_key":"a430e0a5edc5acbdb6b1936a3d4eefad865d66ca7a4a808e56a3f7b4861e1964","entity_key":"d_media_framing_intertextuality_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28158304073a0e3fffbf8cc9f75a10f7b2e2fde1dd4dbade0c722a75267bfabb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a430e0a5edc5acbdb6b1936a3d4eefad865d66ca7a4a808e56a3f7b4861e1964.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_ambiguity_irony_01:2 -> audio/generated/ko-KR/dialogues/a554f0259c8f76f996011c2d578c5ed46c55817e40550af01c69fbc0836caaa3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67e80c06-4665-5d36-8749-51ed43ce939c', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_ambiguity_irony_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a665f67be9a7aaf8c159259cec15ee29baf887d9aa57d1e21c4956474f84b67f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2860a0f7-0694-5422-97a3-17546b1d631e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67e80c06-4665-5d36-8749-51ed43ce939c', 1), 'a665f67be9a7aaf8c159259cec15ee29baf887d9aa57d1e21c4956474f84b67f',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a554f0259c8f76f996011c2d578c5ed46c55817e40550af01c69fbc0836caaa3.mp3', 4911, '2026-09-14 01:31:00.218416', 'dd2122e26f433ab87e11c9f0c26ced92f593da6aa10adea2147ecf5727171401', 'validated', '{"audio_key":"a554f0259c8f76f996011c2d578c5ed46c55817e40550af01c69fbc0836caaa3","entity_key":"d_strategic_ambiguity_irony_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd2122e26f433ab87e11c9f0c26ced92f593da6aa10adea2147ecf5727171401","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a554f0259c8f76f996011c2d578c5ed46c55817e40550af01c69fbc0836caaa3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_02:3 -> audio/generated/ko-KR/dialogues/a7b08b6fbeedf5c6e3cd529cc114a5565d3e742d49707d47ce93d066652927e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('282054bc-6a69-510c-a6ce-697609397f7e', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd56c1197534a6e53ce58668ba54689d86693bd6fe9aeea5d34e88a0124e00eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1727fe2d-d143-5d2a-8f85-6549f7444500', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('282054bc-6a69-510c-a6ce-697609397f7e', 1), 'dd56c1197534a6e53ce58668ba54689d86693bd6fe9aeea5d34e88a0124e00eb',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a7b08b6fbeedf5c6e3cd529cc114a5565d3e742d49707d47ce93d066652927e7.mp3', 5041, '2026-09-14 01:31:00.737048', '69e1e63ac20c0ed533d3b22260f756d13f540a1fed611cc8df42643133f49e21', 'validated', '{"audio_key":"a7b08b6fbeedf5c6e3cd529cc114a5565d3e742d49707d47ce93d066652927e7","entity_key":"d_register_orchestration_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"69e1e63ac20c0ed533d3b22260f756d13f540a1fed611cc8df42643133f49e21","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a7b08b6fbeedf5c6e3cd529cc114a5565d3e742d49707d47ce93d066652927e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_01:3 -> audio/generated/ko-KR/dialogues/a97d21c1d36f5c1c96664910a6ff0aa38eca543cad3411cbac6510f576f16d5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d818dcec-ff10-5303-be8d-46352d427634', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '253617b6af10d3461d511c882b0cccf28f52c5e4127ed52fda95aca0d37cff24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7432e862-aff1-5064-8708-dab213f57f96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d818dcec-ff10-5303-be8d-46352d427634', 1), '253617b6af10d3461d511c882b0cccf28f52c5e4127ed52fda95aca0d37cff24',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a97d21c1d36f5c1c96664910a6ff0aa38eca543cad3411cbac6510f576f16d5b.mp3', 2533, '2026-09-14 01:31:01.310277', '2a795c127029340725b3234f884a836be0e9c060a39c1eeb570e13960c969c96', 'validated', '{"audio_key":"a97d21c1d36f5c1c96664910a6ff0aa38eca543cad3411cbac6510f576f16d5b","entity_key":"d_methodological_critique_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2a795c127029340725b3234f884a836be0e9c060a39c1eeb570e13960c969c96","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a97d21c1d36f5c1c96664910a6ff0aa38eca543cad3411cbac6510f576f16d5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_02:3 -> audio/generated/ko-KR/dialogues/b467104780b1a481fc2f89ebf591b7987bd061f047a1ad786ac2d6dcc1dbf0e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5aa441d7-a10c-5c12-9297-e0e9945b38ae', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a71daca4737d2f4e1136408973aaabf56243b42069a73ac1c765cfb21ffff1eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62fa9f37-badc-5991-b90a-fa3f7dcf1b7a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5aa441d7-a10c-5c12-9297-e0e9945b38ae', 1), 'a71daca4737d2f4e1136408973aaabf56243b42069a73ac1c765cfb21ffff1eb',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b467104780b1a481fc2f89ebf591b7987bd061f047a1ad786ac2d6dcc1dbf0e2.mp3', 3604, '2026-09-14 01:31:01.982493', '25465633a61ddc5b91b483a083c5f96738cc535fd81b068edb743c6db5986292', 'validated', '{"audio_key":"b467104780b1a481fc2f89ebf591b7987bd061f047a1ad786ac2d6dcc1dbf0e2","entity_key":"d_high_stakes_negotiation_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25465633a61ddc5b91b483a083c5f96738cc535fd81b068edb743c6db5986292","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b467104780b1a481fc2f89ebf591b7987bd061f047a1ad786ac2d6dcc1dbf0e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_01:3 -> audio/generated/ko-KR/dialogues/b7262128c906a438fadc19a2c84cc75c91bc1faf39f2afbdc429a638ffd5791a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1ee207b-4ddc-5d45-a8d8-21110c06e750', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2305e54ce12cc9eba01bf859795d2bca787b73ec094acda0f576713d4a7e8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f24da5d6-efd9-5749-88c8-ec4e4b41bacf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1ee207b-4ddc-5d45-a8d8-21110c06e750', 1), '2e2305e54ce12cc9eba01bf859795d2bca787b73ec094acda0f576713d4a7e8a',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7262128c906a438fadc19a2c84cc75c91bc1faf39f2afbdc429a638ffd5791a.mp3', 3657, '2026-09-14 01:31:02.613177', 'b0da9abba737cb43c600a4ba193cfb80d438abb2cf68ab0cd2a988662080b3c2', 'validated', '{"audio_key":"b7262128c906a438fadc19a2c84cc75c91bc1faf39f2afbdc429a638ffd5791a","entity_key":"d_compressed_argumentation_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0da9abba737cb43c600a4ba193cfb80d438abb2cf68ab0cd2a988662080b3c2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b7262128c906a438fadc19a2c84cc75c91bc1faf39f2afbdc429a638ffd5791a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_02:3 -> audio/generated/ko-KR/dialogues/b97c6577acbda29495b9736048b1edea08e95d85daf350bf47fe9f6388c551ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c34d3b06-1ac7-5295-9a75-2fddb23e440c', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49a2e38da2a783388782dc95da5f5783e0d7a6bdab8a95f1c2e6be0ec92ea8d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0487d26b-2bcf-580c-bc39-ba3daec2e974', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c34d3b06-1ac7-5295-9a75-2fddb23e440c', 1), '49a2e38da2a783388782dc95da5f5783e0d7a6bdab8a95f1c2e6be0ec92ea8d4',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b97c6577acbda29495b9736048b1edea08e95d85daf350bf47fe9f6388c551ed.mp3', 3291, '2026-09-14 01:31:03.234808', 'e5ca1c409687a6432dbf2d30c7f03be39b7ae6f0da8f85c87e8522c24a4ec05e', 'validated', '{"audio_key":"b97c6577acbda29495b9736048b1edea08e95d85daf350bf47fe9f6388c551ed","entity_key":"d_compressed_argumentation_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5ca1c409687a6432dbf2d30c7f03be39b7ae6f0da8f85c87e8522c24a4ec05e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b97c6577acbda29495b9736048b1edea08e95d85daf350bf47fe9f6388c551ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_02:3 -> audio/generated/ko-KR/dialogues/b98eafcd809be6bf1866bb4a956dc7109704005c0eb9eba61f691fdbe4df63f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11597a36-6ab7-572b-a16d-e303282b0307', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b90e854f94de5d3e02b29dc6c455452e40b22b10ff7101cec16a872e1f4d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('844ddf1e-0e95-59de-bf72-278051b44a20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11597a36-6ab7-572b-a16d-e303282b0307', 1), '290b90e854f94de5d3e02b29dc6c455452e40b22b10ff7101cec16a872e1f4d2',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b98eafcd809be6bf1866bb4a956dc7109704005c0eb9eba61f691fdbe4df63f3.mp3', 4127, '2026-09-14 01:31:03.934829', '274789f94d18bff98d4564d6a677be0a91c40135602795daf820b717c09221d6', 'validated', '{"audio_key":"b98eafcd809be6bf1866bb4a956dc7109704005c0eb9eba61f691fdbe4df63f3","entity_key":"d_methodological_critique_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"274789f94d18bff98d4564d6a677be0a91c40135602795daf820b717c09221d6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b98eafcd809be6bf1866bb4a956dc7109704005c0eb9eba61f691fdbe4df63f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_02:3 -> audio/generated/ko-KR/dialogues/b9fa92e6bd68a777ac2baa199ffefaac33f923cebf2656482850b93af8912a80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('122b7889-003a-599c-a700-dcc66cd1899b', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0c0fa7062f5079c9264dd2c8934b0ff6a8b3bb0e1e0c85fee3d7a537ae1473a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01930e33-94cc-58d1-81f4-c5d2029a6ee9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('122b7889-003a-599c-a700-dcc66cd1899b', 1), 'e0c0fa7062f5079c9264dd2c8934b0ff6a8b3bb0e1e0c85fee3d7a537ae1473a',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b9fa92e6bd68a777ac2baa199ffefaac33f923cebf2656482850b93af8912a80.mp3', 3526, '2026-09-14 01:31:04.522214', 'df8954a28fca377971cb72c7645b9ab507528bd6656d96d844dad962bd5e2d0b', 'validated', '{"audio_key":"b9fa92e6bd68a777ac2baa199ffefaac33f923cebf2656482850b93af8912a80","entity_key":"d_essayistic_rhythm_style_02:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df8954a28fca377971cb72c7645b9ab507528bd6656d96d844dad962bd5e2d0b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b9fa92e6bd68a777ac2baa199ffefaac33f923cebf2656482850b93af8912a80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_02:2 -> audio/generated/ko-KR/dialogues/badc2bddafea3511420d29abdab294361727dbce38a9f13b6ed19070ae87bcc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d987288f-fc09-5294-a745-24d3ec2ccd6e', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73b8b699010bf822c7ce014ad5997bf7431754c8d9e2c1dc7620728f4f8475ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b061bc6c-f6e6-5a4d-8e1e-b45b385a012a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d987288f-fc09-5294-a745-24d3ec2ccd6e', 1), '73b8b699010bf822c7ce014ad5997bf7431754c8d9e2c1dc7620728f4f8475ec',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/badc2bddafea3511420d29abdab294361727dbce38a9f13b6ed19070ae87bcc3.mp3', 3422, '2026-09-14 01:31:05.149809', '3eca974b452f744e31070ecfc4b16bad2419170def20f548c759442db1b8271f', 'validated', '{"audio_key":"badc2bddafea3511420d29abdab294361727dbce38a9f13b6ed19070ae87bcc3","entity_key":"d_methodological_critique_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3eca974b452f744e31070ecfc4b16bad2419170def20f548c759442db1b8271f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/badc2bddafea3511420d29abdab294361727dbce38a9f13b6ed19070ae87bcc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_02:1 -> audio/generated/ko-KR/dialogues/beb832e658d200420160e31a6937e143b5b270ee125a0f533b5ccb5772dea05a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b96aa3e1-ee13-5436-9c89-06596cb233aa', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3127c437e9200ded2e80c5f75b1590c029892588eb36a3187cb8b20be838a04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc66e76c-3395-5584-ab9a-ecdf43061e1e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b96aa3e1-ee13-5436-9c89-06596cb233aa', 1), 'a3127c437e9200ded2e80c5f75b1590c029892588eb36a3187cb8b20be838a04',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/beb832e658d200420160e31a6937e143b5b270ee125a0f533b5ccb5772dea05a.mp3', 4127, '2026-09-14 01:31:05.767863', '51bdf98cda6add60fe00265d5ee542e1557cecc926c8e17c0260209a1d92228a', 'validated', '{"audio_key":"beb832e658d200420160e31a6937e143b5b270ee125a0f533b5ccb5772dea05a","entity_key":"d_register_orchestration_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51bdf98cda6add60fe00265d5ee542e1557cecc926c8e17c0260209a1d92228a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/beb832e658d200420160e31a6937e143b5b270ee125a0f533b5ccb5772dea05a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sociolinguistic_indexicality_02:4 -> audio/generated/ko-KR/dialogues/c8433c522cdc9744270ab0278d2410dfbc305ae62f335c31de90a008f31f88c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74d5d842-db94-5dd9-b3f0-eb8d7ca9f932', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sociolinguistic_indexicality_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c690feb12944bb52d4a6cfabf2bc697468005bede58f24340098e91d770b2c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('128e9e84-3214-56c3-91fd-f61509d39f62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74d5d842-db94-5dd9-b3f0-eb8d7ca9f932', 1), '8c690feb12944bb52d4a6cfabf2bc697468005bede58f24340098e91d770b2c4',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c8433c522cdc9744270ab0278d2410dfbc305ae62f335c31de90a008f31f88c3.mp3', 3343, '2026-09-14 01:31:06.369797', '877ce643732920c77709ebe0f134e810a8b59200d083cac30780cf3cea753369', 'validated', '{"audio_key":"c8433c522cdc9744270ab0278d2410dfbc305ae62f335c31de90a008f31f88c3","entity_key":"d_sociolinguistic_indexicality_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"877ce643732920c77709ebe0f134e810a8b59200d083cac30780cf3cea753369","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c8433c522cdc9744270ab0278d2410dfbc305ae62f335c31de90a008f31f88c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_01:2 -> audio/generated/ko-KR/dialogues/c8e4d7066ffdea47b8901a9ce8c7f40fd94061bf2dac6c2965758474a43b599c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45bd16a8-9ea5-5ce8-80ae-ab260f669647', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd90ab2f110ebf02d6a4d6469373b29696b3f127e3368df7a0688d468ef06f02e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3894ef4f-5410-560b-989e-6e54ada1c38e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45bd16a8-9ea5-5ce8-80ae-ab260f669647', 1), 'd90ab2f110ebf02d6a4d6469373b29696b3f127e3368df7a0688d468ef06f02e',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c8e4d7066ffdea47b8901a9ce8c7f40fd94061bf2dac6c2965758474a43b599c.mp3', 5328, '2026-09-14 01:31:07.174823', 'dcd1837e61b574a261c27b8da42c389d780affa8ff357ed2b0764a8c35be8df6', 'validated', '{"audio_key":"c8e4d7066ffdea47b8901a9ce8c7f40fd94061bf2dac6c2965758474a43b599c","entity_key":"d_compressed_argumentation_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd1837e61b574a261c27b8da42c389d780affa8ff357ed2b0764a8c35be8df6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c8e4d7066ffdea47b8901a9ce8c7f40fd94061bf2dac6c2965758474a43b599c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_01:1 -> audio/generated/ko-KR/dialogues/c9eea6707596398f708e25f352e57a337c424f437c4fde2ba906bb54ae0709c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31dd3248-98ef-5933-90e5-3bb3d5379e4a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2bfc453f226ed319be6dfe13ce9ed6092903fbb55b77197eea5bdfd008032b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae1ed27b-cf12-55d8-9488-3d7d61967ace', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31dd3248-98ef-5933-90e5-3bb3d5379e4a', 1), 'e2bfc453f226ed319be6dfe13ce9ed6092903fbb55b77197eea5bdfd008032b1',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c9eea6707596398f708e25f352e57a337c424f437c4fde2ba906bb54ae0709c1.mp3', 4623, '2026-09-14 01:31:07.812909', '66751e3060f5b593147d3a5f74fdb4399fc19129c7503fb0aeb30498f16071a6', 'validated', '{"audio_key":"c9eea6707596398f708e25f352e57a337c424f437c4fde2ba906bb54ae0709c1","entity_key":"d_media_framing_intertextuality_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"66751e3060f5b593147d3a5f74fdb4399fc19129c7503fb0aeb30498f16071a6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c9eea6707596398f708e25f352e57a337c424f437c4fde2ba906bb54ae0709c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_01:2 -> audio/generated/ko-KR/dialogues/d0668186770e2652df7201ed2c815701eb1af353b97b40cbc53274879777e56a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('721581e5-12e2-5eea-abbf-8206e5f37a5b', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507af790f4e207dbe5be6767c0397ed1775218ab3be73f66ecbcddc7e739983b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('313256f7-188b-57cc-b860-474d3392331b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('721581e5-12e2-5eea-abbf-8206e5f37a5b', 1), '507af790f4e207dbe5be6767c0397ed1775218ab3be73f66ecbcddc7e739983b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d0668186770e2652df7201ed2c815701eb1af353b97b40cbc53274879777e56a.mp3', 3343, '2026-09-14 01:31:08.375706', '4b7af68313303b9a2e2a765631f6e1bb77279d07d3822a11519757d0cc28a9b8', 'validated', '{"audio_key":"d0668186770e2652df7201ed2c815701eb1af353b97b40cbc53274879777e56a","entity_key":"d_media_framing_intertextuality_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b7af68313303b9a2e2a765631f6e1bb77279d07d3822a11519757d0cc28a9b8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/d0668186770e2652df7201ed2c815701eb1af353b97b40cbc53274879777e56a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_02:4 -> audio/generated/ko-KR/dialogues/d159da24851960499b20fba501ff5185828d3228cac2bb4231c23d3d6593a18b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91979272-4700-5430-8ff4-33512e5d5f9c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e46b2d70fee110f4097823673eb742051f1263a5435b70dbfbe87f00e1c29145'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dcc4350-18cb-5d22-8627-b528fbbd7913', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91979272-4700-5430-8ff4-33512e5d5f9c', 1), 'e46b2d70fee110f4097823673eb742051f1263a5435b70dbfbe87f00e1c29145',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d159da24851960499b20fba501ff5185828d3228cac2bb4231c23d3d6593a18b.mp3', 6269, '2026-09-14 01:31:09.392598', '41efdf16514ac2394bef3e026a970aebf2e2f9cad7eab42727d010ef993926bc', 'validated', '{"audio_key":"d159da24851960499b20fba501ff5185828d3228cac2bb4231c23d3d6593a18b","entity_key":"d_essayistic_rhythm_style_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41efdf16514ac2394bef3e026a970aebf2e2f9cad7eab42727d010ef993926bc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d159da24851960499b20fba501ff5185828d3228cac2bb4231c23d3d6593a18b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_orchestration_01:3 -> audio/generated/ko-KR/dialogues/d1b1fb3a58d8f89369b95c8c1781248d914c5681d215d19c61fba30eb6bc01c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d2152142-3f27-56f3-b9b4-03029db49ae1', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_orchestration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6444b6054945cebfc35dd8c9ea8fa28208f407442a55fb9c7b2f29956c90fdb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a3c701e-456d-5f4e-91f9-3755d6a31901', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d2152142-3f27-56f3-b9b4-03029db49ae1', 1), '6444b6054945cebfc35dd8c9ea8fa28208f407442a55fb9c7b2f29956c90fdb5',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d1b1fb3a58d8f89369b95c8c1781248d914c5681d215d19c61fba30eb6bc01c9.mp3', 4414, '2026-09-14 01:31:09.701821', '33d3426e59611d68330c748ea17cfdd8590cc102b4e20b90f42c2663c469a800', 'validated', '{"audio_key":"d1b1fb3a58d8f89369b95c8c1781248d914c5681d215d19c61fba30eb6bc01c9","entity_key":"d_register_orchestration_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"33d3426e59611d68330c748ea17cfdd8590cc102b4e20b90f42c2663c469a800","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d1b1fb3a58d8f89369b95c8c1781248d914c5681d215d19c61fba30eb6bc01c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_02:1 -> audio/generated/ko-KR/dialogues/d6cca4530ce4be10a09b484a6b7f5488445d75ea6da849b1bf03e2aacaaccf12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('085fe9db-18e9-559c-af71-1955f18d80de', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05eac9e8c071a4f08495c52176f2bc91a33436c91ddb93fd401d3d0c7fb5d687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d2f1c96-5a59-59d8-b9b5-c04027742dcf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('085fe9db-18e9-559c-af71-1955f18d80de', 1), '05eac9e8c071a4f08495c52176f2bc91a33436c91ddb93fd401d3d0c7fb5d687',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d6cca4530ce4be10a09b484a6b7f5488445d75ea6da849b1bf03e2aacaaccf12.mp3', 4205, '2026-09-14 01:31:10.694420', '0f56032b4cd46b9627c620b168840b712c3f634d491ff858a3de05508a2c49e6', 'validated', '{"audio_key":"d6cca4530ce4be10a09b484a6b7f5488445d75ea6da849b1bf03e2aacaaccf12","entity_key":"d_compressed_argumentation_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f56032b4cd46b9627c620b168840b712c3f634d491ff858a3de05508a2c49e6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d6cca4530ce4be10a09b484a6b7f5488445d75ea6da849b1bf03e2aacaaccf12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_framing_intertextuality_02:1 -> audio/generated/ko-KR/dialogues/da5c4ffb26f5eda85c7a9eb17555d0fdd63eb5890942116f95a4c1893c36a9bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23627ffd-a4b5-5c05-8d44-84042d8a111a', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_framing_intertextuality_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30b0b374239e44bbf40ed95a7dd26daec6465358cfc55f9c15e8f8b55070fc11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2def9f4-2575-53dd-b8aa-9f3cd1f2ed15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23627ffd-a4b5-5c05-8d44-84042d8a111a', 1), '30b0b374239e44bbf40ed95a7dd26daec6465358cfc55f9c15e8f8b55070fc11',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/da5c4ffb26f5eda85c7a9eb17555d0fdd63eb5890942116f95a4c1893c36a9bc.mp3', 4493, '2026-09-14 01:31:11.013485', 'c0561c4bdf97c9ae920dbb11034a22095f161716b203d7349dc749118550c7c7', 'validated', '{"audio_key":"da5c4ffb26f5eda85c7a9eb17555d0fdd63eb5890942116f95a4c1893c36a9bc","entity_key":"d_media_framing_intertextuality_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0561c4bdf97c9ae920dbb11034a22095f161716b203d7349dc749118550c7c7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/da5c4ffb26f5eda85c7a9eb17555d0fdd63eb5890942116f95a4c1893c36a9bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_negotiation_02:1 -> audio/generated/ko-KR/dialogues/dfa888967a88a363dd5ed0af448176c5b1706b153af8160d69a1f49af7c95636.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d0eb999-95ab-5685-b0ca-4250dae368e4', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1a88d3ac16c6051244c28d7ef6a802e8a46a0e1aa8941982eae9f42547967dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08b9a755-2fc7-5bfb-b72a-ddce613462ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d0eb999-95ab-5685-b0ca-4250dae368e4', 1), 'b1a88d3ac16c6051244c28d7ef6a802e8a46a0e1aa8941982eae9f42547967dd',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dfa888967a88a363dd5ed0af448176c5b1706b153af8160d69a1f49af7c95636.mp3', 3369, '2026-09-14 01:31:11.912738', 'b4c194cfaabe11b3d7e3b05e1181bf9b36d0d710edd4ceecfb2f69d1fe2d943e', 'validated', '{"audio_key":"dfa888967a88a363dd5ed0af448176c5b1706b153af8160d69a1f49af7c95636","entity_key":"d_high_stakes_negotiation_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4c194cfaabe11b3d7e3b05e1181bf9b36d0d710edd4ceecfb2f69d1fe2d943e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/dfa888967a88a363dd5ed0af448176c5b1706b153af8160d69a1f49af7c95636.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_argumentation_02:4 -> audio/generated/ko-KR/dialogues/e1da08c6f60e432f06201be0e5f73770db059f6fb1d9d0bf9bffacd5b97410ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('610e1a89-20ef-5480-b95b-6b56313b2383', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_argumentation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35f5383fa291c43e2d1ab71f90db8e9639d374fb9a0908026959ae61b3ab8db9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59b9101b-4829-56f6-8ec0-8d245f3bc2a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('610e1a89-20ef-5480-b95b-6b56313b2383', 1), '35f5383fa291c43e2d1ab71f90db8e9639d374fb9a0908026959ae61b3ab8db9',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e1da08c6f60e432f06201be0e5f73770db059f6fb1d9d0bf9bffacd5b97410ce.mp3', 3892, '2026-09-14 01:31:12.293153', '3c0a5861f2c5ac217254ec3e20ee8e2140d75dd5a5e16ee5254e4a12ba3a5ad2', 'validated', '{"audio_key":"e1da08c6f60e432f06201be0e5f73770db059f6fb1d9d0bf9bffacd5b97410ce","entity_key":"d_compressed_argumentation_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c0a5861f2c5ac217254ec3e20ee8e2140d75dd5a5e16ee5254e4a12ba3a5ad2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e1da08c6f60e432f06201be0e5f73770db059f6fb1d9d0bf9bffacd5b97410ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_01:4 -> audio/generated/ko-KR/dialogues/ea1b695f12c195d782ff06c5ba9d71696f4c84e7f3afee112dbb8e1926a406c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5ae001c-7d09-5f68-bd6c-d0e816ab47d5', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49343afd92da68c9dd596c9f4a0562d6ea28c6a0bb84f39696ae8e3559abc640'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb90c3e7-cb9b-597e-b140-b295d310d163', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5ae001c-7d09-5f68-bd6c-d0e816ab47d5', 1), '49343afd92da68c9dd596c9f4a0562d6ea28c6a0bb84f39696ae8e3559abc640',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ea1b695f12c195d782ff06c5ba9d71696f4c84e7f3afee112dbb8e1926a406c8.mp3', 3787, '2026-09-14 01:31:13.123503', 'eb4bab5933352bec2cef5d4009a36cedbbbce7fd67e873251957a73d019c59a9', 'validated', '{"audio_key":"ea1b695f12c195d782ff06c5ba9d71696f4c84e7f3afee112dbb8e1926a406c8","entity_key":"d_essayistic_rhythm_style_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb4bab5933352bec2cef5d4009a36cedbbbce7fd67e873251957a73d019c59a9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ea1b695f12c195d782ff06c5ba9d71696f4c84e7f3afee112dbb8e1926a406c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_01:1 -> audio/generated/ko-KR/dialogues/ead1264d90cf99625167ac19b7eccf04ef8e48cb82a18f1b774ad51ecdba1148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66ea7883-cc95-581b-a31c-0f6572657fd5', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '841fb736a299c6e03f29369ba3a8d429eb91c23ea6e291fbe70326da86c4def8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2724451-1a1f-5c3e-9b35-b0ebbb6d6b53', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66ea7883-cc95-581b-a31c-0f6572657fd5', 1), '841fb736a299c6e03f29369ba3a8d429eb91c23ea6e291fbe70326da86c4def8',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ead1264d90cf99625167ac19b7eccf04ef8e48cb82a18f1b774ad51ecdba1148.mp3', 4310, '2026-09-14 01:31:13.591112', '26190cafe67eb4e34fec4ca0076bf7323cbbeef3ada5c46516ee295513c2306a', 'validated', '{"audio_key":"ead1264d90cf99625167ac19b7eccf04ef8e48cb82a18f1b774ad51ecdba1148","entity_key":"d_c2_seoul_deliberation_capstone_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26190cafe67eb4e34fec4ca0076bf7323cbbeef3ada5c46516ee295513c2306a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ead1264d90cf99625167ac19b7eccf04ef8e48cb82a18f1b774ad51ecdba1148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_methodological_critique_02:1 -> audio/generated/ko-KR/dialogues/f06d7cfe55856676906faf6b64591a6769ee8626d35540aa37094b3ffb846356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a894f50-0eb1-5381-8536-69139a68c21c', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_methodological_critique_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb770cf72fee6e7d003fafc3148dfb261f8c5071c64b35fb87cfb07beb6f696f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adba3962-adfa-55fb-bab5-9cc1f5c3198b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a894f50-0eb1-5381-8536-69139a68c21c', 1), 'cb770cf72fee6e7d003fafc3148dfb261f8c5071c64b35fb87cfb07beb6f696f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f06d7cfe55856676906faf6b64591a6769ee8626d35540aa37094b3ffb846356.mp3', 4493, '2026-09-14 01:31:14.419359', '4cd2628a5f13aeb26bcbfafe8935bf8d59e145978d6ae2f185c31b49e1a00042', 'validated', '{"audio_key":"f06d7cfe55856676906faf6b64591a6769ee8626d35540aa37094b3ffb846356","entity_key":"d_methodological_critique_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4cd2628a5f13aeb26bcbfafe8935bf8d59e145978d6ae2f185c31b49e1a00042","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f06d7cfe55856676906faf6b64591a6769ee8626d35540aa37094b3ffb846356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_seoul_deliberation_capstone_02:4 -> audio/generated/ko-KR/dialogues/f43880076171909c70122a37e218f11bd3add2d414da6f3312d0216eac087981.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba4631f3-f9fa-51b4-aeb8-7446dcd8bdb0', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_seoul_deliberation_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2461bf3563c29c48b12d33f79b1042c978a166529d1437b46bf99af6f2ab5a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29d0acb5-039b-584a-b6d3-66f126bf249d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba4631f3-f9fa-51b4-aeb8-7446dcd8bdb0', 1), '2461bf3563c29c48b12d33f79b1042c978a166529d1437b46bf99af6f2ab5a8e',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f43880076171909c70122a37e218f11bd3add2d414da6f3312d0216eac087981.mp3', 4780, '2026-09-14 01:31:15.018520', '98ca3d9b25338903a429db7bd844c59f0c000cb59734abe20ffe55ebcf8cab1c', 'validated', '{"audio_key":"f43880076171909c70122a37e218f11bd3add2d414da6f3312d0216eac087981","entity_key":"d_c2_seoul_deliberation_capstone_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"98ca3d9b25338903a429db7bd844c59f0c000cb59734abe20ffe55ebcf8cab1c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f43880076171909c70122a37e218f11bd3add2d414da6f3312d0216eac087981.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_essayistic_rhythm_style_02:1 -> audio/generated/ko-KR/dialogues/f4dc298d8b97db572f3fd5d40f3b717c15efc87ddac2780d1b12393f5d02835d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd0d95a7-5786-5271-808e-cbbf3bf61c15', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_essayistic_rhythm_style_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2985a37d823dbc3f2eb1decd179e5f86a36eb45a08593700364cbed984851e3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abd47026-936a-50fa-b0a8-ceeda6860601', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd0d95a7-5786-5271-808e-cbbf3bf61c15', 1), '2985a37d823dbc3f2eb1decd179e5f86a36eb45a08593700364cbed984851e3d',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f4dc298d8b97db572f3fd5d40f3b717c15efc87ddac2780d1b12393f5d02835d.mp3', 3474, '2026-09-14 01:31:15.633780', 'dc867aabbf3da0c24004e095823e7ace6095de48f7526a78b647092096c1beeb', 'validated', '{"audio_key":"f4dc298d8b97db572f3fd5d40f3b717c15efc87ddac2780d1b12393f5d02835d","entity_key":"d_essayistic_rhythm_style_02:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc867aabbf3da0c24004e095823e7ace6095de48f7526a78b647092096c1beeb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f4dc298d8b97db572f3fd5d40f3b717c15efc87ddac2780d1b12393f5d02835d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_02 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcee23e-9a14-581a-95ab-96a84f91fa75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"lx_institutional_accountability_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_02 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a6a9aaf4-98f9-5423-a412-0783df1898c3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('857c7398-3cdf-5873-9ba9-cbd801a72d3d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a6a9aaf4-98f9-5423-a412-0783df1898c3', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"wf_institutional_accountability_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_05 -> audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af1252aa-4a9a-5e49-aff8-313d94344a84', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab66765dc02bbd246157e0025cae1536f38fc1eba601df9d1f0df04b94035a6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('527321fa-c28c-584a-994b-18f862f69b39', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af1252aa-4a9a-5e49-aff8-313d94344a84', 1), 'ab66765dc02bbd246157e0025cae1536f38fc1eba601df9d1f0df04b94035a6c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3', 1097, '2026-09-14 01:31:15.969876', '04a90e73a4d3d24da5d901f0eb03a788b1f69fe9b96beec80b2cd838e757a525', 'validated', '{"audio_key":"04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9","entity_key":"lx_high_stakes_negotiation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04a90e73a4d3d24da5d901f0eb03a788b1f69fe9b96beec80b2cd838e757a525","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_05 -> audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bab0abf6-0a99-5b94-ade5-ee37acca4277', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab66765dc02bbd246157e0025cae1536f38fc1eba601df9d1f0df04b94035a6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fcba2cb-ed27-50ec-bfab-74dcf4646078', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bab0abf6-0a99-5b94-ade5-ee37acca4277', 1), 'ab66765dc02bbd246157e0025cae1536f38fc1eba601df9d1f0df04b94035a6c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3', 1097, '2026-09-14 01:31:15.969876', '04a90e73a4d3d24da5d901f0eb03a788b1f69fe9b96beec80b2cd838e757a525', 'validated', '{"audio_key":"04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9","entity_key":"wf_high_stakes_negotiation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04a90e73a4d3d24da5d901f0eb03a788b1f69fe9b96beec80b2cd838e757a525","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/04c9ef2650a22106b92da74abc31fa3c39723bc106fccc589e0448ce2827a0d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_06 -> audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ca74383-5856-53c7-a336-bcd0cb50391d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fecbc3fad52b9ee5b2246523a618a39c117ebad0b11099933ee1bb5b5031161c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fd166b7-6992-5a86-bd5b-cf3c9e1cc786', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ca74383-5856-53c7-a336-bcd0cb50391d', 1), 'fecbc3fad52b9ee5b2246523a618a39c117ebad0b11099933ee1bb5b5031161c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3', 1018, '2026-09-14 01:31:16.575464', '886e4bbe00b9a729111fa905d6cf21de5df679105c6f8aa31d48e67e6d5ca0b4', 'validated', '{"audio_key":"050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9","entity_key":"lx_sociolinguistic_indexicality_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"886e4bbe00b9a729111fa905d6cf21de5df679105c6f8aa31d48e67e6d5ca0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_06 -> audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a419ee61-a167-5558-baf0-09e49236cda2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fecbc3fad52b9ee5b2246523a618a39c117ebad0b11099933ee1bb5b5031161c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bba5503-8ac1-55a3-97f8-9f8663c9dcad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a419ee61-a167-5558-baf0-09e49236cda2', 1), 'fecbc3fad52b9ee5b2246523a618a39c117ebad0b11099933ee1bb5b5031161c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3', 1018, '2026-09-14 01:31:16.575464', '886e4bbe00b9a729111fa905d6cf21de5df679105c6f8aa31d48e67e6d5ca0b4', 'validated', '{"audio_key":"050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9","entity_key":"wf_sociolinguistic_indexicality_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"886e4bbe00b9a729111fa905d6cf21de5df679105c6f8aa31d48e67e6d5ca0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/050cf853cf116d5495db72591d1667ed34f2d0ffca34d1d616bcba3e0d9e91c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_06 -> audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a7b33709-f757-5013-82c4-06b74bf5d668', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f928fac94bd7aac208ef7a1119530ca44b1c10f3127da382e335f09d6c1c6b11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d30a5be-165d-57e0-91d3-cbd70f8b791f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a7b33709-f757-5013-82c4-06b74bf5d668', 1), 'f928fac94bd7aac208ef7a1119530ca44b1c10f3127da382e335f09d6c1c6b11',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3', 1697, '2026-09-14 01:31:17.247593', 'eeb96606eaacb377d5990042aa5b23d08638d75dfa1053d6e8a0b5664773d976', 'validated', '{"audio_key":"0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2","entity_key":"lx_institutional_accountability_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eeb96606eaacb377d5990042aa5b23d08638d75dfa1053d6e8a0b5664773d976","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_06 -> audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7808681f-2cbc-5494-9c1e-0fc71f58bca2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f928fac94bd7aac208ef7a1119530ca44b1c10f3127da382e335f09d6c1c6b11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('741fc840-cb88-5cc1-8986-9dedbe02ff77', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7808681f-2cbc-5494-9c1e-0fc71f58bca2', 1), 'f928fac94bd7aac208ef7a1119530ca44b1c10f3127da382e335f09d6c1c6b11',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3', 1697, '2026-09-14 01:31:17.247593', 'eeb96606eaacb377d5990042aa5b23d08638d75dfa1053d6e8a0b5664773d976', 'validated', '{"audio_key":"0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2","entity_key":"wf_institutional_accountability_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eeb96606eaacb377d5990042aa5b23d08638d75dfa1053d6e8a0b5664773d976","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0777c5a15c15366fc9065f168007b84df24d5db45c5c97d7d40862608a7d26a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_06 -> audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70ae91f7-bf0e-572d-862e-efc6348d18c1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7c6896b8421867a9907ee006134945f44f8db40dec77c913a529eceeb580855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0b2ba31-2629-5784-9524-7476cec5f388', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70ae91f7-bf0e-572d-862e-efc6348d18c1', 1), 'd7c6896b8421867a9907ee006134945f44f8db40dec77c913a529eceeb580855',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3', 1149, '2026-09-14 01:31:17.536798', 'c798c5618fd3ac2b287c0dda33e0107c08a3e4d32d1e5d97a280af677140fc42', 'validated', '{"audio_key":"09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063","entity_key":"lx_high_stakes_negotiation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c798c5618fd3ac2b287c0dda33e0107c08a3e4d32d1e5d97a280af677140fc42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_06 -> audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('23c00c02-5003-54a2-8efb-72e3bb72ff1e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7c6896b8421867a9907ee006134945f44f8db40dec77c913a529eceeb580855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9294611a-dae6-5e90-a41c-00be476a24fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('23c00c02-5003-54a2-8efb-72e3bb72ff1e', 1), 'd7c6896b8421867a9907ee006134945f44f8db40dec77c913a529eceeb580855',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3', 1149, '2026-09-14 01:31:17.536798', 'c798c5618fd3ac2b287c0dda33e0107c08a3e4d32d1e5d97a280af677140fc42', 'validated', '{"audio_key":"09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063","entity_key":"wf_high_stakes_negotiation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c798c5618fd3ac2b287c0dda33e0107c08a3e4d32d1e5d97a280af677140fc42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/09e54b91fa8311642857caa5791abb721436b392507b3ce2e29cc5885a33b063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_06 -> audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('218315e9-311c-5665-8a5b-38fc5d75d5b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c53e71a92345e20acbf3c16d15c9c79bda8b9da98c8664a93244f44061a49467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ac20797-6871-5631-95b5-d46947a283ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('218315e9-311c-5665-8a5b-38fc5d75d5b3', 1), 'c53e71a92345e20acbf3c16d15c9c79bda8b9da98c8664a93244f44061a49467',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3', 1253, '2026-09-14 01:31:18.271477', '114b7f4d2a278409674a10ed1728f1301e8ad2119b05e50088ce37f9b71da415', 'validated', '{"audio_key":"1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728","entity_key":"lx_register_orchestration_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"114b7f4d2a278409674a10ed1728f1301e8ad2119b05e50088ce37f9b71da415","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_06 -> audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17365ca3-587c-5667-8a71-5c61aae90d22', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c53e71a92345e20acbf3c16d15c9c79bda8b9da98c8664a93244f44061a49467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3a51a00-2498-5d7d-828e-7b900f3d4e82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17365ca3-587c-5667-8a71-5c61aae90d22', 1), 'c53e71a92345e20acbf3c16d15c9c79bda8b9da98c8664a93244f44061a49467',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3', 1253, '2026-09-14 01:31:18.271477', '114b7f4d2a278409674a10ed1728f1301e8ad2119b05e50088ce37f9b71da415', 'validated', '{"audio_key":"1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728","entity_key":"wf_register_orchestration_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"114b7f4d2a278409674a10ed1728f1301e8ad2119b05e50088ce37f9b71da415","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1209a4fcf0ffdb5de0033c01f5692ae0f605e59e4f68ccc9f7ace6cfc3daf728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_03 -> audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('600abe25-b339-52cd-a9ae-c86c63a9e64c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'caf1dd96e4fcc7310519b443aee4b7fdac6a652eca49a6922c1e992510223cf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('819d0e7d-10c8-5f09-a829-1a71a567ce4c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('600abe25-b339-52cd-a9ae-c86c63a9e64c', 1), 'caf1dd96e4fcc7310519b443aee4b7fdac6a652eca49a6922c1e992510223cf2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3', 1280, '2026-09-14 01:31:18.544735', '86c262295189c8423930736f9faa5efd11e39ea5744c8f5238cedfe60fe52f75', 'validated', '{"audio_key":"13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38","entity_key":"lx_methodological_critique_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86c262295189c8423930736f9faa5efd11e39ea5744c8f5238cedfe60fe52f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_03 -> audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45628912-d27f-5304-96e6-022f3c082cb7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'caf1dd96e4fcc7310519b443aee4b7fdac6a652eca49a6922c1e992510223cf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2dcc5be-f542-58df-acb0-18abd89e3334', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45628912-d27f-5304-96e6-022f3c082cb7', 1), 'caf1dd96e4fcc7310519b443aee4b7fdac6a652eca49a6922c1e992510223cf2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3', 1280, '2026-09-14 01:31:18.544735', '86c262295189c8423930736f9faa5efd11e39ea5744c8f5238cedfe60fe52f75', 'validated', '{"audio_key":"13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38","entity_key":"wf_methodological_critique_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86c262295189c8423930736f9faa5efd11e39ea5744c8f5238cedfe60fe52f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13e39f1b856f3253e6df036097886c775bbf0dad5e103320747174d58ede6c38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_01 -> audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cf5188ae-a32d-5e26-8a8b-cb8ead7f003e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4259ae3b22dad7694c2595ae81d14863ecd67f07338b5a64cae84e317b1036b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75bf1679-7f0b-5f86-8f45-95ee5036caa4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cf5188ae-a32d-5e26-8a8b-cb8ead7f003e', 1), '4259ae3b22dad7694c2595ae81d14863ecd67f07338b5a64cae84e317b1036b6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3', 1280, '2026-09-14 01:31:19.243443', '6ee75c9546dcafce6aa10397d58b2a79c036caa9d033d952509268e477d83db7', 'validated', '{"audio_key":"227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa","entity_key":"lx_media_framing_intertextuality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6ee75c9546dcafce6aa10397d58b2a79c036caa9d033d952509268e477d83db7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_01 -> audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97ae85f9-e056-513e-ba41-b1c192ae1379', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4259ae3b22dad7694c2595ae81d14863ecd67f07338b5a64cae84e317b1036b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e106cafe-1947-5425-ac3b-c6d168a19608', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97ae85f9-e056-513e-ba41-b1c192ae1379', 1), '4259ae3b22dad7694c2595ae81d14863ecd67f07338b5a64cae84e317b1036b6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3', 1280, '2026-09-14 01:31:19.243443', '6ee75c9546dcafce6aa10397d58b2a79c036caa9d033d952509268e477d83db7', 'validated', '{"audio_key":"227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa","entity_key":"wf_media_framing_intertextuality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6ee75c9546dcafce6aa10397d58b2a79c036caa9d033d952509268e477d83db7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/227ba9b836140f438c699ca9a154e3ff5237f99117c18457011cb042242d1bfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_05 -> audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('921344e9-a602-577c-bc87-7159339df76f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83280f9bff4f4d7cb701f08d15a22fcd2de7b593bff3463fe584ce8bb77bfaa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ea3a662-9660-5c17-9334-9362c500336b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('921344e9-a602-577c-bc87-7159339df76f', 1), '83280f9bff4f4d7cb701f08d15a22fcd2de7b593bff3463fe584ce8bb77bfaa1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3', 914, '2026-09-14 01:31:19.487654', 'b7fcf14c834b2e9b8d0fc7694957211d883a49cc5cba0c856af1dace43797e39', 'validated', '{"audio_key":"2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290","entity_key":"lx_essayistic_rhythm_style_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b7fcf14c834b2e9b8d0fc7694957211d883a49cc5cba0c856af1dace43797e39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_05 -> audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe393045-8f25-54fb-8e53-d09af00b12a3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83280f9bff4f4d7cb701f08d15a22fcd2de7b593bff3463fe584ce8bb77bfaa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdd3f659-2e29-53d5-9c07-dd30a44cb497', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe393045-8f25-54fb-8e53-d09af00b12a3', 1), '83280f9bff4f4d7cb701f08d15a22fcd2de7b593bff3463fe584ce8bb77bfaa1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3', 914, '2026-09-14 01:31:19.487654', 'b7fcf14c834b2e9b8d0fc7694957211d883a49cc5cba0c856af1dace43797e39', 'validated', '{"audio_key":"2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290","entity_key":"wf_essayistic_rhythm_style_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b7fcf14c834b2e9b8d0fc7694957211d883a49cc5cba0c856af1dace43797e39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2c1a720d77f58e0868af9d587cbeccde5c51f55614acf1d71d3f3c69297cd290.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_06 -> audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4817597c-d9b3-5e4e-a5a3-7492eacfbc25', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82101e665b5a9f129316c298dfe5ce906222b2d2f7f3532594be238e2266098c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3e402a9-893f-5b13-b900-f289bf972045', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4817597c-d9b3-5e4e-a5a3-7492eacfbc25', 1), '82101e665b5a9f129316c298dfe5ce906222b2d2f7f3532594be238e2266098c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3', 1253, '2026-09-14 01:31:20.317341', 'a6e69a37109e05ed3b9566bf7120a36a96a8e7b4ee3c3c60b69ae6a5dc8996c3', 'validated', '{"audio_key":"3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67","entity_key":"lx_c2_seoul_deliberation_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6e69a37109e05ed3b9566bf7120a36a96a8e7b4ee3c3c60b69ae6a5dc8996c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_06 -> audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8765d867-04d9-5466-9bbc-62719a2b55e2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82101e665b5a9f129316c298dfe5ce906222b2d2f7f3532594be238e2266098c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b05fb43e-baff-57e1-9e18-a5358212749c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8765d867-04d9-5466-9bbc-62719a2b55e2', 1), '82101e665b5a9f129316c298dfe5ce906222b2d2f7f3532594be238e2266098c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3', 1253, '2026-09-14 01:31:20.317341', 'a6e69a37109e05ed3b9566bf7120a36a96a8e7b4ee3c3c60b69ae6a5dc8996c3', 'validated', '{"audio_key":"3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67","entity_key":"wf_c2_seoul_deliberation_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6e69a37109e05ed3b9566bf7120a36a96a8e7b4ee3c3c60b69ae6a5dc8996c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3034918739db7584af21a4ff76c7b7b7676aa75cb092e8c235e2e01666a00f67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_05 -> audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9e40bfd-2532-50a6-8607-66b98f28462c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '261d1dddc27e1e338e33483690b60e8cc1877f133e8e589f34def7154763df43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5f0f98d-3ea1-525b-b7b6-5c243c62266f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9e40bfd-2532-50a6-8607-66b98f28462c', 1), '261d1dddc27e1e338e33483690b60e8cc1877f133e8e589f34def7154763df43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3', 1253, '2026-09-14 01:31:20.453378', '5a91a99d4007bfd0a1c949f19404c78004877ca5462605dc3affa3cd842542fe', 'validated', '{"audio_key":"30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621","entity_key":"lx_media_framing_intertextuality_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a91a99d4007bfd0a1c949f19404c78004877ca5462605dc3affa3cd842542fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_05 -> audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7c5ba85-e949-5cbf-b223-2f16881bd540', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '261d1dddc27e1e338e33483690b60e8cc1877f133e8e589f34def7154763df43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f9390e4-2723-56bd-afdc-a79018b7ce3e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7c5ba85-e949-5cbf-b223-2f16881bd540', 1), '261d1dddc27e1e338e33483690b60e8cc1877f133e8e589f34def7154763df43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3', 1253, '2026-09-14 01:31:20.453378', '5a91a99d4007bfd0a1c949f19404c78004877ca5462605dc3affa3cd842542fe', 'validated', '{"audio_key":"30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621","entity_key":"wf_media_framing_intertextuality_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a91a99d4007bfd0a1c949f19404c78004877ca5462605dc3affa3cd842542fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/30719a4143446c85d81f19c00c0f24373a730737a26b445d0d90f783a2c2f621.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_03 -> audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c187a222-fd61-514a-b34d-f6c6e40bf74c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3558ffa9254bb9058c7b0e12ef965dd20649543abab93210b6843089298822d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9fecdeb-c72e-5f27-96a9-b309ffce9b78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c187a222-fd61-514a-b34d-f6c6e40bf74c', 1), 'e3558ffa9254bb9058c7b0e12ef965dd20649543abab93210b6843089298822d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3', 862, '2026-09-14 01:31:21.235773', '2726634d2be29b64dd6425d3bde59794aa79e1879d885e9fc0405087ed2ab410', 'validated', '{"audio_key":"35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee","entity_key":"lx_strategic_ambiguity_irony_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2726634d2be29b64dd6425d3bde59794aa79e1879d885e9fc0405087ed2ab410","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_03 -> audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d08db3b-b6ad-58dd-bd91-b7ce65641516', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3558ffa9254bb9058c7b0e12ef965dd20649543abab93210b6843089298822d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4b4e363-644d-5166-a56f-76e6cefd207f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d08db3b-b6ad-58dd-bd91-b7ce65641516', 1), 'e3558ffa9254bb9058c7b0e12ef965dd20649543abab93210b6843089298822d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3', 862, '2026-09-14 01:31:21.235773', '2726634d2be29b64dd6425d3bde59794aa79e1879d885e9fc0405087ed2ab410', 'validated', '{"audio_key":"35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee","entity_key":"wf_strategic_ambiguity_irony_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2726634d2be29b64dd6425d3bde59794aa79e1879d885e9fc0405087ed2ab410","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/35adf5680f5e2b83b38488049cfd5b1ca88f9feda2581b2d3346c751a52bceee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_05 -> audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('21a1ce57-91bf-50f2-b28e-026ba95d7713', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2c4636c11c0156bc722435c9b7f0f48a802f23580133c3d17d789e95e85761d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55fb3171-49b0-564f-bcc8-20558d70778c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('21a1ce57-91bf-50f2-b28e-026ba95d7713', 1), 'd2c4636c11c0156bc722435c9b7f0f48a802f23580133c3d17d789e95e85761d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3', 1253, '2026-09-14 01:31:21.501380', '14464de4a466d72138d9ae7da1670f68ac33278c7e138c3dc8a5a3c8e7b393a2', 'validated', '{"audio_key":"3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703","entity_key":"lx_compressed_argumentation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14464de4a466d72138d9ae7da1670f68ac33278c7e138c3dc8a5a3c8e7b393a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_05 -> audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81c403c9-fe74-54b7-9f09-0bee8c664d74', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2c4636c11c0156bc722435c9b7f0f48a802f23580133c3d17d789e95e85761d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('165478bc-4043-5033-ba41-041a2b25f892', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81c403c9-fe74-54b7-9f09-0bee8c664d74', 1), 'd2c4636c11c0156bc722435c9b7f0f48a802f23580133c3d17d789e95e85761d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3', 1253, '2026-09-14 01:31:21.501380', '14464de4a466d72138d9ae7da1670f68ac33278c7e138c3dc8a5a3c8e7b393a2', 'validated', '{"audio_key":"3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703","entity_key":"wf_compressed_argumentation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14464de4a466d72138d9ae7da1670f68ac33278c7e138c3dc8a5a3c8e7b393a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3999865c789ea30cfb970d892cb0de0f0753682503d98363d59e0960abca1703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_05 -> audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f356965-8a49-5056-beb5-8055ed8f7046', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b32a5cc9b579fdd20a663d55a95cd8114d339ee3fcbd4d67349e54dd68f05343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31254822-7ab3-51fb-bbe5-df95f914b862', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f356965-8a49-5056-beb5-8055ed8f7046', 1), 'b32a5cc9b579fdd20a663d55a95cd8114d339ee3fcbd4d67349e54dd68f05343',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3', 1201, '2026-09-14 01:31:22.176902', '5149838e5b4fa1b9dde79357ddf061fc6bd6022f1d4ae0c4d1a5d7275da0f55a', 'validated', '{"audio_key":"40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197","entity_key":"lx_institutional_accountability_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5149838e5b4fa1b9dde79357ddf061fc6bd6022f1d4ae0c4d1a5d7275da0f55a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_05 -> audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7a5e764-3651-5a1a-b4aa-450a47ab10fa', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b32a5cc9b579fdd20a663d55a95cd8114d339ee3fcbd4d67349e54dd68f05343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1b480f9-8059-5a86-b143-1ad6886f4689', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7a5e764-3651-5a1a-b4aa-450a47ab10fa', 1), 'b32a5cc9b579fdd20a663d55a95cd8114d339ee3fcbd4d67349e54dd68f05343',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3', 1201, '2026-09-14 01:31:22.176902', '5149838e5b4fa1b9dde79357ddf061fc6bd6022f1d4ae0c4d1a5d7275da0f55a', 'validated', '{"audio_key":"40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197","entity_key":"wf_institutional_accountability_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5149838e5b4fa1b9dde79357ddf061fc6bd6022f1d4ae0c4d1a5d7275da0f55a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/40408592e51603ed19a81420c2e4e9a35024f26afd9a9d3e73b38b46181fb197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_02 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cbcbe20-622a-502b-8025-a0dea8d9b22a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"lx_c2_seoul_deliberation_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_02 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64cae73e-6630-5c6e-8642-0c3c375ab9a5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ace00ac2-f82b-58c5-8d15-4f5b15189d31', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64cae73e-6630-5c6e-8642-0c3c375ab9a5', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"wf_c2_seoul_deliberation_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_03 -> audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57608b06-3538-5c1a-9f2d-fd647bb2cca7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c7c4d628be18c4b06a54a4d260ca43899aabad1eba60fdf890e8f0bcc7ce961'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dab41b83-cbb0-55c7-a28c-7506990b5dde', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57608b06-3538-5c1a-9f2d-fd647bb2cca7', 1), '0c7c4d628be18c4b06a54a4d260ca43899aabad1eba60fdf890e8f0bcc7ce961',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3', 1515, '2026-09-14 01:31:22.550172', '49e43d816da496cffaf6db6667b9356a8b51c095bcb16939bae5464603073263', 'validated', '{"audio_key":"49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58","entity_key":"lx_media_framing_intertextuality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"49e43d816da496cffaf6db6667b9356a8b51c095bcb16939bae5464603073263","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_03 -> audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb2a24ac-c89f-525b-99b5-3987fe7b763d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c7c4d628be18c4b06a54a4d260ca43899aabad1eba60fdf890e8f0bcc7ce961'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49e13533-60e1-5ba9-9a17-77f022834806', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb2a24ac-c89f-525b-99b5-3987fe7b763d', 1), '0c7c4d628be18c4b06a54a4d260ca43899aabad1eba60fdf890e8f0bcc7ce961',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3', 1515, '2026-09-14 01:31:22.550172', '49e43d816da496cffaf6db6667b9356a8b51c095bcb16939bae5464603073263', 'validated', '{"audio_key":"49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58","entity_key":"wf_media_framing_intertextuality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"49e43d816da496cffaf6db6667b9356a8b51c095bcb16939bae5464603073263","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/49eea062b7229e7aa9136e0856e3cf31931156c8075d8840c62870700313eb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_03 -> audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a00aa48c-eae8-5523-8137-c691cbbb2dd2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7de7e04-3ecb-58ed-ac34-f9e8fce268a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a00aa48c-eae8-5523-8137-c691cbbb2dd2', 1), 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3', 1097, '2026-09-14 01:08:59.272064', 'ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7', 'validated', '{"audio_key":"4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5","entity_key":"lx_compressed_argumentation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_03 -> audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27853716-b696-5099-8914-2df40724c727', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d57705ac-a617-5a57-acf2-fc48546d9f55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27853716-b696-5099-8914-2df40724c727', 1), 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3', 1097, '2026-09-14 01:08:59.272064', 'ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7', 'validated', '{"audio_key":"4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5","entity_key":"wf_compressed_argumentation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_02 -> audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d68d0cac-8450-5903-8578-ae30b00231e4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c59e1aeb296f46986ec372d74339ab0cb92527fc2508a5f1e125a5b66ef34c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1cfd00e-96c8-59cf-bcb7-a38689c13cc5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d68d0cac-8450-5903-8578-ae30b00231e4', 1), '6c59e1aeb296f46986ec372d74339ab0cb92527fc2508a5f1e125a5b66ef34c4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3', 1201, '2026-09-14 01:31:23.139183', '300591e91fb459465bbe0aa85d445dda9e7035aa0df1bd54923399d3990f71e2', 'validated', '{"audio_key":"4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922","entity_key":"lx_sociolinguistic_indexicality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"300591e91fb459465bbe0aa85d445dda9e7035aa0df1bd54923399d3990f71e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_02 -> audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('28b5313c-2263-50e5-b9ec-919a1e9c3370', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c59e1aeb296f46986ec372d74339ab0cb92527fc2508a5f1e125a5b66ef34c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e98cdb9c-c8ef-5522-b12f-ea9d8218754e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('28b5313c-2263-50e5-b9ec-919a1e9c3370', 1), '6c59e1aeb296f46986ec372d74339ab0cb92527fc2508a5f1e125a5b66ef34c4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3', 1201, '2026-09-14 01:31:23.139183', '300591e91fb459465bbe0aa85d445dda9e7035aa0df1bd54923399d3990f71e2', 'validated', '{"audio_key":"4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922","entity_key":"wf_sociolinguistic_indexicality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"300591e91fb459465bbe0aa85d445dda9e7035aa0df1bd54923399d3990f71e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4cbf5e83a901998c8df6f9b1a0502d949cfc6bfd41db70d22293b3dc9c6a8922.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_03 -> audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1c7cee7b-5251-5615-8b74-9ce832dc7909', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc1358a0199ccbc9431bf2ea47bdfd62ad7e2e1b50ae1dd149b1212f4ad74675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95034185-c521-5e76-934a-648cc6045411', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1c7cee7b-5251-5615-8b74-9ce832dc7909', 1), 'dc1358a0199ccbc9431bf2ea47bdfd62ad7e2e1b50ae1dd149b1212f4ad74675',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3', 1384, '2026-09-14 01:31:23.542344', '7d194e29a86cf4081f13a5db974f878ed6a276076cb1e3aa930bab8c7084f27c', 'validated', '{"audio_key":"5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904","entity_key":"lx_sociolinguistic_indexicality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d194e29a86cf4081f13a5db974f878ed6a276076cb1e3aa930bab8c7084f27c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_03 -> audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('250da6c0-550e-5000-87f5-595239d99f53', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc1358a0199ccbc9431bf2ea47bdfd62ad7e2e1b50ae1dd149b1212f4ad74675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3617b03-9bf6-58d6-9f1f-565fb5e0f52a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('250da6c0-550e-5000-87f5-595239d99f53', 1), 'dc1358a0199ccbc9431bf2ea47bdfd62ad7e2e1b50ae1dd149b1212f4ad74675',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3', 1384, '2026-09-14 01:31:23.542344', '7d194e29a86cf4081f13a5db974f878ed6a276076cb1e3aa930bab8c7084f27c', 'validated', '{"audio_key":"5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904","entity_key":"wf_sociolinguistic_indexicality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d194e29a86cf4081f13a5db974f878ed6a276076cb1e3aa930bab8c7084f27c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5207b5902f457abc22b52a31f283b5eafaff4cba2003d6c97f5d5de751e97904.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_02 -> audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e30ee9f-7cf7-5232-b033-aad89bcfc80b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1484f84f4d90cdc2c8c7cda7717d936d3bd193879d013b455e21f44a810c5599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b4396b8-1020-5e0d-9cae-e350cda463bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e30ee9f-7cf7-5232-b033-aad89bcfc80b', 1), '1484f84f4d90cdc2c8c7cda7717d936d3bd193879d013b455e21f44a810c5599',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3', 1384, '2026-09-14 01:31:24.107620', '02c75f57a17832141ef2fae6451f669ab607eb998db220f61ebed011ad88ac2b', 'validated', '{"audio_key":"5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e","entity_key":"lx_methodological_critique_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02c75f57a17832141ef2fae6451f669ab607eb998db220f61ebed011ad88ac2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_02 -> audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b159bc09-bc8b-5330-b7d0-547d151b34c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1484f84f4d90cdc2c8c7cda7717d936d3bd193879d013b455e21f44a810c5599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ff6481-5eea-57f8-85b3-c873f6ca7b16', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b159bc09-bc8b-5330-b7d0-547d151b34c6', 1), '1484f84f4d90cdc2c8c7cda7717d936d3bd193879d013b455e21f44a810c5599',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3', 1384, '2026-09-14 01:31:24.107620', '02c75f57a17832141ef2fae6451f669ab607eb998db220f61ebed011ad88ac2b', 'validated', '{"audio_key":"5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e","entity_key":"wf_methodological_critique_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02c75f57a17832141ef2fae6451f669ab607eb998db220f61ebed011ad88ac2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5518e839d4cd8a7863cefa63e7a0473d2c9b149f7ad9f227b1b34912deb66c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_06 -> audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('afa70420-08dd-598f-a7c3-eb486090525e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3378cd718891cc8985735712e6ac01cb77103a59fd1ae17accbf3c10768d2d77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae78a900-3a35-5386-a755-76367b7bc460', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('afa70420-08dd-598f-a7c3-eb486090525e', 1), '3378cd718891cc8985735712e6ac01cb77103a59fd1ae17accbf3c10768d2d77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3', 1097, '2026-09-14 01:31:24.527739', 'eed4e0ad6cbb7945acb4a660e9a6e51c88a709a9b6095d02ecdcdb7e03128d28', 'validated', '{"audio_key":"594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498","entity_key":"lx_compressed_argumentation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eed4e0ad6cbb7945acb4a660e9a6e51c88a709a9b6095d02ecdcdb7e03128d28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_06 -> audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('75aec6d3-3645-5821-8143-84b713cb4257', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3378cd718891cc8985735712e6ac01cb77103a59fd1ae17accbf3c10768d2d77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('277770e0-355f-569a-9445-3c61564e447e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('75aec6d3-3645-5821-8143-84b713cb4257', 1), '3378cd718891cc8985735712e6ac01cb77103a59fd1ae17accbf3c10768d2d77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3', 1097, '2026-09-14 01:31:24.527739', 'eed4e0ad6cbb7945acb4a660e9a6e51c88a709a9b6095d02ecdcdb7e03128d28', 'validated', '{"audio_key":"594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498","entity_key":"wf_compressed_argumentation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eed4e0ad6cbb7945acb4a660e9a6e51c88a709a9b6095d02ecdcdb7e03128d28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/594789047bde7c72257767f42e1d6318db0b98430846a6cd0fa0f42436cfd498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_01 -> audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0caca1f3-17d8-5912-bdac-87cb8753c36d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe5d1ab7f837fdee6c18f8fdb6e2c8e2d1079aa6a85faf5d40e580f436acc396'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53a241c7-dcbc-55fd-810c-fee49d06050f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0caca1f3-17d8-5912-bdac-87cb8753c36d', 1), 'fe5d1ab7f837fdee6c18f8fdb6e2c8e2d1079aa6a85faf5d40e580f436acc396',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3', 1071, '2026-09-14 01:31:25.084961', '9996c3f1f607ca83b171dc1c828346bb2b2adef847bb585dccfa32196c982a33', 'validated', '{"audio_key":"598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7","entity_key":"lx_methodological_critique_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9996c3f1f607ca83b171dc1c828346bb2b2adef847bb585dccfa32196c982a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_01 -> audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('883a5ce7-343e-578f-a18f-47be7cba7c0b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe5d1ab7f837fdee6c18f8fdb6e2c8e2d1079aa6a85faf5d40e580f436acc396'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a501105-0c92-5843-920d-d3d2ee3ebc99', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('883a5ce7-343e-578f-a18f-47be7cba7c0b', 1), 'fe5d1ab7f837fdee6c18f8fdb6e2c8e2d1079aa6a85faf5d40e580f436acc396',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3', 1071, '2026-09-14 01:31:25.084961', '9996c3f1f607ca83b171dc1c828346bb2b2adef847bb585dccfa32196c982a33', 'validated', '{"audio_key":"598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7","entity_key":"wf_methodological_critique_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9996c3f1f607ca83b171dc1c828346bb2b2adef847bb585dccfa32196c982a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/598fb136830f6a8a3fcf524367a10a29bb51105a1186eb53d3c4ffb811fffed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_01 -> audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0eca540d-4569-5694-b78c-2849c87ea6c7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47cc6f7bea8b0f07521aa158dd7481d3cf56e334fdf8fbdae95852db7f91d33c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('787f247e-463c-5ebc-8464-4768b0c835b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0eca540d-4569-5694-b78c-2849c87ea6c7', 1), '47cc6f7bea8b0f07521aa158dd7481d3cf56e334fdf8fbdae95852db7f91d33c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3', 966, '2026-09-14 01:31:25.469764', '953ea115830721b6b9a545e4514c1c0861ebde92b651dc0c9a9f7957ef384f8a', 'validated', '{"audio_key":"599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5","entity_key":"lx_compressed_argumentation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"953ea115830721b6b9a545e4514c1c0861ebde92b651dc0c9a9f7957ef384f8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_01 -> audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d99da4e1-1257-57f0-bb15-c017c98e169b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47cc6f7bea8b0f07521aa158dd7481d3cf56e334fdf8fbdae95852db7f91d33c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3fd5d7b-0972-5376-8eb9-b73c13bdd74a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d99da4e1-1257-57f0-bb15-c017c98e169b', 1), '47cc6f7bea8b0f07521aa158dd7481d3cf56e334fdf8fbdae95852db7f91d33c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3', 966, '2026-09-14 01:31:25.469764', '953ea115830721b6b9a545e4514c1c0861ebde92b651dc0c9a9f7957ef384f8a', 'validated', '{"audio_key":"599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5","entity_key":"wf_compressed_argumentation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"953ea115830721b6b9a545e4514c1c0861ebde92b651dc0c9a9f7957ef384f8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/599fe140e65192ec903958f7f9878a42bffb68caa73ea061352f4dd9cad1dee5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_05 -> audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('058528a6-decc-58f1-9081-01f50604a211', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73346c74bca09ad8a6a04a5bfc7082103e9cc668e6909580d2b998c5433fda46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bf046c2-ea9f-50c5-bf30-011c99bb1a1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('058528a6-decc-58f1-9081-01f50604a211', 1), '73346c74bca09ad8a6a04a5bfc7082103e9cc668e6909580d2b998c5433fda46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3', 1253, '2026-09-14 01:31:26.071203', '65730cd60bd52c1e4c0d938c9a1cb6b0929bc4776c9a30c42061276496a8bd47', 'validated', '{"audio_key":"5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb","entity_key":"lx_register_orchestration_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65730cd60bd52c1e4c0d938c9a1cb6b0929bc4776c9a30c42061276496a8bd47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_05 -> audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9cfd173f-a058-58a9-b6cb-2758b3f3fe3f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73346c74bca09ad8a6a04a5bfc7082103e9cc668e6909580d2b998c5433fda46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf065391-061a-5dd3-b6a0-910700b6b64b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9cfd173f-a058-58a9-b6cb-2758b3f3fe3f', 1), '73346c74bca09ad8a6a04a5bfc7082103e9cc668e6909580d2b998c5433fda46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3', 1253, '2026-09-14 01:31:26.071203', '65730cd60bd52c1e4c0d938c9a1cb6b0929bc4776c9a30c42061276496a8bd47', 'validated', '{"audio_key":"5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb","entity_key":"wf_register_orchestration_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65730cd60bd52c1e4c0d938c9a1cb6b0929bc4776c9a30c42061276496a8bd47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b156c08345fd98b7d2ae3366ac31a2c60fd744a2e732bf358d3c102fe8c91fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_03 -> audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5a6ba9b-ed66-5d2f-86e0-c38001cf022c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc92a8584adcc3a30b6ac4e42a6e8b7c78b32e7c89db8d7c593f3588bca3c39d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc018b9b-0404-5c3b-a835-16bcd78704f5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5a6ba9b-ed66-5d2f-86e0-c38001cf022c', 1), 'bc92a8584adcc3a30b6ac4e42a6e8b7c78b32e7c89db8d7c593f3588bca3c39d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3', 1018, '2026-09-14 01:31:26.409496', '899c6b86ce3294b32252e8f17674a5d05f522f4f3e238ed16b7735acb852b1df', 'validated', '{"audio_key":"61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522","entity_key":"lx_register_orchestration_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"899c6b86ce3294b32252e8f17674a5d05f522f4f3e238ed16b7735acb852b1df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_03 -> audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('926627ca-1859-5750-9a6d-3b42d2fcb35f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc92a8584adcc3a30b6ac4e42a6e8b7c78b32e7c89db8d7c593f3588bca3c39d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95cbb7f7-bc0d-505b-8a1e-a7d10b57c74a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('926627ca-1859-5750-9a6d-3b42d2fcb35f', 1), 'bc92a8584adcc3a30b6ac4e42a6e8b7c78b32e7c89db8d7c593f3588bca3c39d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3', 1018, '2026-09-14 01:31:26.409496', '899c6b86ce3294b32252e8f17674a5d05f522f4f3e238ed16b7735acb852b1df', 'validated', '{"audio_key":"61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522","entity_key":"wf_register_orchestration_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"899c6b86ce3294b32252e8f17674a5d05f522f4f3e238ed16b7735acb852b1df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/61168015e81d15105665da5b0510ab7aa6bbfef8efb1379bb8784d95b7ede522.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_02 -> audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f7c5b03-8f62-5808-b183-e87f81252262', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8ba60b70d5d975eaae7e1e7cc3f1d55e3d91558004f81c73ca3ab7b281a472e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b255e19-5177-5824-8778-800cf439fc93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f7c5b03-8f62-5808-b183-e87f81252262', 1), 'a8ba60b70d5d975eaae7e1e7cc3f1d55e3d91558004f81c73ca3ab7b281a472e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3', 1018, '2026-09-14 01:31:27.048076', '7aa9f07ed666168f265bcd29c802057fa14852306c969ecf1496a4a12b00715b', 'validated', '{"audio_key":"6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13","entity_key":"lx_essayistic_rhythm_style_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aa9f07ed666168f265bcd29c802057fa14852306c969ecf1496a4a12b00715b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_02 -> audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba62af04-38d8-5f49-a0fb-864916bac976', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8ba60b70d5d975eaae7e1e7cc3f1d55e3d91558004f81c73ca3ab7b281a472e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce4ab834-dd70-5de1-a13f-627a758c63a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba62af04-38d8-5f49-a0fb-864916bac976', 1), 'a8ba60b70d5d975eaae7e1e7cc3f1d55e3d91558004f81c73ca3ab7b281a472e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3', 1018, '2026-09-14 01:31:27.048076', '7aa9f07ed666168f265bcd29c802057fa14852306c969ecf1496a4a12b00715b', 'validated', '{"audio_key":"6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13","entity_key":"wf_essayistic_rhythm_style_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aa9f07ed666168f265bcd29c802057fa14852306c969ecf1496a4a12b00715b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6344616614e2ad0abd8212f48b482c0b6fa02789b9773a1a3d5b7658faa9ee13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_01 -> audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f060e979-0bc7-5614-abc6-cf58ef06c931', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1b372b50f2136c11ce434f433edfa8b3b0c4964ea725c6812ed10df3daa8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a121ff6e-9d19-5994-af71-3666a10fcbab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f060e979-0bc7-5614-abc6-cf58ef06c931', 1), '4b1b372b50f2136c11ce434f433edfa8b3b0c4964ea725c6812ed10df3daa8c7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3', 1149, '2026-09-14 01:31:27.377324', '43a200ea6aa986212155d369de5825766851465a7ebe03441a13be92675d023f', 'validated', '{"audio_key":"6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7","entity_key":"lx_essayistic_rhythm_style_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43a200ea6aa986212155d369de5825766851465a7ebe03441a13be92675d023f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_01 -> audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('064b9224-2a0c-5570-ba8a-fcbe3d899887', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1b372b50f2136c11ce434f433edfa8b3b0c4964ea725c6812ed10df3daa8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28d78f60-e252-5978-a7b4-92397d314e92', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('064b9224-2a0c-5570-ba8a-fcbe3d899887', 1), '4b1b372b50f2136c11ce434f433edfa8b3b0c4964ea725c6812ed10df3daa8c7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3', 1149, '2026-09-14 01:31:27.377324', '43a200ea6aa986212155d369de5825766851465a7ebe03441a13be92675d023f', 'validated', '{"audio_key":"6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7","entity_key":"wf_essayistic_rhythm_style_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43a200ea6aa986212155d369de5825766851465a7ebe03441a13be92675d023f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b8fbaa947062d71d3e199794ff3c1d3155849a71a3257f3735694d2b8a1afb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_04 -> audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ce658bef-5f54-589a-ae7a-62f27b93929e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcf83c876744ab93aa5ef80e9de0a29e8a7566a9cdc9c053c85b87c3161ab798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f109629-0c3f-5113-a4ae-55bf3ec943d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ce658bef-5f54-589a-ae7a-62f27b93929e', 1), 'dcf83c876744ab93aa5ef80e9de0a29e8a7566a9cdc9c053c85b87c3161ab798',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3', 1253, '2026-09-14 01:31:28.028306', '121bf7314f0b8bd0f160c774bb910e20478def28446db354366138f8842fd23a', 'validated', '{"audio_key":"6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0","entity_key":"lx_methodological_critique_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"121bf7314f0b8bd0f160c774bb910e20478def28446db354366138f8842fd23a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_04 -> audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('70e39980-bf03-5fd8-a35d-24fdd6b8b836', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcf83c876744ab93aa5ef80e9de0a29e8a7566a9cdc9c053c85b87c3161ab798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81558945-6698-5a91-b81e-2cb1bb5fe93b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('70e39980-bf03-5fd8-a35d-24fdd6b8b836', 1), 'dcf83c876744ab93aa5ef80e9de0a29e8a7566a9cdc9c053c85b87c3161ab798',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3', 1253, '2026-09-14 01:31:28.028306', '121bf7314f0b8bd0f160c774bb910e20478def28446db354366138f8842fd23a', 'validated', '{"audio_key":"6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0","entity_key":"wf_methodological_critique_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"121bf7314f0b8bd0f160c774bb910e20478def28446db354366138f8842fd23a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6d9523aacf69d913e2c20242158fd896447cc2867c76caaca8ea2309a6c749e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_02 -> audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6cf437e3-38cc-5ab6-9957-35b79e2d2bfc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f04958b-1615-54ef-bac3-6776d4a0e76c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6cf437e3-38cc-5ab6-9957-35b79e2d2bfc', 1), 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3', 862, '2026-09-13 22:05:08.125747', '077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8', 'validated', '{"audio_key":"6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3","entity_key":"lx_high_stakes_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_02 -> audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ecd7de8c-801f-54cd-8558-eefe8c474dd6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6678790-e5c3-541c-a8f2-78837e20bb3c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ecd7de8c-801f-54cd-8558-eefe8c474dd6', 1), 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3', 862, '2026-09-13 22:05:08.125747', '077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8', 'validated', '{"audio_key":"6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3","entity_key":"wf_high_stakes_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_04 -> audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4fd41bce-b75e-5074-b854-5f509ab2785a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2e201c9d45206602b37121f36b2a56662e2dd4407af07e95b185d728830e00c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d0348d7-cacd-5f49-8756-200865ae2a4e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4fd41bce-b75e-5074-b854-5f509ab2785a', 1), 'd2e201c9d45206602b37121f36b2a56662e2dd4407af07e95b185d728830e00c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3', 1071, '2026-09-14 01:31:28.484766', '8b83acd38217257ebd690d1577466b79135e1fc0981a37af8fb3b78eb5c6e51c', 'validated', '{"audio_key":"7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076","entity_key":"lx_media_framing_intertextuality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b83acd38217257ebd690d1577466b79135e1fc0981a37af8fb3b78eb5c6e51c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_04 -> audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a2a05cb-05bb-5555-9c66-addff73bd41c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2e201c9d45206602b37121f36b2a56662e2dd4407af07e95b185d728830e00c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85549ffa-b0f2-547b-9f8d-713fb179cd80', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a2a05cb-05bb-5555-9c66-addff73bd41c', 1), 'd2e201c9d45206602b37121f36b2a56662e2dd4407af07e95b185d728830e00c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3', 1071, '2026-09-14 01:31:28.484766', '8b83acd38217257ebd690d1577466b79135e1fc0981a37af8fb3b78eb5c6e51c', 'validated', '{"audio_key":"7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076","entity_key":"wf_media_framing_intertextuality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b83acd38217257ebd690d1577466b79135e1fc0981a37af8fb3b78eb5c6e51c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7039ee9c937d5974e0336d8d5b76bc66c2396cd498d22f073b5f0e4d3d7bc076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_04 -> audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('371d4197-3bae-5f69-85dd-129ee8105d94', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe141ea6ce45cdc1e002f9c71ab97cb81f0c4c33c987935797fa9ecdbe5d69fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7bd053b-ed07-5c6e-ac29-6f8296cf530e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('371d4197-3bae-5f69-85dd-129ee8105d94', 1), 'fe141ea6ce45cdc1e002f9c71ab97cb81f0c4c33c987935797fa9ecdbe5d69fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3', 1201, '2026-09-14 01:31:28.971520', '8b381c23f4914d4e357e171e6afded35946b7a6df1918c6c69c21a8ac630adda', 'validated', '{"audio_key":"740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22","entity_key":"lx_sociolinguistic_indexicality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b381c23f4914d4e357e171e6afded35946b7a6df1918c6c69c21a8ac630adda","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_04 -> audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('be2eb816-f27a-5972-88ec-5b6369d5d744', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe141ea6ce45cdc1e002f9c71ab97cb81f0c4c33c987935797fa9ecdbe5d69fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8437f4ee-df1d-5db2-89dd-29a66adfbfde', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('be2eb816-f27a-5972-88ec-5b6369d5d744', 1), 'fe141ea6ce45cdc1e002f9c71ab97cb81f0c4c33c987935797fa9ecdbe5d69fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3', 1201, '2026-09-14 01:31:28.971520', '8b381c23f4914d4e357e171e6afded35946b7a6df1918c6c69c21a8ac630adda', 'validated', '{"audio_key":"740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22","entity_key":"wf_sociolinguistic_indexicality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b381c23f4914d4e357e171e6afded35946b7a6df1918c6c69c21a8ac630adda","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/740448dcfa0fe4cdad87b340b834083b199c64e75eca01c566cd14f57de99c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_02 -> audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f336ce7-23f4-5849-95d3-219c113b17d5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e22d2c1-a877-58f8-ad0d-6887a3e688c1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f336ce7-23f4-5849-95d3-219c113b17d5', 1), '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3', 1071, '2026-09-14 01:09:07.288989', '6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0', 'validated', '{"audio_key":"74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2","entity_key":"lx_strategic_ambiguity_irony_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_02 -> audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f08a2dd7-f759-5d92-a3e5-9eb58bebc347', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57c684b9-ff40-5f94-bb7b-bd7cdd243ea7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f08a2dd7-f759-5d92-a3e5-9eb58bebc347', 1), '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3', 1071, '2026-09-14 01:09:07.288989', '6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0', 'validated', '{"audio_key":"74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2","entity_key":"wf_strategic_ambiguity_irony_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_01 -> audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('48725bc2-a817-518f-8896-2f6284ab515f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e501a8100b1052a364ce7c2d08e1ebbe1efa918b99b31229464df0260246716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad03a891-e248-5981-a84f-b8809213b3aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('48725bc2-a817-518f-8896-2f6284ab515f', 1), '8e501a8100b1052a364ce7c2d08e1ebbe1efa918b99b31229464df0260246716',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3', 1097, '2026-09-14 01:31:29.437389', '27f877050e94997ca5cfc892fdee51cf23bea203282a48944ca8a64b9b6cbf5d', 'validated', '{"audio_key":"785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae","entity_key":"lx_strategic_ambiguity_irony_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"27f877050e94997ca5cfc892fdee51cf23bea203282a48944ca8a64b9b6cbf5d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_01 -> audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9db4f988-887c-5e21-9b37-c1f3817927e7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e501a8100b1052a364ce7c2d08e1ebbe1efa918b99b31229464df0260246716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81352672-0a7a-5d91-bbf1-1947d454fb4e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9db4f988-887c-5e21-9b37-c1f3817927e7', 1), '8e501a8100b1052a364ce7c2d08e1ebbe1efa918b99b31229464df0260246716',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3', 1097, '2026-09-14 01:31:29.437389', '27f877050e94997ca5cfc892fdee51cf23bea203282a48944ca8a64b9b6cbf5d', 'validated', '{"audio_key":"785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae","entity_key":"wf_strategic_ambiguity_irony_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"27f877050e94997ca5cfc892fdee51cf23bea203282a48944ca8a64b9b6cbf5d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/785a0a15b5c1f917480bffe320885dff182c6f6a7c3333b6dea1f626c128c7ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_01 -> audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8fc91483-3e6f-5a82-a0eb-34f3723e99c3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada10eb68c1d30585b177f93930c8ffbdb52695d8935d304fc72174a3604aad9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4c7e53f-fddd-53d7-99f8-c64576ce0aa7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8fc91483-3e6f-5a82-a0eb-34f3723e99c3', 1), 'ada10eb68c1d30585b177f93930c8ffbdb52695d8935d304fc72174a3604aad9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3', 1018, '2026-09-14 01:31:30.008946', '4ec84bde382fcd786d9ac603fb93589a8d4005fbe2a75c0de5c3bed7ccb831f2', 'validated', '{"audio_key":"7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea","entity_key":"lx_institutional_accountability_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ec84bde382fcd786d9ac603fb93589a8d4005fbe2a75c0de5c3bed7ccb831f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_01 -> audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ca0d83d-4190-5a15-b6fa-08bfc328c01d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada10eb68c1d30585b177f93930c8ffbdb52695d8935d304fc72174a3604aad9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64479fbe-7a1d-5647-9783-a77c201cc717', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ca0d83d-4190-5a15-b6fa-08bfc328c01d', 1), 'ada10eb68c1d30585b177f93930c8ffbdb52695d8935d304fc72174a3604aad9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3', 1018, '2026-09-14 01:31:30.008946', '4ec84bde382fcd786d9ac603fb93589a8d4005fbe2a75c0de5c3bed7ccb831f2', 'validated', '{"audio_key":"7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea","entity_key":"wf_institutional_accountability_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ec84bde382fcd786d9ac603fb93589a8d4005fbe2a75c0de5c3bed7ccb831f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a71f1123e59bd30dbc6af4b2114e3c10926e09c47f5b00b3ecf693d37bca4ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_04 -> audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cc539e8c-1c05-5f8c-8ec4-802427f985da', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b782d7065502ffcf277864f97e943b6636eed6461e24a7d5dff3789e7bffd9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb3b207d-1c54-5ea5-977d-6b4302e61285', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cc539e8c-1c05-5f8c-8ec4-802427f985da', 1), '5b782d7065502ffcf277864f97e943b6636eed6461e24a7d5dff3789e7bffd9b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3', 1071, '2026-09-14 01:31:30.412569', 'b647a0f895f10c0da73ab2e822989cee6225337049d5b1b3525e9bfa04f92dfa', 'validated', '{"audio_key":"7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c","entity_key":"lx_essayistic_rhythm_style_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b647a0f895f10c0da73ab2e822989cee6225337049d5b1b3525e9bfa04f92dfa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_04 -> audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8c9dd4e-f74c-5aa8-816f-555ae13782b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b782d7065502ffcf277864f97e943b6636eed6461e24a7d5dff3789e7bffd9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa71b9d0-4ae3-51ce-a829-62783cd9fec0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8c9dd4e-f74c-5aa8-816f-555ae13782b3', 1), '5b782d7065502ffcf277864f97e943b6636eed6461e24a7d5dff3789e7bffd9b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3', 1071, '2026-09-14 01:31:30.412569', 'b647a0f895f10c0da73ab2e822989cee6225337049d5b1b3525e9bfa04f92dfa', 'validated', '{"audio_key":"7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c","entity_key":"wf_essayistic_rhythm_style_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b647a0f895f10c0da73ab2e822989cee6225337049d5b1b3525e9bfa04f92dfa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7c8b4bf20491e9abf2c2499fb2465348c2a4bc3aa8503c4b1780f1e5c342c06c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_04 -> audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdeb68e9-47eb-530f-91a0-783a12612936', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3605f00-898b-54b7-ac65-884401c5c648', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdeb68e9-47eb-530f-91a0-783a12612936', 1), 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3', 1097, '2026-09-14 01:09:08.389531', 'be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a', 'validated', '{"audio_key":"859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860","entity_key":"lx_register_orchestration_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_04 -> audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4cb0a2d5-0543-57c1-9949-7ff6eb10d7e1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4739ac69-4988-51ee-898e-8f285872ad16', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4cb0a2d5-0543-57c1-9949-7ff6eb10d7e1', 1), 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3', 1097, '2026-09-14 01:09:08.389531', 'be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a', 'validated', '{"audio_key":"859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860","entity_key":"wf_register_orchestration_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_04 -> audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('649b50c4-6b8d-5bfd-b433-8ab9a424f021', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c97879481efd381a3ade921c23f651d8db4e85c8403c3e76e07a9976f445550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a596101f-eb87-5c7b-be42-f9467dd51211', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('649b50c4-6b8d-5bfd-b433-8ab9a424f021', 1), '1c97879481efd381a3ade921c23f651d8db4e85c8403c3e76e07a9976f445550',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3', 1253, '2026-09-14 01:31:30.969554', 'c677944069f72343e655a58ba54be2b6b86289037bdf0736a01aa6f51744c9e9', 'validated', '{"audio_key":"871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d","entity_key":"lx_compressed_argumentation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c677944069f72343e655a58ba54be2b6b86289037bdf0736a01aa6f51744c9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_04 -> audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56b2afbb-74e9-59a9-815e-be72dc10c6fb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c97879481efd381a3ade921c23f651d8db4e85c8403c3e76e07a9976f445550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da807563-3c80-50a8-8c88-24c98136be1d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56b2afbb-74e9-59a9-815e-be72dc10c6fb', 1), '1c97879481efd381a3ade921c23f651d8db4e85c8403c3e76e07a9976f445550',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3', 1253, '2026-09-14 01:31:30.969554', 'c677944069f72343e655a58ba54be2b6b86289037bdf0736a01aa6f51744c9e9', 'validated', '{"audio_key":"871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d","entity_key":"wf_compressed_argumentation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c677944069f72343e655a58ba54be2b6b86289037bdf0736a01aa6f51744c9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/871533bcf6dfecdc6ad30a19395ac4e2c1253e8905e1937159fb3c5ca9fbcb5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_03 -> audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab68a1e0-a2f3-5942-929a-ff4bb0b075e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c7d984083c0135d0fc40ded696626cf201d4aa758da2a74a5ff59055357b480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a952ffa8-d6f7-5b34-b62e-8698877cec2b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab68a1e0-a2f3-5942-929a-ff4bb0b075e5', 1), '8c7d984083c0135d0fc40ded696626cf201d4aa758da2a74a5ff59055357b480',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3', 1436, '2026-09-14 01:31:31.388193', '11c61eb4735080396305c346101b897e0e1196c97d4480d2aeec0c999772eed3', 'validated', '{"audio_key":"88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41","entity_key":"lx_high_stakes_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11c61eb4735080396305c346101b897e0e1196c97d4480d2aeec0c999772eed3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_03 -> audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a5873a3-5c62-5444-9dcb-3c206e94dd2f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c7d984083c0135d0fc40ded696626cf201d4aa758da2a74a5ff59055357b480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51e66004-e922-5d5b-b6e2-b1235a36d3e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a5873a3-5c62-5444-9dcb-3c206e94dd2f', 1), '8c7d984083c0135d0fc40ded696626cf201d4aa758da2a74a5ff59055357b480',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3', 1436, '2026-09-14 01:31:31.388193', '11c61eb4735080396305c346101b897e0e1196c97d4480d2aeec0c999772eed3', 'validated', '{"audio_key":"88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41","entity_key":"wf_high_stakes_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11c61eb4735080396305c346101b897e0e1196c97d4480d2aeec0c999772eed3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88cb43c0e56f82c40d3380e8d26bd9baa872aab155b978e4a0bc33d7ae937c41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_01 -> audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('80ccd5a1-dbc6-5211-8c85-565503acd5a8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a91f28a5daf37c6404b2633e7326600de2f70e114d5feb5d1397c23d2194d1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('873eefa7-1f6f-5a87-a671-95f31eaff0c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('80ccd5a1-dbc6-5211-8c85-565503acd5a8', 1), '1a91f28a5daf37c6404b2633e7326600de2f70e114d5feb5d1397c23d2194d1c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3', 1018, '2026-09-14 01:31:31.915924', 'be437825867f8e4392677360d992d558b009958567935a8e9308114b922d2dff', 'validated', '{"audio_key":"8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56","entity_key":"lx_c2_seoul_deliberation_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be437825867f8e4392677360d992d558b009958567935a8e9308114b922d2dff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_01 -> audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17a649ba-5ae1-5e55-907e-14f498125c26', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a91f28a5daf37c6404b2633e7326600de2f70e114d5feb5d1397c23d2194d1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca828006-825e-5924-a55b-44c3a5646a81', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17a649ba-5ae1-5e55-907e-14f498125c26', 1), '1a91f28a5daf37c6404b2633e7326600de2f70e114d5feb5d1397c23d2194d1c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3', 1018, '2026-09-14 01:31:31.915924', 'be437825867f8e4392677360d992d558b009958567935a8e9308114b922d2dff', 'validated', '{"audio_key":"8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56","entity_key":"wf_c2_seoul_deliberation_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be437825867f8e4392677360d992d558b009958567935a8e9308114b922d2dff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8afb4ad1b817295c9d6f13a18d3c192ce9d17df40c677dfe22437acc4a397f56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_04 -> audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd9069e9-c7a3-5dbe-8b59-c9f3b20b7ffd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6ebc38b-fc1e-56ed-91f4-21ffdcf5f94c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd9069e9-c7a3-5dbe-8b59-c9f3b20b7ffd', 1), 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3', 1280, '2026-09-13 23:58:46.597922', '183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6', 'validated', '{"audio_key":"8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b","entity_key":"lx_c2_seoul_deliberation_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_04 -> audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00004c0f-1f35-5c85-97cf-0bbaebc732a1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4a42562-92f4-56a8-887e-f83aa181fe3f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00004c0f-1f35-5c85-97cf-0bbaebc732a1', 1), 'e7b0309174de0eedcd9600571292b48bef8c81f27e2c5d606f8b8e17e853c49f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3', 1280, '2026-09-13 23:58:46.597922', '183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6', 'validated', '{"audio_key":"8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b","entity_key":"wf_c2_seoul_deliberation_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183c1b75cfe60c52ae95197ea6f4f695a54c284bf7d30f5d30f43f0c022a5dd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8ce72fdc4b09ac81c60bacaf395de8b400ce54bcfa7fbe151a586dfac979362b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_01 -> audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc139f65-8f8a-5587-9892-8b9096e30290', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4808da25aab7a2027b78920b48ffaa35936f78eb8e64c23f79ecf1d1a85f7eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37f63497-023a-54e1-b46f-dc70e44fa503', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc139f65-8f8a-5587-9892-8b9096e30290', 1), 'b4808da25aab7a2027b78920b48ffaa35936f78eb8e64c23f79ecf1d1a85f7eb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3', 1097, '2026-09-14 01:31:32.480785', 'e5c32528f00fa468fd53690088609f8d6fa2fdedc8029ee9b009f4e6f2652a82', 'validated', '{"audio_key":"943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69","entity_key":"lx_sociolinguistic_indexicality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e5c32528f00fa468fd53690088609f8d6fa2fdedc8029ee9b009f4e6f2652a82","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_01 -> audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a2d8e69-68ee-5703-bb7b-badba4855cc2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4808da25aab7a2027b78920b48ffaa35936f78eb8e64c23f79ecf1d1a85f7eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c002fb3-bacc-598c-a090-8f812cb79d62', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a2d8e69-68ee-5703-bb7b-badba4855cc2', 1), 'b4808da25aab7a2027b78920b48ffaa35936f78eb8e64c23f79ecf1d1a85f7eb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3', 1097, '2026-09-14 01:31:32.480785', 'e5c32528f00fa468fd53690088609f8d6fa2fdedc8029ee9b009f4e6f2652a82', 'validated', '{"audio_key":"943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69","entity_key":"wf_sociolinguistic_indexicality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e5c32528f00fa468fd53690088609f8d6fa2fdedc8029ee9b009f4e6f2652a82","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/943acc18811136bacdb4e3c416e2d1c89e78da69d3e39b0adda8229885adeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_argumentation_02 -> audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12e278bb-68f0-5dce-b08f-2a5374b00c3c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_argumentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '478676977e9f3c99e95395e85c2e90a441f556f461b1b23ad082dbe17cba26e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1430a4c-b27b-5023-834d-19af9b15d1a5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12e278bb-68f0-5dce-b08f-2a5374b00c3c', 1), '478676977e9f3c99e95395e85c2e90a441f556f461b1b23ad082dbe17cba26e7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3', 966, '2026-09-14 01:31:32.903094', '90fcb9ad6dd35d92230a9ebe67aed82ff12216798f52789e74af892ad909d388', 'validated', '{"audio_key":"a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22","entity_key":"lx_compressed_argumentation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90fcb9ad6dd35d92230a9ebe67aed82ff12216798f52789e74af892ad909d388","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_argumentation_02 -> audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6aa6ef48-cac7-5ef8-9d2e-01bfc89cb43d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_argumentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '478676977e9f3c99e95395e85c2e90a441f556f461b1b23ad082dbe17cba26e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34c0b30c-7075-5393-8524-bae989cb70d0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6aa6ef48-cac7-5ef8-9d2e-01bfc89cb43d', 1), '478676977e9f3c99e95395e85c2e90a441f556f461b1b23ad082dbe17cba26e7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3', 966, '2026-09-14 01:31:32.903094', '90fcb9ad6dd35d92230a9ebe67aed82ff12216798f52789e74af892ad909d388', 'validated', '{"audio_key":"a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22","entity_key":"wf_compressed_argumentation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90fcb9ad6dd35d92230a9ebe67aed82ff12216798f52789e74af892ad909d388","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0317b6dd6a0a5f9051a55bb85e3f9b547c067cb3c94c1efc6422e7d5ea3cc22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_06 -> audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('05b3a44c-a799-5d58-a7f6-f462743905bf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d1e1b6ab5cfdd40cb8739990e547f749c9ce0eb86f068c30f1de7379625adf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1731d6a6-3d12-540d-875b-f73f2296dc75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('05b3a44c-a799-5d58-a7f6-f462743905bf', 1), 'd4d1e1b6ab5cfdd40cb8739990e547f749c9ce0eb86f068c30f1de7379625adf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3', 1253, '2026-09-14 01:31:33.475128', '20f33dbc73c5f6e92955310cc9bb9896e3aac279754d1f9adfd850f5928ce25c', 'validated', '{"audio_key":"a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367","entity_key":"lx_methodological_critique_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20f33dbc73c5f6e92955310cc9bb9896e3aac279754d1f9adfd850f5928ce25c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_06 -> audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0e66f90-5ae4-54c8-8e25-3d82cdf54305', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d1e1b6ab5cfdd40cb8739990e547f749c9ce0eb86f068c30f1de7379625adf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf53789f-79a1-5214-a2af-b992ac32e5e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0e66f90-5ae4-54c8-8e25-3d82cdf54305', 1), 'd4d1e1b6ab5cfdd40cb8739990e547f749c9ce0eb86f068c30f1de7379625adf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3', 1253, '2026-09-14 01:31:33.475128', '20f33dbc73c5f6e92955310cc9bb9896e3aac279754d1f9adfd850f5928ce25c', 'validated', '{"audio_key":"a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367","entity_key":"wf_methodological_critique_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20f33dbc73c5f6e92955310cc9bb9896e3aac279754d1f9adfd850f5928ce25c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a1fa330d62565d0901e07b4d87118093cc0f2cbe461c3286887ff99f43e39367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_05 -> audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1366e3f2-01f0-5305-b275-8a33994a51f6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cf757ac57ce5d70c478a494c67e0ecc3669cd8ace288209a249e778238fd2e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eebacf0-1925-5180-8ab1-630131597031', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1366e3f2-01f0-5305-b275-8a33994a51f6', 1), '3cf757ac57ce5d70c478a494c67e0ecc3669cd8ace288209a249e778238fd2e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3', 1332, '2026-09-14 01:31:33.878266', '90c8354540df5218c08492bf809ccb3d26bb4f4e83bc7729593d79ec96971a33', 'validated', '{"audio_key":"ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67","entity_key":"lx_strategic_ambiguity_irony_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90c8354540df5218c08492bf809ccb3d26bb4f4e83bc7729593d79ec96971a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_05 -> audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5ec8085-1734-5603-8eb1-a413a702a3fa', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cf757ac57ce5d70c478a494c67e0ecc3669cd8ace288209a249e778238fd2e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3cceee3-a096-5701-95c8-293b63641dc7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5ec8085-1734-5603-8eb1-a413a702a3fa', 1), '3cf757ac57ce5d70c478a494c67e0ecc3669cd8ace288209a249e778238fd2e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3', 1332, '2026-09-14 01:31:33.878266', '90c8354540df5218c08492bf809ccb3d26bb4f4e83bc7729593d79ec96971a33', 'validated', '{"audio_key":"ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67","entity_key":"wf_strategic_ambiguity_irony_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90c8354540df5218c08492bf809ccb3d26bb4f4e83bc7729593d79ec96971a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ac35aca1f203c4667d92edf4f239545c921dea810821a07fa8755d630ca83a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_02 -> audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c0364812-974e-5d1a-88b4-8387f3d07ede', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b0d1dfdfa9bb2813552ab5342d8e07bde72c7b32b1ff28de9b02f482bfa971'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcb73fe0-120d-5c94-aa36-5fdb543a6255', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c0364812-974e-5d1a-88b4-8387f3d07ede', 1), '62b0d1dfdfa9bb2813552ab5342d8e07bde72c7b32b1ff28de9b02f482bfa971',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3', 966, '2026-09-14 01:31:34.399746', '5ba054385d5d5dc3257ac1c2e002f0bb01c620b374c0d26920f71402c22efd49', 'validated', '{"audio_key":"b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e","entity_key":"lx_register_orchestration_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ba054385d5d5dc3257ac1c2e002f0bb01c620b374c0d26920f71402c22efd49","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_02 -> audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('87310c62-1cac-5010-b7bf-913685d6ffd4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b0d1dfdfa9bb2813552ab5342d8e07bde72c7b32b1ff28de9b02f482bfa971'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40c016ce-41e2-5b3d-9828-9d4c9fffd38e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('87310c62-1cac-5010-b7bf-913685d6ffd4', 1), '62b0d1dfdfa9bb2813552ab5342d8e07bde72c7b32b1ff28de9b02f482bfa971',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3', 966, '2026-09-14 01:31:34.399746', '5ba054385d5d5dc3257ac1c2e002f0bb01c620b374c0d26920f71402c22efd49', 'validated', '{"audio_key":"b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e","entity_key":"wf_register_orchestration_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ba054385d5d5dc3257ac1c2e002f0bb01c620b374c0d26920f71402c22efd49","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b2af3615fde28b6030e47808c96dd192c6e4b4a8012bed43ab43db258379292e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_01 -> audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c51ab928-e430-5d19-8f96-9bc42ec93855', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('122f3dab-da86-5cd5-ab1c-05f4eb4dbb8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c51ab928-e430-5d19-8f96-9bc42ec93855', 1), '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3', 914, '2026-09-13 23:58:52.487673', '408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf', 'validated', '{"audio_key":"b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33","entity_key":"lx_high_stakes_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_01 -> audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96166d6c-afc3-558d-8886-bffe8bb3fdbe', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08b8259c-3fd5-5aab-815a-188410513002', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96166d6c-afc3-558d-8886-bffe8bb3fdbe', 1), '411a0c36dc22cdfa22ec30320404863da6117fd8b5497905df0e7a369b058b46',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3', 914, '2026-09-13 23:58:52.487673', '408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf', 'validated', '{"audio_key":"b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33","entity_key":"wf_high_stakes_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"408cd3349313339267eea8a68b210179b2dbcf6e73c8a21a4443bd89dbcceebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7c4e7c7a006bcea54682997df74064c00d61600d775cc0c295290f8daf1da33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_04 -> audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84a53e8f-7f09-5af1-922e-1a83bfe49c2b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1592d18ad14064a9cc0cf5b13e8f22f025c676af258490119c89b17928c3dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdc677a0-714a-5198-a384-531a1cbeedf6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84a53e8f-7f09-5af1-922e-1a83bfe49c2b', 1), 'c1592d18ad14064a9cc0cf5b13e8f22f025c676af258490119c89b17928c3dfe',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3', 1201, '2026-09-14 01:31:34.849743', '9aa1391fccaadf42a1fad60579d0dd9f01e2dda8e279a43d4bd1dbaed23c67b1', 'validated', '{"audio_key":"ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8","entity_key":"lx_strategic_ambiguity_irony_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9aa1391fccaadf42a1fad60579d0dd9f01e2dda8e279a43d4bd1dbaed23c67b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_04 -> audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bfab01b9-9a09-58ea-807a-a946d26a57df', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1592d18ad14064a9cc0cf5b13e8f22f025c676af258490119c89b17928c3dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45ae4914-3b55-5494-988e-51663598df79', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bfab01b9-9a09-58ea-807a-a946d26a57df', 1), 'c1592d18ad14064a9cc0cf5b13e8f22f025c676af258490119c89b17928c3dfe',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3', 1201, '2026-09-14 01:31:34.849743', '9aa1391fccaadf42a1fad60579d0dd9f01e2dda8e279a43d4bd1dbaed23c67b1', 'validated', '{"audio_key":"ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8","entity_key":"wf_strategic_ambiguity_irony_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9aa1391fccaadf42a1fad60579d0dd9f01e2dda8e279a43d4bd1dbaed23c67b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba6b40d683db0d235fccccbde7d5d0145f79fb5d8f560b87b116079241692ba8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_06 -> audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b3ca7b38-dbb3-509b-a9b6-7e9180599da4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '624b45e9154757e2ba1f645790234706b5b15105e1f6488b3a0e2500186c0460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f4ed38a-6e27-5b59-bafb-143e9e46400f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b3ca7b38-dbb3-509b-a9b6-7e9180599da4', 1), '624b45e9154757e2ba1f645790234706b5b15105e1f6488b3a0e2500186c0460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3', 862, '2026-09-14 01:31:35.354756', '70366c32dd8088ea4f993fdf5aec9000bad5b12b855aedde7104f16b41229d06', 'validated', '{"audio_key":"cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b","entity_key":"lx_essayistic_rhythm_style_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70366c32dd8088ea4f993fdf5aec9000bad5b12b855aedde7104f16b41229d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_06 -> audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3829a41f-662b-5166-98ba-26eee2042904', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '624b45e9154757e2ba1f645790234706b5b15105e1f6488b3a0e2500186c0460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33c85d46-ce76-53bb-adf1-a0700da3d4d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3829a41f-662b-5166-98ba-26eee2042904', 1), '624b45e9154757e2ba1f645790234706b5b15105e1f6488b3a0e2500186c0460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3', 862, '2026-09-14 01:31:35.354756', '70366c32dd8088ea4f993fdf5aec9000bad5b12b855aedde7104f16b41229d06', 'validated', '{"audio_key":"cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b","entity_key":"wf_essayistic_rhythm_style_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70366c32dd8088ea4f993fdf5aec9000bad5b12b855aedde7104f16b41229d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cae8244e657ce2f7679267d62f14c50bfc03cc03ba94332068aeb47a1798ce7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_essayistic_rhythm_style_03 -> audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4c9c141d-333d-5e97-972b-88a431fa42dc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_essayistic_rhythm_style_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '582e78a0b0891033cec84130cdb66daa922c881fa80fe60c24db60c5c4770b2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd4d78ea-7666-5910-b540-4e6559a29657', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4c9c141d-333d-5e97-972b-88a431fa42dc', 1), '582e78a0b0891033cec84130cdb66daa922c881fa80fe60c24db60c5c4770b2d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3', 1097, '2026-09-14 01:31:35.806861', 'e98c910ebdf4ec484e6774eb504b0903f6aaacbc6156515028d1821651d7c625', 'validated', '{"audio_key":"ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d","entity_key":"lx_essayistic_rhythm_style_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e98c910ebdf4ec484e6774eb504b0903f6aaacbc6156515028d1821651d7c625","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_essayistic_rhythm_style_03 -> audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3493d8be-0f8f-5b4f-b4fa-b8c82550d231', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_essayistic_rhythm_style_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '582e78a0b0891033cec84130cdb66daa922c881fa80fe60c24db60c5c4770b2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('749277c1-84c3-57d7-90b9-30e083650cc4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3493d8be-0f8f-5b4f-b4fa-b8c82550d231', 1), '582e78a0b0891033cec84130cdb66daa922c881fa80fe60c24db60c5c4770b2d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3', 1097, '2026-09-14 01:31:35.806861', 'e98c910ebdf4ec484e6774eb504b0903f6aaacbc6156515028d1821651d7c625', 'validated', '{"audio_key":"ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d","entity_key":"wf_essayistic_rhythm_style_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e98c910ebdf4ec484e6774eb504b0903f6aaacbc6156515028d1821651d7c625","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce94f38eaa27223b070e69aea47a830f52b7b6dcbe20f90c2470cc1db32a920d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_04 -> audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1efb73ea-fae1-5576-b36a-509dfb983a53', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b3226acbdb9ee1a7817c4305137e75cb9de599e7c1536a466294c34cd69ddde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28235556-a7a3-527c-89fa-5c48770ba059', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1efb73ea-fae1-5576-b36a-509dfb983a53', 1), '5b3226acbdb9ee1a7817c4305137e75cb9de599e7c1536a466294c34cd69ddde',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3', 1253, '2026-09-14 01:31:36.345654', '19447fad0045d96c21981f5625266bef1585aa04670922d0cb71f209805de768', 'validated', '{"audio_key":"d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156","entity_key":"lx_institutional_accountability_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"19447fad0045d96c21981f5625266bef1585aa04670922d0cb71f209805de768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_04 -> audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76a44bf6-586d-536f-86a5-6f105dd6deb6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b3226acbdb9ee1a7817c4305137e75cb9de599e7c1536a466294c34cd69ddde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c45184fb-6249-5022-ae94-600e32ec500a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76a44bf6-586d-536f-86a5-6f105dd6deb6', 1), '5b3226acbdb9ee1a7817c4305137e75cb9de599e7c1536a466294c34cd69ddde',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3', 1253, '2026-09-14 01:31:36.345654', '19447fad0045d96c21981f5625266bef1585aa04670922d0cb71f209805de768', 'validated', '{"audio_key":"d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156","entity_key":"wf_institutional_accountability_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"19447fad0045d96c21981f5625266bef1585aa04670922d0cb71f209805de768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4227ed99b18e660a9f03d19debbc6796cb25d301256287a74c4787b13840156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_negotiation_04 -> audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0d4bf2f9-a199-54f8-ba24-57957eade674', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507254efbbd80e70e5307379d6e08e00dff0c872d66a0c31ec24cc6c50a9612'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ca073e9-dae8-53a2-aba3-f8e07874bb01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0d4bf2f9-a199-54f8-ba24-57957eade674', 1), '9507254efbbd80e70e5307379d6e08e00dff0c872d66a0c31ec24cc6c50a9612',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3', 1280, '2026-09-14 01:31:36.774187', 'f3a7bc45fc032247e251efe5522c9e94ec52e09a39e493a4ab26a5d9ffa457f9', 'validated', '{"audio_key":"da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b","entity_key":"lx_high_stakes_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f3a7bc45fc032247e251efe5522c9e94ec52e09a39e493a4ab26a5d9ffa457f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_negotiation_04 -> audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7522ff0-30af-5ecb-945b-9fec0db741ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507254efbbd80e70e5307379d6e08e00dff0c872d66a0c31ec24cc6c50a9612'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a6b6af7-92df-5a4e-8a23-8deed44d39e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7522ff0-30af-5ecb-945b-9fec0db741ec', 1), '9507254efbbd80e70e5307379d6e08e00dff0c872d66a0c31ec24cc6c50a9612',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3', 1280, '2026-09-14 01:31:36.774187', 'f3a7bc45fc032247e251efe5522c9e94ec52e09a39e493a4ab26a5d9ffa457f9', 'validated', '{"audio_key":"da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b","entity_key":"wf_high_stakes_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f3a7bc45fc032247e251efe5522c9e94ec52e09a39e493a4ab26a5d9ffa457f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/da33cb0f51bfef37a6b1e725a02591d36dcb80db3b2f6865fdbea3fe835a091b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_06 -> audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a494f93f-421e-578c-b216-d56ca39d38e2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010ea73c-d56c-53b2-b445-0f22fd4960a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a494f93f-421e-578c-b216-d56ca39d38e2', 1), '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3', 1149, '2026-09-14 01:09:16.762394', 'bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da', 'validated', '{"audio_key":"deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09","entity_key":"lx_media_framing_intertextuality_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_06 -> audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e38753b4-ebdf-56a2-9147-b93c90b9076f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef0701d2-a594-540e-9086-52542daa6687', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e38753b4-ebdf-56a2-9147-b93c90b9076f', 1), '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3', 1149, '2026-09-14 01:09:16.762394', 'bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da', 'validated', '{"audio_key":"deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09","entity_key":"wf_media_framing_intertextuality_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_methodological_critique_05 -> audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('41d80e1a-1a0b-5766-a18b-9c3c5b5f6763', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_methodological_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37521c19cc9682fe5373a4dbedbbd0ddbe1bccec0cb6704e52e031f7f4017a69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('898907f4-045a-54d4-9245-269e34d007b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('41d80e1a-1a0b-5766-a18b-9c3c5b5f6763', 1), '37521c19cc9682fe5373a4dbedbbd0ddbe1bccec0cb6704e52e031f7f4017a69',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3', 1018, '2026-09-14 01:31:37.489140', 'de73c3135610a1f9399461566031d24e7e99640961d92dbbf3a5fbb5bc7adb3c', 'validated', '{"audio_key":"e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24","entity_key":"lx_methodological_critique_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de73c3135610a1f9399461566031d24e7e99640961d92dbbf3a5fbb5bc7adb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_methodological_critique_05 -> audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('212efe71-1d3d-562d-80e2-dda8b97e7a84', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_methodological_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37521c19cc9682fe5373a4dbedbbd0ddbe1bccec0cb6704e52e031f7f4017a69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa31d9cb-aca8-5a47-acb5-d2d19c1e0bcb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('212efe71-1d3d-562d-80e2-dda8b97e7a84', 1), '37521c19cc9682fe5373a4dbedbbd0ddbe1bccec0cb6704e52e031f7f4017a69',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3', 1018, '2026-09-14 01:31:37.489140', 'de73c3135610a1f9399461566031d24e7e99640961d92dbbf3a5fbb5bc7adb3c', 'validated', '{"audio_key":"e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24","entity_key":"wf_methodological_critique_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de73c3135610a1f9399461566031d24e7e99640961d92dbbf3a5fbb5bc7adb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e0883cbcc83a2511070ec013d43e7181655815fc9c6699d124536227a39d6d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_ambiguity_irony_06 -> audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ce426440-3e2e-53d2-a77b-fb959d4e3785', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_ambiguity_irony_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073b4f2356acd2b5013beb8bfb65955ef0029f167c1b231941850279001340d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36aa15a0-b18f-514f-b72e-eaea87f56bf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ce426440-3e2e-53d2-a77b-fb959d4e3785', 1), '073b4f2356acd2b5013beb8bfb65955ef0029f167c1b231941850279001340d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3', 1280, '2026-09-14 01:31:37.756992', '0ca65bf16ffdaf9a931b13945b5145fb387d8cd6e926a071457539af37663d8b', 'validated', '{"audio_key":"e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319","entity_key":"lx_strategic_ambiguity_irony_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ca65bf16ffdaf9a931b13945b5145fb387d8cd6e926a071457539af37663d8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_ambiguity_irony_06 -> audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('109495ce-4e19-5644-9edd-7632f88588d9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_ambiguity_irony_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073b4f2356acd2b5013beb8bfb65955ef0029f167c1b231941850279001340d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('124760ca-057c-55a0-be8b-e927c79a577d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('109495ce-4e19-5644-9edd-7632f88588d9', 1), '073b4f2356acd2b5013beb8bfb65955ef0029f167c1b231941850279001340d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3', 1280, '2026-09-14 01:31:37.756992', '0ca65bf16ffdaf9a931b13945b5145fb387d8cd6e926a071457539af37663d8b', 'validated', '{"audio_key":"e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319","entity_key":"wf_strategic_ambiguity_irony_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ca65bf16ffdaf9a931b13945b5145fb387d8cd6e926a071457539af37663d8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e2878ecfcf6a714d1363f30cdf5ae1665700f6c9ddd1896b4a3cc5a761834319.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_framing_intertextuality_02 -> audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1eafc03b-e733-5390-95af-7c7d109c44a0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_framing_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a02004ab78c6f5871be45820732e102c6e3684c5db17eb9ecfea5b11d0e08a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('925e5c35-afee-5e94-8bc6-9bbb73bf3ac9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1eafc03b-e733-5390-95af-7c7d109c44a0', 1), '4a02004ab78c6f5871be45820732e102c6e3684c5db17eb9ecfea5b11d0e08a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3', 1201, '2026-09-14 01:31:38.680983', 'c91ad8480c04c718fb17aa1645f1fcec05ace6bc81540d41356a0b1860b30600', 'validated', '{"audio_key":"e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f","entity_key":"lx_media_framing_intertextuality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c91ad8480c04c718fb17aa1645f1fcec05ace6bc81540d41356a0b1860b30600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_framing_intertextuality_02 -> audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a5300ea-e174-588a-ba5c-d5b34f8c4b69', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_framing_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a02004ab78c6f5871be45820732e102c6e3684c5db17eb9ecfea5b11d0e08a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34004575-7970-548f-a99f-469a0987f7bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a5300ea-e174-588a-ba5c-d5b34f8c4b69', 1), '4a02004ab78c6f5871be45820732e102c6e3684c5db17eb9ecfea5b11d0e08a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3', 1201, '2026-09-14 01:31:38.680983', 'c91ad8480c04c718fb17aa1645f1fcec05ace6bc81540d41356a0b1860b30600', 'validated', '{"audio_key":"e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f","entity_key":"wf_media_framing_intertextuality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c91ad8480c04c718fb17aa1645f1fcec05ace6bc81540d41356a0b1860b30600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e95bb9baa0f84cd307e6e366ae6280e22fac31fee99a85a5e0da7cecf174870f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_orchestration_01 -> audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('be3e9c82-b365-5e71-9689-5c76d8ce07f1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_orchestration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78c0ca3edf225bf9a9d519bc6619fab67e3a303c772384db8506bdfadd59a089'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42a2a220-08af-55e7-9a47-700258f75881', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('be3e9c82-b365-5e71-9689-5c76d8ce07f1', 1), '78c0ca3edf225bf9a9d519bc6619fab67e3a303c772384db8506bdfadd59a089',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3', 1018, '2026-09-14 01:31:38.711597', '2580647874dd8d758e55076cf9523741e792749dde874f454a436e08c5095ee5', 'validated', '{"audio_key":"ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024","entity_key":"lx_register_orchestration_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2580647874dd8d758e55076cf9523741e792749dde874f454a436e08c5095ee5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_orchestration_01 -> audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('37d56304-f22d-5368-90ae-440dafa564c8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_orchestration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78c0ca3edf225bf9a9d519bc6619fab67e3a303c772384db8506bdfadd59a089'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58db1aa2-54ba-5b9d-9cde-03dbe7b5749e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('37d56304-f22d-5368-90ae-440dafa564c8', 1), '78c0ca3edf225bf9a9d519bc6619fab67e3a303c772384db8506bdfadd59a089',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3', 1018, '2026-09-14 01:31:38.711597', '2580647874dd8d758e55076cf9523741e792749dde874f454a436e08c5095ee5', 'validated', '{"audio_key":"ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024","entity_key":"wf_register_orchestration_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2580647874dd8d758e55076cf9523741e792749dde874f454a436e08c5095ee5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ec4960ce4bc128f9ae9e3a5e719fbbc90f5ec7f220e685fa374fa20584490024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_05 -> audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b16539c2-74d9-5c35-8bf5-212d41a0550c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2542c434bbe0b6a5ad009c6cb98df925a99ab16ad7856c5a3fad4a7a5c9a48e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5e43152-8d51-5734-b0f6-0e7684b0648e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b16539c2-74d9-5c35-8bf5-212d41a0550c', 1), 'b2542c434bbe0b6a5ad009c6cb98df925a99ab16ad7856c5a3fad4a7a5c9a48e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3', 1253, '2026-09-14 01:31:39.632108', 'fd8ae7e3525213346ae77f7a5975ae847e2551da5d91283d3a57094b5bea1776', 'validated', '{"audio_key":"f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92","entity_key":"lx_c2_seoul_deliberation_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fd8ae7e3525213346ae77f7a5975ae847e2551da5d91283d3a57094b5bea1776","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_05 -> audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ce249d3-6a93-52af-ae7c-99aed6d33253', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2542c434bbe0b6a5ad009c6cb98df925a99ab16ad7856c5a3fad4a7a5c9a48e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62c7b75a-451a-5616-9aea-fef049dfd4f9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ce249d3-6a93-52af-ae7c-99aed6d33253', 1), 'b2542c434bbe0b6a5ad009c6cb98df925a99ab16ad7856c5a3fad4a7a5c9a48e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3', 1253, '2026-09-14 01:31:39.632108', 'fd8ae7e3525213346ae77f7a5975ae847e2551da5d91283d3a57094b5bea1776', 'validated', '{"audio_key":"f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92","entity_key":"wf_c2_seoul_deliberation_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fd8ae7e3525213346ae77f7a5975ae847e2551da5d91283d3a57094b5bea1776","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3eb44ba2a34623d57f57df290e0c15ede87e5808e12cc31ad02eec067860d92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_accountability_03 -> audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('86a9acd0-333e-51ba-a94a-83a99b67eb42', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c270bc664274d3d8f4a662af7d425fa5b9549a3878a96df369c94cdc1c25c460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2af06207-3c55-5ceb-a5a9-346fabba5997', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('86a9acd0-333e-51ba-a94a-83a99b67eb42', 1), 'c270bc664274d3d8f4a662af7d425fa5b9549a3878a96df369c94cdc1c25c460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3', 966, '2026-09-14 01:31:39.650091', '6f24893e577a9a795d0d14dfb465587ce031d4c687a9ddbdb399e8bbddd8c332', 'validated', '{"audio_key":"f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7","entity_key":"lx_institutional_accountability_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f24893e577a9a795d0d14dfb465587ce031d4c687a9ddbdb399e8bbddd8c332","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_accountability_03 -> audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f7b817c7-58a6-52a9-88d9-048c6cb0257e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c270bc664274d3d8f4a662af7d425fa5b9549a3878a96df369c94cdc1c25c460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a820ac8e-8c99-5524-9eb3-d06d6501f665', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f7b817c7-58a6-52a9-88d9-048c6cb0257e', 1), 'c270bc664274d3d8f4a662af7d425fa5b9549a3878a96df369c94cdc1c25c460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3', 966, '2026-09-14 01:31:39.650091', '6f24893e577a9a795d0d14dfb465587ce031d4c687a9ddbdb399e8bbddd8c332', 'validated', '{"audio_key":"f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7","entity_key":"wf_institutional_accountability_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f24893e577a9a795d0d14dfb465587ce031d4c687a9ddbdb399e8bbddd8c332","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f6b7dd87ab74a0443d03ba5a4b031e22ddf5898678f299677a9f6184eb80c4f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_seoul_deliberation_capstone_03 -> audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4833db57-b062-53c7-910a-b6e98ca8c2cf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_seoul_deliberation_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f3be254bf51cab0e9dc2695c19e262d1932bea5bb656a9dac184f745466ac5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26728ff5-f485-55de-8aa7-d8cb8224dc8e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4833db57-b062-53c7-910a-b6e98ca8c2cf', 1), '5f3be254bf51cab0e9dc2695c19e262d1932bea5bb656a9dac184f745466ac5b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3', 1332, '2026-09-14 01:31:40.630716', '7a357669838e7668c81d110a2fb650810147fd11fcdf8cf0d8f12a240af5ce33', 'validated', '{"audio_key":"fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47","entity_key":"lx_c2_seoul_deliberation_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a357669838e7668c81d110a2fb650810147fd11fcdf8cf0d8f12a240af5ce33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_seoul_deliberation_capstone_03 -> audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81f228d7-8435-5dfe-afc0-169383b66918', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_seoul_deliberation_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f3be254bf51cab0e9dc2695c19e262d1932bea5bb656a9dac184f745466ac5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ec338c4-26f4-525c-a78f-cb641ae0263c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81f228d7-8435-5dfe-afc0-169383b66918', 1), '5f3be254bf51cab0e9dc2695c19e262d1932bea5bb656a9dac184f745466ac5b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3', 1332, '2026-09-14 01:31:40.630716', '7a357669838e7668c81d110a2fb650810147fd11fcdf8cf0d8f12a240af5ce33', 'validated', '{"audio_key":"fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47","entity_key":"wf_c2_seoul_deliberation_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a357669838e7668c81d110a2fb650810147fd11fcdf8cf0d8f12a240af5ce33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fd3ad4fcccc204a87e6b3dff0738bd67647cb6fa04ebe5b12afa938b9921bf47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sociolinguistic_indexicality_05 -> audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('725d2938-1765-5efe-9efc-1c1e3f38f962', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sociolinguistic_indexicality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '572052ae4b8ff267bba1f6abd3cee0f127d4c187d92596f2eeee6d6dc6fed8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3195c9b4-ec4f-5de9-b727-16470d62aefc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('725d2938-1765-5efe-9efc-1c1e3f38f962', 1), '572052ae4b8ff267bba1f6abd3cee0f127d4c187d92596f2eeee6d6dc6fed8fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3', 1018, '2026-09-14 01:31:40.640873', '0964e671336dabb19df898fe898360c312e99c7d035d3de44965450a459160eb', 'validated', '{"audio_key":"fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7","entity_key":"lx_sociolinguistic_indexicality_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0964e671336dabb19df898fe898360c312e99c7d035d3de44965450a459160eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sociolinguistic_indexicality_05 -> audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0274fdc-8fd5-5a3c-9397-c9c97950acd9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sociolinguistic_indexicality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '572052ae4b8ff267bba1f6abd3cee0f127d4c187d92596f2eeee6d6dc6fed8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e318847-f40a-589a-b9a5-17b16f1fc640', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0274fdc-8fd5-5a3c-9397-c9c97950acd9', 1), '572052ae4b8ff267bba1f6abd3cee0f127d4c187d92596f2eeee6d6dc6fed8fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3', 1018, '2026-09-14 01:31:40.640873', '0964e671336dabb19df898fe898360c312e99c7d035d3de44965450a459160eb', 'validated', '{"audio_key":"fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7","entity_key":"wf_sociolinguistic_indexicality_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0964e671336dabb19df898fe898360c312e99c7d035d3de44965450a459160eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fff3726ffcf77319fa86a5e00db8e34adc6575151591cc504198673bea7c6ba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sociolinguistic_indexicality_04 -> audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0df2e33e-b3ec-5342-8118-728a18cb7039', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sociolinguistic_indexicality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae78d4601615e691dcd9d812a1042133e87d5b7b7620a65caa0225e5f369d2c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4228c910-9a29-57bf-a8d6-db69dbe01c06', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0df2e33e-b3ec-5342-8118-728a18cb7039', 1), 'ae78d4601615e691dcd9d812a1042133e87d5b7b7620a65caa0225e5f369d2c8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3', 5433, '2026-09-14 01:31:42.081515', '7a5ce2c6b7ad11d8fd6809a706b33e4c884a6be4c38171074c52806c52afbfc3', 'validated', '{"audio_key":"09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6","entity_key":"u_sociolinguistic_indexicality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a5ce2c6b7ad11d8fd6809a706b33e4c884a6be4c38171074c52806c52afbfc3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_sociolinguistic_indexicality_02_listen -> audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7920947f-d62a-5e30-a95a-cc6bbbea2b64', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_sociolinguistic_indexicality_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae78d4601615e691dcd9d812a1042133e87d5b7b7620a65caa0225e5f369d2c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aae3d78-50e1-5370-b477-8a6899be31a9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7920947f-d62a-5e30-a95a-cc6bbbea2b64', 1), 'ae78d4601615e691dcd9d812a1042133e87d5b7b7620a65caa0225e5f369d2c8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3', 5433, '2026-09-14 01:31:42.081515', '7a5ce2c6b7ad11d8fd6809a706b33e4c884a6be4c38171074c52806c52afbfc3', 'validated', '{"audio_key":"09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6","entity_key":"e_sociolinguistic_indexicality_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a5ce2c6b7ad11d8fd6809a706b33e4c884a6be4c38171074c52806c52afbfc3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09379136c72af9052ddaaf13b2e03ef11db348dadec02ceaadfa1e31f709e9d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_seoul_deliberation_capstone_01 -> audio/generated/ko-KR/utterances/0ad458cac26e40acb5b5e137ef88c387babddd31e496c88a14de31c1d654ded6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3620fa0d-1969-5356-a958-6c6d0f9a69ca', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_seoul_deliberation_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '102dce5f2ed708d1990e36a495cfaa4eb2e6ce2c9a6d69ace4b3edf2352c1225'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4794ab7a-13de-5c05-947c-73535d13dde6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3620fa0d-1969-5356-a958-6c6d0f9a69ca', 1), '102dce5f2ed708d1990e36a495cfaa4eb2e6ce2c9a6d69ace4b3edf2352c1225',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0ad458cac26e40acb5b5e137ef88c387babddd31e496c88a14de31c1d654ded6.mp3', 7706, '2026-09-14 01:31:42.393003', '9b2e46ed06cd8ccd277d7c41b43a70615f00d89066b0c2cd1e88fdfa15796e57', 'validated', '{"audio_key":"0ad458cac26e40acb5b5e137ef88c387babddd31e496c88a14de31c1d654ded6","entity_key":"u_c2_seoul_deliberation_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9b2e46ed06cd8ccd277d7c41b43a70615f00d89066b0c2cd1e88fdfa15796e57","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0ad458cac26e40acb5b5e137ef88c387babddd31e496c88a14de31c1d654ded6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_methodological_critique_03 -> audio/generated/ko-KR/utterances/15ddbe83333ee3efe3fc170b2a6e476a9a6c20bf5e5520ab35620265a77d9d12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5996b7c2-54ac-5381-be03-f91f9891564f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_methodological_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee319319d2c461d791d11e79dbc48d613e4be19a6e0dd0ddd4b948281dce5d1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('351c1a16-6bb0-5cdd-9d2c-5b7eef11e33c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5996b7c2-54ac-5381-be03-f91f9891564f', 1), 'ee319319d2c461d791d11e79dbc48d613e4be19a6e0dd0ddd4b948281dce5d1f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/15ddbe83333ee3efe3fc170b2a6e476a9a6c20bf5e5520ab35620265a77d9d12.mp3', 4832, '2026-09-14 01:31:43.464997', 'bb93cf5601f7c0655fa7c3884abd7d839eb2397d7320f989771b7c23a5e144d2', 'validated', '{"audio_key":"15ddbe83333ee3efe3fc170b2a6e476a9a6c20bf5e5520ab35620265a77d9d12","entity_key":"u_methodological_critique_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb93cf5601f7c0655fa7c3884abd7d839eb2397d7320f989771b7c23a5e144d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/15ddbe83333ee3efe3fc170b2a6e476a9a6c20bf5e5520ab35620265a77d9d12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sociolinguistic_indexicality_03 -> audio/generated/ko-KR/utterances/1b4c58f9bf18aa1be36de82941b6f60423e082373c8d3db82e2841c5443a9f5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f36c5770-15b8-575d-a7a4-8038e7238686', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sociolinguistic_indexicality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6843e3ca3b6cbdcadab6f4b128e17c08d77e8df991074b1be1a8cb1a94c47d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('028b95e7-3d77-59d2-8944-0899f2fb02f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f36c5770-15b8-575d-a7a4-8038e7238686', 1), '6843e3ca3b6cbdcadab6f4b128e17c08d77e8df991074b1be1a8cb1a94c47d42',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1b4c58f9bf18aa1be36de82941b6f60423e082373c8d3db82e2841c5443a9f5e.mp3', 6582, '2026-09-14 01:31:44.006906', '797993619d86ddb9b3b5d93de85e16dba89594c9ca327f5458d8e52ff7b26e98', 'validated', '{"audio_key":"1b4c58f9bf18aa1be36de82941b6f60423e082373c8d3db82e2841c5443a9f5e","entity_key":"u_sociolinguistic_indexicality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"797993619d86ddb9b3b5d93de85e16dba89594c9ca327f5458d8e52ff7b26e98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1b4c58f9bf18aa1be36de82941b6f60423e082373c8d3db82e2841c5443a9f5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_argumentation_01 -> audio/generated/ko-KR/utterances/1e73547aff661fa6aab298be4df46e7f1fbbbd22eb2a18ac33fd34bd85f8b07a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aba4d6cd-5c85-54d3-a857-da3461f824f1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_argumentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9edcb37fedb725433c67680f377ee07cbba97ca17c1c3275eb55f3caabd9311'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5056fa37-045f-54cb-b3b4-897ec34d2bdd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aba4d6cd-5c85-54d3-a857-da3461f824f1', 1), 'c9edcb37fedb725433c67680f377ee07cbba97ca17c1c3275eb55f3caabd9311',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1e73547aff661fa6aab298be4df46e7f1fbbbd22eb2a18ac33fd34bd85f8b07a.mp3', 6765, '2026-09-14 01:31:45.057295', 'b383b1e225a6090c659c6653f471d01c1d88adf958ca1b9a654bb2fdae33b53e', 'validated', '{"audio_key":"1e73547aff661fa6aab298be4df46e7f1fbbbd22eb2a18ac33fd34bd85f8b07a","entity_key":"u_compressed_argumentation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b383b1e225a6090c659c6653f471d01c1d88adf958ca1b9a654bb2fdae33b53e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1e73547aff661fa6aab298be4df46e7f1fbbbd22eb2a18ac33fd34bd85f8b07a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_argumentation_02 -> audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1213b527-e069-5157-a8f2-efeb8a145b65', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_argumentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e836dcbef50d2c9df43227dcb6fbcd40ce208dce5c23a18cd4b473af68dcdb2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaf63244-7229-5882-bc41-934d3ac4eefa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1213b527-e069-5157-a8f2-efeb8a145b65', 1), 'e836dcbef50d2c9df43227dcb6fbcd40ce208dce5c23a18cd4b473af68dcdb2c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3', 4022, '2026-09-14 01:31:45.271188', 'bb71b2d6980773ce11c5d04d55aba82d0ff7b2e40c45914fa464b63f9f71dd93', 'validated', '{"audio_key":"1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa","entity_key":"u_compressed_argumentation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb71b2d6980773ce11c5d04d55aba82d0ff7b2e40c45914fa464b63f9f71dd93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_compressed_argumentation_01_listen -> audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0b553916-d29c-5577-8b05-f37f346537db', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_compressed_argumentation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e836dcbef50d2c9df43227dcb6fbcd40ce208dce5c23a18cd4b473af68dcdb2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09707c63-b239-5543-b260-48db4cb23a00', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0b553916-d29c-5577-8b05-f37f346537db', 1), 'e836dcbef50d2c9df43227dcb6fbcd40ce208dce5c23a18cd4b473af68dcdb2c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3', 4022, '2026-09-14 01:31:45.271188', 'bb71b2d6980773ce11c5d04d55aba82d0ff7b2e40c45914fa464b63f9f71dd93', 'validated', '{"audio_key":"1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa","entity_key":"e_compressed_argumentation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb71b2d6980773ce11c5d04d55aba82d0ff7b2e40c45914fa464b63f9f71dd93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1ebe8a3015fa3a281105f7f618298ea42fe87a054bbbfcb59e87a16f8f44c6fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_essayistic_rhythm_style_02 -> audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d14003e-5803-5558-a8f8-806a655260fe', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_essayistic_rhythm_style_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0a6b7f59c69cb116896a5838aef59e08b31476b834bd14c99297d9feb218931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08fff21d-97d9-5e7b-8e43-ea1ea13d726b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d14003e-5803-5558-a8f8-806a655260fe', 1), 'd0a6b7f59c69cb116896a5838aef59e08b31476b834bd14c99297d9feb218931',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3', 5276, '2026-09-14 01:31:46.521283', '0b1852bb7b71f4b46435520260622ebd39c033f5b54c33f9e33740e85e192220', 'validated', '{"audio_key":"23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456","entity_key":"u_essayistic_rhythm_style_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0b1852bb7b71f4b46435520260622ebd39c033f5b54c33f9e33740e85e192220","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_essayistic_rhythm_style_01_listen -> audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('22efe2a8-75f4-5bd8-98c9-0d72f47f2b5a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_essayistic_rhythm_style_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0a6b7f59c69cb116896a5838aef59e08b31476b834bd14c99297d9feb218931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e392194-964f-59a9-b1ef-5c33680856b7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('22efe2a8-75f4-5bd8-98c9-0d72f47f2b5a', 1), 'd0a6b7f59c69cb116896a5838aef59e08b31476b834bd14c99297d9feb218931',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3', 5276, '2026-09-14 01:31:46.521283', '0b1852bb7b71f4b46435520260622ebd39c033f5b54c33f9e33740e85e192220', 'validated', '{"audio_key":"23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456","entity_key":"e_essayistic_rhythm_style_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0b1852bb7b71f4b46435520260622ebd39c033f5b54c33f9e33740e85e192220","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/23c8211e903fc14fe613a7af688a5d93a456c5073900f84a5f7b6aabf545f456.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_essayistic_rhythm_style_03 -> audio/generated/ko-KR/utterances/2b4592487c6037a118ecbc7f2229efaffac67133dc773cbc915d28eeca2bbf8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e89205f3-7ce3-52c0-a35d-c46af2ff3120', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_essayistic_rhythm_style_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1645e4028617c080b7f34473b939802b4fba6a9ba0663833f1d30dce4a50b7bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38c0cd32-b8bd-5026-bebe-ac773ed29297', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e89205f3-7ce3-52c0-a35d-c46af2ff3120', 1), '1645e4028617c080b7f34473b939802b4fba6a9ba0663833f1d30dce4a50b7bc',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2b4592487c6037a118ecbc7f2229efaffac67133dc773cbc915d28eeca2bbf8c.mp3', 6112, '2026-09-14 01:31:46.815421', 'ce10af48ddddf0932bd49bb89cfa0c421b0459bdef3741e0c4f2b2e82f4a1f87', 'validated', '{"audio_key":"2b4592487c6037a118ecbc7f2229efaffac67133dc773cbc915d28eeca2bbf8c","entity_key":"u_essayistic_rhythm_style_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce10af48ddddf0932bd49bb89cfa0c421b0459bdef3741e0c4f2b2e82f4a1f87","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2b4592487c6037a118ecbc7f2229efaffac67133dc773cbc915d28eeca2bbf8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_orchestration_03 -> audio/generated/ko-KR/utterances/31135f5fb6fff1db5000f840250f53a272e0ca6f2b6c9b289d2af53f171fa57e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54446be7-41a9-5335-b5bc-153d2629b31b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_orchestration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b619414d83de7b0024ef22ca87c2bc8ee0847ba421216a2d0d0e8288aa7a39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd910088-13c4-5ce1-9844-c938de67fcc6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54446be7-41a9-5335-b5bc-153d2629b31b', 1), '84b619414d83de7b0024ef22ca87c2bc8ee0847ba421216a2d0d0e8288aa7a39',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/31135f5fb6fff1db5000f840250f53a272e0ca6f2b6c9b289d2af53f171fa57e.mp3', 7183, '2026-09-14 01:31:48.224845', '0d586aedb38330f564ddb8f39c7c36e544f55ef90d53cabb1775d51bdce7b9f2', 'validated', '{"audio_key":"31135f5fb6fff1db5000f840250f53a272e0ca6f2b6c9b289d2af53f171fa57e","entity_key":"u_register_orchestration_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d586aedb38330f564ddb8f39c7c36e544f55ef90d53cabb1775d51bdce7b9f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/31135f5fb6fff1db5000f840250f53a272e0ca6f2b6c9b289d2af53f171fa57e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_essayistic_rhythm_style_04 -> audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78606a71-db58-58bf-bab7-5f20f9a043e7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_essayistic_rhythm_style_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e326f46718d5911730d84d07ba7c37d9adfe81eeb919641e35528ef81bb0058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2fc81dd-a45a-596c-b3ad-e7e6bc06826d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78606a71-db58-58bf-bab7-5f20f9a043e7', 1), '1e326f46718d5911730d84d07ba7c37d9adfe81eeb919641e35528ef81bb0058',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3', 6452, '2026-09-14 01:31:48.387924', 'f06a346d018ea5bd2b322a17574efb79e8392fc71d6c427c805a25b850f5a139', 'validated', '{"audio_key":"341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716","entity_key":"u_essayistic_rhythm_style_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f06a346d018ea5bd2b322a17574efb79e8392fc71d6c427c805a25b850f5a139","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_essayistic_rhythm_style_02_listen -> audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7e6831e5-c741-5268-bea9-41307182ec86', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_essayistic_rhythm_style_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e326f46718d5911730d84d07ba7c37d9adfe81eeb919641e35528ef81bb0058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fc593f3-d017-589e-96b3-25f2f8d6990f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7e6831e5-c741-5268-bea9-41307182ec86', 1), '1e326f46718d5911730d84d07ba7c37d9adfe81eeb919641e35528ef81bb0058',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3', 6452, '2026-09-14 01:31:48.387924', 'f06a346d018ea5bd2b322a17574efb79e8392fc71d6c427c805a25b850f5a139', 'validated', '{"audio_key":"341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716","entity_key":"e_essayistic_rhythm_style_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f06a346d018ea5bd2b322a17574efb79e8392fc71d6c427c805a25b850f5a139","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/341b835435204168875d7ca0586c21e443f83b4dac8bc80cacbb7326b2b1e716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_seoul_deliberation_capstone_02 -> audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7a0edf15-1485-561b-a1e8-9a4c1e5e7ff0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_seoul_deliberation_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c087b1619bdd04ef28294e6d762ef22c28b2e0eb47e89a216b9ee9d6b3a2e76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26fd414d-e847-5c76-9d9d-59d7486c2992', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7a0edf15-1485-561b-a1e8-9a4c1e5e7ff0', 1), '6c087b1619bdd04ef28294e6d762ef22c28b2e0eb47e89a216b9ee9d6b3a2e76',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3', 5877, '2026-09-14 01:31:49.723402', 'd767941408e6623b65c0cd7d9c0322a1b39cad7664d7d7098eb28c69b78b2e4f', 'validated', '{"audio_key":"3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15","entity_key":"u_c2_seoul_deliberation_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d767941408e6623b65c0cd7d9c0322a1b39cad7664d7d7098eb28c69b78b2e4f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_seoul_deliberation_capstone_01_listen -> audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('71544998-98fa-5010-8c85-b0314e1117ba', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_seoul_deliberation_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c087b1619bdd04ef28294e6d762ef22c28b2e0eb47e89a216b9ee9d6b3a2e76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf092243-581c-53c3-84af-2249c11afe2a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('71544998-98fa-5010-8c85-b0314e1117ba', 1), '6c087b1619bdd04ef28294e6d762ef22c28b2e0eb47e89a216b9ee9d6b3a2e76',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3', 5877, '2026-09-14 01:31:49.723402', 'd767941408e6623b65c0cd7d9c0322a1b39cad7664d7d7098eb28c69b78b2e4f', 'validated', '{"audio_key":"3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15","entity_key":"e_c2_seoul_deliberation_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d767941408e6623b65c0cd7d9c0322a1b39cad7664d7d7098eb28c69b78b2e4f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3498256db956e4ab0cbfbeb983ec81d6b9e1179492b413dbb6b490adb3eb3e15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sociolinguistic_indexicality_02 -> audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('07d7bb8b-3c27-59ee-8782-43872950d2e0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sociolinguistic_indexicality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5307a36eef8ea6211925bd7b4c7e0d097cd2376381e7a98dfe495eea99dc1d23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8965ed9f-a221-5e0b-b277-b774d7310790', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('07d7bb8b-3c27-59ee-8782-43872950d2e0', 1), '5307a36eef8ea6211925bd7b4c7e0d097cd2376381e7a98dfe495eea99dc1d23',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3', 7758, '2026-09-14 01:31:50.129939', '8e5a3e10a4214ff165c95c222195d6d5fbb67b25b31634995dd876e402c61e0b', 'validated', '{"audio_key":"386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f","entity_key":"u_sociolinguistic_indexicality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e5a3e10a4214ff165c95c222195d6d5fbb67b25b31634995dd876e402c61e0b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_sociolinguistic_indexicality_01_listen -> audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('344761c9-79eb-5c7e-a07f-2bc359309a4e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_sociolinguistic_indexicality_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5307a36eef8ea6211925bd7b4c7e0d097cd2376381e7a98dfe495eea99dc1d23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d38c41e-0180-57a1-b546-19259686fc2c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('344761c9-79eb-5c7e-a07f-2bc359309a4e', 1), '5307a36eef8ea6211925bd7b4c7e0d097cd2376381e7a98dfe495eea99dc1d23',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3', 7758, '2026-09-14 01:31:50.129939', '8e5a3e10a4214ff165c95c222195d6d5fbb67b25b31634995dd876e402c61e0b', 'validated', '{"audio_key":"386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f","entity_key":"e_sociolinguistic_indexicality_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e5a3e10a4214ff165c95c222195d6d5fbb67b25b31634995dd876e402c61e0b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/386c27eff3f6ae5e7dea69fd4c4fe0bd0240139262353c06ca01664e445ce41f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_argumentation_03 -> audio/generated/ko-KR/utterances/4d929682fb5c87b920ac119798a6344fbd78bc1c122b02e6a2eadd2c0b0bf280.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c1956e91-9864-555e-b9eb-d22cd042c230', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_argumentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd6cced915d925f14aab4d2c235c838e67ee29b37593a56b90a7ce46d32f7860'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79661d6c-b2f5-5ed5-ad97-a92468260503', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c1956e91-9864-555e-b9eb-d22cd042c230', 1), 'fd6cced915d925f14aab4d2c235c838e67ee29b37593a56b90a7ce46d32f7860',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4d929682fb5c87b920ac119798a6344fbd78bc1c122b02e6a2eadd2c0b0bf280.mp3', 6112, '2026-09-14 01:31:51.242663', '2f534e8c1cb6889b68da35219c5b5648a520e2b0888fb371d5c97b97c34afeca', 'validated', '{"audio_key":"4d929682fb5c87b920ac119798a6344fbd78bc1c122b02e6a2eadd2c0b0bf280","entity_key":"u_compressed_argumentation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f534e8c1cb6889b68da35219c5b5648a520e2b0888fb371d5c97b97c34afeca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4d929682fb5c87b920ac119798a6344fbd78bc1c122b02e6a2eadd2c0b0bf280.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_negotiation_04 -> audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('517980f9-ab34-51c9-a3b1-701a00faedbe', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9b07efba23e06d908ab3d7bab0b6019121b8c94656a4144f955ac2fb58dc1c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('945d585d-b34b-5ba0-8ac8-73307ba55b30', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('517980f9-ab34-51c9-a3b1-701a00faedbe', 1), 'e9b07efba23e06d908ab3d7bab0b6019121b8c94656a4144f955ac2fb58dc1c6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3', 6034, '2026-09-14 01:31:51.866339', 'e03dcba9f6ae420e88c8e999104805c5127314c213883c3f661d0625718bb4d8', 'validated', '{"audio_key":"4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac","entity_key":"u_high_stakes_negotiation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e03dcba9f6ae420e88c8e999104805c5127314c213883c3f661d0625718bb4d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_high_stakes_negotiation_02_listen -> audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fd30fb12-595f-5898-8473-932a34b5d37d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_high_stakes_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9b07efba23e06d908ab3d7bab0b6019121b8c94656a4144f955ac2fb58dc1c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('539110bc-b274-59b3-ae0f-3190d0d3e4fc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fd30fb12-595f-5898-8473-932a34b5d37d', 1), 'e9b07efba23e06d908ab3d7bab0b6019121b8c94656a4144f955ac2fb58dc1c6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3', 6034, '2026-09-14 01:31:51.866339', 'e03dcba9f6ae420e88c8e999104805c5127314c213883c3f661d0625718bb4d8', 'validated', '{"audio_key":"4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac","entity_key":"e_high_stakes_negotiation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e03dcba9f6ae420e88c8e999104805c5127314c213883c3f661d0625718bb4d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4e5c54a3243db867983ef8f7da63ea7bc3b05ec8b3dfec92f7211efc58686eac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_orchestration_02 -> audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('62940ca2-632d-5922-a6f5-54d93b9e177f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_orchestration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03796e00f1e79ac564171e3d33e064853ed6561f97018bc25e5950c1db4941cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('439b9c45-f45c-5ad6-8fe5-408ed18b9d8a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('62940ca2-632d-5922-a6f5-54d93b9e177f', 1), '03796e00f1e79ac564171e3d33e064853ed6561f97018bc25e5950c1db4941cd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3', 5799, '2026-09-14 01:31:52.686152', 'd3e0ccda1542dbcbd29442daf169c30eb6de74659854d9bab45cde00ca3dc917', 'validated', '{"audio_key":"53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af","entity_key":"u_register_orchestration_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3e0ccda1542dbcbd29442daf169c30eb6de74659854d9bab45cde00ca3dc917","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_orchestration_01_listen -> audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('54637043-fc9e-5ec5-bba4-53d3632f0718', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_orchestration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03796e00f1e79ac564171e3d33e064853ed6561f97018bc25e5950c1db4941cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25d205d3-bd74-5ea5-a459-99188d4f5a61', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('54637043-fc9e-5ec5-bba4-53d3632f0718', 1), '03796e00f1e79ac564171e3d33e064853ed6561f97018bc25e5950c1db4941cd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3', 5799, '2026-09-14 01:31:52.686152', 'd3e0ccda1542dbcbd29442daf169c30eb6de74659854d9bab45cde00ca3dc917', 'validated', '{"audio_key":"53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af","entity_key":"e_register_orchestration_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3e0ccda1542dbcbd29442daf169c30eb6de74659854d9bab45cde00ca3dc917","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/53dae774dd2dc7994f83efd45f721e683d19c21f27a3bcde222c2c96b30127af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_seoul_deliberation_capstone_03 -> audio/generated/ko-KR/utterances/592ba3ad86667217d3531539a9b4d3aa135afbc65718544caffc3594efaa2f64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd418c39-c451-5c05-94f2-2f1dbe27b54f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_seoul_deliberation_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32f4d14d46ceb453a340afc1e6519a6a17d979412c0c28409649958b86ec74ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0bdca8a-6c8a-5d0d-aa5e-4dcf6c1d3e59', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd418c39-c451-5c05-94f2-2f1dbe27b54f', 1), '32f4d14d46ceb453a340afc1e6519a6a17d979412c0c28409649958b86ec74ee',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/592ba3ad86667217d3531539a9b4d3aa135afbc65718544caffc3594efaa2f64.mp3', 5459, '2026-09-14 01:31:53.409557', '3ac6ff0f1f923a5f6cd2b6f78fde08538e9efd24c1d98dea15d3d36d52251323', 'validated', '{"audio_key":"592ba3ad86667217d3531539a9b4d3aa135afbc65718544caffc3594efaa2f64","entity_key":"u_c2_seoul_deliberation_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ac6ff0f1f923a5f6cd2b6f78fde08538e9efd24c1d98dea15d3d36d52251323","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/592ba3ad86667217d3531539a9b4d3aa135afbc65718544caffc3594efaa2f64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_negotiation_03 -> audio/generated/ko-KR/utterances/5f2632148d678b9ca480c4f9d1e68dfc6c3bd8151c17113468167f23445dfe2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a30ddf46-d5ec-5c04-903d-7674844942c7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db13638e5b6201e33b5d18b9481fab8c8db92af817b9e0dbfe0dc92e6e663b68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b0664e-ffd4-51bf-b396-e23d5b528c8e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a30ddf46-d5ec-5c04-903d-7674844942c7', 1), 'db13638e5b6201e33b5d18b9481fab8c8db92af817b9e0dbfe0dc92e6e663b68',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5f2632148d678b9ca480c4f9d1e68dfc6c3bd8151c17113468167f23445dfe2e.mp3', 5799, '2026-09-14 01:31:54.218426', 'fc223e7be90bbd5197d15c4ce756260b907bbbd80e47522596cd113a0ad6952f', 'validated', '{"audio_key":"5f2632148d678b9ca480c4f9d1e68dfc6c3bd8151c17113468167f23445dfe2e","entity_key":"u_high_stakes_negotiation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc223e7be90bbd5197d15c4ce756260b907bbbd80e47522596cd113a0ad6952f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5f2632148d678b9ca480c4f9d1e68dfc6c3bd8151c17113468167f23445dfe2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_methodological_critique_01 -> audio/generated/ko-KR/utterances/612a72e7041a3a247a017f69f029c7bb35d0ec10d82f51a93c76e30ec6c31ab3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7eb3ec55-50ff-5f7a-9503-210d834bca58', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_methodological_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8c50ad5f011354e87121231eef3704d61f7fc62d8ca25b05df00a61c6112746'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('833b1fdb-1e65-5731-9ee5-2d18d8242153', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7eb3ec55-50ff-5f7a-9503-210d834bca58', 1), 'c8c50ad5f011354e87121231eef3704d61f7fc62d8ca25b05df00a61c6112746',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/612a72e7041a3a247a017f69f029c7bb35d0ec10d82f51a93c76e30ec6c31ab3.mp3', 5694, '2026-09-14 01:31:54.906497', '35c23a7840de12d2d3c5e5c23937b82b49bec176b3afeaf41b4ece037cfe00b2', 'validated', '{"audio_key":"612a72e7041a3a247a017f69f029c7bb35d0ec10d82f51a93c76e30ec6c31ab3","entity_key":"u_methodological_critique_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35c23a7840de12d2d3c5e5c23937b82b49bec176b3afeaf41b4ece037cfe00b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/612a72e7041a3a247a017f69f029c7bb35d0ec10d82f51a93c76e30ec6c31ab3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_negotiation_02 -> audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b473315-7260-5370-a082-f02ad9008e70', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffbce4bac48143ea0624db6bb8d5470f25365bcdb7b7fa365dc9dedcd2c19956'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fa8ad8b-8dfd-592b-9ce4-80821ccf1837', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b473315-7260-5370-a082-f02ad9008e70', 1), 'ffbce4bac48143ea0624db6bb8d5470f25365bcdb7b7fa365dc9dedcd2c19956',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3', 4858, '2026-09-14 01:31:55.606091', '42192340abf886e01fa9455b1decdf64717ad3d284c97473add82a3e40b543c9', 'validated', '{"audio_key":"7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2","entity_key":"u_high_stakes_negotiation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42192340abf886e01fa9455b1decdf64717ad3d284c97473add82a3e40b543c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_high_stakes_negotiation_01_listen -> audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cc10fca4-8b0e-5dfe-8d36-76fceb0714d0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_high_stakes_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffbce4bac48143ea0624db6bb8d5470f25365bcdb7b7fa365dc9dedcd2c19956'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5354d5f8-7463-5468-a06a-f8cb419d903c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cc10fca4-8b0e-5dfe-8d36-76fceb0714d0', 1), 'ffbce4bac48143ea0624db6bb8d5470f25365bcdb7b7fa365dc9dedcd2c19956',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3', 4858, '2026-09-14 01:31:55.606091', '42192340abf886e01fa9455b1decdf64717ad3d284c97473add82a3e40b543c9', 'validated', '{"audio_key":"7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2","entity_key":"e_high_stakes_negotiation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42192340abf886e01fa9455b1decdf64717ad3d284c97473add82a3e40b543c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7b2d344efb484e0d62de8a684c79eebf18f57cd55c294bedf65c82507539b5f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_framing_intertextuality_04 -> audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9529a8d0-fac9-50d4-b9f9-5c7f17dfa120', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_framing_intertextuality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9fbf7f5d9537a56de266af74b4aced608fa4657cc6fb87998eb708b59c78a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6d0141e-4585-5c98-bce5-93201907e0b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9529a8d0-fac9-50d4-b9f9-5c7f17dfa120', 1), 'c9fbf7f5d9537a56de266af74b4aced608fa4657cc6fb87998eb708b59c78a84',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3', 4728, '2026-09-14 01:31:56.287631', 'd31be69b50d20118b3fbca9fd1881ce47e519d2ea2c5008769e4713e86985e52', 'validated', '{"audio_key":"7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954","entity_key":"u_media_framing_intertextuality_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d31be69b50d20118b3fbca9fd1881ce47e519d2ea2c5008769e4713e86985e52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_framing_intertextuality_02_listen -> audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5d9dd39f-2733-57c7-9a93-80bebfcd2a4e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_framing_intertextuality_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9fbf7f5d9537a56de266af74b4aced608fa4657cc6fb87998eb708b59c78a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66d65f11-2287-5eb2-b1b2-8a4b46c3be88', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5d9dd39f-2733-57c7-9a93-80bebfcd2a4e', 1), 'c9fbf7f5d9537a56de266af74b4aced608fa4657cc6fb87998eb708b59c78a84',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3', 4728, '2026-09-14 01:31:56.287631', 'd31be69b50d20118b3fbca9fd1881ce47e519d2ea2c5008769e4713e86985e52', 'validated', '{"audio_key":"7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954","entity_key":"e_media_framing_intertextuality_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d31be69b50d20118b3fbca9fd1881ce47e519d2ea2c5008769e4713e86985e52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7c55b1c92121fba6237a519ea6c18bec89743c80d53818fe89eb1054390b1954.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_irony_01 -> audio/generated/ko-KR/utterances/7da0871ed6e1af17ca81a92cae79782d7cd67b56a07b1fa1312d929e592aac4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cc663ca4-0de8-5d6a-827b-18b505af3352', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_irony_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d1998aa443691fd225718e9b3ffc0d99b01d3f1d4669308af51702b620db9c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0a2f03d-8148-5b29-a6ed-e5808d9c51e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cc663ca4-0de8-5d6a-827b-18b505af3352', 1), '1d1998aa443691fd225718e9b3ffc0d99b01d3f1d4669308af51702b620db9c9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7da0871ed6e1af17ca81a92cae79782d7cd67b56a07b1fa1312d929e592aac4e.mp3', 4963, '2026-09-14 01:31:57.010354', 'b2ab553a5a560da3bf36db33195a2d691852908e7849ed2864fbc5795af3543d', 'validated', '{"audio_key":"7da0871ed6e1af17ca81a92cae79782d7cd67b56a07b1fa1312d929e592aac4e","entity_key":"u_strategic_ambiguity_irony_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2ab553a5a560da3bf36db33195a2d691852908e7849ed2864fbc5795af3543d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7da0871ed6e1af17ca81a92cae79782d7cd67b56a07b1fa1312d929e592aac4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_seoul_deliberation_capstone_04 -> audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e018010d-5bc2-5680-921e-66b7012ee2ab', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_seoul_deliberation_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f84adc9d7026f53d609b03a1c7cd6c0feab7cdebeb3819fb6afc55f1b73f2823'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('feb61556-b2c5-52c1-879b-4d0265990062', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e018010d-5bc2-5680-921e-66b7012ee2ab', 1), 'f84adc9d7026f53d609b03a1c7cd6c0feab7cdebeb3819fb6afc55f1b73f2823',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3', 6347, '2026-09-14 01:31:57.901738', '25a97cf5c1baeff24ce4d9a4c36a0ce5ea1d44e930ed27c033e4897a5ba3281f', 'validated', '{"audio_key":"7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2","entity_key":"u_c2_seoul_deliberation_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25a97cf5c1baeff24ce4d9a4c36a0ce5ea1d44e930ed27c033e4897a5ba3281f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_seoul_deliberation_capstone_02_listen -> audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c8d5b207-e1ec-5af9-86df-1aae2f34b5e5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_seoul_deliberation_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f84adc9d7026f53d609b03a1c7cd6c0feab7cdebeb3819fb6afc55f1b73f2823'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f7a5679-c421-5566-9ec8-83d6ded4c2af', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c8d5b207-e1ec-5af9-86df-1aae2f34b5e5', 1), 'f84adc9d7026f53d609b03a1c7cd6c0feab7cdebeb3819fb6afc55f1b73f2823',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3', 6347, '2026-09-14 01:31:57.901738', '25a97cf5c1baeff24ce4d9a4c36a0ce5ea1d44e930ed27c033e4897a5ba3281f', 'validated', '{"audio_key":"7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2","entity_key":"e_c2_seoul_deliberation_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25a97cf5c1baeff24ce4d9a4c36a0ce5ea1d44e930ed27c033e4897a5ba3281f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7dbe3e204d35bdeed6b355c2937f6f5dde80eeb686f488cba0f128ffbedb4be2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_framing_intertextuality_03 -> audio/generated/ko-KR/utterances/93359d6746d5fb3ce7827eab13f7c94bb85045a5330465b6e6519b97be2ec1aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0e70f23-3021-5ba9-8b49-d4ab9f03282c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_framing_intertextuality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '358499c3b0e1aa55f582d28c0274532eeedacea644496517460b96c22932b279'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caf7831e-7d11-516e-ac4b-7447485e89fc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0e70f23-3021-5ba9-8b49-d4ab9f03282c', 1), '358499c3b0e1aa55f582d28c0274532eeedacea644496517460b96c22932b279',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/93359d6746d5fb3ce7827eab13f7c94bb85045a5330465b6e6519b97be2ec1aa.mp3', 5433, '2026-09-14 01:31:58.512615', 'ded39a834d515677aef9fb3bf2f1d4e57db2ed7126974c0bd745272dbe9e90c8', 'validated', '{"audio_key":"93359d6746d5fb3ce7827eab13f7c94bb85045a5330465b6e6519b97be2ec1aa","entity_key":"u_media_framing_intertextuality_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ded39a834d515677aef9fb3bf2f1d4e57db2ed7126974c0bd745272dbe9e90c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/93359d6746d5fb3ce7827eab13f7c94bb85045a5330465b6e6519b97be2ec1aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_argumentation_04 -> audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d5c7e8b5-7fc8-5e82-a4cb-1f6b87a4a079', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_argumentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '561bdeb442d1f1654aae8c71fdebe94d1bd4154a3a7331783b9e1b3fec94b8b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2f4c54d-17b9-5300-973a-a7a4d49446c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d5c7e8b5-7fc8-5e82-a4cb-1f6b87a4a079', 1), '561bdeb442d1f1654aae8c71fdebe94d1bd4154a3a7331783b9e1b3fec94b8b3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3', 5982, '2026-09-14 01:31:59.479726', '2e13b5d9d006e53245f860df4ac27343e4b0c11d17b26806ed1429931f82667a', 'validated', '{"audio_key":"a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68","entity_key":"u_compressed_argumentation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e13b5d9d006e53245f860df4ac27343e4b0c11d17b26806ed1429931f82667a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_compressed_argumentation_02_listen -> audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e111684e-2003-565e-b9e3-34d02633bea2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_compressed_argumentation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '561bdeb442d1f1654aae8c71fdebe94d1bd4154a3a7331783b9e1b3fec94b8b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a85c3781-3d74-5e58-9c5e-d7a0e1c7f3bf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e111684e-2003-565e-b9e3-34d02633bea2', 1), '561bdeb442d1f1654aae8c71fdebe94d1bd4154a3a7331783b9e1b3fec94b8b3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3', 5982, '2026-09-14 01:31:59.479726', '2e13b5d9d006e53245f860df4ac27343e4b0c11d17b26806ed1429931f82667a', 'validated', '{"audio_key":"a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68","entity_key":"e_compressed_argumentation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e13b5d9d006e53245f860df4ac27343e4b0c11d17b26806ed1429931f82667a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a38c6b9b63b0159228d7b55586c146a6165738be8440e2251c61436eba6a4c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_accountability_01 -> audio/generated/ko-KR/utterances/b2515b2e55223ebd0517e1979aced8b19799c9675c935ab7c7ed4b526d71ccab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2b2ead82-239d-5f78-b6dd-015a329ea413', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43fbe00dd32a2ea298c525cb457e66d212035055aeb3377f4a90cccc24b13b04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce8da9ea-07bf-5516-938a-7516027a9bac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2b2ead82-239d-5f78-b6dd-015a329ea413', 1), '43fbe00dd32a2ea298c525cb457e66d212035055aeb3377f4a90cccc24b13b04',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b2515b2e55223ebd0517e1979aced8b19799c9675c935ab7c7ed4b526d71ccab.mp3', 5093, '2026-09-14 01:31:59.993378', 'e379638e14567ee8eb68d9072ea47cb42585c471e6bbcdc2ea2acca5fd7ac510', 'validated', '{"audio_key":"b2515b2e55223ebd0517e1979aced8b19799c9675c935ab7c7ed4b526d71ccab","entity_key":"u_institutional_accountability_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e379638e14567ee8eb68d9072ea47cb42585c471e6bbcdc2ea2acca5fd7ac510","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b2515b2e55223ebd0517e1979aced8b19799c9675c935ab7c7ed4b526d71ccab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_methodological_critique_04 -> audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba7e0f69-22f9-5830-8073-92aa79b03d67', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_methodological_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8955ddbacdab8da521d023beb0369ca6bddb5ec6217b5554274cc4197a0c34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbe9be69-e802-5824-b9cc-4add7130ff08', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba7e0f69-22f9-5830-8073-92aa79b03d67', 1), '5b8955ddbacdab8da521d023beb0369ca6bddb5ec6217b5554274cc4197a0c34',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3', 4728, '2026-09-14 01:32:00.843253', '4fed94d3fea8638c2dbf3b31a0b90d9f78249542bb18836eb324b0b2dc103323', 'validated', '{"audio_key":"b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1","entity_key":"u_methodological_critique_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4fed94d3fea8638c2dbf3b31a0b90d9f78249542bb18836eb324b0b2dc103323","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_methodological_critique_02_listen -> audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7af4b36b-3c81-5ce2-bf4f-6445ef4ba685', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_methodological_critique_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8955ddbacdab8da521d023beb0369ca6bddb5ec6217b5554274cc4197a0c34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e5273fa-b2e1-5bdc-86bd-d2c39950eea6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7af4b36b-3c81-5ce2-bf4f-6445ef4ba685', 1), '5b8955ddbacdab8da521d023beb0369ca6bddb5ec6217b5554274cc4197a0c34',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3', 4728, '2026-09-14 01:32:00.843253', '4fed94d3fea8638c2dbf3b31a0b90d9f78249542bb18836eb324b0b2dc103323', 'validated', '{"audio_key":"b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1","entity_key":"e_methodological_critique_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4fed94d3fea8638c2dbf3b31a0b90d9f78249542bb18836eb324b0b2dc103323","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b57ce2f7f5fc7ece4eb9145a53562060f63d74399e8d49c4cc405e4bc56ea6a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_irony_02 -> audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bde72486-2b60-53f7-8140-d2f0c3efdc59', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_irony_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe1e823da3543795382ed10594000d96e33caf23cc4ac5a2ca80fb634b55e998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8abe72a9-fbdb-5411-92e0-18ac0be27bc1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bde72486-2b60-53f7-8140-d2f0c3efdc59', 1), 'fe1e823da3543795382ed10594000d96e33caf23cc4ac5a2ca80fb634b55e998',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3', 5381, '2026-09-14 01:32:01.461024', '9d519bb65164fb90f2ad026ccea6ea557f429f678a3bb6d1e78456f898f38b95', 'validated', '{"audio_key":"bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3","entity_key":"u_strategic_ambiguity_irony_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d519bb65164fb90f2ad026ccea6ea557f429f678a3bb6d1e78456f898f38b95","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_strategic_ambiguity_irony_01_listen -> audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a68c85f4-fc45-58b0-94a9-a8bb403f8d5d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_strategic_ambiguity_irony_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe1e823da3543795382ed10594000d96e33caf23cc4ac5a2ca80fb634b55e998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85ef5238-656f-5440-98eb-5eec35632a59', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a68c85f4-fc45-58b0-94a9-a8bb403f8d5d', 1), 'fe1e823da3543795382ed10594000d96e33caf23cc4ac5a2ca80fb634b55e998',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3', 5381, '2026-09-14 01:32:01.461024', '9d519bb65164fb90f2ad026ccea6ea557f429f678a3bb6d1e78456f898f38b95', 'validated', '{"audio_key":"bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3","entity_key":"e_strategic_ambiguity_irony_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d519bb65164fb90f2ad026ccea6ea557f429f678a3bb6d1e78456f898f38b95","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bb499b6f3621ea1b3cef39e99231d02dfa562196f1a3e4b01c410eb276ff93d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sociolinguistic_indexicality_01 -> audio/generated/ko-KR/utterances/c18ff9b468bb6e191ffe00177cbd20cce0a019478b8efab9a88075e5e9e26b89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a695898f-c846-57ac-9d3c-3593a4bc236b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sociolinguistic_indexicality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd200d49de7e785a8fd3599b7dac1546bf79728c6e29f73605a2d1b6cf1fc50bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4713b62-5cc2-5f46-ab7e-40a972f57199', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a695898f-c846-57ac-9d3c-3593a4bc236b', 1), 'd200d49de7e785a8fd3599b7dac1546bf79728c6e29f73605a2d1b6cf1fc50bc',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c18ff9b468bb6e191ffe00177cbd20cce0a019478b8efab9a88075e5e9e26b89.mp3', 6713, '2026-09-14 01:32:02.503316', 'a208d1715bf3cc0beda20fbc809a4ea219e9e9dea2ab689e0ec164d55a0d935b', 'validated', '{"audio_key":"c18ff9b468bb6e191ffe00177cbd20cce0a019478b8efab9a88075e5e9e26b89","entity_key":"u_sociolinguistic_indexicality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a208d1715bf3cc0beda20fbc809a4ea219e9e9dea2ab689e0ec164d55a0d935b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c18ff9b468bb6e191ffe00177cbd20cce0a019478b8efab9a88075e5e9e26b89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_essayistic_rhythm_style_01 -> audio/generated/ko-KR/utterances/c64a73ca30858c6bf61714517ba00e03e5c52cbb8af541e3d222343725cfbb1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6fc41e7a-b6bf-5e7d-a607-d103b6b3abe3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_essayistic_rhythm_style_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5aff58da988b4e60990235b4cc510e78a0cb71effd6d10ee1e7c1578538fc1f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('522d4de2-b268-53ea-a988-0cf3eb63f372', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6fc41e7a-b6bf-5e7d-a607-d103b6b3abe3', 1), '5aff58da988b4e60990235b4cc510e78a0cb71effd6d10ee1e7c1578538fc1f6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c64a73ca30858c6bf61714517ba00e03e5c52cbb8af541e3d222343725cfbb1b.mp3', 5146, '2026-09-14 01:32:02.838285', 'c276eb0854c2caafe03c88bcf7e16f6d83aeb9b2caf9f367c622db44d4ab7d9d', 'validated', '{"audio_key":"c64a73ca30858c6bf61714517ba00e03e5c52cbb8af541e3d222343725cfbb1b","entity_key":"u_essayistic_rhythm_style_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c276eb0854c2caafe03c88bcf7e16f6d83aeb9b2caf9f367c622db44d4ab7d9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c64a73ca30858c6bf61714517ba00e03e5c52cbb8af541e3d222343725cfbb1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_orchestration_04 -> audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27fc31f1-9725-5873-85b2-8bae079f7221', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_orchestration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00f2dc57b6d12e0a28733aeda8c25d474932bed728ce1b5c74a31537c3f81409'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc4c9449-af29-5abb-9190-554b62ac3bbc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27fc31f1-9725-5873-85b2-8bae079f7221', 1), '00f2dc57b6d12e0a28733aeda8c25d474932bed728ce1b5c74a31537c3f81409',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3', 5041, '2026-09-14 01:32:03.962644', '2ae85b58cdb7f8bd80944af36db0264255d2f32ff87d8cde7261a36656596ac1', 'validated', '{"audio_key":"caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260","entity_key":"u_register_orchestration_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ae85b58cdb7f8bd80944af36db0264255d2f32ff87d8cde7261a36656596ac1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_orchestration_02_listen -> audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('eaa4ec35-302b-5b4c-aaa7-613c95f82847', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_orchestration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00f2dc57b6d12e0a28733aeda8c25d474932bed728ce1b5c74a31537c3f81409'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27230eb7-6742-52ad-969a-778bd3a9730f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('eaa4ec35-302b-5b4c-aaa7-613c95f82847', 1), '00f2dc57b6d12e0a28733aeda8c25d474932bed728ce1b5c74a31537c3f81409',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3', 5041, '2026-09-14 01:32:03.962644', '2ae85b58cdb7f8bd80944af36db0264255d2f32ff87d8cde7261a36656596ac1', 'validated', '{"audio_key":"caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260","entity_key":"e_register_orchestration_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ae85b58cdb7f8bd80944af36db0264255d2f32ff87d8cde7261a36656596ac1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/caed291f8f9c6cdd4686a8030983c2b576263ce66cddba927598deea4be56260.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_methodological_critique_02 -> audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9511f897-dfd3-51be-9085-32a736adb490', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_methodological_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f70bfe74e5895311081aaeb8894323de8cb1315eaf2f594ad5e416c031e08bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92c58fdc-70cc-56f4-88fd-d151bb64c0fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9511f897-dfd3-51be-9085-32a736adb490', 1), '1f70bfe74e5895311081aaeb8894323de8cb1315eaf2f594ad5e416c031e08bd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3', 4780, '2026-09-14 01:32:04.298825', '023bcd5922725eadac32de9cf9852be570723963970e02882c263ad0662a65a6', 'validated', '{"audio_key":"cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9","entity_key":"u_methodological_critique_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"023bcd5922725eadac32de9cf9852be570723963970e02882c263ad0662a65a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_methodological_critique_01_listen -> audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('91ac09a7-8728-5b84-b1d8-90a4a98ca091', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_methodological_critique_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f70bfe74e5895311081aaeb8894323de8cb1315eaf2f594ad5e416c031e08bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53cdd546-54f2-5ae7-9589-369aa81dc884', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('91ac09a7-8728-5b84-b1d8-90a4a98ca091', 1), '1f70bfe74e5895311081aaeb8894323de8cb1315eaf2f594ad5e416c031e08bd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3', 4780, '2026-09-14 01:32:04.298825', '023bcd5922725eadac32de9cf9852be570723963970e02882c263ad0662a65a6', 'validated', '{"audio_key":"cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9","entity_key":"e_methodological_critique_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"023bcd5922725eadac32de9cf9852be570723963970e02882c263ad0662a65a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cff78e82f14a3f03a8c4f589833c281dc4224f501ab259fbd8f2e79a0e7d4fe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_framing_intertextuality_01 -> audio/generated/ko-KR/utterances/d2a000fa4be51b8d5aefb13ca857c219a35389fea057af6d4efdc1df4dba0dbe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('08a199da-4e4c-53b0-9f04-996cdfb4f3c2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_framing_intertextuality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '052b951d46ab7ce34dac8031ace55ea529bcabb20a670ac70e99d11769ecbe83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f94a015-fa2e-547e-a1fb-510fea8ac5ba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('08a199da-4e4c-53b0-9f04-996cdfb4f3c2', 1), '052b951d46ab7ce34dac8031ace55ea529bcabb20a670ac70e99d11769ecbe83',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d2a000fa4be51b8d5aefb13ca857c219a35389fea057af6d4efdc1df4dba0dbe.mp3', 7235, '2026-09-14 01:32:05.663840', '49d4427d38f0a04db94925f68cc8518ca994ebbee1d5c974732fbb3f3420de13', 'validated', '{"audio_key":"d2a000fa4be51b8d5aefb13ca857c219a35389fea057af6d4efdc1df4dba0dbe","entity_key":"u_media_framing_intertextuality_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"49d4427d38f0a04db94925f68cc8518ca994ebbee1d5c974732fbb3f3420de13","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d2a000fa4be51b8d5aefb13ca857c219a35389fea057af6d4efdc1df4dba0dbe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_framing_intertextuality_02 -> audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7a1b2cd4-ebc2-5598-a3e8-94138ec8a173', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_framing_intertextuality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90a7875612283ebb3d23650e2abd3c0286bb8fb66df1cd64847b12a949f23607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f61aae46-1e4c-5ad4-8838-ebcb832946b6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7a1b2cd4-ebc2-5598-a3e8-94138ec8a173', 1), '90a7875612283ebb3d23650e2abd3c0286bb8fb66df1cd64847b12a949f23607',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3', 5015, '2026-09-14 01:32:05.795727', '2c440a28df259a2f48cf93bf74d8d0c1a190bac8c94f7ef20f09b690ffe8a525', 'validated', '{"audio_key":"d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3","entity_key":"u_media_framing_intertextuality_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c440a28df259a2f48cf93bf74d8d0c1a190bac8c94f7ef20f09b690ffe8a525","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_framing_intertextuality_01_listen -> audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5c92d2ed-36f2-5a55-abf3-b2bbf2765116', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_framing_intertextuality_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90a7875612283ebb3d23650e2abd3c0286bb8fb66df1cd64847b12a949f23607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('094e6a12-7033-5a88-8918-015702a4868c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5c92d2ed-36f2-5a55-abf3-b2bbf2765116', 1), '90a7875612283ebb3d23650e2abd3c0286bb8fb66df1cd64847b12a949f23607',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3', 5015, '2026-09-14 01:32:05.795727', '2c440a28df259a2f48cf93bf74d8d0c1a190bac8c94f7ef20f09b690ffe8a525', 'validated', '{"audio_key":"d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3","entity_key":"e_media_framing_intertextuality_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c440a28df259a2f48cf93bf74d8d0c1a190bac8c94f7ef20f09b690ffe8a525","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d455787f2329f2572f2a9f86577e0bb3bcfc119c1d945a04ad29573aeb20bdb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_negotiation_01 -> audio/generated/ko-KR/utterances/d545f76709bd21fc905122fccb70341e32a605a127e155007ae5fc59a1cfd0be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a9017b5-c15c-55a8-8fa3-350bb8c2e4b7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '240b38e3d439089275e15efb627bf357a05814bbb0448e223cd30326d189f599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8be521cf-0923-596a-8774-9518f2182aec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a9017b5-c15c-55a8-8fa3-350bb8c2e4b7', 1), '240b38e3d439089275e15efb627bf357a05814bbb0448e223cd30326d189f599',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d545f76709bd21fc905122fccb70341e32a605a127e155007ae5fc59a1cfd0be.mp3', 4310, '2026-09-14 01:32:07.005487', 'bda968fda048bbebc7700e2bb19c824b0104c4278eebf2b1ec773ca2f119ab11', 'validated', '{"audio_key":"d545f76709bd21fc905122fccb70341e32a605a127e155007ae5fc59a1cfd0be","entity_key":"u_high_stakes_negotiation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bda968fda048bbebc7700e2bb19c824b0104c4278eebf2b1ec773ca2f119ab11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d545f76709bd21fc905122fccb70341e32a605a127e155007ae5fc59a1cfd0be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_accountability_04 -> audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58a69d05-7a49-5ee7-831e-44440acd182a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '934d64023852551ec7ec65597ca56ddb3e1993e75e9a9fb0a28955bf7b41ae31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4825f58b-e50b-5579-b37b-3a419751d8bf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58a69d05-7a49-5ee7-831e-44440acd182a', 1), '934d64023852551ec7ec65597ca56ddb3e1993e75e9a9fb0a28955bf7b41ae31',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3', 4623, '2026-09-14 01:32:07.181948', '8a85a3b2f9df0829ebd30e4f25e0a1ba26560383efb6b9598ea6cc6f0665309d', 'validated', '{"audio_key":"d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77","entity_key":"u_institutional_accountability_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a85a3b2f9df0829ebd30e4f25e0a1ba26560383efb6b9598ea6cc6f0665309d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_accountability_02_listen -> audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('62abdf63-6bda-5ca2-a49f-06595df744bb', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_accountability_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '934d64023852551ec7ec65597ca56ddb3e1993e75e9a9fb0a28955bf7b41ae31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('355a815d-e915-5e33-9c5c-6f71522ecc6c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('62abdf63-6bda-5ca2-a49f-06595df744bb', 1), '934d64023852551ec7ec65597ca56ddb3e1993e75e9a9fb0a28955bf7b41ae31',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3', 4623, '2026-09-14 01:32:07.181948', '8a85a3b2f9df0829ebd30e4f25e0a1ba26560383efb6b9598ea6cc6f0665309d', 'validated', '{"audio_key":"d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77","entity_key":"e_institutional_accountability_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a85a3b2f9df0829ebd30e4f25e0a1ba26560383efb6b9598ea6cc6f0665309d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d91e394de27b2a644ee19d9a9ffca8a5e4101025014114c551bc443fdee03a77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_accountability_02 -> audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f7ea3f7-b332-56d7-8eca-8da7da8266cd', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c76e932fa484bb6d938b79ff67cecb9dcfbf1eb861cc5ed5d8762f62876a9e9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b32daabb-01fd-5dbe-919c-55f6e94c7885', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f7ea3f7-b332-56d7-8eca-8da7da8266cd', 1), 'c76e932fa484bb6d938b79ff67cecb9dcfbf1eb861cc5ed5d8762f62876a9e9b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3', 6269, '2026-09-14 01:32:08.605312', 'ae9702bf6386bce73c272c8ecde976e7afd6cd63d4717b4c4b4c70049480e578', 'validated', '{"audio_key":"dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966","entity_key":"u_institutional_accountability_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ae9702bf6386bce73c272c8ecde976e7afd6cd63d4717b4c4b4c70049480e578","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_accountability_01_listen -> audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3745bdaa-cc83-518a-866e-f1e04cf8799b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_accountability_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c76e932fa484bb6d938b79ff67cecb9dcfbf1eb861cc5ed5d8762f62876a9e9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('017a6083-db3e-5b86-9ba1-a82f0dc2d96c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3745bdaa-cc83-518a-866e-f1e04cf8799b', 1), 'c76e932fa484bb6d938b79ff67cecb9dcfbf1eb861cc5ed5d8762f62876a9e9b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3', 6269, '2026-09-14 01:32:08.605312', 'ae9702bf6386bce73c272c8ecde976e7afd6cd63d4717b4c4b4c70049480e578', 'validated', '{"audio_key":"dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966","entity_key":"e_institutional_accountability_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ae9702bf6386bce73c272c8ecde976e7afd6cd63d4717b4c4b4c70049480e578","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dc9410f8af4bce71634184dec88a124bceeda268057b5d756895b31105d77966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_irony_04 -> audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('92dbf811-3452-53be-9eca-08e6d71ee240', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_irony_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cde55d7b4290f087342f7c53d9aea65df4fc3ca8a781311f5216c718766c200'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73c45821-790d-521e-a0f6-4f8120b53afc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('92dbf811-3452-53be-9eca-08e6d71ee240', 1), '9cde55d7b4290f087342f7c53d9aea65df4fc3ca8a781311f5216c718766c200',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3', 5982, '2026-09-14 01:32:08.650525', '57bb45d7e601bcee5d3597270298a6e39a0f2b704003d3a9e3ac848ca0e59d3f', 'validated', '{"audio_key":"ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236","entity_key":"u_strategic_ambiguity_irony_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"57bb45d7e601bcee5d3597270298a6e39a0f2b704003d3a9e3ac848ca0e59d3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_strategic_ambiguity_irony_02_listen -> audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7e729984-f680-543e-8985-6a3e42dccb66', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_strategic_ambiguity_irony_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cde55d7b4290f087342f7c53d9aea65df4fc3ca8a781311f5216c718766c200'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad4d065e-f73b-544a-9fbc-216ed4d4af00', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7e729984-f680-543e-8985-6a3e42dccb66', 1), '9cde55d7b4290f087342f7c53d9aea65df4fc3ca8a781311f5216c718766c200',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3', 5982, '2026-09-14 01:32:08.650525', '57bb45d7e601bcee5d3597270298a6e39a0f2b704003d3a9e3ac848ca0e59d3f', 'validated', '{"audio_key":"ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236","entity_key":"e_strategic_ambiguity_irony_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"57bb45d7e601bcee5d3597270298a6e39a0f2b704003d3a9e3ac848ca0e59d3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ef0b59ecc95c236b6c5d4f84bf2a617bc960df98c589982f09c1faff4611a236.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_ambiguity_irony_03 -> audio/generated/ko-KR/utterances/f36cb74620da546a6ca98795938ad93523b0efc10c3caf1741e52eafec31ca5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3c0a941-5032-5320-8ded-0e537154ce95', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_ambiguity_irony_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24e6a36be09536e1f036faa67f3883684a8070811c03b94e4bda70fb826845c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b5f3c8b-716d-52cf-99c2-183c0197f636', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3c0a941-5032-5320-8ded-0e537154ce95', 1), '24e6a36be09536e1f036faa67f3883684a8070811c03b94e4bda70fb826845c9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f36cb74620da546a6ca98795938ad93523b0efc10c3caf1741e52eafec31ca5e.mp3', 4362, '2026-09-14 01:32:10.013206', '503757291c2e51320e24b33fc7eba998b102c64dc12e21d4a7a6bfebbf17eea0', 'validated', '{"audio_key":"f36cb74620da546a6ca98795938ad93523b0efc10c3caf1741e52eafec31ca5e","entity_key":"u_strategic_ambiguity_irony_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"503757291c2e51320e24b33fc7eba998b102c64dc12e21d4a7a6bfebbf17eea0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f36cb74620da546a6ca98795938ad93523b0efc10c3caf1741e52eafec31ca5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_accountability_03 -> audio/generated/ko-KR/utterances/f77520b050901e6433947cd635913607027eb1d238fb9629f61150eed1e58076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c14f50c-e823-5f89-b4ea-9598d60bb98a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f116c996190dded3f82e11596094ec505635a5c126fd33a1c889a661c3596fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1e65024-1700-55d7-a36c-9f12354a75e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c14f50c-e823-5f89-b4ea-9598d60bb98a', 1), '7f116c996190dded3f82e11596094ec505635a5c126fd33a1c889a661c3596fa',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f77520b050901e6433947cd635913607027eb1d238fb9629f61150eed1e58076.mp3', 5328, '2026-09-14 01:32:10.045772', '1d1f2d0171e92b38080a5df7a89f288465837f05f57c9b924fcf349502c69b50', 'validated', '{"audio_key":"f77520b050901e6433947cd635913607027eb1d238fb9629f61150eed1e58076","entity_key":"u_institutional_accountability_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d1f2d0171e92b38080a5df7a89f288465837f05f57c9b924fcf349502c69b50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f77520b050901e6433947cd635913607027eb1d238fb9629f61150eed1e58076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_orchestration_01 -> audio/generated/ko-KR/utterances/fba82d22050260251e4fd59dda0f11e62228627b99142e25f155be44a0172743.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea9dc072-ece1-555d-838a-4f05ab66a51c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_orchestration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f59a7218d9f8457603593bcba7bf0e7dd7f871298e94607e9daf669e7a0d7247'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('057cf05b-a859-524f-bf24-d7c3fb3a2dc8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea9dc072-ece1-555d-838a-4f05ab66a51c', 1), 'f59a7218d9f8457603593bcba7bf0e7dd7f871298e94607e9daf669e7a0d7247',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/fba82d22050260251e4fd59dda0f11e62228627b99142e25f155be44a0172743.mp3', 6530, '2026-09-14 01:32:11.597803', 'e1e0e913bc69b7601760d9c859f596911c00f7d2d0768dd9a07848b712cbebeb', 'validated', '{"audio_key":"fba82d22050260251e4fd59dda0f11e62228627b99142e25f155be44a0172743","entity_key":"u_register_orchestration_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1e0e913bc69b7601760d9c859f596911c00f7d2d0768dd9a07848b712cbebeb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/fba82d22050260251e4fd59dda0f11e62228627b99142e25f155be44a0172743.mp3"}'
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

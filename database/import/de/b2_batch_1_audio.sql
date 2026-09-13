-- Generated audio link import for de-DE B2
-- Source manifest: audio/manifests/de/B2-batch-1.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_meetings_decisions_02:4 -> audio/generated/de-DE/dialogues/009fbca713c77929dc968bb259e6e2a0cff8df44ca39ca4bc5ac8ad119712d36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e27587bf-8d08-5edf-a7aa-72cf8346db52', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b91ac47fbf3ba01c45e24cca6c8446be4964b8d9cc1067bdf4b0d891050b7059'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('744340e5-76a8-53e9-a61a-01ef3c3470f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e27587bf-8d08-5edf-a7aa-72cf8346db52', 1), 'b91ac47fbf3ba01c45e24cca6c8446be4964b8d9cc1067bdf4b0d891050b7059',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/009fbca713c77929dc968bb259e6e2a0cff8df44ca39ca4bc5ac8ad119712d36.mp3', 2742, '2026-09-13 07:51:47.337118', '487871a85384d5c52e70f260c8e5877157d16a3d65e8279633f4dd2f5fcb62a4', 'validated', '{"audio_key":"009fbca713c77929dc968bb259e6e2a0cff8df44ca39ca4bc5ac8ad119712d36","entity_key":"d_meetings_decisions_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"487871a85384d5c52e70f260c8e5877157d16a3d65e8279633f4dd2f5fcb62a4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/009fbca713c77929dc968bb259e6e2a0cff8df44ca39ca4bc5ac8ad119712d36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_01:2 -> audio/generated/de-DE/dialogues/00edb8bb8dcc1fd4a07e4065d1a28f5745ec0f97c25e4040a894a5aa0c023d18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3d4592d-2d3b-5b71-bf2c-cc1b0c0fd8f9', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1460afd1f27cc34ab31366287aaa7d30298134e82eda42662784c55477ad9d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c4f4aeb-587a-53f9-bf79-693e2b1b93ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3d4592d-2d3b-5b71-bf2c-cc1b0c0fd8f9', 1), 'c1460afd1f27cc34ab31366287aaa7d30298134e82eda42662784c55477ad9d0',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/00edb8bb8dcc1fd4a07e4065d1a28f5745ec0f97c25e4040a894a5aa0c023d18.mp3', 4362, '2026-09-13 07:51:47.546567', '6c0de625c45ae1d600514c49ab4310de47783dc5bb246fe5f9f2cd7e887ca378', 'validated', '{"audio_key":"00edb8bb8dcc1fd4a07e4065d1a28f5745ec0f97c25e4040a894a5aa0c023d18","entity_key":"d_social_issues_discussion_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6c0de625c45ae1d600514c49ab4310de47783dc5bb246fe5f9f2cd7e887ca378","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/00edb8bb8dcc1fd4a07e4065d1a28f5745ec0f97c25e4040a894a5aa0c023d18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_03:2 -> audio/generated/de-DE/dialogues/02bdc50cb89ac4dd842393fe69fa96717d249a7f97d3ff43f7ba549767cf300e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3aae4fc0-b831-556a-a2e1-735ded126f22', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5ef7eafddff5612968bc13ab3f5a572832eb6fa1eac64170059296e57f63957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee7b81e1-df19-5e70-a031-a9fc80b584a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3aae4fc0-b831-556a-a2e1-735ded126f22', 1), 'f5ef7eafddff5612968bc13ab3f5a572832eb6fa1eac64170059296e57f63957',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/02bdc50cb89ac4dd842393fe69fa96717d249a7f97d3ff43f7ba549767cf300e.mp3', 2768, '2026-09-13 07:51:48.679944', '3a0790a2e15b54a6497ea06dbe81ab1e7aade6f07153de09308988fa22d6c7be', 'validated', '{"audio_key":"02bdc50cb89ac4dd842393fe69fa96717d249a7f97d3ff43f7ba549767cf300e","entity_key":"d_media_claims_uncertainty_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3a0790a2e15b54a6497ea06dbe81ab1e7aade6f07153de09308988fa22d6c7be","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/02bdc50cb89ac4dd842393fe69fa96717d249a7f97d3ff43f7ba549767cf300e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_02:3 -> audio/generated/de-DE/dialogues/02e1fa1baa837483798079026a2200a9a1df5f30d5b62ddf96c8ffb63079ca40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46d8c9de-c0a8-54a9-9269-15cb221911de', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98b160568991c92d57f4b6eb03b0c75989120e5c94e563b29034cc21a3d4446e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edba9c40-f4e5-5e20-9856-70a54fd465a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46d8c9de-c0a8-54a9-9269-15cb221911de', 1), '98b160568991c92d57f4b6eb03b0c75989120e5c94e563b29034cc21a3d4446e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/02e1fa1baa837483798079026a2200a9a1df5f30d5b62ddf96c8ffb63079ca40.mp3', 4257, '2026-09-13 07:51:49.032458', '66b108e29df67d36d8e484d861175ae94a0415987d1d7ddaf6c6ecea79e02d53', 'validated', '{"audio_key":"02e1fa1baa837483798079026a2200a9a1df5f30d5b62ddf96c8ffb63079ca40","entity_key":"d_negotiation_compromise_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"66b108e29df67d36d8e484d861175ae94a0415987d1d7ddaf6c6ecea79e02d53","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/02e1fa1baa837483798079026a2200a9a1df5f30d5b62ddf96c8ffb63079ca40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_02:1 -> audio/generated/de-DE/dialogues/049537e60623dd23d91475f7d55a77f92df0aebb38878e1c3066e588eb93ebba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34a6d64b-670d-5e59-a5ed-b91541ef0bb5', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a015f485bd2fcc848e02f0d8da104bc7139d7f1fb8a3e84fc2c5766a3053bd06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfe1955d-b8dd-507b-ae8d-ccf86d184328', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34a6d64b-670d-5e59-a5ed-b91541ef0bb5', 1), 'a015f485bd2fcc848e02f0d8da104bc7139d7f1fb8a3e84fc2c5766a3053bd06',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/049537e60623dd23d91475f7d55a77f92df0aebb38878e1c3066e588eb93ebba.mp3', 5250, '2026-09-13 07:51:50.456103', '0a5c845005fe1dcf7a5046bd9e4a8d9fa58bba14b347c1b0faf1bd777c38074a', 'validated', '{"audio_key":"049537e60623dd23d91475f7d55a77f92df0aebb38878e1c3066e588eb93ebba","entity_key":"d_data_trends_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0a5c845005fe1dcf7a5046bd9e4a8d9fa58bba14b347c1b0faf1bd777c38074a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/049537e60623dd23d91475f7d55a77f92df0aebb38878e1c3066e588eb93ebba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_03:3 -> audio/generated/de-DE/dialogues/07208c93ece560bfd88b1b34b5f7ba6faceddd38af9b624b1511d87df82b3f2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f3096163-e45d-5b0f-ab46-3bbacb4b0ff3', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9dc3a47f6616ac70f8c699d34483faebe6e8efa3df8c58e17f10b19965e9781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0625410e-3dc9-593a-ba9b-e30a0b772583', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f3096163-e45d-5b0f-ab46-3bbacb4b0ff3', 1), 'f9dc3a47f6616ac70f8c699d34483faebe6e8efa3df8c58e17f10b19965e9781',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07208c93ece560bfd88b1b34b5f7ba6faceddd38af9b624b1511d87df82b3f2b.mp3', 3840, '2026-09-13 07:51:50.459038', '556dbd9689be551761bad79e621f70bd2ccda1f4229e7d879f70e61b0c3ddbd8', 'validated', '{"audio_key":"07208c93ece560bfd88b1b34b5f7ba6faceddd38af9b624b1511d87df82b3f2b","entity_key":"d_source_summary_comparison_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"556dbd9689be551761bad79e621f70bd2ccda1f4229e7d879f70e61b0c3ddbd8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/07208c93ece560bfd88b1b34b5f7ba6faceddd38af9b624b1511d87df82b3f2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_03:2 -> audio/generated/de-DE/dialogues/09ac6d39eb423c5e476d486c30d6a2e4fc638886e337b7dd9f1d13bed070f1ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d537acf-5466-5b6c-b633-180f5bf0a458', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bba72c1877a51e081684241d805fc14a4acf51ebfcd25028e7f159a9946735fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbb62055-49f2-59e5-995a-2ee18de09d5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d537acf-5466-5b6c-b633-180f5bf0a458', 1), 'bba72c1877a51e081684241d805fc14a4acf51ebfcd25028e7f159a9946735fb',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09ac6d39eb423c5e476d486c30d6a2e4fc638886e337b7dd9f1d13bed070f1ce.mp3', 3787, '2026-09-13 07:51:51.864245', 'e007cbf948b4a5c51a361cc3b078d702b94053a0cf27986f922a3b5005922c7c', 'validated', '{"audio_key":"09ac6d39eb423c5e476d486c30d6a2e4fc638886e337b7dd9f1d13bed070f1ce","entity_key":"d_argument_evidence_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e007cbf948b4a5c51a361cc3b078d702b94053a0cf27986f922a3b5005922c7c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/09ac6d39eb423c5e476d486c30d6a2e4fc638886e337b7dd9f1d13bed070f1ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_03:3 -> audio/generated/de-DE/dialogues/09ba92f2410883ef1dc760a80a1c712b5034b207f2b503fa9962776d52d3c44c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('386805d9-e963-5bcb-97c0-cde68efec76f', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '829088bd3f02c607b26e20c8fe8d6892d86e60b5672a0a22277fc73dbf55e288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbe47a8a-4004-5c72-aefa-720b8c9f7eb6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('386805d9-e963-5bcb-97c0-cde68efec76f', 1), '829088bd3f02c607b26e20c8fe8d6892d86e60b5672a0a22277fc73dbf55e288',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09ba92f2410883ef1dc760a80a1c712b5034b207f2b503fa9962776d52d3c44c.mp3', 2507, '2026-09-13 07:51:51.762549', '754178c8c8078b066d31b7faca5642741a900bf49c57431710113da6e728cb60', 'validated', '{"audio_key":"09ba92f2410883ef1dc760a80a1c712b5034b207f2b503fa9962776d52d3c44c","entity_key":"d_formal_messages_escalation_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"754178c8c8078b066d31b7faca5642741a900bf49c57431710113da6e728cb60","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/09ba92f2410883ef1dc760a80a1c712b5034b207f2b503fa9962776d52d3c44c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_02:4 -> audio/generated/de-DE/dialogues/0da9615bad75d604b848e0b4a8f67587f463f26893e1326999a4ac77116609af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf493934-7a1a-569c-b30f-0189cca435ab', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e764834804b0822345a7818708b7c6b81ee84f92e559f0df3c49f98c86078af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f886a210-ef5b-57a5-8ce5-0677d83d4653', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf493934-7a1a-569c-b30f-0189cca435ab', 1), '8e764834804b0822345a7818708b7c6b81ee84f92e559f0df3c49f98c86078af',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0da9615bad75d604b848e0b4a8f67587f463f26893e1326999a4ac77116609af.mp3', 2351, '2026-09-13 07:51:53.213309', 'b769650d96bac83a737e63c9da01020037ff16a30cce5a631166a59fbf30635f', 'validated', '{"audio_key":"0da9615bad75d604b848e0b4a8f67587f463f26893e1326999a4ac77116609af","entity_key":"d_source_summary_comparison_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b769650d96bac83a737e63c9da01020037ff16a30cce5a631166a59fbf30635f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0da9615bad75d604b848e0b4a8f67587f463f26893e1326999a4ac77116609af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_02:2 -> audio/generated/de-DE/dialogues/0e7b4bace48c79b38442f8b4f8abacd2bd372b11051f5db001f7a2d7be82a9e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d0bdf75-c404-5714-9b1b-bed221a21a77', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e56e2ea455bed8873eb58d8c517456bab798a562398b1931b2587c21c3ffe279'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('875a97f5-e7c9-5985-8a73-1ebf2fa5c316', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d0bdf75-c404-5714-9b1b-bed221a21a77', 1), 'e56e2ea455bed8873eb58d8c517456bab798a562398b1931b2587c21c3ffe279',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e7b4bace48c79b38442f8b4f8abacd2bd372b11051f5db001f7a2d7be82a9e6.mp3', 6452, '2026-09-13 07:51:53.699119', '1d2f9beec5610999007ed600b9c60fdf6f69ebce688b2c5456efad4c5eee5906', 'validated', '{"audio_key":"0e7b4bace48c79b38442f8b4f8abacd2bd372b11051f5db001f7a2d7be82a9e6","entity_key":"d_meetings_decisions_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1d2f9beec5610999007ed600b9c60fdf6f69ebce688b2c5456efad4c5eee5906","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0e7b4bace48c79b38442f8b4f8abacd2bd372b11051f5db001f7a2d7be82a9e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_03:2 -> audio/generated/de-DE/dialogues/0eaa8b8e8ab2754f88e2f0e208a7341a6325ffd01c9277e6d702c1abd5300dde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ac74381-a379-57fc-beec-f60cbae34c8b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cee41d6c4094046940eb93b23adcadb04919b16a49a38e097335f3d604a254fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d17fc3bb-1dbb-52bc-b291-da2b6d340b7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ac74381-a379-57fc-beec-f60cbae34c8b', 1), 'cee41d6c4094046940eb93b23adcadb04919b16a49a38e097335f3d604a254fb',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0eaa8b8e8ab2754f88e2f0e208a7341a6325ffd01c9277e6d702c1abd5300dde.mp3', 1619, '2026-09-13 07:51:54.372710', '054ef4a2343101460db525da80dae77908b12d20818540abf8dcb23c0091cf52', 'validated', '{"audio_key":"0eaa8b8e8ab2754f88e2f0e208a7341a6325ffd01c9277e6d702c1abd5300dde","entity_key":"d_meetings_decisions_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"054ef4a2343101460db525da80dae77908b12d20818540abf8dcb23c0091cf52","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0eaa8b8e8ab2754f88e2f0e208a7341a6325ffd01c9277e6d702c1abd5300dde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_03:3 -> audio/generated/de-DE/dialogues/145bb38527475c78a5d295b99632497e0f6380dcc82a45025099195cb10017aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92d0a26f-d80f-5c03-8275-555cca243791', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbd014b51a473a398c39178d466a1ffc69ef8e1e15c13df3810a9b00722c8190'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43883159-b5cb-5fce-b3a8-e900ac61a759', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92d0a26f-d80f-5c03-8275-555cca243791', 1), 'dbd014b51a473a398c39178d466a1ffc69ef8e1e15c13df3810a9b00722c8190',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/145bb38527475c78a5d295b99632497e0f6380dcc82a45025099195cb10017aa.mp3', 3840, '2026-09-13 07:51:55.133381', '8f58b5ead37fd809b008ca86a92a34f7fdb825ff18f140a96c160583d5d2d7c0', 'validated', '{"audio_key":"145bb38527475c78a5d295b99632497e0f6380dcc82a45025099195cb10017aa","entity_key":"d_social_issues_discussion_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8f58b5ead37fd809b008ca86a92a34f7fdb825ff18f140a96c160583d5d2d7c0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/145bb38527475c78a5d295b99632497e0f6380dcc82a45025099195cb10017aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_02:2 -> audio/generated/de-DE/dialogues/14781f6523b0adabc5c8c8f7fcd696b6554676958dd9b6d211443b112844e63e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adf64fe3-7b17-5e98-a988-f879d48ae5b0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c2ee9766852c41e6532b1cd964b46cd5e252356cc90edc2aa43f0e1c7fd2fbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0960c977-3dec-563f-9dfb-ed27121a08c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adf64fe3-7b17-5e98-a988-f879d48ae5b0', 1), '0c2ee9766852c41e6532b1cd964b46cd5e252356cc90edc2aa43f0e1c7fd2fbb',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/14781f6523b0adabc5c8c8f7fcd696b6554676958dd9b6d211443b112844e63e.mp3', 4675, '2026-09-13 07:51:55.867331', 'e558cad6f5d5c2785825167cdd1beb0a0b228425f82242437db1a59472534bb3', 'validated', '{"audio_key":"14781f6523b0adabc5c8c8f7fcd696b6554676958dd9b6d211443b112844e63e","entity_key":"d_media_claims_uncertainty_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e558cad6f5d5c2785825167cdd1beb0a0b228425f82242437db1a59472534bb3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/14781f6523b0adabc5c8c8f7fcd696b6554676958dd9b6d211443b112844e63e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_02:4 -> audio/generated/de-DE/dialogues/159d2686e0f78ab3b3ed989ec04a49f7006051c09f90dc24c657150bcbd2bf03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef27b84a-a65b-5873-8eac-1603f54f77b7', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32d78c05f1d36d763d9b369eb06c494472917ef0b074e93fdf4efb166c7ebe46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caa5cc08-171c-5120-a48f-d4ae0f9c0bf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef27b84a-a65b-5873-8eac-1603f54f77b7', 1), '32d78c05f1d36d763d9b369eb06c494472917ef0b074e93fdf4efb166c7ebe46',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/159d2686e0f78ab3b3ed989ec04a49f7006051c09f90dc24c657150bcbd2bf03.mp3', 2821, '2026-09-13 07:51:56.423972', '8ecc1979d23ead228c6aab6b54166082f37593e119224c04ba0d586cfb0200cb', 'validated', '{"audio_key":"159d2686e0f78ab3b3ed989ec04a49f7006051c09f90dc24c657150bcbd2bf03","entity_key":"d_presentations_questions_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8ecc1979d23ead228c6aab6b54166082f37593e119224c04ba0d586cfb0200cb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/159d2686e0f78ab3b3ed989ec04a49f7006051c09f90dc24c657150bcbd2bf03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_01:2 -> audio/generated/de-DE/dialogues/16c3da3836e04fb81ed218f2bc6c51aa775df967e6cba6ac0f4e658759ac6f2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d3410ec-d66d-54b1-9071-7a13b8c63a00', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70b4cfa810f8d777ae5cd47a3763e86e2d3cdee470e238db01df2611586d1dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad419a32-b661-5c32-a5db-c8e2ff429c25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d3410ec-d66d-54b1-9071-7a13b8c63a00', 1), '70b4cfa810f8d777ae5cd47a3763e86e2d3cdee470e238db01df2611586d1dd1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/16c3da3836e04fb81ed218f2bc6c51aa775df967e6cba6ac0f4e658759ac6f2f.mp3', 4310, '2026-09-13 07:51:57.294243', 'fefef5f7d1c96688aa46eaa3c109c538a5cd8a5a6b96a984169cefddf8258513', 'validated', '{"audio_key":"16c3da3836e04fb81ed218f2bc6c51aa775df967e6cba6ac0f4e658759ac6f2f","entity_key":"d_argument_evidence_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fefef5f7d1c96688aa46eaa3c109c538a5cd8a5a6b96a984169cefddf8258513","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/16c3da3836e04fb81ed218f2bc6c51aa775df967e6cba6ac0f4e658759ac6f2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_02:3 -> audio/generated/de-DE/dialogues/1a83a0faf6d3bbce3c635ddca8a141c00ec6e7f64e90a895689e871e9e332314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93c01fd8-455d-51e9-91d5-165ded803975', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd00e0792a2a2ab3b4853cccf462607cbe3b12a6b9a542536f55c89fd42dc6a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29166fa2-bb60-58fd-ba85-aadaba68ee72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93c01fd8-455d-51e9-91d5-165ded803975', 1), 'fd00e0792a2a2ab3b4853cccf462607cbe3b12a6b9a542536f55c89fd42dc6a4',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a83a0faf6d3bbce3c635ddca8a141c00ec6e7f64e90a895689e871e9e332314.mp3', 4022, '2026-09-13 07:51:57.832664', 'd681ea16a2a644310e4b2eb990143393f25c8b3ffdf9c080e768aa87e1c584f6', 'validated', '{"audio_key":"1a83a0faf6d3bbce3c635ddca8a141c00ec6e7f64e90a895689e871e9e332314","entity_key":"d_data_trends_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d681ea16a2a644310e4b2eb990143393f25c8b3ffdf9c080e768aa87e1c584f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1a83a0faf6d3bbce3c635ddca8a141c00ec6e7f64e90a895689e871e9e332314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_01:2 -> audio/generated/de-DE/dialogues/1c28de7e1361d22d86e4dd833fc6adf872f1698649943ce57f08218384ebc2e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be1c6cb0-8096-5e65-a321-1e7b78ac728a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12962fbc123392712368ae439f5a10ec2c5055b595c20d5a5705d211f15261b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95ec1bba-9fd3-575b-aa29-b5e8148f4b42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be1c6cb0-8096-5e65-a321-1e7b78ac728a', 1), '12962fbc123392712368ae439f5a10ec2c5055b595c20d5a5705d211f15261b5',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c28de7e1361d22d86e4dd833fc6adf872f1698649943ce57f08218384ebc2e4.mp3', 2455, '2026-09-13 07:51:58.473546', '106210b8732ca70861e7531e9fcd3d96a45f42fa1d1b7a11f30abae3de0a5378', 'validated', '{"audio_key":"1c28de7e1361d22d86e4dd833fc6adf872f1698649943ce57f08218384ebc2e4","entity_key":"d_negotiation_compromise_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"106210b8732ca70861e7531e9fcd3d96a45f42fa1d1b7a11f30abae3de0a5378","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1c28de7e1361d22d86e4dd833fc6adf872f1698649943ce57f08218384ebc2e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_03:1 -> audio/generated/de-DE/dialogues/222bb0984a5c111e2417eff70285d081c44b6675ac030da439489571237142f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0f0048f-5e98-5a40-8b36-70e108528de4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bacfe314c6859ed48d7b0f46b957a77c0b2e54b3fff7062f5cfdafeee170666f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f573e24-1da9-55fa-a6a3-94ac9b491519', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0f0048f-5e98-5a40-8b36-70e108528de4', 1), 'bacfe314c6859ed48d7b0f46b957a77c0b2e54b3fff7062f5cfdafeee170666f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/222bb0984a5c111e2417eff70285d081c44b6675ac030da439489571237142f7.mp3', 3343, '2026-09-13 07:51:59.154722', '5d2f5469d942a899ff70304c717727dd549c9e5182abbabc085b5c5acc287c1a', 'validated', '{"audio_key":"222bb0984a5c111e2417eff70285d081c44b6675ac030da439489571237142f7","entity_key":"d_source_summary_comparison_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5d2f5469d942a899ff70304c717727dd549c9e5182abbabc085b5c5acc287c1a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/222bb0984a5c111e2417eff70285d081c44b6675ac030da439489571237142f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_01:4 -> audio/generated/de-DE/dialogues/2c645c0ac06fcf5a99ee325016d7ac7e852578a4a2bdf424a07c86aa0ac416d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba267052-895f-5622-96da-62d656b5acaa', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6571f3a16445f43aa6f8efc30726595968a012585a5d7e68732489595aba77b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d56e13cf-ab24-5177-98ba-1d37c0e616be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba267052-895f-5622-96da-62d656b5acaa', 1), '6571f3a16445f43aa6f8efc30726595968a012585a5d7e68732489595aba77b2',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c645c0ac06fcf5a99ee325016d7ac7e852578a4a2bdf424a07c86aa0ac416d9.mp3', 3343, '2026-09-13 07:51:59.862164', '315783b61a062b8bf3092e93fe1306f06a0d6749682c9bb893ef3162268412f2', 'validated', '{"audio_key":"2c645c0ac06fcf5a99ee325016d7ac7e852578a4a2bdf424a07c86aa0ac416d9","entity_key":"d_data_trends_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"315783b61a062b8bf3092e93fe1306f06a0d6749682c9bb893ef3162268412f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c645c0ac06fcf5a99ee325016d7ac7e852578a4a2bdf424a07c86aa0ac416d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_01:2 -> audio/generated/de-DE/dialogues/2fc9338dcea017b23d3119a588b66e9cd9a2d4e2c74a3f1dbf045bf1b6f1d827.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4744933-6979-56c1-912f-3dbdbf8feb62', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e05f4172bd9c0efd6db002b3566e4b5738a9d0b255fdb35ee179104af337e7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dc2d554-fb61-5681-a2ea-454f617174a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4744933-6979-56c1-912f-3dbdbf8feb62', 1), '9e05f4172bd9c0efd6db002b3566e4b5738a9d0b255fdb35ee179104af337e7b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2fc9338dcea017b23d3119a588b66e9cd9a2d4e2c74a3f1dbf045bf1b6f1d827.mp3', 4597, '2026-09-13 07:52:00.776665', '98a1d40aa7aea72f30d2155814bca583efad9e064f395b2b8aacc47f2d21e51c', 'validated', '{"audio_key":"2fc9338dcea017b23d3119a588b66e9cd9a2d4e2c74a3f1dbf045bf1b6f1d827","entity_key":"d_media_claims_uncertainty_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"98a1d40aa7aea72f30d2155814bca583efad9e064f395b2b8aacc47f2d21e51c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2fc9338dcea017b23d3119a588b66e9cd9a2d4e2c74a3f1dbf045bf1b6f1d827.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_02:2 -> audio/generated/de-DE/dialogues/31466cfb2decdf329b666a221494882dd499db04da65c65cae4e2b167c5d2cd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0eb99960-b53b-5e55-9a48-93f6e9478a40', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c6f1ad1f5f5e2ae6d9e21b6b71fb78589260e2c75fa56050beaa61deb82d9d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f7320d8-3805-57e2-8800-f4d16b52d9fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0eb99960-b53b-5e55-9a48-93f6e9478a40', 1), '9c6f1ad1f5f5e2ae6d9e21b6b71fb78589260e2c75fa56050beaa61deb82d9d5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31466cfb2decdf329b666a221494882dd499db04da65c65cae4e2b167c5d2cd5.mp3', 2507, '2026-09-13 07:52:01.102870', 'eb73de510d8258fbebde9a3550e1aa953d13391951c4ac573d384c295388abd5', 'validated', '{"audio_key":"31466cfb2decdf329b666a221494882dd499db04da65c65cae4e2b167c5d2cd5","entity_key":"d_data_trends_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"eb73de510d8258fbebde9a3550e1aa953d13391951c4ac573d384c295388abd5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/31466cfb2decdf329b666a221494882dd499db04da65c65cae4e2b167c5d2cd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_02:4 -> audio/generated/de-DE/dialogues/32cf5a0cdb74a8dd5fd406bd40c6b924de40c248bd569744bc70fb41f106ba8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d78b917-a9a8-5b45-8b27-b591a8c87f5e', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93295d805a9fe71476539fe1772973b646d2d39120f834d6e2c65099ea85b0a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('389f6572-bf31-55ba-bad9-be86ffffceed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d78b917-a9a8-5b45-8b27-b591a8c87f5e', 1), '93295d805a9fe71476539fe1772973b646d2d39120f834d6e2c65099ea85b0a5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/32cf5a0cdb74a8dd5fd406bd40c6b924de40c248bd569744bc70fb41f106ba8b.mp3', 3840, '2026-09-13 07:52:02.122322', 'c6179f478c3113abf0a67cf8f71f417035571e4d66bd380f8399809497a479a6', 'validated', '{"audio_key":"32cf5a0cdb74a8dd5fd406bd40c6b924de40c248bd569744bc70fb41f106ba8b","entity_key":"d_data_trends_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"c6179f478c3113abf0a67cf8f71f417035571e4d66bd380f8399809497a479a6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/32cf5a0cdb74a8dd5fd406bd40c6b924de40c248bd569744bc70fb41f106ba8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_02:4 -> audio/generated/de-DE/dialogues/36230866d3bfedb5f82ec3a92fab5790c14ebf323265d751d65a3058cba76821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('387b6276-54d3-5596-a652-acf42a281cee', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb964018965424ab8e6519f7605fc92a5424a26b045e7fc83620347d32b94194'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b46d9c8-b7af-5e1b-967e-524eb6449094', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('387b6276-54d3-5596-a652-acf42a281cee', 1), 'fb964018965424ab8e6519f7605fc92a5424a26b045e7fc83620347d32b94194',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36230866d3bfedb5f82ec3a92fab5790c14ebf323265d751d65a3058cba76821.mp3', 5015, '2026-09-13 07:52:02.688121', 'f3b97c1dadaea5fd824eef3503589cd62ec3842cce0bc9529fa9cabfc5560920', 'validated', '{"audio_key":"36230866d3bfedb5f82ec3a92fab5790c14ebf323265d751d65a3058cba76821","entity_key":"d_argument_evidence_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f3b97c1dadaea5fd824eef3503589cd62ec3842cce0bc9529fa9cabfc5560920","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/36230866d3bfedb5f82ec3a92fab5790c14ebf323265d751d65a3058cba76821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_03:1 -> audio/generated/de-DE/dialogues/36832729aede8fabe4a65422e8461119841b2d849bbe7f45aef0fb3c444ecc16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2c0c38c-ee6d-5238-985d-74c2a3a57d50', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f96a6d7b51f4ac1b4c38842002aac7fc146c18c4102bbcd61b494be86f0004f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae9f36ba-77ef-5403-bb08-d58cb3bd4c43', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2c0c38c-ee6d-5238-985d-74c2a3a57d50', 1), 'f96a6d7b51f4ac1b4c38842002aac7fc146c18c4102bbcd61b494be86f0004f6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36832729aede8fabe4a65422e8461119841b2d849bbe7f45aef0fb3c444ecc16.mp3', 3108, '2026-09-13 07:52:03.496834', 'f7b3a9435a90c7b9231e1bc1f5e63df865b23a5c435c717544497a742bf60c4b', 'validated', '{"audio_key":"36832729aede8fabe4a65422e8461119841b2d849bbe7f45aef0fb3c444ecc16","entity_key":"d_formal_messages_escalation_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f7b3a9435a90c7b9231e1bc1f5e63df865b23a5c435c717544497a742bf60c4b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/36832729aede8fabe4a65422e8461119841b2d849bbe7f45aef0fb3c444ecc16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_02:4 -> audio/generated/de-DE/dialogues/36f47d9d288e021529c40d581f5027fe3f0a21f67f817f434b479336959b9cac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7ea0fc1-beac-5a84-9ec8-68a90842f6f6', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507bb6dac3333c9b46cc29adecfe5119415ba925876fc00b9babbe0c797f052a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a45a8fc-7ee8-513b-b8e4-66e771dc00bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7ea0fc1-beac-5a84-9ec8-68a90842f6f6', 1), '507bb6dac3333c9b46cc29adecfe5119415ba925876fc00b9babbe0c797f052a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36f47d9d288e021529c40d581f5027fe3f0a21f67f817f434b479336959b9cac.mp3', 4440, '2026-09-13 07:52:04.151166', '83915a90ce28c4f119c6dfe99ce5f3a99bc47eb3bfc275288199ed3e5119d910', 'validated', '{"audio_key":"36f47d9d288e021529c40d581f5027fe3f0a21f67f817f434b479336959b9cac","entity_key":"d_social_issues_discussion_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"83915a90ce28c4f119c6dfe99ce5f3a99bc47eb3bfc275288199ed3e5119d910","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/36f47d9d288e021529c40d581f5027fe3f0a21f67f817f434b479336959b9cac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_03:2 -> audio/generated/de-DE/dialogues/3ae3ce05c72f8152125a46e59deb80fbc0156272c6696b7431e411036b0e5d14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('efc01085-c7d4-5a5f-9a0e-62a3077f7769', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25dd7c7ec8a5782838888c0f6ce65c06bccbe3d68a44042d017c45d72757aeb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c86871de-061a-598e-a39a-a0e875100834', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('efc01085-c7d4-5a5f-9a0e-62a3077f7769', 1), '25dd7c7ec8a5782838888c0f6ce65c06bccbe3d68a44042d017c45d72757aeb7',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ae3ce05c72f8152125a46e59deb80fbc0156272c6696b7431e411036b0e5d14.mp3', 4858, '2026-09-13 07:52:05.248692', 'fae401f4818373102927081d9017a4120a7ff2dc40096edea6a427cdab418ff0', 'validated', '{"audio_key":"3ae3ce05c72f8152125a46e59deb80fbc0156272c6696b7431e411036b0e5d14","entity_key":"d_nuanced_agreement_disagreement_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fae401f4818373102927081d9017a4120a7ff2dc40096edea6a427cdab418ff0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3ae3ce05c72f8152125a46e59deb80fbc0156272c6696b7431e411036b0e5d14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_01:4 -> audio/generated/de-DE/dialogues/3e6fc5f8bf192952dac64e00e738b35b23ca714b22f8caf2afd108e1bb4fbd94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6abdd2b-0357-5629-93ca-bb9b16c80627', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c3014dce85ee382aa9a7ee17d19f8dd3cb6dcd38e4571e9b6e471f196202d01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f114d31b-1b78-5509-bf0e-f22ecc8a2ed5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6abdd2b-0357-5629-93ca-bb9b16c80627', 1), '9c3014dce85ee382aa9a7ee17d19f8dd3cb6dcd38e4571e9b6e471f196202d01',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e6fc5f8bf192952dac64e00e738b35b23ca714b22f8caf2afd108e1bb4fbd94.mp3', 3160, '2026-09-13 07:52:05.527076', '1740a66cdde243d4d60ebd16a12e041c2f9a9ed7a7042ca493a56564c62de0e1', 'validated', '{"audio_key":"3e6fc5f8bf192952dac64e00e738b35b23ca714b22f8caf2afd108e1bb4fbd94","entity_key":"d_media_claims_uncertainty_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1740a66cdde243d4d60ebd16a12e041c2f9a9ed7a7042ca493a56564c62de0e1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3e6fc5f8bf192952dac64e00e738b35b23ca714b22f8caf2afd108e1bb4fbd94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_01:4 -> audio/generated/de-DE/dialogues/4042a8b80fb3d4f6dfc14233ae24ff39a82d62eecf309d28610512572f0784c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef2d602d-b4bb-5be0-801f-d815588d80b0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dea03d97574dae0e960125bf659a825ed096e1445ecded2d4c13fb51e70c617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a71a109-e054-5eec-95c7-a5a1d3c34a15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef2d602d-b4bb-5be0-801f-d815588d80b0', 1), '0dea03d97574dae0e960125bf659a825ed096e1445ecded2d4c13fb51e70c617',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4042a8b80fb3d4f6dfc14233ae24ff39a82d62eecf309d28610512572f0784c0.mp3', 3787, '2026-09-13 07:52:06.640241', 'c0e2291032a97f25eb718fdd63d5b22b47d40bc10ed9e2efcb99c728c73712ab', 'validated', '{"audio_key":"4042a8b80fb3d4f6dfc14233ae24ff39a82d62eecf309d28610512572f0784c0","entity_key":"d_presentations_questions_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c0e2291032a97f25eb718fdd63d5b22b47d40bc10ed9e2efcb99c728c73712ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4042a8b80fb3d4f6dfc14233ae24ff39a82d62eecf309d28610512572f0784c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_01:4 -> audio/generated/de-DE/dialogues/44c714b51dd7d6ae734053e32d7b6b0d591f719b199732f7a1c59132a6aa28c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92c92887-7d6a-5e04-a328-84987ff39a24', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '516ea497711ef479ba0dc3361e050a5203b384cc68fa4c3d7e1962874b6f6f7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14a91c9f-eb55-5509-8fcb-689bab4d9bd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92c92887-7d6a-5e04-a328-84987ff39a24', 1), '516ea497711ef479ba0dc3361e050a5203b384cc68fa4c3d7e1962874b6f6f7b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/44c714b51dd7d6ae734053e32d7b6b0d591f719b199732f7a1c59132a6aa28c4.mp3', 4205, '2026-09-13 07:52:06.932093', '6e27bc47e71224e7ca9bd401e7423f738444888cda8705860435e85d134d613f', 'validated', '{"audio_key":"44c714b51dd7d6ae734053e32d7b6b0d591f719b199732f7a1c59132a6aa28c4","entity_key":"d_social_issues_discussion_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6e27bc47e71224e7ca9bd401e7423f738444888cda8705860435e85d134d613f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/44c714b51dd7d6ae734053e32d7b6b0d591f719b199732f7a1c59132a6aa28c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_01:2 -> audio/generated/de-DE/dialogues/45a86250d004028694a297f2ccf668886ce361964cf2685179f061f4ee777eb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c99965b3-fffe-59d0-b5c4-f557c75d55a7', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e928967814d062bd9eab41806223c65f180144c5495a8e8b614c575fe6ef540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47d662d7-275b-5989-9291-5e971e12cc03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c99965b3-fffe-59d0-b5c4-f557c75d55a7', 1), '8e928967814d062bd9eab41806223c65f180144c5495a8e8b614c575fe6ef540',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/45a86250d004028694a297f2ccf668886ce361964cf2685179f061f4ee777eb2.mp3', 3474, '2026-09-13 07:52:08.020501', '59f612f59cbbb0247a84e27b1af8177c40cbf9cbd83deb52ae7fc98900fdd295', 'validated', '{"audio_key":"45a86250d004028694a297f2ccf668886ce361964cf2685179f061f4ee777eb2","entity_key":"d_meetings_decisions_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"59f612f59cbbb0247a84e27b1af8177c40cbf9cbd83deb52ae7fc98900fdd295","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/45a86250d004028694a297f2ccf668886ce361964cf2685179f061f4ee777eb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_03:2 -> audio/generated/de-DE/dialogues/4728ee294ab4e46b695bec1cb3cce98b22cb3fc11bf0d2ff02a29261c46c733f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c0425df-ec22-573e-9db0-751bcc9b1c29', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaeb00fd04200c048736116f67a2f2269753fc03b13a9781c844db6ef0856b44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('568b2e62-f4c1-5171-9959-d8be5edcd039', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c0425df-ec22-573e-9db0-751bcc9b1c29', 1), 'eaeb00fd04200c048736116f67a2f2269753fc03b13a9781c844db6ef0856b44',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4728ee294ab4e46b695bec1cb3cce98b22cb3fc11bf0d2ff02a29261c46c733f.mp3', 4675, '2026-09-13 07:52:08.478441', 'd9022ab3f7e2ebfe4f2f2f2d495c38bdb5340797abf4e98532262005a2d77167', 'validated', '{"audio_key":"4728ee294ab4e46b695bec1cb3cce98b22cb3fc11bf0d2ff02a29261c46c733f","entity_key":"d_formal_messages_escalation_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d9022ab3f7e2ebfe4f2f2f2d495c38bdb5340797abf4e98532262005a2d77167","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4728ee294ab4e46b695bec1cb3cce98b22cb3fc11bf0d2ff02a29261c46c733f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_03:4 -> audio/generated/de-DE/dialogues/48b433920b1549224871a7422ebdcf084b168025ab6c4858adfef8d551417b3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cce486f-b70d-5c6c-970b-944cb8810cc3', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0e848d3c77c1e679a7d4ca2fcd882264c9ff5986b4bdf414b904d4d252d7a72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8e8541b-2608-59b6-91f6-70d04591fec2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cce486f-b70d-5c6c-970b-944cb8810cc3', 1), 'c0e848d3c77c1e679a7d4ca2fcd882264c9ff5986b4bdf414b904d4d252d7a72',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/48b433920b1549224871a7422ebdcf084b168025ab6c4858adfef8d551417b3c.mp3', 3996, '2026-09-13 07:52:09.435081', '5976747e292273e08631f38ae2bdf292335648eede9a438365c2f47f4b00ce6b', 'validated', '{"audio_key":"48b433920b1549224871a7422ebdcf084b168025ab6c4858adfef8d551417b3c","entity_key":"d_source_summary_comparison_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5976747e292273e08631f38ae2bdf292335648eede9a438365c2f47f4b00ce6b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/48b433920b1549224871a7422ebdcf084b168025ab6c4858adfef8d551417b3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_01:1 -> audio/generated/de-DE/dialogues/4a89232c01279f9ea25be61164e8edd3f085abe7cc1c7b2cce9502276d25a8ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e943c3d0-9880-5173-9e19-0aebab15e023', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c468edcccf9c79ebdd54251ddef7cda5237b6c2ea68a7fcbba59a03ec2f28233'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5c9a870-1f25-536a-8253-019337165083', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e943c3d0-9880-5173-9e19-0aebab15e023', 1), 'c468edcccf9c79ebdd54251ddef7cda5237b6c2ea68a7fcbba59a03ec2f28233',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a89232c01279f9ea25be61164e8edd3f085abe7cc1c7b2cce9502276d25a8ba.mp3', 2821, '2026-09-13 07:52:09.802181', '5f0607020f1265aa421ecf12efbd12c4608bb2f0ca0e75397b7b6af9ff6c0652', 'validated', '{"audio_key":"4a89232c01279f9ea25be61164e8edd3f085abe7cc1c7b2cce9502276d25a8ba","entity_key":"d_negotiation_compromise_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5f0607020f1265aa421ecf12efbd12c4608bb2f0ca0e75397b7b6af9ff6c0652","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4a89232c01279f9ea25be61164e8edd3f085abe7cc1c7b2cce9502276d25a8ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_03:2 -> audio/generated/de-DE/dialogues/4b7457c8f419c44b847189383e0e253d1996d3024cbf160d92a2fdc60afe1d31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35971ccd-b8ee-58bc-99c4-e3176129993e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '686d94135776fa65fae3e1ca9a4dabd2cc9234daf8f6f594f7ae854389b72aed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('676c47b1-9b20-53c5-96b0-25ad4fb67c28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35971ccd-b8ee-58bc-99c4-e3176129993e', 1), '686d94135776fa65fae3e1ca9a4dabd2cc9234daf8f6f594f7ae854389b72aed',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b7457c8f419c44b847189383e0e253d1996d3024cbf160d92a2fdc60afe1d31.mp3', 3892, '2026-09-13 07:52:10.831139', 'ccecd656493362a3839e7eea76daa97504375497cc9d063aa719624659c2a7e5', 'validated', '{"audio_key":"4b7457c8f419c44b847189383e0e253d1996d3024cbf160d92a2fdc60afe1d31","entity_key":"d_negotiation_compromise_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ccecd656493362a3839e7eea76daa97504375497cc9d063aa719624659c2a7e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4b7457c8f419c44b847189383e0e253d1996d3024cbf160d92a2fdc60afe1d31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_03:3 -> audio/generated/de-DE/dialogues/4ed1aa01f364b2abf088d4ab00a5fd2df177cbac14ad2dc48b0e203515244976.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e357f10-d83f-5550-8fb8-fca9688a6b0a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '998dd78479a7db990bb4d4b5cc51e26ecd235f27c20fb7ca452f0c676366437e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b11063db-ab73-5cc6-9cc1-37dcd74422a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e357f10-d83f-5550-8fb8-fca9688a6b0a', 1), '998dd78479a7db990bb4d4b5cc51e26ecd235f27c20fb7ca452f0c676366437e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ed1aa01f364b2abf088d4ab00a5fd2df177cbac14ad2dc48b0e203515244976.mp3', 3239, '2026-09-13 07:52:11.127888', '3a55caad27b60d9cf9ba5ac3068bbec97fecf08848eb61a3d68f9f35a0cc3f7f', 'validated', '{"audio_key":"4ed1aa01f364b2abf088d4ab00a5fd2df177cbac14ad2dc48b0e203515244976","entity_key":"d_argument_evidence_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3a55caad27b60d9cf9ba5ac3068bbec97fecf08848eb61a3d68f9f35a0cc3f7f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4ed1aa01f364b2abf088d4ab00a5fd2df177cbac14ad2dc48b0e203515244976.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_03:1 -> audio/generated/de-DE/dialogues/505d1e1f62c9143203d9ca444d8fa088060ac8847ecd69523cbd80182594f8bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8edd4a03-c698-51ac-ae56-3a13e8ff3b13', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'caaebffb1d2cb0f63fea35e13ddc34548f0163ccb46a16320c6227a4c9bc7fc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a647d5e6-3789-58ab-a1f7-030869338197', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8edd4a03-c698-51ac-ae56-3a13e8ff3b13', 1), 'caaebffb1d2cb0f63fea35e13ddc34548f0163ccb46a16320c6227a4c9bc7fc8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/505d1e1f62c9143203d9ca444d8fa088060ac8847ecd69523cbd80182594f8bb.mp3', 3422, '2026-09-13 07:52:12.145709', '61b2cb1b78bf138f9791a5316b3ce0d15291663db5ebd2915075ec429d048793', 'validated', '{"audio_key":"505d1e1f62c9143203d9ca444d8fa088060ac8847ecd69523cbd80182594f8bb","entity_key":"d_social_issues_discussion_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"61b2cb1b78bf138f9791a5316b3ce0d15291663db5ebd2915075ec429d048793","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/505d1e1f62c9143203d9ca444d8fa088060ac8847ecd69523cbd80182594f8bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_03:2 -> audio/generated/de-DE/dialogues/50c15808756b9d09316b32b5391b6c5d66255c4a1f68ec1de78bb6f900f44cd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b36a3d65-04e6-5c7f-888a-d94ab24bc7aa', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c0cc498d701dfa495a8ac5d5c79fce6ff0cd4bfa5cd4cc1c3dc2de560ee7158'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d0b4458-a46a-5046-9f33-b714dac38043', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b36a3d65-04e6-5c7f-888a-d94ab24bc7aa', 1), '2c0cc498d701dfa495a8ac5d5c79fce6ff0cd4bfa5cd4cc1c3dc2de560ee7158',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50c15808756b9d09316b32b5391b6c5d66255c4a1f68ec1de78bb6f900f44cd6.mp3', 3892, '2026-09-13 07:52:12.509655', '22798432ebc6c788038ddeb41f67488b8d628f5eb6a38e350042fc5910e04d68', 'validated', '{"audio_key":"50c15808756b9d09316b32b5391b6c5d66255c4a1f68ec1de78bb6f900f44cd6","entity_key":"d_presentations_questions_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"22798432ebc6c788038ddeb41f67488b8d628f5eb6a38e350042fc5910e04d68","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/50c15808756b9d09316b32b5391b6c5d66255c4a1f68ec1de78bb6f900f44cd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_02:1 -> audio/generated/de-DE/dialogues/54319e3439ce531934aa5c929bf1961641a2bcfba362841027c3a1dded156cb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3494bab2-3d32-5c12-972b-623b2639027e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a520f57625f4a89b0833e93791bf5344f81f36986b475d4439d0a2ffcc535f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6156780e-4187-53e8-8341-a440137f9916', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3494bab2-3d32-5c12-972b-623b2639027e', 1), '3a520f57625f4a89b0833e93791bf5344f81f36986b475d4439d0a2ffcc535f8',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/54319e3439ce531934aa5c929bf1961641a2bcfba362841027c3a1dded156cb6.mp3', 2272, '2026-09-13 07:52:13.337618', '584afebafb554912e080f7ebdf771d2acccbd79966a0285893daa6c0fab1fd07', 'validated', '{"audio_key":"54319e3439ce531934aa5c929bf1961641a2bcfba362841027c3a1dded156cb6","entity_key":"d_social_issues_discussion_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"584afebafb554912e080f7ebdf771d2acccbd79966a0285893daa6c0fab1fd07","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/54319e3439ce531934aa5c929bf1961641a2bcfba362841027c3a1dded156cb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_01:3 -> audio/generated/de-DE/dialogues/55a3dc912ec84152d5de7bd7c075a06c7ea02d1977de464350d34ecda914e9d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ae3447b7-6f7c-5948-8296-4b8890e0aaf2', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '564e66a76b0d3c4236bc727c0d89a3ea272c2cfc211a80b4613b360498f0a44d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16aa6c21-43e9-5d24-b21a-a7038dee65d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ae3447b7-6f7c-5948-8296-4b8890e0aaf2', 1), '564e66a76b0d3c4236bc727c0d89a3ea272c2cfc211a80b4613b360498f0a44d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/55a3dc912ec84152d5de7bd7c075a06c7ea02d1977de464350d34ecda914e9d1.mp3', 3578, '2026-09-13 07:52:13.836923', '1205337bcaef174f29b4442ea5ba1e217abc404cafa2553e0b08b048f5ea980f', 'validated', '{"audio_key":"55a3dc912ec84152d5de7bd7c075a06c7ea02d1977de464350d34ecda914e9d1","entity_key":"d_media_claims_uncertainty_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1205337bcaef174f29b4442ea5ba1e217abc404cafa2553e0b08b048f5ea980f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/55a3dc912ec84152d5de7bd7c075a06c7ea02d1977de464350d34ecda914e9d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_01:1 -> audio/generated/de-DE/dialogues/561d9e0af1a7a3c9b0c58f7413b95524295a953b6925f32e8e9d0c7e54135f52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cece452e-8956-57db-be03-37b5fe72f754', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76555ba772a06b054db2f42de11525fb483d22297e62fc6b82a8d70e478a0924'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61a936fc-8192-5a23-951d-9af53e9244d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cece452e-8956-57db-be03-37b5fe72f754', 1), '76555ba772a06b054db2f42de11525fb483d22297e62fc6b82a8d70e478a0924',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/561d9e0af1a7a3c9b0c58f7413b95524295a953b6925f32e8e9d0c7e54135f52.mp3', 4022, '2026-09-13 07:52:14.799600', '96cea2ed45d10f0646b70825afeef713ffd7e5599dde13f716bf750e5097c6c8', 'validated', '{"audio_key":"561d9e0af1a7a3c9b0c58f7413b95524295a953b6925f32e8e9d0c7e54135f52","entity_key":"d_data_trends_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"96cea2ed45d10f0646b70825afeef713ffd7e5599dde13f716bf750e5097c6c8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/561d9e0af1a7a3c9b0c58f7413b95524295a953b6925f32e8e9d0c7e54135f52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_01:3 -> audio/generated/de-DE/dialogues/5a66f67922118c74130d4faceaa1c98288163f40a4a83a60e362bac19986b73e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51049ce6-04b8-5373-9a4d-e4aeca6c770c', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b04c770f8ad519dd48f6cb04b6d99dfa2b3e898070d4b2cc55d08ecef32320db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('182cadba-d7c5-5d78-8142-9a1b0fd52b1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51049ce6-04b8-5373-9a4d-e4aeca6c770c', 1), 'b04c770f8ad519dd48f6cb04b6d99dfa2b3e898070d4b2cc55d08ecef32320db',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a66f67922118c74130d4faceaa1c98288163f40a4a83a60e362bac19986b73e.mp3', 2768, '2026-09-13 07:52:15.151423', '0b7f6a09e6b9107cc8f6dc09533a8fcad9dfbdc9fa6b740d1ae6c4247595b54e', 'validated', '{"audio_key":"5a66f67922118c74130d4faceaa1c98288163f40a4a83a60e362bac19986b73e","entity_key":"d_argument_evidence_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0b7f6a09e6b9107cc8f6dc09533a8fcad9dfbdc9fa6b740d1ae6c4247595b54e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5a66f67922118c74130d4faceaa1c98288163f40a4a83a60e362bac19986b73e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_02:4 -> audio/generated/de-DE/dialogues/5cc4bc3403fcde4dc4f816284cfa44f85686b8d1817beaaaabe1c10a4c2aa6b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('567bb3a4-40a6-58c6-8fce-a38820634e34', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b748a62970fc7fad289df130d86b96be105c02a1a18abf1ebc9d9427412c16ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8468c726-1c67-59dc-b932-74193d32a0e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('567bb3a4-40a6-58c6-8fce-a38820634e34', 1), 'b748a62970fc7fad289df130d86b96be105c02a1a18abf1ebc9d9427412c16ed',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cc4bc3403fcde4dc4f816284cfa44f85686b8d1817beaaaabe1c10a4c2aa6b2.mp3', 4780, '2026-09-13 07:52:16.304967', 'bd13ded0960a243b7e61785e4d70c059afa8c95ec26c16a0fdc95e416afa0572', 'validated', '{"audio_key":"5cc4bc3403fcde4dc4f816284cfa44f85686b8d1817beaaaabe1c10a4c2aa6b2","entity_key":"d_nuanced_agreement_disagreement_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bd13ded0960a243b7e61785e4d70c059afa8c95ec26c16a0fdc95e416afa0572","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5cc4bc3403fcde4dc4f816284cfa44f85686b8d1817beaaaabe1c10a4c2aa6b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_02:4 -> audio/generated/de-DE/dialogues/5d80af2e3b2988c7eaab72138a1fbe9db42f963f89f010912466f32fb4525d90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e9e8e7f-3566-5c9f-84d7-ef1b299af2ef', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '433cbd6bcd384e6903c08cdf91139f265cc55fda4e378d3de070866dcaab3566'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f433edbd-d126-5ff7-ab2f-b69f172d4324', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e9e8e7f-3566-5c9f-84d7-ef1b299af2ef', 1), '433cbd6bcd384e6903c08cdf91139f265cc55fda4e378d3de070866dcaab3566',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d80af2e3b2988c7eaab72138a1fbe9db42f963f89f010912466f32fb4525d90.mp3', 3056, '2026-09-13 07:52:16.460293', 'a5d01a8b11694dedafdcaf5eaa07c25052bd9c0361624a8383579a49f67dcff6', 'validated', '{"audio_key":"5d80af2e3b2988c7eaab72138a1fbe9db42f963f89f010912466f32fb4525d90","entity_key":"d_negotiation_compromise_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a5d01a8b11694dedafdcaf5eaa07c25052bd9c0361624a8383579a49f67dcff6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5d80af2e3b2988c7eaab72138a1fbe9db42f963f89f010912466f32fb4525d90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_03:3 -> audio/generated/de-DE/dialogues/5f5195291acc54b4a4309193677e7ca572e585fac98c6a0780b56e39a8cc12f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca4cd6e7-da38-5e4c-a6ec-a09fd4210a1c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cfdd128bcf20a234b7890b5d42f2d692ca5c508480a86e24950bab1d53a1415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95627d79-2336-5a28-afab-f91d4143f3e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca4cd6e7-da38-5e4c-a6ec-a09fd4210a1c', 1), '0cfdd128bcf20a234b7890b5d42f2d692ca5c508480a86e24950bab1d53a1415',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5f5195291acc54b4a4309193677e7ca572e585fac98c6a0780b56e39a8cc12f7.mp3', 3526, '2026-09-13 07:52:17.805206', 'ce2bf2f2ea6ae96b6cb68bfdd92f1add0d89067235da94daee07250be676c08d', 'validated', '{"audio_key":"5f5195291acc54b4a4309193677e7ca572e585fac98c6a0780b56e39a8cc12f7","entity_key":"d_media_claims_uncertainty_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ce2bf2f2ea6ae96b6cb68bfdd92f1add0d89067235da94daee07250be676c08d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5f5195291acc54b4a4309193677e7ca572e585fac98c6a0780b56e39a8cc12f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_01:2 -> audio/generated/de-DE/dialogues/6307ea51fee986733ea3420a27ac86b6ca988a6045731fa74d33e90e75278f8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b59e013b-392b-5ab0-8013-b361d9557138', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2d9ccefd71ac77af149426c6a736c9d0806c4c8b56956d7798bea9371480b0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0de63514-0840-5763-a2d8-f86d5b349299', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b59e013b-392b-5ab0-8013-b361d9557138', 1), 'a2d9ccefd71ac77af149426c6a736c9d0806c4c8b56956d7798bea9371480b0d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6307ea51fee986733ea3420a27ac86b6ca988a6045731fa74d33e90e75278f8c.mp3', 3578, '2026-09-13 07:52:17.810211', '00276f9e72863bed6fd3905b8d8c130c5764f46d9f8352b656dbfc8e70f781db', 'validated', '{"audio_key":"6307ea51fee986733ea3420a27ac86b6ca988a6045731fa74d33e90e75278f8c","entity_key":"d_presentations_questions_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"00276f9e72863bed6fd3905b8d8c130c5764f46d9f8352b656dbfc8e70f781db","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6307ea51fee986733ea3420a27ac86b6ca988a6045731fa74d33e90e75278f8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_02:2 -> audio/generated/de-DE/dialogues/6308718ea520f755db3801e51d08a887b35d1f470ce96c7116af9cce52a88899.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8153b678-6e58-5e21-9ea9-ac68f7947c24', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a12ed005a25e01847450b54e25e13e029c514ab57e3764cbf0a8edc2422eaac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddb6bff3-66f6-5602-be2c-204373f3fb99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8153b678-6e58-5e21-9ea9-ac68f7947c24', 1), '0a12ed005a25e01847450b54e25e13e029c514ab57e3764cbf0a8edc2422eaac',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6308718ea520f755db3801e51d08a887b35d1f470ce96c7116af9cce52a88899.mp3', 6347, '2026-09-13 07:52:19.537342', 'fec91debd5b0b126b4fd4657c8ce8016150524a26329e18716429509132336d7', 'validated', '{"audio_key":"6308718ea520f755db3801e51d08a887b35d1f470ce96c7116af9cce52a88899","entity_key":"d_presentations_questions_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"fec91debd5b0b126b4fd4657c8ce8016150524a26329e18716429509132336d7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6308718ea520f755db3801e51d08a887b35d1f470ce96c7116af9cce52a88899.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_02:1 -> audio/generated/de-DE/dialogues/6502abda96611353af234eda552002a9cb840099d1e1d3d37e67885f4f9ddc34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6aaa9bc8-64a2-54ea-813e-721d2b0a6e01', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de27826c7b8de02873f6b0a64bf3ce5132d217db8919d31908d79af6f2807515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02b95eec-c4b3-57bc-aef5-93f94b686acb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6aaa9bc8-64a2-54ea-813e-721d2b0a6e01', 1), 'de27826c7b8de02873f6b0a64bf3ce5132d217db8919d31908d79af6f2807515',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6502abda96611353af234eda552002a9cb840099d1e1d3d37e67885f4f9ddc34.mp3', 3604, '2026-09-13 07:52:19.195484', 'a1ca07d4aef05b0a20289380fb69cafc7621811aa22148b381f228214a0d944c', 'validated', '{"audio_key":"6502abda96611353af234eda552002a9cb840099d1e1d3d37e67885f4f9ddc34","entity_key":"d_source_summary_comparison_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a1ca07d4aef05b0a20289380fb69cafc7621811aa22148b381f228214a0d944c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6502abda96611353af234eda552002a9cb840099d1e1d3d37e67885f4f9ddc34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_03:1 -> audio/generated/de-DE/dialogues/6605d546d7ca15c9da9946e7c58835bf2affdadaeb05c3e2099bca87923a4ca2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63352158-0284-5cca-9737-f367d1d5bb46', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b87f9dbf6bcb29f44eac8a87ba93d490281c9ad92e26aa4f7a0b54c3418a57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7a94ff7-bbdc-5e80-8b12-52935c4a3f48', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63352158-0284-5cca-9737-f367d1d5bb46', 1), 'a0b87f9dbf6bcb29f44eac8a87ba93d490281c9ad92e26aa4f7a0b54c3418a57',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6605d546d7ca15c9da9946e7c58835bf2affdadaeb05c3e2099bca87923a4ca2.mp3', 3369, '2026-09-13 07:52:20.547961', '36291cfb5e20bb62661ad1e81b20a095a23f8190122da676431e7b3f21bcd644', 'validated', '{"audio_key":"6605d546d7ca15c9da9946e7c58835bf2affdadaeb05c3e2099bca87923a4ca2","entity_key":"d_argument_evidence_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"36291cfb5e20bb62661ad1e81b20a095a23f8190122da676431e7b3f21bcd644","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6605d546d7ca15c9da9946e7c58835bf2affdadaeb05c3e2099bca87923a4ca2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_02:2 -> audio/generated/de-DE/dialogues/67335ef33c4316bca91ce52830dbdf099280658d2d9fa4615232ccb1a0b1230c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('764569ec-fc7a-5ef3-a297-508903d20943', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '377dc662535a88eec0faba7f1079f2ea68a3e92039b52165e87902ef7bd157f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56dd80eb-9904-5d48-8327-b7e2bb958ec3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('764569ec-fc7a-5ef3-a297-508903d20943', 1), '377dc662535a88eec0faba7f1079f2ea68a3e92039b52165e87902ef7bd157f4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/67335ef33c4316bca91ce52830dbdf099280658d2d9fa4615232ccb1a0b1230c.mp3', 4963, '2026-09-13 07:52:21.023722', 'd107a6c50ca647e58ab92d2bcbfa1819c7e14117f88581c5b9377437b235c0cb', 'validated', '{"audio_key":"67335ef33c4316bca91ce52830dbdf099280658d2d9fa4615232ccb1a0b1230c","entity_key":"d_source_summary_comparison_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d107a6c50ca647e58ab92d2bcbfa1819c7e14117f88581c5b9377437b235c0cb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/67335ef33c4316bca91ce52830dbdf099280658d2d9fa4615232ccb1a0b1230c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_02:3 -> audio/generated/de-DE/dialogues/6c087402be98a0895e496a7843e7a3237ccffa379382d41a89d2fddb339e46bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73d8ba71-0cc4-58a2-a934-a23839434c8e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbc4524fcc6b961b327572dd2f10efa0ba06249e323939b0bb6b562716b8a2ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ed2c416-feec-57b8-b703-28db86651a5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73d8ba71-0cc4-58a2-a934-a23839434c8e', 1), 'cbc4524fcc6b961b327572dd2f10efa0ba06249e323939b0bb6b562716b8a2ff',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c087402be98a0895e496a7843e7a3237ccffa379382d41a89d2fddb339e46bc.mp3', 3108, '2026-09-13 07:52:21.831819', 'f6274de0fd14cc982e6176be22819ee26636dde84dbd713630f41bae8308d4a2', 'validated', '{"audio_key":"6c087402be98a0895e496a7843e7a3237ccffa379382d41a89d2fddb339e46bc","entity_key":"d_source_summary_comparison_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f6274de0fd14cc982e6176be22819ee26636dde84dbd713630f41bae8308d4a2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6c087402be98a0895e496a7843e7a3237ccffa379382d41a89d2fddb339e46bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_01:2 -> audio/generated/de-DE/dialogues/6ef02de03da88803c9f0c8681f0b87bbd21b2cff960fd4194b71143ad6662eb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('400034de-b18d-5841-976a-7e7dab0be75d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c79f90bbbd4b97b7b833e045876c5182a58a5084f93ed858b2ed65ac2ca82f43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc2bb5f-d4be-567e-8b3f-97142ba700c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('400034de-b18d-5841-976a-7e7dab0be75d', 1), 'c79f90bbbd4b97b7b833e045876c5182a58a5084f93ed858b2ed65ac2ca82f43',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6ef02de03da88803c9f0c8681f0b87bbd21b2cff960fd4194b71143ad6662eb8.mp3', 4127, '2026-09-13 07:52:22.444122', 'e229489c5e963558fc425fc87360d6ba305824f18fdf2c59e895db0f91eba321', 'validated', '{"audio_key":"6ef02de03da88803c9f0c8681f0b87bbd21b2cff960fd4194b71143ad6662eb8","entity_key":"d_data_trends_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e229489c5e963558fc425fc87360d6ba305824f18fdf2c59e895db0f91eba321","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6ef02de03da88803c9f0c8681f0b87bbd21b2cff960fd4194b71143ad6662eb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_02:2 -> audio/generated/de-DE/dialogues/70b42f65b092a554d51f0d7a0df4ecbece7f58d65d4e0cce0f0b9d311872d3b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89780f66-f831-55ff-ae54-3b59d6f222ab', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae303d418d9bb5e5d8888bc7eea5c53b6cafc1ba59c9de112420f90106203b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62dab43b-efa5-587b-b350-37493db40f19', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89780f66-f831-55ff-ae54-3b59d6f222ab', 1), 'ae303d418d9bb5e5d8888bc7eea5c53b6cafc1ba59c9de112420f90106203b38',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/70b42f65b092a554d51f0d7a0df4ecbece7f58d65d4e0cce0f0b9d311872d3b8.mp3', 3291, '2026-09-13 07:52:23.101800', '8c4eb5b62bb6cf35ea84b495c25c217f3b731b3b3ebf034e3beb46508963b503', 'validated', '{"audio_key":"70b42f65b092a554d51f0d7a0df4ecbece7f58d65d4e0cce0f0b9d311872d3b8","entity_key":"d_nuanced_agreement_disagreement_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8c4eb5b62bb6cf35ea84b495c25c217f3b731b3b3ebf034e3beb46508963b503","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/70b42f65b092a554d51f0d7a0df4ecbece7f58d65d4e0cce0f0b9d311872d3b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_01:1 -> audio/generated/de-DE/dialogues/71cf961c4ef521e568284acc061eaca42596010a99284b75f205431bcd0f2117.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fbc5666-9144-58f6-b137-6eb4ae914de3', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed2627c70ee8a733ebcfedbb6c5b69df74a4700464b461d72c80c3e9cbea4938'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c500d29d-571b-525d-afc8-39e3cb7a239f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fbc5666-9144-58f6-b137-6eb4ae914de3', 1), 'ed2627c70ee8a733ebcfedbb6c5b69df74a4700464b461d72c80c3e9cbea4938',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/71cf961c4ef521e568284acc061eaca42596010a99284b75f205431bcd0f2117.mp3', 3422, '2026-09-13 07:52:23.805243', 'dd25f1e0fced9e55d77b41a7dbb6db57b831a8178ccbfb286157f87208afb0c6', 'validated', '{"audio_key":"71cf961c4ef521e568284acc061eaca42596010a99284b75f205431bcd0f2117","entity_key":"d_source_summary_comparison_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dd25f1e0fced9e55d77b41a7dbb6db57b831a8178ccbfb286157f87208afb0c6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/71cf961c4ef521e568284acc061eaca42596010a99284b75f205431bcd0f2117.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_02:1 -> audio/generated/de-DE/dialogues/73970867d7775231bc44ed97a4546cdffd07581677b1b8c37483c87f2ffb36fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('816e7c49-17da-5f9a-a5d3-16f998d9fe54', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5c65882e7ffa093d1b6ded7253135da812c0d3be723c7e976bbad13059f6f7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('809e4848-4675-5665-9528-e44f392dd3e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('816e7c49-17da-5f9a-a5d3-16f998d9fe54', 1), 'a5c65882e7ffa093d1b6ded7253135da812c0d3be723c7e976bbad13059f6f7e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/73970867d7775231bc44ed97a4546cdffd07581677b1b8c37483c87f2ffb36fd.mp3', 4127, '2026-09-13 07:52:24.465414', '643c2865a814442c3ee07afd0d0299e974250e5fd4661e378b1e46d16b83aa57', 'validated', '{"audio_key":"73970867d7775231bc44ed97a4546cdffd07581677b1b8c37483c87f2ffb36fd","entity_key":"d_argument_evidence_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"643c2865a814442c3ee07afd0d0299e974250e5fd4661e378b1e46d16b83aa57","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/73970867d7775231bc44ed97a4546cdffd07581677b1b8c37483c87f2ffb36fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_02:3 -> audio/generated/de-DE/dialogues/743d3465397dcd1e861be24ede5d7949df4728cb08153d14f901e6c47457b841.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3920bdd0-a0dd-5a88-9d95-7b08cfbc8237', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bff6b2d61486082a0f9e89841e792d74a6e373e4b297e423a559f09e4fa3d483'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('179f3eb0-bf87-5237-98ef-9062fd647136', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3920bdd0-a0dd-5a88-9d95-7b08cfbc8237', 1), 'bff6b2d61486082a0f9e89841e792d74a6e373e4b297e423a559f09e4fa3d483',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/743d3465397dcd1e861be24ede5d7949df4728cb08153d14f901e6c47457b841.mp3', 3160, '2026-09-13 07:52:25.234552', '71c8493b29c48f95f3f70cfb2fcf57bd17e570b5597a50f4173d136c3c04950c', 'validated', '{"audio_key":"743d3465397dcd1e861be24ede5d7949df4728cb08153d14f901e6c47457b841","entity_key":"d_formal_messages_escalation_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"71c8493b29c48f95f3f70cfb2fcf57bd17e570b5597a50f4173d136c3c04950c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/743d3465397dcd1e861be24ede5d7949df4728cb08153d14f901e6c47457b841.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_01:1 -> audio/generated/de-DE/dialogues/7963d10b14bdba8e8ae789093fde65326cacf7e5d656149de17afb905b43dc39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0edbbf86-8a9b-51a6-a132-6a0d6e793256', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22cb18cdca8a6536bdada43b470efd848e970f7a88102568c771eaf351d3da10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a9a18c4-6e40-5767-aad7-c6401c084858', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0edbbf86-8a9b-51a6-a132-6a0d6e793256', 1), '22cb18cdca8a6536bdada43b470efd848e970f7a88102568c771eaf351d3da10',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7963d10b14bdba8e8ae789093fde65326cacf7e5d656149de17afb905b43dc39.mp3', 2821, '2026-09-13 07:52:25.676164', '8e7ae48c35da4925604428f7a922cf39e3061e58140bad7dc7d536e5fe28f3e5', 'validated', '{"audio_key":"7963d10b14bdba8e8ae789093fde65326cacf7e5d656149de17afb905b43dc39","entity_key":"d_nuanced_agreement_disagreement_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8e7ae48c35da4925604428f7a922cf39e3061e58140bad7dc7d536e5fe28f3e5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7963d10b14bdba8e8ae789093fde65326cacf7e5d656149de17afb905b43dc39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_01:3 -> audio/generated/de-DE/dialogues/7aeb82d59567f991659f4d288aa79eb2147cdeab031b1522680ab9048525c93e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4accd835-3e7c-54b4-b605-7c414d32eaeb', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7632e3537818a3dde52a5f74e4e5a032eeb9e0a440e5b6096304daeda955623'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2debe055-73f7-545f-b9eb-76346d287ec7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4accd835-3e7c-54b4-b605-7c414d32eaeb', 1), 'c7632e3537818a3dde52a5f74e4e5a032eeb9e0a440e5b6096304daeda955623',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7aeb82d59567f991659f4d288aa79eb2147cdeab031b1522680ab9048525c93e.mp3', 3056, '2026-09-13 07:52:26.599214', '5a7d56446ce53352993d2bed6c0a3f1c2dd366c0e68e93f73a97e614d56d5b67', 'validated', '{"audio_key":"7aeb82d59567f991659f4d288aa79eb2147cdeab031b1522680ab9048525c93e","entity_key":"d_social_issues_discussion_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5a7d56446ce53352993d2bed6c0a3f1c2dd366c0e68e93f73a97e614d56d5b67","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7aeb82d59567f991659f4d288aa79eb2147cdeab031b1522680ab9048525c93e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_02:2 -> audio/generated/de-DE/dialogues/7b046a49dbe7629752f92a936d6bd74d5940c7aff641b5cd59f93aea6ed01b01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('434e96ba-9f44-5a16-ba16-9134bf0008f5', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c755f70ca4dd5a7e2634121b410e89664d2724e53ce4be3a099d14b429b6574'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86b6b9a1-e601-5415-90ed-6999af72431e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('434e96ba-9f44-5a16-ba16-9134bf0008f5', 1), '5c755f70ca4dd5a7e2634121b410e89664d2724e53ce4be3a099d14b429b6574',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7b046a49dbe7629752f92a936d6bd74d5940c7aff641b5cd59f93aea6ed01b01.mp3', 4205, '2026-09-13 07:52:27.141945', 'aa020cf8a10437cdb467e15d1489b31aecd183f27f6c1f657b13ba76fa4921d1', 'validated', '{"audio_key":"7b046a49dbe7629752f92a936d6bd74d5940c7aff641b5cd59f93aea6ed01b01","entity_key":"d_social_issues_discussion_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"aa020cf8a10437cdb467e15d1489b31aecd183f27f6c1f657b13ba76fa4921d1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7b046a49dbe7629752f92a936d6bd74d5940c7aff641b5cd59f93aea6ed01b01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_03:4 -> audio/generated/de-DE/dialogues/7ba09ae2d36d2ce936642b5ea7d2dfb1d81a824c122a481f1599ee320181a5d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b3cfb69-f428-5ff5-9c6c-7ecfa5a34ce0', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12fe58bee81662f49a984811baebd4fb41dfb55230bc8f75273023f84102ef76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd2e15e9-de30-54b3-ac84-8710c29d6791', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b3cfb69-f428-5ff5-9c6c-7ecfa5a34ce0', 1), '12fe58bee81662f49a984811baebd4fb41dfb55230bc8f75273023f84102ef76',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ba09ae2d36d2ce936642b5ea7d2dfb1d81a824c122a481f1599ee320181a5d5.mp3', 3108, '2026-09-13 07:52:27.893087', '6dfc190763fa47fcada01a3ef1cfffc4bbed73d8ab16698774f8a41eccc8da1c', 'validated', '{"audio_key":"7ba09ae2d36d2ce936642b5ea7d2dfb1d81a824c122a481f1599ee320181a5d5","entity_key":"d_negotiation_compromise_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6dfc190763fa47fcada01a3ef1cfffc4bbed73d8ab16698774f8a41eccc8da1c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7ba09ae2d36d2ce936642b5ea7d2dfb1d81a824c122a481f1599ee320181a5d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_03:1 -> audio/generated/de-DE/dialogues/7d024d5bdbce5c498186c8418052c048c550bf88ab7dead98aa625bae52fd85d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('590cc64b-5238-53ba-b182-06283dca5150', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094185445003cb0cb0a639c821d26bedf6ec1d982b313ebc354289b237541c19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f44f5382-dd77-5582-970b-d30488e28616', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('590cc64b-5238-53ba-b182-06283dca5150', 1), '094185445003cb0cb0a639c821d26bedf6ec1d982b313ebc354289b237541c19',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d024d5bdbce5c498186c8418052c048c550bf88ab7dead98aa625bae52fd85d.mp3', 2742, '2026-09-13 07:52:28.340281', 'd0bd840c4689c2ba0c1a67f4bc59b7c9c2d8c4860fa64252389279e833523c5f', 'validated', '{"audio_key":"7d024d5bdbce5c498186c8418052c048c550bf88ab7dead98aa625bae52fd85d","entity_key":"d_negotiation_compromise_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d0bd840c4689c2ba0c1a67f4bc59b7c9c2d8c4860fa64252389279e833523c5f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7d024d5bdbce5c498186c8418052c048c550bf88ab7dead98aa625bae52fd85d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_01:3 -> audio/generated/de-DE/dialogues/7da0cb5134f9fb936ecbba9795aaa7cf93fa7a20708333ff5085ba46b892fdcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e27d762c-53ab-5fa3-bc2f-265ed5ae1cee', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2790055996371bd73f3b7a070ad8484cd6520474508a323ee7414e77fb2ae15d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e9b7cba-03b8-5abc-833e-973cc9e4c056', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e27d762c-53ab-5fa3-bc2f-265ed5ae1cee', 1), '2790055996371bd73f3b7a070ad8484cd6520474508a323ee7414e77fb2ae15d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7da0cb5134f9fb936ecbba9795aaa7cf93fa7a20708333ff5085ba46b892fdcd.mp3', 2742, '2026-09-13 07:52:29.142953', '311fb24f0d09c506cb2e704ffa18a71f1a0318c039f8d69c01cabd484ae1d353', 'validated', '{"audio_key":"7da0cb5134f9fb936ecbba9795aaa7cf93fa7a20708333ff5085ba46b892fdcd","entity_key":"d_presentations_questions_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"311fb24f0d09c506cb2e704ffa18a71f1a0318c039f8d69c01cabd484ae1d353","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7da0cb5134f9fb936ecbba9795aaa7cf93fa7a20708333ff5085ba46b892fdcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_02:4 -> audio/generated/de-DE/dialogues/7dc9abf8a5ee2f7623938e6ca9538b47175ce464ef33527cbed682bcfa2785a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c37829cb-776e-537c-91f7-aa8e23e867bb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80c164d9f0ce1c0b64c69c4200ef89a16ec17b7ba8e6844dc74d9a79c9730f70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('209a99ac-8055-5286-bc3f-1a6047420e9b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c37829cb-776e-537c-91f7-aa8e23e867bb', 1), '80c164d9f0ce1c0b64c69c4200ef89a16ec17b7ba8e6844dc74d9a79c9730f70',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7dc9abf8a5ee2f7623938e6ca9538b47175ce464ef33527cbed682bcfa2785a0.mp3', 2951, '2026-09-13 07:52:29.627745', '3ba00df3c25d4f7990c09c46c73b3587b92f9862ab23e4ea770de4b3545e96bb', 'validated', '{"audio_key":"7dc9abf8a5ee2f7623938e6ca9538b47175ce464ef33527cbed682bcfa2785a0","entity_key":"d_media_claims_uncertainty_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"3ba00df3c25d4f7990c09c46c73b3587b92f9862ab23e4ea770de4b3545e96bb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7dc9abf8a5ee2f7623938e6ca9538b47175ce464ef33527cbed682bcfa2785a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_02:1 -> audio/generated/de-DE/dialogues/7e41ac7670b1efc5997fa6879ee7c636ef82993cf68fe590470dc303c933ca67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3dbf42a8-e863-5920-b5ed-11db32706d78', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8f6ddca836a722cbcc2ad2c87a4a14f3332ca203f8c775d0f92d5d2d8e6490c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dfcda75-82f7-5e6a-853d-d3898e6481fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3dbf42a8-e863-5920-b5ed-11db32706d78', 1), 'c8f6ddca836a722cbcc2ad2c87a4a14f3332ca203f8c775d0f92d5d2d8e6490c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7e41ac7670b1efc5997fa6879ee7c636ef82993cf68fe590470dc303c933ca67.mp3', 4075, '2026-09-13 07:52:30.555709', 'f65ba6e4ccdb730c124f0208cfc8f1496d8d5993c03ed5b6e23bda0fe7d1a585', 'validated', '{"audio_key":"7e41ac7670b1efc5997fa6879ee7c636ef82993cf68fe590470dc303c933ca67","entity_key":"d_negotiation_compromise_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f65ba6e4ccdb730c124f0208cfc8f1496d8d5993c03ed5b6e23bda0fe7d1a585","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7e41ac7670b1efc5997fa6879ee7c636ef82993cf68fe590470dc303c933ca67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_01:3 -> audio/generated/de-DE/dialogues/801236ff221fd676f4e7a9a5a2dd6bff063a2b9e5f2d1106544e5cd02cff0acb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73f038e7-acb2-5a15-ac0f-ba17c3baa1e6', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7806d2c86de8b2b58eacaf5d698897d850a72b71b723b5157f42f367ea1ef3be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1d3e899-4c1d-58b4-8de7-d78b2a18c593', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73f038e7-acb2-5a15-ac0f-ba17c3baa1e6', 1), '7806d2c86de8b2b58eacaf5d698897d850a72b71b723b5157f42f367ea1ef3be',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/801236ff221fd676f4e7a9a5a2dd6bff063a2b9e5f2d1106544e5cd02cff0acb.mp3', 3578, '2026-09-13 07:52:30.995721', '99009e82692eff8c7d8fe042ae6ce70068f15595ef0eeb3e993ea3e1686c096b', 'validated', '{"audio_key":"801236ff221fd676f4e7a9a5a2dd6bff063a2b9e5f2d1106544e5cd02cff0acb","entity_key":"d_negotiation_compromise_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"99009e82692eff8c7d8fe042ae6ce70068f15595ef0eeb3e993ea3e1686c096b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/801236ff221fd676f4e7a9a5a2dd6bff063a2b9e5f2d1106544e5cd02cff0acb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_03:4 -> audio/generated/de-DE/dialogues/80ed0599e81b29e2135a2b81ee3f9e409dbbb8ea2b2f8f4333568a246e5cbb86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3b07e24-b82a-5c34-9c52-393ffa35101e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0caca9e392f154d3016190b4e0915027e983ba99eb5212ef650191c12d0666ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a33b9146-79af-502b-8613-b90b0fda8a23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3b07e24-b82a-5c34-9c52-393ffa35101e', 1), '0caca9e392f154d3016190b4e0915027e983ba99eb5212ef650191c12d0666ab',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/80ed0599e81b29e2135a2b81ee3f9e409dbbb8ea2b2f8f4333568a246e5cbb86.mp3', 4545, '2026-09-13 07:52:32.033605', 'd0421cc519ffbb842feedeb0b1abdea47940550ea31c69099f2e36c56b18c80c', 'validated', '{"audio_key":"80ed0599e81b29e2135a2b81ee3f9e409dbbb8ea2b2f8f4333568a246e5cbb86","entity_key":"d_social_issues_discussion_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d0421cc519ffbb842feedeb0b1abdea47940550ea31c69099f2e36c56b18c80c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/80ed0599e81b29e2135a2b81ee3f9e409dbbb8ea2b2f8f4333568a246e5cbb86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_03:1 -> audio/generated/de-DE/dialogues/81223e62b45aa9045a6ac583300cd26c0e5b052c1ce0aa138e6ced15ef3c3cbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bd7f58f-0d44-5893-8bd5-16239316d6e4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4eefe5c3e6a734a5146ea695ecbaddaeaae79c9463c839553c8bbba12726307'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8487ce6c-4f24-5041-8422-028c9a906efe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bd7f58f-0d44-5893-8bd5-16239316d6e4', 1), 'd4eefe5c3e6a734a5146ea695ecbaddaeaae79c9463c839553c8bbba12726307',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81223e62b45aa9045a6ac583300cd26c0e5b052c1ce0aa138e6ced15ef3c3cbb.mp3', 6817, '2026-09-13 07:52:32.692377', 'c1bc229eae6c2c0152b2d4e14db5a958c00b8148e5681ae9d4909b24c5f881bd', 'validated', '{"audio_key":"81223e62b45aa9045a6ac583300cd26c0e5b052c1ce0aa138e6ced15ef3c3cbb","entity_key":"d_data_trends_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1bc229eae6c2c0152b2d4e14db5a958c00b8148e5681ae9d4909b24c5f881bd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/81223e62b45aa9045a6ac583300cd26c0e5b052c1ce0aa138e6ced15ef3c3cbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_03:3 -> audio/generated/de-DE/dialogues/83126a8a6a43b6abf4680ff0d9dc2967afbc516f3a046e27476a102cc786240e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e18175f8-5be1-5744-816b-d183a67a31a1', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09fc4adddb7efa821e4c7d4d8af8a7919a3cc26fbb2db8e8e597d865aa6ba4d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60f3ec6f-7388-5973-abae-10da4a2aae28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e18175f8-5be1-5744-816b-d183a67a31a1', 1), '09fc4adddb7efa821e4c7d4d8af8a7919a3cc26fbb2db8e8e597d865aa6ba4d4',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83126a8a6a43b6abf4680ff0d9dc2967afbc516f3a046e27476a102cc786240e.mp3', 3108, '2026-09-13 07:52:33.445897', 'f412c86772271064171c810e4a9a27b372566bc9f27a35cb16119dcd732bb868', 'validated', '{"audio_key":"83126a8a6a43b6abf4680ff0d9dc2967afbc516f3a046e27476a102cc786240e","entity_key":"d_negotiation_compromise_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f412c86772271064171c810e4a9a27b372566bc9f27a35cb16119dcd732bb868","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/83126a8a6a43b6abf4680ff0d9dc2967afbc516f3a046e27476a102cc786240e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_03:4 -> audio/generated/de-DE/dialogues/850dc1c42542af5822c67d5ecc612d5cc6f43463c88e63b6d359eff7455ddaa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b93ff740-ceff-5774-8122-cdef5b2b2d9a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e869f3bc4fd2622749a9352d5ef0b6bb7fea7ef829ec469fb1a022942491993'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c53cecab-00bb-5a29-8fcd-29f31b3e3e66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b93ff740-ceff-5774-8122-cdef5b2b2d9a', 1), '8e869f3bc4fd2622749a9352d5ef0b6bb7fea7ef829ec469fb1a022942491993',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/850dc1c42542af5822c67d5ecc612d5cc6f43463c88e63b6d359eff7455ddaa6.mp3', 4179, '2026-09-13 07:52:34.176784', 'd4f86f1aeae534ffb5edf28754c8d36fa2b959dad9b94d0113230beeb955f516', 'validated', '{"audio_key":"850dc1c42542af5822c67d5ecc612d5cc6f43463c88e63b6d359eff7455ddaa6","entity_key":"d_presentations_questions_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d4f86f1aeae534ffb5edf28754c8d36fa2b959dad9b94d0113230beeb955f516","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/850dc1c42542af5822c67d5ecc612d5cc6f43463c88e63b6d359eff7455ddaa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_03:2 -> audio/generated/de-DE/dialogues/8606931abed73da8fedebb0fe7d75b5be96cbc465378a975f6e68db9be8a5772.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a75335b-b4d3-5de8-b9ff-97c6b2e69d5a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4959bc162c5e6716c5f6441be3cc887b87e10f6e9654a58ee2881c303bb5e48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('725309b6-c7f3-52d7-876b-743134392dcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a75335b-b4d3-5de8-b9ff-97c6b2e69d5a', 1), 'c4959bc162c5e6716c5f6441be3cc887b87e10f6e9654a58ee2881c303bb5e48',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8606931abed73da8fedebb0fe7d75b5be96cbc465378a975f6e68db9be8a5772.mp3', 3108, '2026-09-13 07:52:34.775026', '31bb0c150cb9abc2643e720b69830bc883ece7e3661b34a3cac43d055ccf4f6d', 'validated', '{"audio_key":"8606931abed73da8fedebb0fe7d75b5be96cbc465378a975f6e68db9be8a5772","entity_key":"d_source_summary_comparison_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"31bb0c150cb9abc2643e720b69830bc883ece7e3661b34a3cac43d055ccf4f6d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8606931abed73da8fedebb0fe7d75b5be96cbc465378a975f6e68db9be8a5772.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_02:1 -> audio/generated/de-DE/dialogues/87f483803081bca29e29f736d98ba5c6415fa1111e64c84108573aecda504591.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3bf9c668-fb1d-50ff-a8c4-7b3f29405154', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f73102d0395839b2218986789eab292b9518a4d77ccf6e3c01d08e3ae4ec2ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52fd7660-a884-5ab1-8046-7cb6ec2a7c3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3bf9c668-fb1d-50ff-a8c4-7b3f29405154', 1), '7f73102d0395839b2218986789eab292b9518a4d77ccf6e3c01d08e3ae4ec2ba',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87f483803081bca29e29f736d98ba5c6415fa1111e64c84108573aecda504591.mp3', 3840, '2026-09-13 07:52:35.513610', '5dfb60a0fecc8a3b8455856755128a536ddc1f4748ca860848b18efb1492e5c6', 'validated', '{"audio_key":"87f483803081bca29e29f736d98ba5c6415fa1111e64c84108573aecda504591","entity_key":"d_meetings_decisions_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5dfb60a0fecc8a3b8455856755128a536ddc1f4748ca860848b18efb1492e5c6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/87f483803081bca29e29f736d98ba5c6415fa1111e64c84108573aecda504591.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_01:2 -> audio/generated/de-DE/dialogues/8907b83eb2c06b5a480ad5099eea94deb828835dbae7e2372ebb8a76e79cf227.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('770d5a97-08dc-50a4-8f60-4aac1071b8b7', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4105075f70e9a584db7955c24485e4d31292ccd3c3ca48428b0c92d7e7d26a42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('890b5734-de34-5bcb-b9d5-948022aa2c91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('770d5a97-08dc-50a4-8f60-4aac1071b8b7', 1), '4105075f70e9a584db7955c24485e4d31292ccd3c3ca48428b0c92d7e7d26a42',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8907b83eb2c06b5a480ad5099eea94deb828835dbae7e2372ebb8a76e79cf227.mp3', 3892, '2026-09-13 07:52:36.149858', 'c247e6efb3242d4484a01e655775c4e42666d81f74f69f972c2471d537ded50f', 'validated', '{"audio_key":"8907b83eb2c06b5a480ad5099eea94deb828835dbae7e2372ebb8a76e79cf227","entity_key":"d_formal_messages_escalation_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c247e6efb3242d4484a01e655775c4e42666d81f74f69f972c2471d537ded50f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8907b83eb2c06b5a480ad5099eea94deb828835dbae7e2372ebb8a76e79cf227.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_03:3 -> audio/generated/de-DE/dialogues/898359d63d4b9f92f10b89e0d284329caa7a25ac046f8b1d3a84892c68b0c30d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7795e054-741d-551a-834a-c36c1d97d884', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ee258e716824a8642ab25bd0acd4e3cddb3e9b96df4bdfb76a8ace0106081b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5288c5d-3638-5ed7-8ca2-ad1daff69fa7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7795e054-741d-551a-834a-c36c1d97d884', 1), '7ee258e716824a8642ab25bd0acd4e3cddb3e9b96df4bdfb76a8ace0106081b2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/898359d63d4b9f92f10b89e0d284329caa7a25ac046f8b1d3a84892c68b0c30d.mp3', 3108, '2026-09-13 07:52:36.878912', '8b6dc6ade3fb23d0646750a6e86065510c39047f389fc508971fd26ecf624390', 'validated', '{"audio_key":"898359d63d4b9f92f10b89e0d284329caa7a25ac046f8b1d3a84892c68b0c30d","entity_key":"d_meetings_decisions_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8b6dc6ade3fb23d0646750a6e86065510c39047f389fc508971fd26ecf624390","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/898359d63d4b9f92f10b89e0d284329caa7a25ac046f8b1d3a84892c68b0c30d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_03:2 -> audio/generated/de-DE/dialogues/8991d47e66e8ae978efb6afd2f9c77f808d7b2b299b5aa6beb9b4df1c2b32074.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e193f520-96d4-5a7b-a1e8-7f75e245e0e0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7187ada64a125f93fe91d03a8a6d954280720d3c1760c452be42c91b1713d497'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88903b78-e0f8-526b-93e8-bee7914ed84b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e193f520-96d4-5a7b-a1e8-7f75e245e0e0', 1), '7187ada64a125f93fe91d03a8a6d954280720d3c1760c452be42c91b1713d497',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8991d47e66e8ae978efb6afd2f9c77f808d7b2b299b5aa6beb9b4df1c2b32074.mp3', 4414, '2026-09-13 07:52:37.670239', 'a212cc86e4988058927326e62621768e34689ab0bc42e5162096d147a8b9954a', 'validated', '{"audio_key":"8991d47e66e8ae978efb6afd2f9c77f808d7b2b299b5aa6beb9b4df1c2b32074","entity_key":"d_data_trends_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a212cc86e4988058927326e62621768e34689ab0bc42e5162096d147a8b9954a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8991d47e66e8ae978efb6afd2f9c77f808d7b2b299b5aa6beb9b4df1c2b32074.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_01:3 -> audio/generated/de-DE/dialogues/8996800321ecd9d4c1afb79595e7564734a43e669360f9a35d2b0c33ee5e36d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d78ca5c-4526-5a61-9b35-b353655fe45d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8775d0a16bd6363a41aea6c720cf7ed6928ad06000ec87812531955054d124a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a68cf55-b96c-57c1-91d5-3c5d8f49bfc2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d78ca5c-4526-5a61-9b35-b353655fe45d', 1), '8775d0a16bd6363a41aea6c720cf7ed6928ad06000ec87812531955054d124a5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8996800321ecd9d4c1afb79595e7564734a43e669360f9a35d2b0c33ee5e36d1.mp3', 1985, '2026-09-13 07:52:38.049492', '033ed526d9efe702a29fef3693e91deaf5d1e5fdbdba10adae9b7853515d7d49', 'validated', '{"audio_key":"8996800321ecd9d4c1afb79595e7564734a43e669360f9a35d2b0c33ee5e36d1","entity_key":"d_formal_messages_escalation_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"033ed526d9efe702a29fef3693e91deaf5d1e5fdbdba10adae9b7853515d7d49","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8996800321ecd9d4c1afb79595e7564734a43e669360f9a35d2b0c33ee5e36d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_01:4 -> audio/generated/de-DE/dialogues/89b0ce4406e08d3b921c2455d240b7f38b572fa62720ea9c1a9e9c56f929553f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4428e598-2ab5-5606-8f1c-f38a50996f30', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50e3af137bc3b44f555900adbf975ccd63fe4bd49c0a0d1925744b83765c05e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53bd71e8-4ec8-52f8-bbad-611e98e40505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4428e598-2ab5-5606-8f1c-f38a50996f30', 1), '50e3af137bc3b44f555900adbf975ccd63fe4bd49c0a0d1925744b83765c05e4',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89b0ce4406e08d3b921c2455d240b7f38b572fa62720ea9c1a9e9c56f929553f.mp3', 4205, '2026-09-13 07:52:39.082628', 'ce090c3f0175e8e619191bdb02facb22319a93a97ff646ca0dee2b66b97ec697', 'validated', '{"audio_key":"89b0ce4406e08d3b921c2455d240b7f38b572fa62720ea9c1a9e9c56f929553f","entity_key":"d_formal_messages_escalation_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ce090c3f0175e8e619191bdb02facb22319a93a97ff646ca0dee2b66b97ec697","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/89b0ce4406e08d3b921c2455d240b7f38b572fa62720ea9c1a9e9c56f929553f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_03:1 -> audio/generated/de-DE/dialogues/8f1dff32a0c5290acca9c56756623cb3dfd9b0d547325fa8ac95cb70a6719aee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9efdcf3b-21a7-5e00-bc58-2c69fc71c5ea', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24303a34037393b2762a630120048fd80ab163fedd1345dfc29a5fb4e710be7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc178c52-9397-5585-b1ee-a37d94b88e1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9efdcf3b-21a7-5e00-bc58-2c69fc71c5ea', 1), '24303a34037393b2762a630120048fd80ab163fedd1345dfc29a5fb4e710be7f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8f1dff32a0c5290acca9c56756623cb3dfd9b0d547325fa8ac95cb70a6719aee.mp3', 3761, '2026-09-13 07:52:39.454808', 'a63b7fab2dfc8b12e6e4e2df6688a6de9ab42b9b4bdcdcbdd2b4729ffb9cacd0', 'validated', '{"audio_key":"8f1dff32a0c5290acca9c56756623cb3dfd9b0d547325fa8ac95cb70a6719aee","entity_key":"d_presentations_questions_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a63b7fab2dfc8b12e6e4e2df6688a6de9ab42b9b4bdcdcbdd2b4729ffb9cacd0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8f1dff32a0c5290acca9c56756623cb3dfd9b0d547325fa8ac95cb70a6719aee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_02:3 -> audio/generated/de-DE/dialogues/910c52435c1924547b882fd1157c0c1b4f5bcfd6ce5a45dd000ca6723833a9b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81a3bc41-9039-53f0-83f9-b09e32431849', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7e94588b4efa04fa6d716a597f7c9cfbf9a487160a7959631aa45452d810810'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04eb9987-de98-5889-94d2-8ac5eed97bee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81a3bc41-9039-53f0-83f9-b09e32431849', 1), 'e7e94588b4efa04fa6d716a597f7c9cfbf9a487160a7959631aa45452d810810',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/910c52435c1924547b882fd1157c0c1b4f5bcfd6ce5a45dd000ca6723833a9b6.mp3', 2351, '2026-09-13 07:52:40.236877', '79fe3bf3f3e8a3ad83f2ce7abe912137f607263271d36834d480be73469b80df', 'validated', '{"audio_key":"910c52435c1924547b882fd1157c0c1b4f5bcfd6ce5a45dd000ca6723833a9b6","entity_key":"d_media_claims_uncertainty_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"79fe3bf3f3e8a3ad83f2ce7abe912137f607263271d36834d480be73469b80df","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/910c52435c1924547b882fd1157c0c1b4f5bcfd6ce5a45dd000ca6723833a9b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_03:4 -> audio/generated/de-DE/dialogues/911d20fb10ec96db842fe019fd50e248a1da0e15fcefd04a0dccba7e84c7c248.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a132710d-8985-5b51-b1e8-22c20fcf8f64', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01dc136275024f69ee838a3ffd71156aec5e49f023f956cfdc09b5122e7e36d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c4fe7da-0cd6-50fb-804d-b409a5d3dbda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a132710d-8985-5b51-b1e8-22c20fcf8f64', 1), '01dc136275024f69ee838a3ffd71156aec5e49f023f956cfdc09b5122e7e36d5',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/911d20fb10ec96db842fe019fd50e248a1da0e15fcefd04a0dccba7e84c7c248.mp3', 4832, '2026-09-13 07:52:40.959378', '0267516ab8cb895bf9b77fb85fc72374d894af5f0c6ddd734502c25b020e211b', 'validated', '{"audio_key":"911d20fb10ec96db842fe019fd50e248a1da0e15fcefd04a0dccba7e84c7c248","entity_key":"d_formal_messages_escalation_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0267516ab8cb895bf9b77fb85fc72374d894af5f0c6ddd734502c25b020e211b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/911d20fb10ec96db842fe019fd50e248a1da0e15fcefd04a0dccba7e84c7c248.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_01:2 -> audio/generated/de-DE/dialogues/a45f9096e4e49102eaf5a44d021c1f99014da0129c773cea76c006e946c426de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f65de2b7-41fa-550e-a2a1-49dfcf13f537', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b52672b4646375f8b12d161a58f83eefccf34840ba3ccc0946c73ba32ca462ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc684bd2-a32f-53a0-9b43-9218986d198b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f65de2b7-41fa-550e-a2a1-49dfcf13f537', 1), 'b52672b4646375f8b12d161a58f83eefccf34840ba3ccc0946c73ba32ca462ee',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a45f9096e4e49102eaf5a44d021c1f99014da0129c773cea76c006e946c426de.mp3', 2925, '2026-09-13 07:52:41.485794', 'ac5dc23a406310f4a5515a29d5367dfb60e7cda4bbfc23cd6e6f7165720b1d17', 'validated', '{"audio_key":"a45f9096e4e49102eaf5a44d021c1f99014da0129c773cea76c006e946c426de","entity_key":"d_source_summary_comparison_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ac5dc23a406310f4a5515a29d5367dfb60e7cda4bbfc23cd6e6f7165720b1d17","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a45f9096e4e49102eaf5a44d021c1f99014da0129c773cea76c006e946c426de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_01:3 -> audio/generated/de-DE/dialogues/a508b71eeb9c089b234dfa463fcfba4fbad4acdd35ad1803431a35501a36337d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63682758-d292-5664-924a-62ed80ad80b6', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '118e8ff417db8b700e471beefc5f421a4f43f171069c26ef82623a8e7f02f834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d76e204-6eac-5d60-8579-335397c70fee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63682758-d292-5664-924a-62ed80ad80b6', 1), '118e8ff417db8b700e471beefc5f421a4f43f171069c26ef82623a8e7f02f834',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a508b71eeb9c089b234dfa463fcfba4fbad4acdd35ad1803431a35501a36337d.mp3', 3657, '2026-09-13 07:52:42.303036', '30f702adb2b83e9741b021339d231a93724f75da0cdede5b62ded111162218fc', 'validated', '{"audio_key":"a508b71eeb9c089b234dfa463fcfba4fbad4acdd35ad1803431a35501a36337d","entity_key":"d_nuanced_agreement_disagreement_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"30f702adb2b83e9741b021339d231a93724f75da0cdede5b62ded111162218fc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a508b71eeb9c089b234dfa463fcfba4fbad4acdd35ad1803431a35501a36337d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_03:1 -> audio/generated/de-DE/dialogues/ab26f9abd503e904177603172bcc63027ce894b068aa19edebcc3345b4323afa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0363f7c7-eb82-59a1-bcef-24dd9710ee34', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19a3ba739ea9a05deacbf8cab19dd6da559f7864a879ba0d6257e9bedf115e81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57794edc-4342-5c67-afe2-e11459992b40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0363f7c7-eb82-59a1-bcef-24dd9710ee34', 1), '19a3ba739ea9a05deacbf8cab19dd6da559f7864a879ba0d6257e9bedf115e81',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ab26f9abd503e904177603172bcc63027ce894b068aa19edebcc3345b4323afa.mp3', 2742, '2026-09-13 07:52:42.739139', '322dbaf6cdbc86195ddf234e0ad4bb74c497eee0a21a35752774a784645a8d7a', 'validated', '{"audio_key":"ab26f9abd503e904177603172bcc63027ce894b068aa19edebcc3345b4323afa","entity_key":"d_meetings_decisions_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"322dbaf6cdbc86195ddf234e0ad4bb74c497eee0a21a35752774a784645a8d7a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ab26f9abd503e904177603172bcc63027ce894b068aa19edebcc3345b4323afa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_01:3 -> audio/generated/de-DE/dialogues/b199ead39d1bdf5483ce5e6fd17f0c590e0f26a2047e9ff43ac1952345bc3f15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83ee9a78-22cd-5c3d-9dd3-6641ea9c853f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e318daf35426167bd01b1a61212380510f5f5e97a940309a827ac5133f6625f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d0a2798-68e2-5030-a092-b4e204799f3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83ee9a78-22cd-5c3d-9dd3-6641ea9c853f', 1), 'e318daf35426167bd01b1a61212380510f5f5e97a940309a827ac5133f6625f8',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b199ead39d1bdf5483ce5e6fd17f0c590e0f26a2047e9ff43ac1952345bc3f15.mp3', 3004, '2026-09-13 07:52:43.567754', '4fa91233694a35d139f585459b06f808c7317be88429a53123990848a6df180e', 'validated', '{"audio_key":"b199ead39d1bdf5483ce5e6fd17f0c590e0f26a2047e9ff43ac1952345bc3f15","entity_key":"d_meetings_decisions_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4fa91233694a35d139f585459b06f808c7317be88429a53123990848a6df180e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b199ead39d1bdf5483ce5e6fd17f0c590e0f26a2047e9ff43ac1952345bc3f15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_01:1 -> audio/generated/de-DE/dialogues/b1bd8948ded806982ac2bb50da5982b68a42b7b4b2f79703515bf8dcb7b9f623.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4da8c50e-9972-57d7-93b9-c3a78d70ceb0', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8260050063a974fea597acbe8e81793f7241b8804995cdcdc50518130cb9dcdd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8d99965-dc76-5efe-b380-280ec9a54e1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4da8c50e-9972-57d7-93b9-c3a78d70ceb0', 1), '8260050063a974fea597acbe8e81793f7241b8804995cdcdc50518130cb9dcdd',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1bd8948ded806982ac2bb50da5982b68a42b7b4b2f79703515bf8dcb7b9f623.mp3', 3160, '2026-09-13 07:52:44.042097', 'd7f0ad369936c0fb3918f7701f1b34c49e1d67807b2de1e5f2e25aefc2fc6f51', 'validated', '{"audio_key":"b1bd8948ded806982ac2bb50da5982b68a42b7b4b2f79703515bf8dcb7b9f623","entity_key":"d_formal_messages_escalation_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d7f0ad369936c0fb3918f7701f1b34c49e1d67807b2de1e5f2e25aefc2fc6f51","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b1bd8948ded806982ac2bb50da5982b68a42b7b4b2f79703515bf8dcb7b9f623.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_02:3 -> audio/generated/de-DE/dialogues/b71cbf1b13de5fe94d9f44522843828e414d921f80614b7e8e463ba642dec686.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('357a0ac6-4f9b-54f7-b1c3-a04f91f32282', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f97f208439b917af3558dbf8f27351db924548212f7c42bf3a3882aa9c4a73ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f85d83b7-8433-554d-9e94-88918730b580', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('357a0ac6-4f9b-54f7-b1c3-a04f91f32282', 1), 'f97f208439b917af3558dbf8f27351db924548212f7c42bf3a3882aa9c4a73ce',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b71cbf1b13de5fe94d9f44522843828e414d921f80614b7e8e463ba642dec686.mp3', 1854, '2026-09-13 07:52:44.690655', '535cf4c46d5d1d3af32e813962e497058c4f6951c81cf40f518e849fd276047f', 'validated', '{"audio_key":"b71cbf1b13de5fe94d9f44522843828e414d921f80614b7e8e463ba642dec686","entity_key":"d_argument_evidence_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"535cf4c46d5d1d3af32e813962e497058c4f6951c81cf40f518e849fd276047f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b71cbf1b13de5fe94d9f44522843828e414d921f80614b7e8e463ba642dec686.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_03:1 -> audio/generated/de-DE/dialogues/b963802a5dbfd64027578bd3f2f42e3b77a66656f92b5847de826a00b6f85fea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54ef4976-217d-5616-9f69-2b197a431041', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77da5e672118b503e15330752ad25b86a522fdb3588738c154be5542340bce06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ce91ac-a1bd-5022-836d-f6d38b8e8d6f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54ef4976-217d-5616-9f69-2b197a431041', 1), '77da5e672118b503e15330752ad25b86a522fdb3588738c154be5542340bce06',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b963802a5dbfd64027578bd3f2f42e3b77a66656f92b5847de826a00b6f85fea.mp3', 2324, '2026-09-13 07:52:45.265193', 'dff569577e4c301ef48ddaad2465411e8f6113b48b517512e5cf23f09bed5c2c', 'validated', '{"audio_key":"b963802a5dbfd64027578bd3f2f42e3b77a66656f92b5847de826a00b6f85fea","entity_key":"d_nuanced_agreement_disagreement_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dff569577e4c301ef48ddaad2465411e8f6113b48b517512e5cf23f09bed5c2c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b963802a5dbfd64027578bd3f2f42e3b77a66656f92b5847de826a00b6f85fea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_03:4 -> audio/generated/de-DE/dialogues/b9d371db4fdb493f27ad622007b1df54117a81bfb05a85597758e455f45dd77e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b120b73b-2ccd-5861-9518-a7507b317b29', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3f5372a8b44a0c140fb329b3cc41e217591e71c6156f125aceb791f651977e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93298414-bcf4-5cb4-b0cf-fc585811cbff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b120b73b-2ccd-5861-9518-a7507b317b29', 1), 'd3f5372a8b44a0c140fb329b3cc41e217591e71c6156f125aceb791f651977e5',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b9d371db4fdb493f27ad622007b1df54117a81bfb05a85597758e455f45dd77e.mp3', 3056, '2026-09-13 07:52:45.994783', 'd01219ef8c0a9f6dd08b4cbd64357e7fa3c30de4ad006b3b0892941baa569b65', 'validated', '{"audio_key":"b9d371db4fdb493f27ad622007b1df54117a81bfb05a85597758e455f45dd77e","entity_key":"d_meetings_decisions_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d01219ef8c0a9f6dd08b4cbd64357e7fa3c30de4ad006b3b0892941baa569b65","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b9d371db4fdb493f27ad622007b1df54117a81bfb05a85597758e455f45dd77e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_03:3 -> audio/generated/de-DE/dialogues/ba97ea05933b75117a7f8cf69e4467c475043dc10c332068acad822cf11fbcbe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('081376b2-e5f2-5d5a-8faa-d0f69ae9c9b7', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6605cf852f5db863715cb09190c2bbdab05b857e2774fec6304bc718a93f5c2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31ad63ec-586f-55b4-a27a-23992bc3c097', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('081376b2-e5f2-5d5a-8faa-d0f69ae9c9b7', 1), '6605cf852f5db863715cb09190c2bbdab05b857e2774fec6304bc718a93f5c2e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba97ea05933b75117a7f8cf69e4467c475043dc10c332068acad822cf11fbcbe.mp3', 1149, '2026-09-13 07:52:46.365357', '45f61a8c12e024cb90d3f13b04cae54274a7eb2d6cc5bd017ed033a84d7f96bd', 'validated', '{"audio_key":"ba97ea05933b75117a7f8cf69e4467c475043dc10c332068acad822cf11fbcbe","entity_key":"d_nuanced_agreement_disagreement_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"45f61a8c12e024cb90d3f13b04cae54274a7eb2d6cc5bd017ed033a84d7f96bd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ba97ea05933b75117a7f8cf69e4467c475043dc10c332068acad822cf11fbcbe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_02:2 -> audio/generated/de-DE/dialogues/bb02f7089adb1a651cd41c9f276926d2367bba79c9b30d02661e2bca0cfa5d6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1855783d-098a-5bea-b76f-89fd2376711d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01fe47e6b3933ec54a8a5ede452783a8f24d84d2fa840c43aa064f3ae752c53f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('689523ef-421c-5fe5-9c79-1729564ddaa5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1855783d-098a-5bea-b76f-89fd2376711d', 1), '01fe47e6b3933ec54a8a5ede452783a8f24d84d2fa840c43aa064f3ae752c53f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bb02f7089adb1a651cd41c9f276926d2367bba79c9b30d02661e2bca0cfa5d6a.mp3', 5328, '2026-09-13 07:52:47.570417', '457f335ff00d384a87f2a320a67d759d62c6bc2c126e6aef948442a2c32d400c', 'validated', '{"audio_key":"bb02f7089adb1a651cd41c9f276926d2367bba79c9b30d02661e2bca0cfa5d6a","entity_key":"d_argument_evidence_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"457f335ff00d384a87f2a320a67d759d62c6bc2c126e6aef948442a2c32d400c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bb02f7089adb1a651cd41c9f276926d2367bba79c9b30d02661e2bca0cfa5d6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_01:1 -> audio/generated/de-DE/dialogues/bb1973275d176f75939be522cab11087a4826c183c874a82f2538517a0751965.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b97d1400-5120-5c30-baae-3c5a69869655', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3960417a0c760d2586e0969141e82da04e9a44ea90c70de15f5511ae18b6b784'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c53ad10-8593-5596-bc77-dbddaf0a2629', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b97d1400-5120-5c30-baae-3c5a69869655', 1), '3960417a0c760d2586e0969141e82da04e9a44ea90c70de15f5511ae18b6b784',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bb1973275d176f75939be522cab11087a4826c183c874a82f2538517a0751965.mp3', 3996, '2026-09-13 07:52:47.739412', 'a6f8108e2e884e66d1de64b8bb3e8ee3fd3d817293f42001ca8e5a44e5c9de8a', 'validated', '{"audio_key":"bb1973275d176f75939be522cab11087a4826c183c874a82f2538517a0751965","entity_key":"d_meetings_decisions_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a6f8108e2e884e66d1de64b8bb3e8ee3fd3d817293f42001ca8e5a44e5c9de8a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bb1973275d176f75939be522cab11087a4826c183c874a82f2538517a0751965.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_02:2 -> audio/generated/de-DE/dialogues/bc36e3e2e3c2d027116697ccea000571aa043bf97f6d0c565eaa54ec7404ad5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c181b6b-5efe-5f9f-b82f-dbb4ce47df19', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a69f2a9273cbe8e71448b7ead27c9a80b7a6fec82dc33ca4b405d176ee6139b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96c88942-2c9c-58cb-9d17-506d76fb07f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c181b6b-5efe-5f9f-b82f-dbb4ce47df19', 1), 'a69f2a9273cbe8e71448b7ead27c9a80b7a6fec82dc33ca4b405d176ee6139b0',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bc36e3e2e3c2d027116697ccea000571aa043bf97f6d0c565eaa54ec7404ad5e.mp3', 3840, '2026-09-13 07:52:48.951153', 'b5bda1d118b07de946ef0d70907bf109a80047ed336eeed42740c8a563bd93da', 'validated', '{"audio_key":"bc36e3e2e3c2d027116697ccea000571aa043bf97f6d0c565eaa54ec7404ad5e","entity_key":"d_formal_messages_escalation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b5bda1d118b07de946ef0d70907bf109a80047ed336eeed42740c8a563bd93da","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bc36e3e2e3c2d027116697ccea000571aa043bf97f6d0c565eaa54ec7404ad5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_01:3 -> audio/generated/de-DE/dialogues/c6ea2b87a41ae176ef5d59f07a70512d29eb702026c2f14022b1bbf15066c972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab7d3150-44c0-530e-99c9-640394e42a27', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95fe661cbfbc35313197e22f9055dea34996006937961d17e7f971e7107916ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecbb476d-bb8d-5599-9cad-9904bcb98945', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab7d3150-44c0-530e-99c9-640394e42a27', 1), '95fe661cbfbc35313197e22f9055dea34996006937961d17e7f971e7107916ad',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6ea2b87a41ae176ef5d59f07a70512d29eb702026c2f14022b1bbf15066c972.mp3', 2638, '2026-09-13 07:52:48.910452', '65fe6883bfdfbb2e7b437f0a18ef5b60bcd1a10a3190a0499fb16bcac8f8bb98', 'validated', '{"audio_key":"c6ea2b87a41ae176ef5d59f07a70512d29eb702026c2f14022b1bbf15066c972","entity_key":"d_data_trends_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"65fe6883bfdfbb2e7b437f0a18ef5b60bcd1a10a3190a0499fb16bcac8f8bb98","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c6ea2b87a41ae176ef5d59f07a70512d29eb702026c2f14022b1bbf15066c972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_01:1 -> audio/generated/de-DE/dialogues/c75fa38751b36ce8ebb31c5e998a83fc27de85c4fcc3f507c909a50074dbde93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4f87cca8-abb5-5c4b-aa64-02ab10722b3d', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '486ca10dfd4f8052c418e0c15f64042837ce957f821f81795fd8daef83f08c79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8c48a1f-0226-5c36-bfd8-88d290247c6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4f87cca8-abb5-5c4b-aa64-02ab10722b3d', 1), '486ca10dfd4f8052c418e0c15f64042837ce957f821f81795fd8daef83f08c79',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c75fa38751b36ce8ebb31c5e998a83fc27de85c4fcc3f507c909a50074dbde93.mp3', 2168, '2026-09-13 07:52:50.074937', '3b71f5156ea7d4d8225aa33eaa8b48ffddf6cc1be3785f0e52f61820a13bdfad', 'validated', '{"audio_key":"c75fa38751b36ce8ebb31c5e998a83fc27de85c4fcc3f507c909a50074dbde93","entity_key":"d_presentations_questions_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3b71f5156ea7d4d8225aa33eaa8b48ffddf6cc1be3785f0e52f61820a13bdfad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c75fa38751b36ce8ebb31c5e998a83fc27de85c4fcc3f507c909a50074dbde93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_01:4 -> audio/generated/de-DE/dialogues/c8644f7c0a1be1cfcbfaf398db71b0353570f44f85a3d043acea564634dadf59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9bc7887-dec6-5c5d-885b-8e1393ff7897', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '616ce995ae7bb3e33d7a2e412a891351b51e5fed20ac650f8504723011498346'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56e2ab4e-5bb7-57d2-94e6-2a772ca4dfcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9bc7887-dec6-5c5d-885b-8e1393ff7897', 1), '616ce995ae7bb3e33d7a2e412a891351b51e5fed20ac650f8504723011498346',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c8644f7c0a1be1cfcbfaf398db71b0353570f44f85a3d043acea564634dadf59.mp3', 2533, '2026-09-13 07:52:50.139733', '58e78c2dfc872cc0c0612d1bcaabd63a72cc74af649b190eef65d433196abd1e', 'validated', '{"audio_key":"c8644f7c0a1be1cfcbfaf398db71b0353570f44f85a3d043acea564634dadf59","entity_key":"d_meetings_decisions_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"58e78c2dfc872cc0c0612d1bcaabd63a72cc74af649b190eef65d433196abd1e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c8644f7c0a1be1cfcbfaf398db71b0353570f44f85a3d043acea564634dadf59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_01:4 -> audio/generated/de-DE/dialogues/c983753c75478ec878d531d0a520e50f23fcdd6e8ddf24574ab6477b98e992f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd3a7d2d-cdb4-5789-8430-0b0e160575d8', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0e21190a63efce41f427b2a526072cbf05c69c343a621d18f358ffac1cc70e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4343e9a-dc6a-588b-8d63-355b00baa7f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd3a7d2d-cdb4-5789-8430-0b0e160575d8', 1), 'c0e21190a63efce41f427b2a526072cbf05c69c343a621d18f358ffac1cc70e3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c983753c75478ec878d531d0a520e50f23fcdd6e8ddf24574ab6477b98e992f2.mp3', 3160, '2026-09-13 07:52:51.392640', '2b2de5e806fb5d115e3b5b236348dbcb82ae8499f3dc8c7356b913771b314019', 'validated', '{"audio_key":"c983753c75478ec878d531d0a520e50f23fcdd6e8ddf24574ab6477b98e992f2","entity_key":"d_negotiation_compromise_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2b2de5e806fb5d115e3b5b236348dbcb82ae8499f3dc8c7356b913771b314019","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c983753c75478ec878d531d0a520e50f23fcdd6e8ddf24574ab6477b98e992f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_01:3 -> audio/generated/de-DE/dialogues/caac497879c26f4a82d5e1984bf30730b59242660d27611897f77a0e54228be9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b1fcf20-3a11-5700-a98d-2673c1f572ed', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eba63d01689ce003ecdffaf5494cd6aeafff40692c0ee4191cc31c9e5c6991f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ff76366-4994-52f9-8ece-cef05bd7b4d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b1fcf20-3a11-5700-a98d-2673c1f572ed', 1), '1eba63d01689ce003ecdffaf5494cd6aeafff40692c0ee4191cc31c9e5c6991f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/caac497879c26f4a82d5e1984bf30730b59242660d27611897f77a0e54228be9.mp3', 3840, '2026-09-13 07:52:51.534320', 'ef93804940f941b8d35af8d32ba7d89720ffbc2106e38c1cccfbbbede8c0b3ab', 'validated', '{"audio_key":"caac497879c26f4a82d5e1984bf30730b59242660d27611897f77a0e54228be9","entity_key":"d_source_summary_comparison_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ef93804940f941b8d35af8d32ba7d89720ffbc2106e38c1cccfbbbede8c0b3ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/caac497879c26f4a82d5e1984bf30730b59242660d27611897f77a0e54228be9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_02:4 -> audio/generated/de-DE/dialogues/cd3fc75d20b8884236b1af0198a2f15859f0023d8308f15a98543bb0cc785478.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85582c16-2f42-59ec-ab46-5edbf923e082', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c19328077432789e2f2c2dc06a1ebbb7eaa9ffaf68caa883ae18200eb09ddf53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a52e8676-ac09-5e9c-b505-e88cc011219c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85582c16-2f42-59ec-ab46-5edbf923e082', 1), 'c19328077432789e2f2c2dc06a1ebbb7eaa9ffaf68caa883ae18200eb09ddf53',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cd3fc75d20b8884236b1af0198a2f15859f0023d8308f15a98543bb0cc785478.mp3', 2925, '2026-09-13 07:52:52.633537', '1e79bd6e631c1404da84f45584d8476b6ed437df8045cc8e3f828e45473cc99d', 'validated', '{"audio_key":"cd3fc75d20b8884236b1af0198a2f15859f0023d8308f15a98543bb0cc785478","entity_key":"d_formal_messages_escalation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"1e79bd6e631c1404da84f45584d8476b6ed437df8045cc8e3f828e45473cc99d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cd3fc75d20b8884236b1af0198a2f15859f0023d8308f15a98543bb0cc785478.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_02:1 -> audio/generated/de-DE/dialogues/d13b57eada6de4f40067de5f3d99af8c807290760d75e1845452e44b109f290f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('996b15a3-191b-5eff-a62c-1c37b7337191', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db99d3eeb20ef5e949c4f7fed7f6609e98ae6bd37706ceb4ef252f0e823843d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82d6cddf-945c-537c-9cfd-8559307bdd97', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('996b15a3-191b-5eff-a62c-1c37b7337191', 1), 'db99d3eeb20ef5e949c4f7fed7f6609e98ae6bd37706ceb4ef252f0e823843d7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d13b57eada6de4f40067de5f3d99af8c807290760d75e1845452e44b109f290f.mp3', 3056, '2026-09-13 07:52:52.806343', 'a6022807ff4773287c1d4af3dfaa8066c60ecfb62e4b02b7d321dcb512163d70', 'validated', '{"audio_key":"d13b57eada6de4f40067de5f3d99af8c807290760d75e1845452e44b109f290f","entity_key":"d_media_claims_uncertainty_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a6022807ff4773287c1d4af3dfaa8066c60ecfb62e4b02b7d321dcb512163d70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d13b57eada6de4f40067de5f3d99af8c807290760d75e1845452e44b109f290f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_03:4 -> audio/generated/de-DE/dialogues/d142d53262a9457d9f7d9b72685d71d12084408c534e728c0e15e4ff0b0ba9a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1d15e37-53bb-5a4b-966b-a5f224666dad', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f131cfed3a82ae3d5731a623fefd7473489136aeb474ac0c66fb34d3fab0d373'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('571ad655-f4ed-57b8-a1d4-26e615afe4ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1d15e37-53bb-5a4b-966b-a5f224666dad', 1), 'f131cfed3a82ae3d5731a623fefd7473489136aeb474ac0c66fb34d3fab0d373',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d142d53262a9457d9f7d9b72685d71d12084408c534e728c0e15e4ff0b0ba9a3.mp3', 4362, '2026-09-13 07:52:54.122012', '5725e876a31dd6b710bb0ea9645895b8d1898dee689031f99ffba52a24ef628b', 'validated', '{"audio_key":"d142d53262a9457d9f7d9b72685d71d12084408c534e728c0e15e4ff0b0ba9a3","entity_key":"d_media_claims_uncertainty_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5725e876a31dd6b710bb0ea9645895b8d1898dee689031f99ffba52a24ef628b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d142d53262a9457d9f7d9b72685d71d12084408c534e728c0e15e4ff0b0ba9a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_03:1 -> audio/generated/de-DE/dialogues/d1638b5781dd76470e517138291e99b50cc3e050d243137aafc02ad06d3b052d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8722d2eb-5ca6-5b7f-981f-f2c9d887238a', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cffbb908beb6ec08c794e4aff8d1ef2ba9598b192bb1703da88626c464657e97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2eb68d0-de3e-5b34-8885-14636822c746', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8722d2eb-5ca6-5b7f-981f-f2c9d887238a', 1), 'cffbb908beb6ec08c794e4aff8d1ef2ba9598b192bb1703da88626c464657e97',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1638b5781dd76470e517138291e99b50cc3e050d243137aafc02ad06d3b052d.mp3', 4257, '2026-09-13 07:52:54.175590', '33b700a6841fe844268c4fec477717d1f65e3102269d0f6e02d312fd72a99e2d', 'validated', '{"audio_key":"d1638b5781dd76470e517138291e99b50cc3e050d243137aafc02ad06d3b052d","entity_key":"d_media_claims_uncertainty_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"33b700a6841fe844268c4fec477717d1f65e3102269d0f6e02d312fd72a99e2d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d1638b5781dd76470e517138291e99b50cc3e050d243137aafc02ad06d3b052d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_01:4 -> audio/generated/de-DE/dialogues/d250e5bc4e0b5ff1f473ee92e310664d09d34d413568f0d65c54a76e8d9681d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fcf3d920-be7f-5bca-bf50-9b9fa2bbd8d2', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9b2416083bcf7352b38a5b05fd9b4e9430d36e2bc416c4a92567acf5b9cf821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4faee015-a0b7-5a2f-8a7e-b117f8d89ea5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fcf3d920-be7f-5bca-bf50-9b9fa2bbd8d2', 1), 'c9b2416083bcf7352b38a5b05fd9b4e9430d36e2bc416c4a92567acf5b9cf821',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d250e5bc4e0b5ff1f473ee92e310664d09d34d413568f0d65c54a76e8d9681d8.mp3', 4623, '2026-09-13 07:52:55.557874', '23043a6b8cfb71eeb8266d50d5d71ad83f2fd24d4db3dff19011c4e3b43f87be', 'validated', '{"audio_key":"d250e5bc4e0b5ff1f473ee92e310664d09d34d413568f0d65c54a76e8d9681d8","entity_key":"d_argument_evidence_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"23043a6b8cfb71eeb8266d50d5d71ad83f2fd24d4db3dff19011c4e3b43f87be","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d250e5bc4e0b5ff1f473ee92e310664d09d34d413568f0d65c54a76e8d9681d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_01:4 -> audio/generated/de-DE/dialogues/d32e1bdd1ffe150bcc3b51931bae97d8685edb01e77abccb5a4165dd6ce15c31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9167c16-c7e4-55a3-b321-10cc703ad3ee', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '429ce83f01892fec91e9d6e79b28ba8c4c3457d9c67792cc5f32d3380b635974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb91807f-9175-52f3-9951-afa811103081', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9167c16-c7e4-55a3-b321-10cc703ad3ee', 1), '429ce83f01892fec91e9d6e79b28ba8c4c3457d9c67792cc5f32d3380b635974',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d32e1bdd1ffe150bcc3b51931bae97d8685edb01e77abccb5a4165dd6ce15c31.mp3', 2168, '2026-09-13 07:52:55.354827', 'f48835a4381f264fd80289f87d5bc84d86b0f0d2541edc690721ad3a6bc1a0c4', 'validated', '{"audio_key":"d32e1bdd1ffe150bcc3b51931bae97d8685edb01e77abccb5a4165dd6ce15c31","entity_key":"d_nuanced_agreement_disagreement_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f48835a4381f264fd80289f87d5bc84d86b0f0d2541edc690721ad3a6bc1a0c4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d32e1bdd1ffe150bcc3b51931bae97d8685edb01e77abccb5a4165dd6ce15c31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_01:2 -> audio/generated/de-DE/dialogues/d46efca0b3a509814cb6f14d4c4b17645da8bd526d4da5f311a100cd592fbb73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('987444e4-2fd1-5ccd-83a2-f3e8d3c7f00d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '390d9634b879ff7bfb3b281025ccd7cea932008e9c51fdc0639d48537fab300d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc9c3b2f-b8db-55aa-852a-ab4de2738654', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('987444e4-2fd1-5ccd-83a2-f3e8d3c7f00d', 1), '390d9634b879ff7bfb3b281025ccd7cea932008e9c51fdc0639d48537fab300d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d46efca0b3a509814cb6f14d4c4b17645da8bd526d4da5f311a100cd592fbb73.mp3', 4075, '2026-09-13 07:52:56.770540', 'b46bb246711e50a93c2af850651f39a4b7e29e981e2f943540ad245dc229f010', 'validated', '{"audio_key":"d46efca0b3a509814cb6f14d4c4b17645da8bd526d4da5f311a100cd592fbb73","entity_key":"d_nuanced_agreement_disagreement_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b46bb246711e50a93c2af850651f39a4b7e29e981e2f943540ad245dc229f010","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d46efca0b3a509814cb6f14d4c4b17645da8bd526d4da5f311a100cd592fbb73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_02:1 -> audio/generated/de-DE/dialogues/d57357008bcfbf2723bd27aa692e3eef3d9a1a837e5e82aa54752438ce96902f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7216cffd-7118-56b6-b1f3-4846afbb67b2', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8a1d8a64472eade793f9a182787a71bc494d136066025664a6c754f3da2cadd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb2a887a-aad9-5e94-a25d-938679cd8bda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7216cffd-7118-56b6-b1f3-4846afbb67b2', 1), 'a8a1d8a64472eade793f9a182787a71bc494d136066025664a6c754f3da2cadd',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d57357008bcfbf2723bd27aa692e3eef3d9a1a837e5e82aa54752438ce96902f.mp3', 3291, '2026-09-13 07:52:56.829205', '51bca287ebe5d7ea8d27a54a05c35764c92c90e5213fc75a294299cd8269e026', 'validated', '{"audio_key":"d57357008bcfbf2723bd27aa692e3eef3d9a1a837e5e82aa54752438ce96902f","entity_key":"d_presentations_questions_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51bca287ebe5d7ea8d27a54a05c35764c92c90e5213fc75a294299cd8269e026","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d57357008bcfbf2723bd27aa692e3eef3d9a1a837e5e82aa54752438ce96902f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_01:1 -> audio/generated/de-DE/dialogues/e200db8d88ff654f9e4e86fde4024eb6e28e81d4d0da8f3cebd657a37052468a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18c9dd62-175c-5388-ab1d-9ce7db95e516', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fb0f9c4519a3daf179b212f882b1656a9abce85c1879275fe3fdc8a1a5771e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f616ff2a-e16a-564b-bd62-7d3f4787d5bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18c9dd62-175c-5388-ab1d-9ce7db95e516', 1), '4fb0f9c4519a3daf179b212f882b1656a9abce85c1879275fe3fdc8a1a5771e2',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e200db8d88ff654f9e4e86fde4024eb6e28e81d4d0da8f3cebd657a37052468a.mp3', 2873, '2026-09-13 07:52:57.984193', '6ebb6dc9c7c5d6a564da86605dbb3b158f01c493966b1d32ec232a731868d32c', 'validated', '{"audio_key":"e200db8d88ff654f9e4e86fde4024eb6e28e81d4d0da8f3cebd657a37052468a","entity_key":"d_social_issues_discussion_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6ebb6dc9c7c5d6a564da86605dbb3b158f01c493966b1d32ec232a731868d32c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e200db8d88ff654f9e4e86fde4024eb6e28e81d4d0da8f3cebd657a37052468a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_03:2 -> audio/generated/de-DE/dialogues/e21d06cbb72a9cb9497b140fee44ee663557405865dda135df8102a42cbd6294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d9ef394-55ca-5b33-9492-7c815f5657a7', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '142acf431ab590aae7a3f61ea6199178591fdcfbbc538abb6bff3365abedd288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('204f6f77-cbd7-5c88-923d-a722a1598fec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d9ef394-55ca-5b33-9492-7c815f5657a7', 1), '142acf431ab590aae7a3f61ea6199178591fdcfbbc538abb6bff3365abedd288',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e21d06cbb72a9cb9497b140fee44ee663557405865dda135df8102a42cbd6294.mp3', 4257, '2026-09-13 07:52:58.235597', 'cd7677a828a11ee1f16b54a853f32f694f672396ac1d2e5faae888ec424bdb6b', 'validated', '{"audio_key":"e21d06cbb72a9cb9497b140fee44ee663557405865dda135df8102a42cbd6294","entity_key":"d_social_issues_discussion_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cd7677a828a11ee1f16b54a853f32f694f672396ac1d2e5faae888ec424bdb6b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e21d06cbb72a9cb9497b140fee44ee663557405865dda135df8102a42cbd6294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_03:3 -> audio/generated/de-DE/dialogues/e61c60fbbfa8b6ac344762f15be47f1288157452096c70e20538860511b3d3bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63da0bb5-c198-5eb4-9b2a-f27129860ebb', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3613bac83b4a09555c550f548d18fb516d14d7954b3311950bbb8b3fbaa5fb00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56842d8a-c18e-567c-a369-e8eebdfbfff1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63da0bb5-c198-5eb4-9b2a-f27129860ebb', 1), '3613bac83b4a09555c550f548d18fb516d14d7954b3311950bbb8b3fbaa5fb00',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e61c60fbbfa8b6ac344762f15be47f1288157452096c70e20538860511b3d3bb.mp3', 3343, '2026-09-13 07:52:59.340621', 'b7d752136070fef123d7708fff58dd09d2584019b93bfc15fddadc59a5a9a4db', 'validated', '{"audio_key":"e61c60fbbfa8b6ac344762f15be47f1288157452096c70e20538860511b3d3bb","entity_key":"d_data_trends_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b7d752136070fef123d7708fff58dd09d2584019b93bfc15fddadc59a5a9a4db","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e61c60fbbfa8b6ac344762f15be47f1288157452096c70e20538860511b3d3bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_03:3 -> audio/generated/de-DE/dialogues/e8740e3077074503c88183850636c32994e000280388d6f72efc3b153287cb91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0493e70f-d8a3-526b-bc5f-b8857543f82c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d04f8d8c65eaa043b00c0f5faa153ab8df8187b614fb40725431d2856147908'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9898a00-04b0-59a7-81c7-bb0140d80f28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0493e70f-d8a3-526b-bc5f-b8857543f82c', 1), '2d04f8d8c65eaa043b00c0f5faa153ab8df8187b614fb40725431d2856147908',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8740e3077074503c88183850636c32994e000280388d6f72efc3b153287cb91.mp3', 2455, '2026-09-13 07:52:59.421146', '7edb8d787d6f300ab8594f88939fa655cac33a70362ec2c25043f0726a4a4482', 'validated', '{"audio_key":"e8740e3077074503c88183850636c32994e000280388d6f72efc3b153287cb91","entity_key":"d_presentations_questions_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7edb8d787d6f300ab8594f88939fa655cac33a70362ec2c25043f0726a4a4482","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e8740e3077074503c88183850636c32994e000280388d6f72efc3b153287cb91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_issues_discussion_02:3 -> audio/generated/de-DE/dialogues/e94c086646517d7f3bbf194c20c76dfad2827acbf329b82cdf816d9be955d530.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24bd563f-5604-56b3-8f57-ba0359c6f6bc', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_issues_discussion_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64f9281b109bc945cd0bdd0b5cb29fed51d3de64f13c54c3c3aaf6ce375f66c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12369f46-5b7d-5afc-8f57-4f0880fcb2d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24bd563f-5604-56b3-8f57-ba0359c6f6bc', 1), 'c64f9281b109bc945cd0bdd0b5cb29fed51d3de64f13c54c3c3aaf6ce375f66c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e94c086646517d7f3bbf194c20c76dfad2827acbf329b82cdf816d9be955d530.mp3', 3239, '2026-09-13 07:53:00.612648', '5356f13e91e1f6d5b3a4a3a732549d424481d14a793ce1c1ed21a0d43ef1b523', 'validated', '{"audio_key":"e94c086646517d7f3bbf194c20c76dfad2827acbf329b82cdf816d9be955d530","entity_key":"d_social_issues_discussion_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5356f13e91e1f6d5b3a4a3a732549d424481d14a793ce1c1ed21a0d43ef1b523","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e94c086646517d7f3bbf194c20c76dfad2827acbf329b82cdf816d9be955d530.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_messages_escalation_02:1 -> audio/generated/de-DE/dialogues/eb0fbf6fac1aef638724598a0b69c708acbb5b08df79d8364ea38e0171e540cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc0e3ec7-9430-5c95-923d-1b0de016b2c7', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_messages_escalation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77261a0a6eaa046cfd53dc18d16620c63f29cc83ee28c9f51be9e3eef60de54b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('472b9947-40c9-5222-804e-3694d6e861c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc0e3ec7-9430-5c95-923d-1b0de016b2c7', 1), '77261a0a6eaa046cfd53dc18d16620c63f29cc83ee28c9f51be9e3eef60de54b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb0fbf6fac1aef638724598a0b69c708acbb5b08df79d8364ea38e0171e540cb.mp3', 2821, '2026-09-13 07:53:00.664492', '7b7ece9ccfc19944f0c21a8c025394692c1535d02f697c2c9c5a75f4ba822c62', 'validated', '{"audio_key":"eb0fbf6fac1aef638724598a0b69c708acbb5b08df79d8364ea38e0171e540cb","entity_key":"d_formal_messages_escalation_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7b7ece9ccfc19944f0c21a8c025394692c1535d02f697c2c9c5a75f4ba822c62","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eb0fbf6fac1aef638724598a0b69c708acbb5b08df79d8364ea38e0171e540cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_02:3 -> audio/generated/de-DE/dialogues/ed06a16ca38f43617179b4193011b2480fe38a0aa5c4591666e5ec13cad5bf51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b91fb7f7-96f5-53eb-bdd1-b3556e066347', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d2d88e1a78b456ae77b7ef64b49e84ceb643c43db52b087b95f08015f89029e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('314da86d-3c07-5449-bd9e-9fe4bcb801b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b91fb7f7-96f5-53eb-bdd1-b3556e066347', 1), '5d2d88e1a78b456ae77b7ef64b49e84ceb643c43db52b087b95f08015f89029e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed06a16ca38f43617179b4193011b2480fe38a0aa5c4591666e5ec13cad5bf51.mp3', 2925, '2026-09-13 07:53:01.837333', '9ea760d2ba4b031e1f4da576053cc3da5d1df1c74be81d3883d393da0dc816f2', 'validated', '{"audio_key":"ed06a16ca38f43617179b4193011b2480fe38a0aa5c4591666e5ec13cad5bf51","entity_key":"d_nuanced_agreement_disagreement_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9ea760d2ba4b031e1f4da576053cc3da5d1df1c74be81d3883d393da0dc816f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ed06a16ca38f43617179b4193011b2480fe38a0aa5c4591666e5ec13cad5bf51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_claims_uncertainty_01:1 -> audio/generated/de-DE/dialogues/eef880dfb32675f3c28ecf62a2936c13faaa50188dc8c25d7b958ee0b0883095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e133c02-84b2-5968-b129-fc8d00915367', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_claims_uncertainty_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba0c53b3fbb6d676d626a2fcb1a736ae64bb376ba4f7fdcc68a262db170011ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('582fadd9-7dcf-5cf1-9ce5-b44cecf27d84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e133c02-84b2-5968-b129-fc8d00915367', 1), 'ba0c53b3fbb6d676d626a2fcb1a736ae64bb376ba4f7fdcc68a262db170011ae',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eef880dfb32675f3c28ecf62a2936c13faaa50188dc8c25d7b958ee0b0883095.mp3', 3422, '2026-09-13 07:53:01.974479', 'dde7aac9767e7ce65b4b9f7818963b705651423b2b2a264a72b2fd349545c50e', 'validated', '{"audio_key":"eef880dfb32675f3c28ecf62a2936c13faaa50188dc8c25d7b958ee0b0883095","entity_key":"d_media_claims_uncertainty_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"dde7aac9767e7ce65b4b9f7818963b705651423b2b2a264a72b2fd349545c50e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/eef880dfb32675f3c28ecf62a2936c13faaa50188dc8c25d7b958ee0b0883095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_summary_comparison_01:4 -> audio/generated/de-DE/dialogues/f0f3ab93daff53a8d7b0bc8531e41f5cb72a6704c74839e543703f513bfaa584.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a7faefc-8713-52ff-a3be-23f03fa282d9', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_summary_comparison_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f04781fc5dee63eb4d55fac03aef46dcc77fa9569e6fb71f9c130a9d1cae5ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e69e1cf-89b0-5001-b513-c179ac25034a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a7faefc-8713-52ff-a3be-23f03fa282d9', 1), '7f04781fc5dee63eb4d55fac03aef46dcc77fa9569e6fb71f9c130a9d1cae5ba',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0f3ab93daff53a8d7b0bc8531e41f5cb72a6704c74839e543703f513bfaa584.mp3', 3186, '2026-09-13 07:53:03.150526', '2098e3b9c4b0b6668b54c2e1a31df3dce30626e318f78245bf782015205771b5', 'validated', '{"audio_key":"f0f3ab93daff53a8d7b0bc8531e41f5cb72a6704c74839e543703f513bfaa584","entity_key":"d_source_summary_comparison_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2098e3b9c4b0b6668b54c2e1a31df3dce30626e318f78245bf782015205771b5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f0f3ab93daff53a8d7b0bc8531e41f5cb72a6704c74839e543703f513bfaa584.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_03:4 -> audio/generated/de-DE/dialogues/f1bea0b0d3e2662ec368e633d3f7d4d79101a2771a967f862c57aa2e629369d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c65ad6dd-02c3-5dda-9bec-8bc4403d4ba2', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '577068642d443b569575c3a0eb7cedc060135da37514136e9a708b466fa6f21a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c870f5c4-81ed-54bf-bd53-3ad5b73fe8cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c65ad6dd-02c3-5dda-9bec-8bc4403d4ba2', 1), '577068642d443b569575c3a0eb7cedc060135da37514136e9a708b466fa6f21a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f1bea0b0d3e2662ec368e633d3f7d4d79101a2771a967f862c57aa2e629369d6.mp3', 4440, '2026-09-13 07:53:03.382597', '29166d42f8bb76a186a604237f469bf4a9cdd2a777f0236bf82536c97db9d3a1', 'validated', '{"audio_key":"f1bea0b0d3e2662ec368e633d3f7d4d79101a2771a967f862c57aa2e629369d6","entity_key":"d_nuanced_agreement_disagreement_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"29166d42f8bb76a186a604237f469bf4a9cdd2a777f0236bf82536c97db9d3a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f1bea0b0d3e2662ec368e633d3f7d4d79101a2771a967f862c57aa2e629369d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_agreement_disagreement_02:1 -> audio/generated/de-DE/dialogues/f6435faba3e9376ca15d592184f29afb1dbe35cea53156e60bd5d6d2ab171083.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31593678-3ebc-5143-b011-aeca132bcbd1', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_agreement_disagreement_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcf07d068355f94cbafe7cd6670e117a39aabc81bf1464aea0d0a25e1c32ef71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c947b306-6c86-55cf-aa8f-b0860c4ca9e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31593678-3ebc-5143-b011-aeca132bcbd1', 1), 'dcf07d068355f94cbafe7cd6670e117a39aabc81bf1464aea0d0a25e1c32ef71',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6435faba3e9376ca15d592184f29afb1dbe35cea53156e60bd5d6d2ab171083.mp3', 3186, '2026-09-13 07:53:04.421799', 'cb2bf86623770c45350d204b0ff25dfbf141c894ab7cd231e103eee40ea27bed', 'validated', '{"audio_key":"f6435faba3e9376ca15d592184f29afb1dbe35cea53156e60bd5d6d2ab171083","entity_key":"d_nuanced_agreement_disagreement_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cb2bf86623770c45350d204b0ff25dfbf141c894ab7cd231e103eee40ea27bed","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f6435faba3e9376ca15d592184f29afb1dbe35cea53156e60bd5d6d2ab171083.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presentations_questions_02:3 -> audio/generated/de-DE/dialogues/f6689311362cfc3585b355a02ece4b95e7fb01f113eabf910f13fb3f77878438.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1249ee69-616e-50de-b59e-4b83f096cb61', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presentations_questions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '433b4e07778bab79081cb80385c9463c4684798c6ce412fd35873d93c9720925'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('916efb15-5a6e-5296-8493-4611337cab3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1249ee69-616e-50de-b59e-4b83f096cb61', 1), '433b4e07778bab79081cb80385c9463c4684798c6ce412fd35873d93c9720925',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6689311362cfc3585b355a02ece4b95e7fb01f113eabf910f13fb3f77878438.mp3', 2089, '2026-09-13 07:53:04.533110', 'e79664e6287b39d85bbc2fc494559040fb8828ba0acd22a375e38ac471a985b0', 'validated', '{"audio_key":"f6689311362cfc3585b355a02ece4b95e7fb01f113eabf910f13fb3f77878438","entity_key":"d_presentations_questions_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e79664e6287b39d85bbc2fc494559040fb8828ba0acd22a375e38ac471a985b0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f6689311362cfc3585b355a02ece4b95e7fb01f113eabf910f13fb3f77878438.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meetings_decisions_02:3 -> audio/generated/de-DE/dialogues/f76a90195913a5c6767a23cff14200548b4d614a04afcbb7a2308e2d44362d46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('637c0c0f-2b4f-508d-8ec9-fcf5a109c945', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meetings_decisions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cdcfdc560581796130c15aa6cb9e268eb6497892be30c11722fab3910987b96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c06a46e-9aed-5902-97ea-740dc261aae1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('637c0c0f-2b4f-508d-8ec9-fcf5a109c945', 1), '8cdcfdc560581796130c15aa6cb9e268eb6497892be30c11722fab3910987b96',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f76a90195913a5c6767a23cff14200548b4d614a04afcbb7a2308e2d44362d46.mp3', 2168, '2026-09-13 07:53:05.573811', '681806f2e6f3ee78ca8f517fad1b8f85e90e6617715d6760a12a0c52d43025a8', 'validated', '{"audio_key":"f76a90195913a5c6767a23cff14200548b4d614a04afcbb7a2308e2d44362d46","entity_key":"d_meetings_decisions_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"681806f2e6f3ee78ca8f517fad1b8f85e90e6617715d6760a12a0c52d43025a8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f76a90195913a5c6767a23cff14200548b4d614a04afcbb7a2308e2d44362d46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_03:4 -> audio/generated/de-DE/dialogues/f7a02184fc9c229a8ca99c554296603c5b59c00436940d1b14ca24a5bc5fd987.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2abcf5ea-a9fd-5302-a814-44038fbf45b9', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d8e4cbb24b2c425e9efcfbbe42c37046b12fa1c0a8b9e4daf1c64b9b3cfa8ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a599a143-9e44-5570-8b8b-05a50c4e28b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2abcf5ea-a9fd-5302-a814-44038fbf45b9', 1), '4d8e4cbb24b2c425e9efcfbbe42c37046b12fa1c0a8b9e4daf1c64b9b3cfa8ec',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7a02184fc9c229a8ca99c554296603c5b59c00436940d1b14ca24a5bc5fd987.mp3', 2951, '2026-09-13 07:53:05.791165', '1ee3ca367037b81cb09019412f815a64d863f16a7299648077a728e0f311a353', 'validated', '{"audio_key":"f7a02184fc9c229a8ca99c554296603c5b59c00436940d1b14ca24a5bc5fd987","entity_key":"d_argument_evidence_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1ee3ca367037b81cb09019412f815a64d863f16a7299648077a728e0f311a353","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f7a02184fc9c229a8ca99c554296603c5b59c00436940d1b14ca24a5bc5fd987.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_evidence_01:1 -> audio/generated/de-DE/dialogues/f8e9f883144231bb8a82624310cf5ccbc38e60c9abfbe432980f763f30a9fada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20d6c827-2e0f-5d23-9683-de67b074c95e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_evidence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be467e4c604834d259a9ffbbb5fed06494db3241f064ee9fa9e2e6d172e6dbe0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b18d5ad9-95c4-5957-bdf6-cb890b75be00', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20d6c827-2e0f-5d23-9683-de67b074c95e', 1), 'be467e4c604834d259a9ffbbb5fed06494db3241f064ee9fa9e2e6d172e6dbe0',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8e9f883144231bb8a82624310cf5ccbc38e60c9abfbe432980f763f30a9fada.mp3', 3160, '2026-09-13 07:53:06.828831', 'e1e7df4e91ca95498c3783caa81bb2828cdcf49be5e77dfd9c0769c8629f5ee0', 'validated', '{"audio_key":"f8e9f883144231bb8a82624310cf5ccbc38e60c9abfbe432980f763f30a9fada","entity_key":"d_argument_evidence_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e1e7df4e91ca95498c3783caa81bb2828cdcf49be5e77dfd9c0769c8629f5ee0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f8e9f883144231bb8a82624310cf5ccbc38e60c9abfbe432980f763f30a9fada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_trends_03:4 -> audio/generated/de-DE/dialogues/fb88c4f17e354e667729dfad40e4c4973689abfb36138841483a8847e40b619f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('949bfacf-9b5d-55ec-8d02-0022f0b699b6', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_trends_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb0cc66c29008cb06748d50ba80a10e17eba0bf4a91e4c513d924f4464eec2fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c7adde6-88a3-5ef4-80af-0705abe46dc2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('949bfacf-9b5d-55ec-8d02-0022f0b699b6', 1), 'cb0cc66c29008cb06748d50ba80a10e17eba0bf4a91e4c513d924f4464eec2fe',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fb88c4f17e354e667729dfad40e4c4973689abfb36138841483a8847e40b619f.mp3', 3291, '2026-09-13 07:53:07.089835', '38a6fb9d8be91d9505058bed81df101b2de592b87adb17d5883c10ff1190299f', 'validated', '{"audio_key":"fb88c4f17e354e667729dfad40e4c4973689abfb36138841483a8847e40b619f","entity_key":"d_data_trends_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"38a6fb9d8be91d9505058bed81df101b2de592b87adb17d5883c10ff1190299f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fb88c4f17e354e667729dfad40e4c4973689abfb36138841483a8847e40b619f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_negotiation_compromise_02:2 -> audio/generated/de-DE/dialogues/fc8f9c6a380eb735522cfc0564e8349e6e5615acf3f0481ae99122fa500eb0e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1e640e90-8f6e-520b-a081-90af5fd9b7bd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_negotiation_compromise_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49e966a22392914abb74a232195d2a05555c621537988edc0d29b5605f777b00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69921cbb-b21e-5b16-bd7d-110930d67464', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1e640e90-8f6e-520b-a081-90af5fd9b7bd', 1), '49e966a22392914abb74a232195d2a05555c621537988edc0d29b5605f777b00',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc8f9c6a380eb735522cfc0564e8349e6e5615acf3f0481ae99122fa500eb0e1.mp3', 2168, '2026-09-13 07:53:08.054701', '4c124cc59b562759e743242b3c662c85fa823cc98fea45fc70c65e5ff667afe1', 'validated', '{"audio_key":"fc8f9c6a380eb735522cfc0564e8349e6e5615acf3f0481ae99122fa500eb0e1","entity_key":"d_negotiation_compromise_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4c124cc59b562759e743242b3c662c85fa823cc98fea45fc70c65e5ff667afe1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fc8f9c6a380eb735522cfc0564e8349e6e5615acf3f0481ae99122fa500eb0e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_04 -> audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e9992444-eb7b-5847-977b-80b965741eb6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3e6f4e580b2e05cc1c2d4f7ae742f386ff34978c713bca594fcc575f82ea31a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('181a4d54-2916-5f2f-8c4d-69857496f4f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e9992444-eb7b-5847-977b-80b965741eb6', 1), 'f3e6f4e580b2e05cc1c2d4f7ae742f386ff34978c713bca594fcc575f82ea31a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3', 1253, '2026-09-13 07:53:08.216899', '27c54b9573787537818b1e531517571e244e85b321f028024fdd5d70fd515e42', 'validated', '{"audio_key":"082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1","entity_key":"lx_nuanced_agreement_disagreement_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27c54b9573787537818b1e531517571e244e85b321f028024fdd5d70fd515e42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_04 -> audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85c67337-e2b7-5ed3-a499-a84d8c120cd3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3e6f4e580b2e05cc1c2d4f7ae742f386ff34978c713bca594fcc575f82ea31a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef2ec42a-40fd-5c2b-9f7b-469e9d6937d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85c67337-e2b7-5ed3-a499-a84d8c120cd3', 1), 'f3e6f4e580b2e05cc1c2d4f7ae742f386ff34978c713bca594fcc575f82ea31a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3', 1253, '2026-09-13 07:53:08.216899', '27c54b9573787537818b1e531517571e244e85b321f028024fdd5d70fd515e42', 'validated', '{"audio_key":"082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1","entity_key":"wf_nuanced_agreement_disagreement_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27c54b9573787537818b1e531517571e244e85b321f028024fdd5d70fd515e42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/082858bfaadbba9a3097654b8e703a2cd070cde49a6abfc2d2abc1b2a9f4e6e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_01 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b1017d-1d06-5d9f-87df-da31fff57190', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"lx_nuanced_agreement_disagreement_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_01 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82b0aea5-4b76-574d-acdb-8cd2f4d42668', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a190e2ee-c39e-5fb7-87dc-8bb1348013fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82b0aea5-4b76-574d-acdb-8cd2f4d42668', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"wf_nuanced_agreement_disagreement_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_06 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf5c3cad-d7fb-5f85-b483-112169d861b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"lx_presentations_questions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_06 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81f3117f-199e-505f-b2ac-6895040fdc07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c5dfc25-3cbc-5021-848a-92772d5d1889', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81f3117f-199e-505f-b2ac-6895040fdc07', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"wf_presentations_questions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_media_claims_uncertainty_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6af9e793-b940-54ca-b0da-1568232eb740', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ee3d964-4998-5927-aff2-aae81c872bc5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6af9e793-b940-54ca-b0da-1568232eb740', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_media_claims_uncertainty_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_03 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_presentations_questions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_03 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47c73447-4b84-5651-a7ee-06b75b30de1d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('166aa38b-e1a4-591d-aef1-d5fa44974ace', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47c73447-4b84-5651-a7ee-06b75b30de1d', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_presentations_questions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_03 -> audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82ad276f-ab6a-59ce-9b26-9b7af07794d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a413aaf2fd025c4a8bb78f6617bf36866c9b61a0545983fe38dba4d62768a0a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c43fc585-d14b-5071-aacc-ea240b98fe72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82ad276f-ab6a-59ce-9b26-9b7af07794d1', 1), 'a413aaf2fd025c4a8bb78f6617bf36866c9b61a0545983fe38dba4d62768a0a9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3', 1149, '2026-09-13 07:53:10.232191', 'ad695621de413b95c66d2fb27c507181db91d0090773a8f3354c35a21c778b94', 'validated', '{"audio_key":"13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9","entity_key":"lx_nuanced_agreement_disagreement_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad695621de413b95c66d2fb27c507181db91d0090773a8f3354c35a21c778b94","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_03 -> audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('837bf086-eb27-58be-a2d1-44fa33089a64', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a413aaf2fd025c4a8bb78f6617bf36866c9b61a0545983fe38dba4d62768a0a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb271fa9-3e80-55ae-a1c3-65356537a79b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('837bf086-eb27-58be-a2d1-44fa33089a64', 1), 'a413aaf2fd025c4a8bb78f6617bf36866c9b61a0545983fe38dba4d62768a0a9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3', 1149, '2026-09-13 07:53:10.232191', 'ad695621de413b95c66d2fb27c507181db91d0090773a8f3354c35a21c778b94', 'validated', '{"audio_key":"13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9","entity_key":"wf_nuanced_agreement_disagreement_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad695621de413b95c66d2fb27c507181db91d0090773a8f3354c35a21c778b94","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/13346f7b25973936b770320535a242a329a4f081dd3dc507b5501f58160d28f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_argument_evidence_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e89f4f9-e72c-5b04-8bef-da1c20a69e85', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1340980-8973-5ac8-b71c-fd780444280b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e89f4f9-e72c-5b04-8bef-da1c20a69e85', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_argument_evidence_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_06 -> audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d12842aa-007c-5ae5-8816-012c0aeec590', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28675918-053a-550e-bfb8-e339dfbdf470', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d12842aa-007c-5ae5-8816-012c0aeec590', 1), '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3', 1071, '2026-09-13 07:53:11.281259', 'd6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213', 'validated', '{"audio_key":"15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d","entity_key":"lx_formal_messages_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_06 -> audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d054aca7-5a16-59be-8a3f-671fb2aa4ceb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79d8720a-7df1-5c62-9d18-cce0bb9c499b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d054aca7-5a16-59be-8a3f-671fb2aa4ceb', 1), '03a2f45851bc7a938f6cf7b01fadfa901e4c30c7315ff81f4be00832ec9368bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3', 1071, '2026-09-13 07:53:11.281259', 'd6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213', 'validated', '{"audio_key":"15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d","entity_key":"wf_formal_messages_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d1024ecfac5d75eb1881b81c61ba69c9abd0bd73d95d666b83f0ecc5ebf213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15ca4a56da68fb57b29acf117c8113ff22d994aed74be4d68adfa3a713a3484d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_06 -> audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b3f7d8c-25df-5710-bed4-805e8d9d6c88', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c383eca97c76742661ef554c908ce9ef5f6c6e31e105b6a739ce6362e816efb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5908b2e7-4a5c-52cb-8901-bb0401f1f24a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b3f7d8c-25df-5710-bed4-805e8d9d6c88', 1), '5c383eca97c76742661ef554c908ce9ef5f6c6e31e105b6a739ce6362e816efb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3', 1097, '2026-09-13 07:53:11.429210', '2c17fd09125e5bfb12130ee88729473c33aae6f6dc28cc6238fb6dbd01b84272', 'validated', '{"audio_key":"17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0","entity_key":"lx_media_claims_uncertainty_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c17fd09125e5bfb12130ee88729473c33aae6f6dc28cc6238fb6dbd01b84272","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_06 -> audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('166ec12a-9da2-509e-8aaa-1faf35e27eaf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c383eca97c76742661ef554c908ce9ef5f6c6e31e105b6a739ce6362e816efb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0797ffd-e492-5124-ba15-d3647b47ca49', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('166ec12a-9da2-509e-8aaa-1faf35e27eaf', 1), '5c383eca97c76742661ef554c908ce9ef5f6c6e31e105b6a739ce6362e816efb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3', 1097, '2026-09-13 07:53:11.429210', '2c17fd09125e5bfb12130ee88729473c33aae6f6dc28cc6238fb6dbd01b84272', 'validated', '{"audio_key":"17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0","entity_key":"wf_media_claims_uncertainty_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c17fd09125e5bfb12130ee88729473c33aae6f6dc28cc6238fb6dbd01b84272","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/17950b5f9cfae9d87dc6f10069ef3d5abf019299971e0304cc0e50bfde6826d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_01 -> audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c007fc6-1013-5bd3-8a62-3d3cfd6d7187', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bdb6f2bc83af0dc6c6bd4bd83f4211e90c1a711476fc5fe78dc46c77773768c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7df8e316-2f62-54ec-8c2c-4d22beead990', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c007fc6-1013-5bd3-8a62-3d3cfd6d7187', 1), '5bdb6f2bc83af0dc6c6bd4bd83f4211e90c1a711476fc5fe78dc46c77773768c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3', 1332, '2026-09-13 07:53:12.363404', '9017e16af781a9627d088dfd2eb7c88b15a174fcced81edbbc4b810aa15967de', 'validated', '{"audio_key":"2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5","entity_key":"lx_social_issues_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9017e16af781a9627d088dfd2eb7c88b15a174fcced81edbbc4b810aa15967de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_01 -> audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ec88d82-fc5e-5429-92dd-50e7cee4063e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bdb6f2bc83af0dc6c6bd4bd83f4211e90c1a711476fc5fe78dc46c77773768c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9793ee1-40e9-5d8b-bdaf-e77622a73f94', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ec88d82-fc5e-5429-92dd-50e7cee4063e', 1), '5bdb6f2bc83af0dc6c6bd4bd83f4211e90c1a711476fc5fe78dc46c77773768c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3', 1332, '2026-09-13 07:53:12.363404', '9017e16af781a9627d088dfd2eb7c88b15a174fcced81edbbc4b810aa15967de', 'validated', '{"audio_key":"2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5","entity_key":"wf_social_issues_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9017e16af781a9627d088dfd2eb7c88b15a174fcced81edbbc4b810aa15967de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c872eb7a7a80e60956fe63fbd56f865e9ca78e52d4413ea3b15b786522091e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_02 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ac9b86-d70b-58c5-bd3b-2809e05ad52d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"lx_formal_messages_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_02 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fd98947f-483f-599a-ae38-e4082e95e16f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('949169d4-120f-5e45-8919-63ced324368c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fd98947f-483f-599a-ae38-e4082e95e16f', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"wf_formal_messages_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_02 -> audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f940f1ab-6d52-5029-9130-92a62b074f1c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73efc9fe-9f97-5351-8edb-eeeb0894c366', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f940f1ab-6d52-5029-9130-92a62b074f1c', 1), 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3', 1018, '2026-09-13 07:53:12.477304', '50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed', 'validated', '{"audio_key":"3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c","entity_key":"lx_negotiation_compromise_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_02 -> audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06932955-576a-591c-b90a-9abaa78845ef', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29183411-bc19-5f10-a66b-5dc3d882ab50', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06932955-576a-591c-b90a-9abaa78845ef', 1), 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3', 1018, '2026-09-13 07:53:12.477304', '50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed', 'validated', '{"audio_key":"3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c","entity_key":"wf_negotiation_compromise_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_05 -> audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ec137d3c-998a-59ae-9b6d-914446cb973f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f1efd4753f6eb49df7f17e6d8dd3bd1260995756ffd23f0a0bc0349d8f2e63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1de60a5e-f6e8-5b9a-887e-63864902f25e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ec137d3c-998a-59ae-9b6d-914446cb973f', 1), '9f1efd4753f6eb49df7f17e6d8dd3bd1260995756ffd23f0a0bc0349d8f2e63e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3', 1071, '2026-09-13 07:53:13.413257', '58f9f8f78bdee9ac07c23137d16eebc8b2de0c638ca03b325d92ebfa7c8d2ddb', 'validated', '{"audio_key":"3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd","entity_key":"lx_data_trends_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58f9f8f78bdee9ac07c23137d16eebc8b2de0c638ca03b325d92ebfa7c8d2ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_05 -> audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c14ba75-a67c-50b0-b8c4-da66bc80532e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f1efd4753f6eb49df7f17e6d8dd3bd1260995756ffd23f0a0bc0349d8f2e63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4449138d-88c7-5894-b872-2c04715bf43f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c14ba75-a67c-50b0-b8c4-da66bc80532e', 1), '9f1efd4753f6eb49df7f17e6d8dd3bd1260995756ffd23f0a0bc0349d8f2e63e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3', 1071, '2026-09-13 07:53:13.413257', '58f9f8f78bdee9ac07c23137d16eebc8b2de0c638ca03b325d92ebfa7c8d2ddb', 'validated', '{"audio_key":"3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd","entity_key":"wf_data_trends_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58f9f8f78bdee9ac07c23137d16eebc8b2de0c638ca03b325d92ebfa7c8d2ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d57855caf15f22d61e074a5812ab0d4a8f1a9d0206b59fa04612fa0854effdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_02 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('315948e8-aa29-58e5-addd-faa1b62132af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"lx_meetings_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_02 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c02368a9-fa60-5249-b16a-1d44f8a68e8a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdd481a2-c2ed-5462-a11c-d0eee86af477', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c02368a9-fa60-5249-b16a-1d44f8a68e8a', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"wf_meetings_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_05 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cae342e-9821-5375-bddd-8be8e6651925', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"lx_source_summary_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_05 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('124c9e5b-239d-57c0-9503-665c7d178812', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('175edb1b-62c1-5866-9ce9-63c1e6c47da1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('124c9e5b-239d-57c0-9503-665c7d178812', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"wf_source_summary_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_05 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6602182-6aa2-5d2c-8a88-e633730cf45c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"lx_formal_messages_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_05 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6b512f5-3a0d-5ace-88bf-ad755f8c5995', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ef82eff-fee6-5391-808a-dbebc165b616', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6b512f5-3a0d-5ace-88bf-ad755f8c5995', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"wf_formal_messages_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_06 -> audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95b178ec-aea1-5e02-b4de-2ff9788b17bc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f3ff25cb068806599ccb50145ed0ed19e169d88430b9f38042fb6cd174fe208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2314e397-2c68-5c78-8a3a-369d81d28223', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95b178ec-aea1-5e02-b4de-2ff9788b17bc', 1), '9f3ff25cb068806599ccb50145ed0ed19e169d88430b9f38042fb6cd174fe208',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3', 1018, '2026-09-13 07:53:13.504542', '8fcfee9a12c66497ee9b9c173811a37c4f2f95054ffcc5473c4a01bdd63c0952', 'validated', '{"audio_key":"490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054","entity_key":"lx_meetings_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8fcfee9a12c66497ee9b9c173811a37c4f2f95054ffcc5473c4a01bdd63c0952","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_06 -> audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1a9e24d-66b1-58ef-9eda-8fbcf55475dc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f3ff25cb068806599ccb50145ed0ed19e169d88430b9f38042fb6cd174fe208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73f5f131-97c5-5402-9f1d-f33ca1bf34fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1a9e24d-66b1-58ef-9eda-8fbcf55475dc', 1), '9f3ff25cb068806599ccb50145ed0ed19e169d88430b9f38042fb6cd174fe208',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3', 1018, '2026-09-13 07:53:13.504542', '8fcfee9a12c66497ee9b9c173811a37c4f2f95054ffcc5473c4a01bdd63c0952', 'validated', '{"audio_key":"490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054","entity_key":"wf_meetings_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8fcfee9a12c66497ee9b9c173811a37c4f2f95054ffcc5473c4a01bdd63c0952","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/490c02e5665e1694e93b7a4f143706e1b67fa08f59452742428a13fed2d5e054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_01 -> audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c8df309-6796-5a2d-8081-2c884a016afa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31f0c23e-e2b5-5272-b9d6-744955717bf8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c8df309-6796-5a2d-8081-2c884a016afa', 1), '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3', 1149, '2026-09-13 07:53:14.555951', 'b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23', 'validated', '{"audio_key":"4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5","entity_key":"lx_media_claims_uncertainty_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_01 -> audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dce7ddde-13bb-59d7-b3aa-84b9323c643a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cdfea4e-4269-53bc-89b4-1304c569e26e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dce7ddde-13bb-59d7-b3aa-84b9323c643a', 1), '7fcc2a8bef13f4d97a782ced8abe5b71af3a77bfcf42a1fd3ead6a0f039ecbd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3', 1149, '2026-09-13 07:53:14.555951', 'b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23', 'validated', '{"audio_key":"4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5","entity_key":"wf_media_claims_uncertainty_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6f3080404b3b39e40f3608732c87e3f63f9e2d0dbbdcddc587fe587f79b1b23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4bf7525086ac17569be7e11e8fee5901a7c16fa35d7d35179872d65e0bd7a7b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_03 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6d22948-ca34-5e9d-9061-626046cf5837', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"lx_social_issues_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_03 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('908c31f9-d356-5698-b54f-9feab5b76aa3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4be53f21-54e8-5d0a-903a-0ac07c6b4d82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('908c31f9-d356-5698-b54f-9feab5b76aa3', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"wf_social_issues_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_04 -> audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7df72b90-f530-50b2-9d5b-ef4040a11702', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b723217-2d2a-5fad-b445-776d488f5bf1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7df72b90-f530-50b2-9d5b-ef4040a11702', 1), 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3', 1149, '2026-09-13 07:53:15.637496', '481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4', 'validated', '{"audio_key":"4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a","entity_key":"lx_source_summary_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_04 -> audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('beb9693f-bfe7-5844-b667-00e6343c037f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e91040d2-d173-593f-b45c-a60c514e9d9f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('beb9693f-bfe7-5844-b667-00e6343c037f', 1), 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3', 1149, '2026-09-13 07:53:15.637496', '481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4', 'validated', '{"audio_key":"4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a","entity_key":"wf_source_summary_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_05 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('219efc04-7f40-5cd6-872b-2958d68d7b60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"lx_negotiation_compromise_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_05 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f37131de-9839-5d6b-9040-5abf06d8db86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75aaa1f1-4dea-5626-92b6-6bde9568848d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f37131de-9839-5d6b-9040-5abf06d8db86', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"wf_negotiation_compromise_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_03 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70583cd7-3bc1-558d-b60f-dce733c973ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"lx_meetings_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_03 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4bccdf68-f9f7-56fa-8ec0-f24120130aad', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a54bbc78-8ce3-5cc1-853e-b936b8c76503', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4bccdf68-f9f7-56fa-8ec0-f24120130aad', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"wf_meetings_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_06 -> audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d84cc756-1f7a-506e-88a3-8a69a77ced1e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afa6a0efcc778503ba4763e40a97041f75890d20c8a4df3e98c0bf9cb8a1843f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70cf8f91-4f1a-525a-85b2-a79507d20e93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d84cc756-1f7a-506e-88a3-8a69a77ced1e', 1), 'afa6a0efcc778503ba4763e40a97041f75890d20c8a4df3e98c0bf9cb8a1843f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3', 1201, '2026-09-13 07:53:16.706386', '15a94d8a1ae4572f092f75aba36dc0298c34ed407738b0f025f157ea7f6bb181', 'validated', '{"audio_key":"5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb","entity_key":"lx_social_issues_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15a94d8a1ae4572f092f75aba36dc0298c34ed407738b0f025f157ea7f6bb181","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_06 -> audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b81d6ad-2b74-5bfd-b608-cc7eac05c4bb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afa6a0efcc778503ba4763e40a97041f75890d20c8a4df3e98c0bf9cb8a1843f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bee5c8d-f03b-5ef7-8cc7-626bd6824b3f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b81d6ad-2b74-5bfd-b608-cc7eac05c4bb', 1), 'afa6a0efcc778503ba4763e40a97041f75890d20c8a4df3e98c0bf9cb8a1843f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3', 1201, '2026-09-13 07:53:16.706386', '15a94d8a1ae4572f092f75aba36dc0298c34ed407738b0f025f157ea7f6bb181', 'validated', '{"audio_key":"5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb","entity_key":"wf_social_issues_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15a94d8a1ae4572f092f75aba36dc0298c34ed407738b0f025f157ea7f6bb181","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dff7a68a6ed0a00abb69b65714b63c5cdf414125b4e62b8f7dd9a8ca71c78cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_06 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3834db5-363b-50fe-97f5-0de7ab7402f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"lx_data_trends_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_06 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('473af968-572c-52ea-86f0-aaf26fc88d53', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70fa7377-ced5-5755-b16e-ebb8f1468026', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('473af968-572c-52ea-86f0-aaf26fc88d53', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"wf_data_trends_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_01 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3834db5-363b-50fe-97f5-0de7ab7402f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"lx_presentations_questions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_01 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7a35d05-80aa-5e5e-b72d-7e5b9f71715c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7427f5c-41af-5987-aadf-4f8b7c6d5949', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7a35d05-80aa-5e5e-b72d-7e5b9f71715c', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"wf_presentations_questions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_01 -> audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75f878bb-beef-5b67-bbe9-cf5b2c39a984', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b51d43-b1b6-5944-9ae2-92a0d75743b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75f878bb-beef-5b67-bbe9-cf5b2c39a984', 1), '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3', 1253, '2026-09-13 07:53:17.803943', '73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9', 'validated', '{"audio_key":"685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01","entity_key":"lx_meetings_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_01 -> audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e2e2cf38-c471-5d19-a415-0d43b23ca123', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4eb4870-d890-547c-bf9c-83cf646355ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e2e2cf38-c471-5d19-a415-0d43b23ca123', 1), '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3', 1253, '2026-09-13 07:53:17.803943', '73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9', 'validated', '{"audio_key":"685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01","entity_key":"wf_meetings_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_01 -> audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('723f88a7-858f-53db-9590-bfd5b2b21cbd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e7b75ee-0ae4-5b25-8251-bbb2635a8a1c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('723f88a7-858f-53db-9590-bfd5b2b21cbd', 1), '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3', 1018, '2026-09-13 07:35:34.666960', 'ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8', 'validated', '{"audio_key":"6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09","entity_key":"lx_formal_messages_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_01 -> audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('368428e9-3559-524b-a982-d9d01f2236e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cc0c664-814e-5b75-bfb9-e861fe159a05', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('368428e9-3559-524b-a982-d9d01f2236e1', 1), '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3', 1018, '2026-09-13 07:35:34.666960', 'ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8', 'validated', '{"audio_key":"6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09","entity_key":"wf_formal_messages_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_02 -> audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('77b5cde8-52c4-529c-9ca6-07f929a3e24b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '643884640315ab18b381602e1e22e261c62e9e98ae2ccb515600e88e24cbab5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5110999c-0747-5a13-93d4-a91f0c5ef130', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('77b5cde8-52c4-529c-9ca6-07f929a3e24b', 1), '643884640315ab18b381602e1e22e261c62e9e98ae2ccb515600e88e24cbab5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3', 1097, '2026-09-13 07:53:18.845725', '439007e0e7ca4cd9e1477198d5911d118c894aba5c9fcfd1528b2232f83a992a', 'validated', '{"audio_key":"72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8","entity_key":"lx_social_issues_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"439007e0e7ca4cd9e1477198d5911d118c894aba5c9fcfd1528b2232f83a992a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_02 -> audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed6b37ca-c05d-50f7-9a86-20884bfa5a3b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '643884640315ab18b381602e1e22e261c62e9e98ae2ccb515600e88e24cbab5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ba83d28-fbd2-5a76-b2fb-2a38b9660826', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed6b37ca-c05d-50f7-9a86-20884bfa5a3b', 1), '643884640315ab18b381602e1e22e261c62e9e98ae2ccb515600e88e24cbab5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3', 1097, '2026-09-13 07:53:18.845725', '439007e0e7ca4cd9e1477198d5911d118c894aba5c9fcfd1528b2232f83a992a', 'validated', '{"audio_key":"72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8","entity_key":"wf_social_issues_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"439007e0e7ca4cd9e1477198d5911d118c894aba5c9fcfd1528b2232f83a992a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e4821cc06136234cb4769b2dac739591439044715b91b0126510fc5f3c4ad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_02 -> audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d3a2edb-62de-5404-9789-a21205f089e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5738ed2d-d1da-5f42-8d01-d52f601de21f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d3a2edb-62de-5404-9789-a21205f089e1', 1), '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3', 1071, '2026-09-13 07:53:18.846988', 'dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9', 'validated', '{"audio_key":"737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4","entity_key":"lx_argument_evidence_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_02 -> audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9aa88a4-542f-5899-8ee6-54d257698d43', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('816a8719-5ba8-5c89-a974-3cd492e3b276', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9aa88a4-542f-5899-8ee6-54d257698d43', 1), '52947d0640c2ccbb34ebc4f0a6b0661db3c77545ca6f41f2f92545e32951c44b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3', 1071, '2026-09-13 07:53:18.846988', 'dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9', 'validated', '{"audio_key":"737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4","entity_key":"wf_argument_evidence_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd8640939e5ec6be09372453de92686291f3a7f8b55273432bb37396f73b41e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/737d0a621d604abca1de062ff5cd63824dee009c37252828190739ee11cba6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_05 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('361c079f-d85c-519d-b931-34e1d1ecdb08', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"lx_presentations_questions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_05 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44362806-3f49-5991-aa71-5a04ee654dee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55345625-8088-5373-9daa-afbbc26d7528', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44362806-3f49-5991-aa71-5a04ee654dee', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"wf_presentations_questions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_03 -> audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e79584b-2cc3-5175-93db-075482f83418', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a9385f88767e2ebe656887379a125e8d4008c4b5bb26696d613caff7eb1d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0613c9da-1b61-5b8e-a8c5-bce7b90c4937', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e79584b-2cc3-5175-93db-075482f83418', 1), 'a1a9385f88767e2ebe656887379a125e8d4008c4b5bb26696d613caff7eb1d27',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3', 1071, '2026-09-13 07:53:19.897568', '732af2f81d6b60718b02864ed559ead580dbdc5284a8e5bf65f0491de02ff18f', 'validated', '{"audio_key":"80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17","entity_key":"lx_media_claims_uncertainty_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"732af2f81d6b60718b02864ed559ead580dbdc5284a8e5bf65f0491de02ff18f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_03 -> audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('993c03ce-2687-5e98-a3f5-339e52510e14', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a9385f88767e2ebe656887379a125e8d4008c4b5bb26696d613caff7eb1d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f5e8d9a-82ba-5df1-9a3d-1f4dbbf1d5ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('993c03ce-2687-5e98-a3f5-339e52510e14', 1), 'a1a9385f88767e2ebe656887379a125e8d4008c4b5bb26696d613caff7eb1d27',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3', 1071, '2026-09-13 07:53:19.897568', '732af2f81d6b60718b02864ed559ead580dbdc5284a8e5bf65f0491de02ff18f', 'validated', '{"audio_key":"80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17","entity_key":"wf_media_claims_uncertainty_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"732af2f81d6b60718b02864ed559ead580dbdc5284a8e5bf65f0491de02ff18f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/80a98cc88654914644a815c956459a6b4cc8b67eb1cc395c8c3d41943b7e8b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_03 -> audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ca1e9f51-1c65-59f2-b496-d048f4b69f09', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b04092524602503223e61ef7f224c61c15146a23c6ae9621bf2901caa87a146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24d8a056-1514-59ea-80c0-e91932148228', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ca1e9f51-1c65-59f2-b496-d048f4b69f09', 1), '2b04092524602503223e61ef7f224c61c15146a23c6ae9621bf2901caa87a146',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3', 1018, '2026-09-13 07:53:20.907119', '8238620765eb9f08d9c6120b1adfdd01f120e0a4f84fc1803424edc410bcfd46', 'validated', '{"audio_key":"8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209","entity_key":"lx_data_trends_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8238620765eb9f08d9c6120b1adfdd01f120e0a4f84fc1803424edc410bcfd46","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_03 -> audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f0d716e-906d-5156-9cad-9609568b2461', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b04092524602503223e61ef7f224c61c15146a23c6ae9621bf2901caa87a146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d44643e-4bfd-578e-87e5-01069ca2edc7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f0d716e-906d-5156-9cad-9609568b2461', 1), '2b04092524602503223e61ef7f224c61c15146a23c6ae9621bf2901caa87a146',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3', 1018, '2026-09-13 07:53:20.907119', '8238620765eb9f08d9c6120b1adfdd01f120e0a4f84fc1803424edc410bcfd46', 'validated', '{"audio_key":"8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209","entity_key":"wf_data_trends_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8238620765eb9f08d9c6120b1adfdd01f120e0a4f84fc1803424edc410bcfd46","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8130da53a00de7847965ba55227a17ae0779b27f34cbacc1b88bed874141c209.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_05 -> audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c6d1d36-f008-5629-8e02-22366c17bb41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2ec41ce-67df-5a7e-941f-e82fed8237cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c6d1d36-f008-5629-8e02-22366c17bb41', 1), '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3', 1280, '2026-09-13 07:53:21.174400', 'd71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a', 'validated', '{"audio_key":"826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c","entity_key":"lx_argument_evidence_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_05 -> audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64127378-8386-5b43-8bba-5fa4d180de25', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15a6e555-ee66-5643-b8bf-d9a1728063ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64127378-8386-5b43-8bba-5fa4d180de25', 1), '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3', 1280, '2026-09-13 07:53:21.174400', 'd71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a', 'validated', '{"audio_key":"826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c","entity_key":"wf_argument_evidence_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_03 -> audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43437264-51bd-54e0-ab18-49a9d4e11fc8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('955f26e8-980b-5d0e-87ff-06c2d8ee08b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43437264-51bd-54e0-ab18-49a9d4e11fc8', 1), 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3', 1280, '2026-09-13 07:53:21.992388', '898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427', 'validated', '{"audio_key":"8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738","entity_key":"lx_negotiation_compromise_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_03 -> audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7887ab05-be97-577d-b1f1-5ce8d4c675c7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6083e6b0-e328-593b-8814-b01a5d6da437', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7887ab05-be97-577d-b1f1-5ce8d4c675c7', 1), 'b65008edc60dd5e90fb5bcc526145fe892b8970b20cb6b4098c1493d3021c9e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3', 1280, '2026-09-13 07:53:21.992388', '898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427', 'validated', '{"audio_key":"8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738","entity_key":"wf_negotiation_compromise_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"898f2c9bfd5fe777dfbd2f892f95f88dfe80113bed9f0acb369a393988e5a427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f5bd8900ce5b6335ef8ddcc228989b2c0f1b079c0ba08f5a9895658814a4738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_04 -> audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('715f6349-6438-56dc-9817-ae28ef27a34b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c0d59f45077f0a282af5010c60444e31fbea5b79bde4b7951f81355bf22a5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a23fc903-fd03-5b1b-a5f9-c58236cfd26a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('715f6349-6438-56dc-9817-ae28ef27a34b', 1), '67c0d59f45077f0a282af5010c60444e31fbea5b79bde4b7951f81355bf22a5f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3', 966, '2026-09-13 07:53:22.220655', 'ac2bc653d0c56f4b2c542eae2fbf6c97634651982505692941b23ab525cd27c5', 'validated', '{"audio_key":"9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0","entity_key":"lx_data_trends_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac2bc653d0c56f4b2c542eae2fbf6c97634651982505692941b23ab525cd27c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_04 -> audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ac459d3-fdea-5511-b26a-d94d2efdaa78', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c0d59f45077f0a282af5010c60444e31fbea5b79bde4b7951f81355bf22a5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0c134e2-7f59-5b47-a7fb-a67064650336', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ac459d3-fdea-5511-b26a-d94d2efdaa78', 1), '67c0d59f45077f0a282af5010c60444e31fbea5b79bde4b7951f81355bf22a5f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3', 966, '2026-09-13 07:53:22.220655', 'ac2bc653d0c56f4b2c542eae2fbf6c97634651982505692941b23ab525cd27c5', 'validated', '{"audio_key":"9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0","entity_key":"wf_data_trends_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac2bc653d0c56f4b2c542eae2fbf6c97634651982505692941b23ab525cd27c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9319853a237cfdee3c9adf1dad037a4812ee56f6d8f687216924017a53fc48f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_01 -> audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('241d7edb-a75a-5875-a1a6-b7568722a9eb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84d53c20509d323fda2c37ff145440e5cb94d408518936313e4f59aa50532974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82d18282-c7e7-56c6-99c6-39e8c6b3a3d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('241d7edb-a75a-5875-a1a6-b7568722a9eb', 1), '84d53c20509d323fda2c37ff145440e5cb94d408518936313e4f59aa50532974',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3', 1201, '2026-09-13 07:53:23.061570', 'e2a4ba12fae0a991b65de5ceae6c445130c2764f8fc0f2121bdb455499acfff8', 'validated', '{"audio_key":"9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e","entity_key":"lx_argument_evidence_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2a4ba12fae0a991b65de5ceae6c445130c2764f8fc0f2121bdb455499acfff8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_01 -> audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b89b3de-51a5-5a84-8995-d0ba226a9751', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84d53c20509d323fda2c37ff145440e5cb94d408518936313e4f59aa50532974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca408ec0-2fea-5dfa-bf9c-1ac08eebb474', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b89b3de-51a5-5a84-8995-d0ba226a9751', 1), '84d53c20509d323fda2c37ff145440e5cb94d408518936313e4f59aa50532974',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3', 1201, '2026-09-13 07:53:23.061570', 'e2a4ba12fae0a991b65de5ceae6c445130c2764f8fc0f2121bdb455499acfff8', 'validated', '{"audio_key":"9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e","entity_key":"wf_argument_evidence_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2a4ba12fae0a991b65de5ceae6c445130c2764f8fc0f2121bdb455499acfff8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9366f3c49f9f6106f9a542a97a4cb44fabfb3bac32deef210213d72a0fa12a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_03 -> audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1896853f-d20d-5c44-ada2-1012bf168889', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f8d466cbd3c1e4e2575aa6aa9f72ed0ef307ee9a111a34fae0f6ec8223e07d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f2031e0-9f09-59ad-82ca-7d7c47906dcf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1896853f-d20d-5c44-ada2-1012bf168889', 1), '7f8d466cbd3c1e4e2575aa6aa9f72ed0ef307ee9a111a34fae0f6ec8223e07d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3', 1280, '2026-09-13 07:53:23.292074', '8839bc710f7e09ebcf4fab4fcb0e34192beb38126eab4831087a1f5e9858e41c', 'validated', '{"audio_key":"942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997","entity_key":"lx_source_summary_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8839bc710f7e09ebcf4fab4fcb0e34192beb38126eab4831087a1f5e9858e41c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_03 -> audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('43e92d1e-8439-5dde-a92e-2b74f3ab671d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f8d466cbd3c1e4e2575aa6aa9f72ed0ef307ee9a111a34fae0f6ec8223e07d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f27d6e-89fe-557f-ba0d-62d511eb1185', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('43e92d1e-8439-5dde-a92e-2b74f3ab671d', 1), '7f8d466cbd3c1e4e2575aa6aa9f72ed0ef307ee9a111a34fae0f6ec8223e07d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3', 1280, '2026-09-13 07:53:23.292074', '8839bc710f7e09ebcf4fab4fcb0e34192beb38126eab4831087a1f5e9858e41c', 'validated', '{"audio_key":"942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997","entity_key":"wf_source_summary_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8839bc710f7e09ebcf4fab4fcb0e34192beb38126eab4831087a1f5e9858e41c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/942860757c82c7702c2472b2478c92ecb7299b71cedef7f5e89fd33d2ad7e997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_04 -> audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1aec3fe5-b55a-52c3-8eab-b0a45b9c8d07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61bc3397d935e359ba617da1dcc2c7feb772a4b090b840d556a9a091c7058790'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9196bf8-0631-589c-817f-271a242c43a5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1aec3fe5-b55a-52c3-8eab-b0a45b9c8d07', 1), '61bc3397d935e359ba617da1dcc2c7feb772a4b090b840d556a9a091c7058790',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3', 1097, '2026-09-13 07:53:24.124358', '9dcd704bc6e038c20f7147a1b468405991460e1649402105b74fa15616a0d458', 'validated', '{"audio_key":"95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324","entity_key":"lx_formal_messages_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dcd704bc6e038c20f7147a1b468405991460e1649402105b74fa15616a0d458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_04 -> audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d1260340-a2af-5119-9889-ab529a09835a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61bc3397d935e359ba617da1dcc2c7feb772a4b090b840d556a9a091c7058790'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23a890a3-378a-56b6-9890-76dc51f1fd16', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d1260340-a2af-5119-9889-ab529a09835a', 1), '61bc3397d935e359ba617da1dcc2c7feb772a4b090b840d556a9a091c7058790',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3', 1097, '2026-09-13 07:53:24.124358', '9dcd704bc6e038c20f7147a1b468405991460e1649402105b74fa15616a0d458', 'validated', '{"audio_key":"95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324","entity_key":"wf_formal_messages_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dcd704bc6e038c20f7147a1b468405991460e1649402105b74fa15616a0d458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/95ce9e69dfd38d688fec55840e5ebbb3ccb8052acf31e8982749a921c351f324.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_06 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9efd8281-5208-57b2-80a4-ebc8db8d83db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"lx_nuanced_agreement_disagreement_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_06 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db5201b1-e7ca-5bf9-9481-1c5389cb8055', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b937ee2-29db-5474-ab91-090f9e8a2f04', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db5201b1-e7ca-5bf9-9481-1c5389cb8055', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"wf_nuanced_agreement_disagreement_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_02 -> audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5adec24a-0bc0-5d50-a809-ce700f7f225a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '933f33f9514c756b32bd9958a523cffabf0404e63a88c8ff3394110c0314f6a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc5cb044-55d4-575c-9999-63c232ea5eb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5adec24a-0bc0-5d50-a809-ce700f7f225a', 1), '933f33f9514c756b32bd9958a523cffabf0404e63a88c8ff3394110c0314f6a2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3', 1018, '2026-09-13 07:53:25.191256', 'd5b07fe939fa7a8744cbd5fb4aa99577ee52968003cd9c7013046dd0196723fe', 'validated', '{"audio_key":"9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397","entity_key":"lx_data_trends_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5b07fe939fa7a8744cbd5fb4aa99577ee52968003cd9c7013046dd0196723fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_02 -> audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a41ab777-4b61-559c-ac3f-cd4a8d62e20c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '933f33f9514c756b32bd9958a523cffabf0404e63a88c8ff3394110c0314f6a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2746dae7-e3a8-5fec-af4c-aa0a4aa9d488', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a41ab777-4b61-559c-ac3f-cd4a8d62e20c', 1), '933f33f9514c756b32bd9958a523cffabf0404e63a88c8ff3394110c0314f6a2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3', 1018, '2026-09-13 07:53:25.191256', 'd5b07fe939fa7a8744cbd5fb4aa99577ee52968003cd9c7013046dd0196723fe', 'validated', '{"audio_key":"9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397","entity_key":"wf_data_trends_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5b07fe939fa7a8744cbd5fb4aa99577ee52968003cd9c7013046dd0196723fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9fe47ef736e1bf1c9d08e0a46f8526bc61ff611a2e166ac0276ce1643bbf8397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_messages_escalation_03 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_messages_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_formal_messages_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_messages_escalation_03 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0187baa3-be6a-5ee2-8284-42e38a736007', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_messages_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6f05d21-e8a8-5614-b787-fe612eca3f6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0187baa3-be6a-5ee2-8284-42e38a736007', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_formal_messages_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_04 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('366a5f55-175c-580b-b749-30bb52a91281', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"lx_media_claims_uncertainty_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_04 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e94f6849-d231-5666-be0c-d5a26cfeac85', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a079b536-7971-5de5-a2f0-bd97824580a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e94f6849-d231-5666-be0c-d5a26cfeac85', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"wf_media_claims_uncertainty_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_04 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c75a661e-0952-5da0-9703-297f934533cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"lx_negotiation_compromise_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_04 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c03968d-f53c-589b-b83f-0f404553a7a9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e66195a-051f-5f3d-81d9-bb422f2dcf3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c03968d-f53c-589b-b83f-0f404553a7a9', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"wf_negotiation_compromise_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_03 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b46ea9f-5d2d-50ff-a39b-e1d7ba913cef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"lx_argument_evidence_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_03 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f943527-5531-5317-8653-9edee865d26c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd274c6d-f937-5004-bcd4-7c5cf399eb3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f943527-5531-5317-8653-9edee865d26c', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"wf_argument_evidence_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_05 -> audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70620b91-964a-5940-8493-b0cb64e287fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d2eed1b-fd01-5d51-8c49-92e5b77b6035', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70620b91-964a-5940-8493-b0cb64e287fa', 1), '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3', 1097, '2026-09-13 07:53:26.459427', '25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f', 'validated', '{"audio_key":"ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a","entity_key":"lx_nuanced_agreement_disagreement_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_05 -> audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e479b661-3572-52ee-b9af-210e7a610503', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3738093b-d0c2-519f-9753-ee9ed48abdf0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e479b661-3572-52ee-b9af-210e7a610503', 1), '23d8e4516c0d77df22ee527ec37cd366ea8684d0ecc02882ff1dc7304045a95e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3', 1097, '2026-09-13 07:53:26.459427', '25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f', 'validated', '{"audio_key":"ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a","entity_key":"wf_nuanced_agreement_disagreement_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25eb442b68c67c7f0549aa2bf7b9049f5893be0cbacda279f1bd5e26f893378f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab4634f9867720895e4ca1de8c7246b3da1f932195ded943a4f5d4f01a32311a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_01 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8e60eed-96d7-5acb-a58c-cbc6a8a661d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"lx_source_summary_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_01 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d33189b0-d129-59dd-b41e-98a246e5c1b3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3941b8f-82b8-5031-a383-a98a6f704796', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d33189b0-d129-59dd-b41e-98a246e5c1b3', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"wf_source_summary_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_agreement_disagreement_02 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_agreement_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1a1fd9f-4616-56bb-92d7-452a891f169a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"lx_nuanced_agreement_disagreement_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_agreement_disagreement_02 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('513521cd-c538-5d68-a516-48e40c68afaf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_agreement_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc30495-038c-569b-98f3-2671d926475a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('513521cd-c538-5d68-a516-48e40c68afaf', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"wf_nuanced_agreement_disagreement_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_trends_01 -> audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68e5337b-ab8e-5828-a944-b2827fa3e254', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_trends_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95c06883c204c435fc6722c47ee0914a97ea3f688c54533cb4faa12925801b0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed2ec92a-a4d7-52d1-8839-71db4d5f4000', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68e5337b-ab8e-5828-a944-b2827fa3e254', 1), '95c06883c204c435fc6722c47ee0914a97ea3f688c54533cb4faa12925801b0c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3', 966, '2026-09-13 07:53:27.504134', '04fa348a463b5ddb38b2ae9b2835fc00c8ee093c0d8933bdd378ad38f89c06d9', 'validated', '{"audio_key":"c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae","entity_key":"lx_data_trends_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04fa348a463b5ddb38b2ae9b2835fc00c8ee093c0d8933bdd378ad38f89c06d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_trends_01 -> audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('512674de-8650-5758-bb8d-c8ea7c493fe2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_trends_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95c06883c204c435fc6722c47ee0914a97ea3f688c54533cb4faa12925801b0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c0a4632-61dd-59d3-a028-c77c9a92e6ae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('512674de-8650-5758-bb8d-c8ea7c493fe2', 1), '95c06883c204c435fc6722c47ee0914a97ea3f688c54533cb4faa12925801b0c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3', 966, '2026-09-13 07:53:27.504134', '04fa348a463b5ddb38b2ae9b2835fc00c8ee093c0d8933bdd378ad38f89c06d9', 'validated', '{"audio_key":"c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae","entity_key":"wf_data_trends_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04fa348a463b5ddb38b2ae9b2835fc00c8ee093c0d8933bdd378ad38f89c06d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c1ee26152b88e13b34b850fee4f32460dcd52de74c9e00ac1138af90f429a4ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_06 -> audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('14adc821-466b-5f5b-a607-dd7b5c8a1593', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5bb894603331c269b4a9f20bf18143b8b9619551adf63b0855e7ffd3dd53f5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2b30543-715f-533e-a02a-26f8572d37c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('14adc821-466b-5f5b-a607-dd7b5c8a1593', 1), 'd5bb894603331c269b4a9f20bf18143b8b9619551adf63b0855e7ffd3dd53f5b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3', 1384, '2026-09-13 07:53:28.422170', 'c652debb2fad764841c7a741d85d355af87561a5646c9b25ec2da086ca1a6fe3', 'validated', '{"audio_key":"c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1","entity_key":"lx_source_summary_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c652debb2fad764841c7a741d85d355af87561a5646c9b25ec2da086ca1a6fe3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_06 -> audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c5e35d74-a351-5499-8873-948862043749', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5bb894603331c269b4a9f20bf18143b8b9619551adf63b0855e7ffd3dd53f5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9a28f0b-94da-57d8-ba99-e22a1c714a6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c5e35d74-a351-5499-8873-948862043749', 1), 'd5bb894603331c269b4a9f20bf18143b8b9619551adf63b0855e7ffd3dd53f5b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3', 1384, '2026-09-13 07:53:28.422170', 'c652debb2fad764841c7a741d85d355af87561a5646c9b25ec2da086ca1a6fe3', 'validated', '{"audio_key":"c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1","entity_key":"wf_source_summary_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c652debb2fad764841c7a741d85d355af87561a5646c9b25ec2da086ca1a6fe3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c637d976057636d3907fefcc549f2ba1c929498dcce4cfda63f8da9b6d9e54e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_05 -> audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91641333-20f0-5e85-9b44-a805def885aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '373bfa6bc2b041bc4902c734fac1e0383f1a67ec67f31491566a23a162f9671e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2221e7c6-0106-5411-97d0-745882d5103c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91641333-20f0-5e85-9b44-a805def885aa', 1), '373bfa6bc2b041bc4902c734fac1e0383f1a67ec67f31491566a23a162f9671e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3', 1436, '2026-09-13 07:53:28.632496', 'e4d7dec989eda42fcdc937fa8daead4274383ec4b34faf730589907ef121fd2d', 'validated', '{"audio_key":"cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41","entity_key":"lx_meetings_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4d7dec989eda42fcdc937fa8daead4274383ec4b34faf730589907ef121fd2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_05 -> audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('799a4d4b-f654-5cbc-b869-f75fddc71132', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '373bfa6bc2b041bc4902c734fac1e0383f1a67ec67f31491566a23a162f9671e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ef6bb18-de79-5519-8a2c-90d3b6cbe828', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('799a4d4b-f654-5cbc-b869-f75fddc71132', 1), '373bfa6bc2b041bc4902c734fac1e0383f1a67ec67f31491566a23a162f9671e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3', 1436, '2026-09-13 07:53:28.632496', 'e4d7dec989eda42fcdc937fa8daead4274383ec4b34faf730589907ef121fd2d', 'validated', '{"audio_key":"cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41","entity_key":"wf_meetings_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4d7dec989eda42fcdc937fa8daead4274383ec4b34faf730589907ef121fd2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf6e5120d5f085c9686c85c1c87afacf63011f0bd6c858433ce107c476f44a41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_summary_comparison_02 -> audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1781e9df-9c73-55b6-bea7-d7c2cb70eb66', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_summary_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15dca7dd-b2c5-59a1-97fd-01838d3f4a46', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1781e9df-9c73-55b6-bea7-d7c2cb70eb66', 1), 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3', 1280, '2026-09-13 07:35:39.989058', '88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346', 'validated', '{"audio_key":"d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d","entity_key":"lx_source_summary_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_summary_comparison_02 -> audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39cd0ad4-4225-57ab-bb58-5c75a4864bf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_summary_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e94f1067-63f6-5193-804f-a26ce27fe686', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39cd0ad4-4225-57ab-bb58-5c75a4864bf4', 1), 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3', 1280, '2026-09-13 07:35:39.989058', '88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346', 'validated', '{"audio_key":"d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d","entity_key":"wf_source_summary_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_01 -> audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e8690b6-a811-589a-bf18-32ffd00cba77', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('003d4a28-ea58-5fa3-89ef-a9ca72c406ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e8690b6-a811-589a-bf18-32ffd00cba77', 1), '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3', 1097, '2026-09-13 07:53:29.455085', 'a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e', 'validated', '{"audio_key":"dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb","entity_key":"lx_negotiation_compromise_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_01 -> audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a47e881-cce2-5dad-ab90-4d9f0f9f6391', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb42e953-800c-5a18-9a4d-3313d0ba9df8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a47e881-cce2-5dad-ab90-4d9f0f9f6391', 1), '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3', 1097, '2026-09-13 07:53:29.455085', 'a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e', 'validated', '{"audio_key":"dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb","entity_key":"wf_negotiation_compromise_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_02 -> audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('62c2ff3f-e87d-5b31-9ec0-1bc436bf39c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b8b9d5a-ded6-5c7c-a040-515c19819c17', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('62c2ff3f-e87d-5b31-9ec0-1bc436bf39c6', 1), 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3', 1280, '2026-09-13 07:53:29.712729', 'ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663', 'validated', '{"audio_key":"de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5","entity_key":"lx_presentations_questions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_02 -> audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9dfb3bc9-6bde-5820-a0c2-b1f1d3e59e60', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9a869f8-7d86-5044-bad6-ba6ea8d7794d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9dfb3bc9-6bde-5820-a0c2-b1f1d3e59e60', 1), 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3', 1280, '2026-09-13 07:53:29.712729', 'ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663', 'validated', '{"audio_key":"de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5","entity_key":"wf_presentations_questions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meetings_decisions_04 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meetings_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b70f6b4-1de6-54d4-80ae-3225c21ec35e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"lx_meetings_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meetings_decisions_04 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('02747048-5148-56f3-9668-7e0c71f4ab5a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meetings_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd30ef30-9e79-5d03-987e-21bd7c4f7f53', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('02747048-5148-56f3-9668-7e0c71f4ab5a', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"wf_meetings_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6c041ff-4d52-5dee-b041-73478325e265', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"lx_social_issues_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a78323e-8d27-59ae-bc2a-c25ff5d0af53', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89c36977-27c6-5b92-b65c-0b26709483bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a78323e-8d27-59ae-bc2a-c25ff5d0af53', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"wf_social_issues_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presentations_questions_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presentations_questions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d2623e-6265-57a4-ad7e-6eeca90e1ce9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"lx_presentations_questions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presentations_questions_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba7610ad-6dcd-5ac3-a4d7-83e18e0afca8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presentations_questions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9fae5c7-8db3-5e95-8e6f-ff4e075d2c80', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba7610ad-6dcd-5ac3-a4d7-83e18e0afca8', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"wf_presentations_questions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_claims_uncertainty_02 -> audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('460c4f6e-9404-5f7f-9e41-0b634dc38d4a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_claims_uncertainty_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bfc33c9084f35573e0c968e1e322d606f3812c3127e6ed8a3f94ceec77d2b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c8fa029-344c-5721-ad3c-280b4ff91d2f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('460c4f6e-9404-5f7f-9e41-0b634dc38d4a', 1), '26bfc33c9084f35573e0c968e1e322d606f3812c3127e6ed8a3f94ceec77d2b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3', 1149, '2026-09-13 07:53:31.530339', 'be77a8fc9347f756431add5b942aa80129c881c222efe4506e354e8be8706c93', 'validated', '{"audio_key":"e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805","entity_key":"lx_media_claims_uncertainty_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be77a8fc9347f756431add5b942aa80129c881c222efe4506e354e8be8706c93","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_claims_uncertainty_02 -> audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a472fb37-e03b-5aac-8495-f38adf488b02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_claims_uncertainty_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bfc33c9084f35573e0c968e1e322d606f3812c3127e6ed8a3f94ceec77d2b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('851d9cd8-25e3-5367-8dcf-156c1fc6c248', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a472fb37-e03b-5aac-8495-f38adf488b02', 1), '26bfc33c9084f35573e0c968e1e322d606f3812c3127e6ed8a3f94ceec77d2b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3', 1149, '2026-09-13 07:53:31.530339', 'be77a8fc9347f756431add5b942aa80129c881c222efe4506e354e8be8706c93', 'validated', '{"audio_key":"e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805","entity_key":"wf_media_claims_uncertainty_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be77a8fc9347f756431add5b942aa80129c881c222efe4506e354e8be8706c93","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e61342f853e84d9006858bab122f9a2d101bb20864fe43c29d5bfa4be6697805.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_evidence_04 -> audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('abe850ef-a8c4-547b-8902-21a55f0ebbaf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a899478ba0e1fe2dc987a3a52bb36f855c64e946761bc1d366ee6f7f10392572'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5656563-00ea-5f16-a582-0ec3c24a6b81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('abe850ef-a8c4-547b-8902-21a55f0ebbaf', 1), 'a899478ba0e1fe2dc987a3a52bb36f855c64e946761bc1d366ee6f7f10392572',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3', 1201, '2026-09-13 07:53:31.785944', '8dcf9a968e4823a009ef6f117d6636af2aa88d0f4530b4f50dd08d0e8418876f', 'validated', '{"audio_key":"ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36","entity_key":"lx_argument_evidence_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8dcf9a968e4823a009ef6f117d6636af2aa88d0f4530b4f50dd08d0e8418876f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_evidence_04 -> audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d14afff-0bc0-5dd6-b1fa-6864aa8278a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a899478ba0e1fe2dc987a3a52bb36f855c64e946761bc1d366ee6f7f10392572'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af330ce2-9679-596f-9bc8-699462498590', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d14afff-0bc0-5dd6-b1fa-6864aa8278a2', 1), 'a899478ba0e1fe2dc987a3a52bb36f855c64e946761bc1d366ee6f7f10392572',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3', 1201, '2026-09-13 07:53:31.785944', '8dcf9a968e4823a009ef6f117d6636af2aa88d0f4530b4f50dd08d0e8418876f', 'validated', '{"audio_key":"ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36","entity_key":"wf_argument_evidence_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8dcf9a968e4823a009ef6f117d6636af2aa88d0f4530b4f50dd08d0e8418876f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec5e11a2a1d6b2fe1171412b707f12ff938bccaf2e88d14ad11bb63611e0fa36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_issues_discussion_04 -> audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45755748-54f8-52b9-967e-a4a33189d229', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_issues_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b5895a80b8f7afd92ff0c1491854b34f1c7037937b494798687be8fc2cdbb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('135d2332-b193-52ca-b45e-83a2a4ea30ba', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45755748-54f8-52b9-967e-a4a33189d229', 1), '68b5895a80b8f7afd92ff0c1491854b34f1c7037937b494798687be8fc2cdbb6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3', 1097, '2026-09-13 07:53:32.575491', '12ca437b1d47ef8b85f34e57a38794b1b9b22c6884e5b51a401eac299c29e031', 'validated', '{"audio_key":"eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe","entity_key":"lx_social_issues_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ca437b1d47ef8b85f34e57a38794b1b9b22c6884e5b51a401eac299c29e031","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_issues_discussion_04 -> audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4f9df9d-f097-5b91-9aaa-287247461cb0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_issues_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b5895a80b8f7afd92ff0c1491854b34f1c7037937b494798687be8fc2cdbb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56e9961e-aa87-5b08-ba66-c49c1985bf21', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4f9df9d-f097-5b91-9aaa-287247461cb0', 1), '68b5895a80b8f7afd92ff0c1491854b34f1c7037937b494798687be8fc2cdbb6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3', 1097, '2026-09-13 07:53:32.575491', '12ca437b1d47ef8b85f34e57a38794b1b9b22c6884e5b51a401eac299c29e031', 'validated', '{"audio_key":"eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe","entity_key":"wf_social_issues_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ca437b1d47ef8b85f34e57a38794b1b9b22c6884e5b51a401eac299c29e031","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eebba5212f76a1f8c9ec2dd62ed860d7eb3ac691e1a05fdabae7e4bb46180efe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_negotiation_compromise_06 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_negotiation_compromise_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db2cdb75-09db-594a-83cb-75e71187a4fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"lx_negotiation_compromise_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_negotiation_compromise_06 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8efe005-bf03-5b47-b29d-4dd391127192', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_negotiation_compromise_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8ee1d82-73b1-5d75-98ee-879572547d47', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8efe005-bf03-5b47-b29d-4dd391127192', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"wf_negotiation_compromise_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_03 -> audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9cfb1509-fcfe-5201-92a0-e72c74da1f19', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f29812a18f67d08bcce0a5f16e760fe900e6ef4230049f93d7011b93319561d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f2c190d-69e0-5b4e-93fd-4333aa4db77b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9cfb1509-fcfe-5201-92a0-e72c74da1f19', 1), '9f29812a18f67d08bcce0a5f16e760fe900e6ef4230049f93d7011b93319561d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3', 5015, '2026-09-13 07:53:33.330959', '0ee4625c3ede9ad05ac97eaec71830bddbaf2b382d18912d4218b4a893bf84da', 'validated', '{"audio_key":"0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274","entity_key":"u_media_claims_uncertainty_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ee4625c3ede9ad05ac97eaec71830bddbaf2b382d18912d4218b4a893bf84da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_claims_uncertainty_02_listen -> audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d18170be-2c41-5243-be8e-9f5498b22cbe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_claims_uncertainty_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f29812a18f67d08bcce0a5f16e760fe900e6ef4230049f93d7011b93319561d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4179ef14-2db5-5049-bea0-2983eafd3229', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d18170be-2c41-5243-be8e-9f5498b22cbe', 1), '9f29812a18f67d08bcce0a5f16e760fe900e6ef4230049f93d7011b93319561d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3', 5015, '2026-09-13 07:53:33.330959', '0ee4625c3ede9ad05ac97eaec71830bddbaf2b382d18912d4218b4a893bf84da', 'validated', '{"audio_key":"0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274","entity_key":"ex_media_claims_uncertainty_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ee4625c3ede9ad05ac97eaec71830bddbaf2b382d18912d4218b4a893bf84da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0084fb79db997d27b26efb33fb91e4abeb6474d66e54ac096b45123397ade274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_05 -> audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d605349c-5a1a-527a-9df7-beccfdb367e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee771654ff349aff65f55e2af4250473dfa30ce096f2fdcd74892b50360f44c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e50e0d51-efc3-519d-bb7f-c7ebabd9bbcf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d605349c-5a1a-527a-9df7-beccfdb367e2', 1), 'ee771654ff349aff65f55e2af4250473dfa30ce096f2fdcd74892b50360f44c5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3', 4310, '2026-09-13 07:53:33.971556', '10d682e62a992ca99e30058ed3b272dc8e0bbbca78b29c2209f106c90a38af0f', 'validated', '{"audio_key":"04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62","entity_key":"u_presentations_questions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10d682e62a992ca99e30058ed3b272dc8e0bbbca78b29c2209f106c90a38af0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presentations_questions_03_listen -> audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3d443a6b-06a2-517d-bbf8-b281ff2f57c0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presentations_questions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee771654ff349aff65f55e2af4250473dfa30ce096f2fdcd74892b50360f44c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41ceed30-fc8a-506d-a863-40d573d16461', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3d443a6b-06a2-517d-bbf8-b281ff2f57c0', 1), 'ee771654ff349aff65f55e2af4250473dfa30ce096f2fdcd74892b50360f44c5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3', 4310, '2026-09-13 07:53:33.971556', '10d682e62a992ca99e30058ed3b272dc8e0bbbca78b29c2209f106c90a38af0f', 'validated', '{"audio_key":"04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62","entity_key":"ex_presentations_questions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10d682e62a992ca99e30058ed3b272dc8e0bbbca78b29c2209f106c90a38af0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/04158aa6c0242aa08868d318cd0c028bab01b39b5fdd5f5efc87ce688457dd62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_04 -> audio/generated/de-DE/utterances/0547c6fa563821d3871ba076feb691237cec30087fdb18f65d01c19dcb056af4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dc68782a-3250-5fb4-9892-dca7c19b36ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df858a0481b38963624f5e96a74503b98989337e246dfd1f03c44ed6e01b8d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b5c443c-0c8d-5174-9bf9-44874c17e79e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dc68782a-3250-5fb4-9892-dca7c19b36ce', 1), 'df858a0481b38963624f5e96a74503b98989337e246dfd1f03c44ed6e01b8d42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0547c6fa563821d3871ba076feb691237cec30087fdb18f65d01c19dcb056af4.mp3', 4963, '2026-09-13 07:53:34.864834', '5c9cdbb966735ce3ff2e6517c487cae181a06851dc5b45a648538c82c83d9fc3', 'validated', '{"audio_key":"0547c6fa563821d3871ba076feb691237cec30087fdb18f65d01c19dcb056af4","entity_key":"u_data_trends_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c9cdbb966735ce3ff2e6517c487cae181a06851dc5b45a648538c82c83d9fc3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0547c6fa563821d3871ba076feb691237cec30087fdb18f65d01c19dcb056af4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_04 -> audio/generated/de-DE/utterances/07a8a3805917c9e263afb131f1bd3962e46c081b24130d29ad0d2b51995c7810.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d1fa231-60b9-56d0-b518-333acfc8e00f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8bcba0dae3087d47c5f470555ccde892d848a5a4fd8e83107c7e54a43418934'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f07c8ea-01c4-5b18-b789-ebb137f08b7d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d1fa231-60b9-56d0-b518-333acfc8e00f', 1), 'f8bcba0dae3087d47c5f470555ccde892d848a5a4fd8e83107c7e54a43418934',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07a8a3805917c9e263afb131f1bd3962e46c081b24130d29ad0d2b51995c7810.mp3', 5511, '2026-09-13 07:53:35.602337', '590fe6318b191b4273e418fabbd9930c334af5298e4ed913346cb9535d0371a8', 'validated', '{"audio_key":"07a8a3805917c9e263afb131f1bd3962e46c081b24130d29ad0d2b51995c7810","entity_key":"u_formal_messages_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"590fe6318b191b4273e418fabbd9930c334af5298e4ed913346cb9535d0371a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07a8a3805917c9e263afb131f1bd3962e46c081b24130d29ad0d2b51995c7810.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_03 -> audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2b224981-d138-5a55-9889-3ba7ac45ceaa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '598ad65b4dc3d8ad425f66b23231a5aa1583e00cc11b41e2049397393fa4a638'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a010bfd-fbb0-5972-9559-9a52b3dcac3c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2b224981-d138-5a55-9889-3ba7ac45ceaa', 1), '598ad65b4dc3d8ad425f66b23231a5aa1583e00cc11b41e2049397393fa4a638',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3', 3787, '2026-09-13 07:53:36.503297', '6fffaad9d0ae58d22571724d1b6637b383f48018d1cc2df50c77cfef88fc99e3', 'validated', '{"audio_key":"0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6","entity_key":"u_meetings_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fffaad9d0ae58d22571724d1b6637b383f48018d1cc2df50c77cfef88fc99e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meetings_decisions_02_listen -> audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f33411cc-8a59-50e0-bbaf-a141f7bb4116', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meetings_decisions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '598ad65b4dc3d8ad425f66b23231a5aa1583e00cc11b41e2049397393fa4a638'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f73b540f-0438-5003-8301-d509c648a90e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f33411cc-8a59-50e0-bbaf-a141f7bb4116', 1), '598ad65b4dc3d8ad425f66b23231a5aa1583e00cc11b41e2049397393fa4a638',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3', 3787, '2026-09-13 07:53:36.503297', '6fffaad9d0ae58d22571724d1b6637b383f48018d1cc2df50c77cfef88fc99e3', 'validated', '{"audio_key":"0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6","entity_key":"ex_meetings_decisions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fffaad9d0ae58d22571724d1b6637b383f48018d1cc2df50c77cfef88fc99e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c0016cc31f98b384ca5cb9a8d17147e8d4363c312593c5ea996dc0fb13078a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_05 -> audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dfaf8478-fa29-58c8-a82f-708badfc106a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2af6d0a46f92d202222f37b39e0b5596a2b75a1a3001f2dfa26602f415d35a1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c889c8ea-5a2b-579b-bea9-3c2127acd070', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dfaf8478-fa29-58c8-a82f-708badfc106a', 1), '2af6d0a46f92d202222f37b39e0b5596a2b75a1a3001f2dfa26602f415d35a1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3', 3291, '2026-09-13 07:53:36.960891', '3b1f4a6e5a4a932dc58c65d7981074eea391925747f2f9c13fff6add3c78e0a9', 'validated', '{"audio_key":"1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa","entity_key":"u_data_trends_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b1f4a6e5a4a932dc58c65d7981074eea391925747f2f9c13fff6add3c78e0a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_trends_03_listen -> audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('19db4fd8-a156-576a-af4b-e87607d366ae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_trends_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2af6d0a46f92d202222f37b39e0b5596a2b75a1a3001f2dfa26602f415d35a1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b008f2b-7599-5c0a-a272-f05f55f0c3bd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('19db4fd8-a156-576a-af4b-e87607d366ae', 1), '2af6d0a46f92d202222f37b39e0b5596a2b75a1a3001f2dfa26602f415d35a1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3', 3291, '2026-09-13 07:53:36.960891', '3b1f4a6e5a4a932dc58c65d7981074eea391925747f2f9c13fff6add3c78e0a9', 'validated', '{"audio_key":"1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa","entity_key":"ex_data_trends_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b1f4a6e5a4a932dc58c65d7981074eea391925747f2f9c13fff6add3c78e0a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1106c44b952173622e29fd3a138d92606fb9a0219844e583fe32b1ce1bf454aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_05 -> audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6626af40-5ba4-528d-925e-d1845d8e55c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55a6e1205a507f00714c3cda2535e35453ab111fd52389118fecaae34c226ec3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae451c80-b50a-5ba0-bb6a-79194b893fab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6626af40-5ba4-528d-925e-d1845d8e55c8', 1), '55a6e1205a507f00714c3cda2535e35453ab111fd52389118fecaae34c226ec3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3', 4310, '2026-09-13 07:53:38.045592', 'b4349ce4588b3659e250c633297a62fce0140486fde131642a7be8caad4671b9', 'validated', '{"audio_key":"125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674","entity_key":"u_meetings_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4349ce4588b3659e250c633297a62fce0140486fde131642a7be8caad4671b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meetings_decisions_03_listen -> audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d0b64ffc-b9a2-50b6-b8fb-949ab8bc54b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meetings_decisions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55a6e1205a507f00714c3cda2535e35453ab111fd52389118fecaae34c226ec3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dccecbad-20e4-5ea5-8796-f3ec9d1609d1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d0b64ffc-b9a2-50b6-b8fb-949ab8bc54b3', 1), '55a6e1205a507f00714c3cda2535e35453ab111fd52389118fecaae34c226ec3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3', 4310, '2026-09-13 07:53:38.045592', 'b4349ce4588b3659e250c633297a62fce0140486fde131642a7be8caad4671b9', 'validated', '{"audio_key":"125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674","entity_key":"ex_meetings_decisions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4349ce4588b3659e250c633297a62fce0140486fde131642a7be8caad4671b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/125fec4845da13bf944592829433cc58ecab84d81be32a8c9c048704802ff674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_01 -> audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13cddae6-7391-5e1f-989f-745400f5def1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a02c5ab2c10466b3935a0d276085b5b9ec26234c1074464c344cee11b53ee675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff80440-a3ed-535a-acdf-9dc6b253e0e5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13cddae6-7391-5e1f-989f-745400f5def1', 1), 'a02c5ab2c10466b3935a0d276085b5b9ec26234c1074464c344cee11b53ee675',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3', 4493, '2026-09-13 07:53:38.457707', '637164e1d6d5d79904466048bc5e007e493ce49f2ebb369c6cfd9ff732ba6b07', 'validated', '{"audio_key":"12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d","entity_key":"u_presentations_questions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"637164e1d6d5d79904466048bc5e007e493ce49f2ebb369c6cfd9ff732ba6b07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presentations_questions_01_listen -> audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e48d38b2-62c1-561b-8ebc-63c59ea5f9eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presentations_questions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a02c5ab2c10466b3935a0d276085b5b9ec26234c1074464c344cee11b53ee675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('663e9b6f-0f88-5273-83c3-54be851010e8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e48d38b2-62c1-561b-8ebc-63c59ea5f9eb', 1), 'a02c5ab2c10466b3935a0d276085b5b9ec26234c1074464c344cee11b53ee675',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3', 4493, '2026-09-13 07:53:38.457707', '637164e1d6d5d79904466048bc5e007e493ce49f2ebb369c6cfd9ff732ba6b07', 'validated', '{"audio_key":"12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d","entity_key":"ex_presentations_questions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"637164e1d6d5d79904466048bc5e007e493ce49f2ebb369c6cfd9ff732ba6b07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/12c4c502e7a99d2376d09c380b0597776fec323db4d3c5552419aa5ba249465d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_02 -> audio/generated/de-DE/utterances/13e54c0eada45c13826020c797119b06ed89003916aa30d6e1d786c58ed37c01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a867492b-e011-5570-a73d-30d6e90e226d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab643be9b6f2f93776d885b9c36f3a732be58ec021908d8d8f7cff9bad8c4d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c196ce0-fa71-5077-8e10-d757007ed7cf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a867492b-e011-5570-a73d-30d6e90e226d', 1), 'ab643be9b6f2f93776d885b9c36f3a732be58ec021908d8d8f7cff9bad8c4d0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/13e54c0eada45c13826020c797119b06ed89003916aa30d6e1d786c58ed37c01.mp3', 4022, '2026-09-13 07:53:39.414544', 'ac0bda5da199ba53fcb47da616ef25b6ac52a889315a2c778e881a41fbe4032c', 'validated', '{"audio_key":"13e54c0eada45c13826020c797119b06ed89003916aa30d6e1d786c58ed37c01","entity_key":"u_data_trends_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac0bda5da199ba53fcb47da616ef25b6ac52a889315a2c778e881a41fbe4032c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/13e54c0eada45c13826020c797119b06ed89003916aa30d6e1d786c58ed37c01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_02 -> audio/generated/de-DE/utterances/1d4c7ae5723a0e6334b775c9a504df99722d8f7b05ac5ee582ce66da4e81acfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b1d5f62-351d-5304-baae-2aeb50a7a17e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '921c2c17836333e0aeeff276524574a60bebe4b922350bad4d4d24ff1a118c87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42a4ec53-2cc0-556e-ae2e-b020e2faff6a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b1d5f62-351d-5304-baae-2aeb50a7a17e', 1), '921c2c17836333e0aeeff276524574a60bebe4b922350bad4d4d24ff1a118c87',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1d4c7ae5723a0e6334b775c9a504df99722d8f7b05ac5ee582ce66da4e81acfa.mp3', 3787, '2026-09-13 07:53:39.858723', 'f4cb95237922f8a6fbf6bee86c07ab6636bc8d5fcac7933dcd13f619033e7f9b', 'validated', '{"audio_key":"1d4c7ae5723a0e6334b775c9a504df99722d8f7b05ac5ee582ce66da4e81acfa","entity_key":"u_formal_messages_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4cb95237922f8a6fbf6bee86c07ab6636bc8d5fcac7933dcd13f619033e7f9b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1d4c7ae5723a0e6334b775c9a504df99722d8f7b05ac5ee582ce66da4e81acfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_01 -> audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3dc13680-cc98-51c6-9906-32fb099fa100', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b28c684d06356c0f8995d28cfd5ffa6eecb14c4b2aa587de459955f26046daea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8ff3060-5065-5104-9f54-c34c13649f27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3dc13680-cc98-51c6-9906-32fb099fa100', 1), 'b28c684d06356c0f8995d28cfd5ffa6eecb14c4b2aa587de459955f26046daea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3', 3761, '2026-09-13 07:53:40.957695', '96fa6fc25687cb19cccd88ebb3a507269c871ed105e3d3055d98e389c87e3219', 'validated', '{"audio_key":"28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb","entity_key":"u_negotiation_compromise_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96fa6fc25687cb19cccd88ebb3a507269c871ed105e3d3055d98e389c87e3219","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_negotiation_compromise_01_listen -> audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d96896a6-030c-5c31-afc7-2f2802bad4be', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_negotiation_compromise_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b28c684d06356c0f8995d28cfd5ffa6eecb14c4b2aa587de459955f26046daea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c95ac84-66cc-527b-929f-d076fe6ad169', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d96896a6-030c-5c31-afc7-2f2802bad4be', 1), 'b28c684d06356c0f8995d28cfd5ffa6eecb14c4b2aa587de459955f26046daea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3', 3761, '2026-09-13 07:53:40.957695', '96fa6fc25687cb19cccd88ebb3a507269c871ed105e3d3055d98e389c87e3219', 'validated', '{"audio_key":"28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb","entity_key":"ex_negotiation_compromise_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96fa6fc25687cb19cccd88ebb3a507269c871ed105e3d3055d98e389c87e3219","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/28b59b61066fef43f519012cc76c9c417f04a7412781fc0dea942b4664d5f7eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_05 -> audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('751f0691-9d5b-5696-b0db-d86c34e38096', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a11ca0259e931ab042b810e5bb0f3bc2581f8aa32d25e7e748441d8c5665821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0010c04-ba35-5ca9-8eac-0df065c097ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('751f0691-9d5b-5696-b0db-d86c34e38096', 1), '2a11ca0259e931ab042b810e5bb0f3bc2581f8aa32d25e7e748441d8c5665821',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3', 4780, '2026-09-13 07:53:41.513946', 'e8b4612f6efce4ff1f6fe0fc07c09f52b936945dde194d87b102dd308d4fc577', 'validated', '{"audio_key":"2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab","entity_key":"u_negotiation_compromise_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b4612f6efce4ff1f6fe0fc07c09f52b936945dde194d87b102dd308d4fc577","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_negotiation_compromise_03_listen -> audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('141da078-8c78-5634-abcb-c2abd9881ba6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_negotiation_compromise_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a11ca0259e931ab042b810e5bb0f3bc2581f8aa32d25e7e748441d8c5665821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcbf065-c2d5-5846-b40a-2145665b6a2e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('141da078-8c78-5634-abcb-c2abd9881ba6', 1), '2a11ca0259e931ab042b810e5bb0f3bc2581f8aa32d25e7e748441d8c5665821',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3', 4780, '2026-09-13 07:53:41.513946', 'e8b4612f6efce4ff1f6fe0fc07c09f52b936945dde194d87b102dd308d4fc577', 'validated', '{"audio_key":"2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab","entity_key":"ex_negotiation_compromise_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b4612f6efce4ff1f6fe0fc07c09f52b936945dde194d87b102dd308d4fc577","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2906c48a2ed11579cb0dbc42e2a9e18117cab6598e57414f26e4afebbaf10bab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_03 -> audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('50a7d138-a65c-505b-bb79-8f6cd35714ea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5787b0e3c765dcbb7a1eb4d94b3726451cb6379edda7b8610be2f232a06e412d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f03da044-b593-5cb4-9610-246a8435efe2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('50a7d138-a65c-505b-bb79-8f6cd35714ea', 1), '5787b0e3c765dcbb7a1eb4d94b3726451cb6379edda7b8610be2f232a06e412d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3', 4440, '2026-09-13 07:53:42.592504', 'a02c02e87aa7742d36221dedbfb9c25ca959d8c050a574b1f99948516f4fd486', 'validated', '{"audio_key":"2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17","entity_key":"u_social_issues_discussion_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a02c02e87aa7742d36221dedbfb9c25ca959d8c050a574b1f99948516f4fd486","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_social_issues_discussion_02_listen -> audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('156aeca4-0000-56ca-80ec-9da1566177de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_social_issues_discussion_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5787b0e3c765dcbb7a1eb4d94b3726451cb6379edda7b8610be2f232a06e412d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31f733fb-9181-5806-bc40-21b80c9ccf76', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('156aeca4-0000-56ca-80ec-9da1566177de', 1), '5787b0e3c765dcbb7a1eb4d94b3726451cb6379edda7b8610be2f232a06e412d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3', 4440, '2026-09-13 07:53:42.592504', 'a02c02e87aa7742d36221dedbfb9c25ca959d8c050a574b1f99948516f4fd486', 'validated', '{"audio_key":"2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17","entity_key":"ex_social_issues_discussion_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a02c02e87aa7742d36221dedbfb9c25ca959d8c050a574b1f99948516f4fd486","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2a2fba9bd69b170d11b0d66a118a58df866225096dc56e9d9ae44ba50b154b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_04 -> audio/generated/de-DE/utterances/301f0b8cf599e6a0a3a43f47c19f6fbd458a412c3c774194a98361808d134c86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2afb026d-fd88-5d57-b7e2-1112e0bbf1d6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edfdf0ac92417bf0db3b4ed088aaa36136be4080b7de83f5df30810728abf182'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b92621e3-50c7-597d-a24c-a4d43c68dc3c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2afb026d-fd88-5d57-b7e2-1112e0bbf1d6', 1), 'edfdf0ac92417bf0db3b4ed088aaa36136be4080b7de83f5df30810728abf182',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/301f0b8cf599e6a0a3a43f47c19f6fbd458a412c3c774194a98361808d134c86.mp3', 4728, '2026-09-13 07:53:43.056133', '59b81b109e56ebc2a216c07736d92d8ed14707d7227f29d06a6089c5392d9252', 'validated', '{"audio_key":"301f0b8cf599e6a0a3a43f47c19f6fbd458a412c3c774194a98361808d134c86","entity_key":"u_negotiation_compromise_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59b81b109e56ebc2a216c07736d92d8ed14707d7227f29d06a6089c5392d9252","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/301f0b8cf599e6a0a3a43f47c19f6fbd458a412c3c774194a98361808d134c86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_02 -> audio/generated/de-DE/utterances/45b6af1a66bf2530f2366c2bbf402f1e9d537f734234ee31dba1b171287f083e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd3e607d-95f7-57e0-afda-95ff54b2d4bb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '321e20d00b076ec2a8ba8995852435fd0becbcff86660b2712650c5ffc68b91a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e5d7f5b-ae5b-57a2-b9a0-23191e1bcd9d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd3e607d-95f7-57e0-afda-95ff54b2d4bb', 1), '321e20d00b076ec2a8ba8995852435fd0becbcff86660b2712650c5ffc68b91a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/45b6af1a66bf2530f2366c2bbf402f1e9d537f734234ee31dba1b171287f083e.mp3', 4728, '2026-09-13 07:53:44.237837', '5d8aafa8f65215ebe271a665977078abef3ab92ed85788e25e7c6430ca7c3ff3', 'validated', '{"audio_key":"45b6af1a66bf2530f2366c2bbf402f1e9d537f734234ee31dba1b171287f083e","entity_key":"u_argument_evidence_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d8aafa8f65215ebe271a665977078abef3ab92ed85788e25e7c6430ca7c3ff3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/45b6af1a66bf2530f2366c2bbf402f1e9d537f734234ee31dba1b171287f083e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_01 -> audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a88eeea2-037e-5b3a-9b57-9fdfe8ecbaeb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0be4ad4cb330bd8e933211ec0d45a9bdbb50b63808d32e247ac588f668b657b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61c85a5e-b901-5f9a-81e3-17b5c2048ca7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a88eeea2-037e-5b3a-9b57-9fdfe8ecbaeb', 1), '0be4ad4cb330bd8e933211ec0d45a9bdbb50b63808d32e247ac588f668b657b1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3', 5433, '2026-09-13 07:53:44.686565', '7d7cfd05095e54a5065d801a2257ed1ea8959e126a008fe9485aad4709915ef4', 'validated', '{"audio_key":"48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779","entity_key":"u_source_summary_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d7cfd05095e54a5065d801a2257ed1ea8959e126a008fe9485aad4709915ef4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_summary_comparison_01_listen -> audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('70485c1a-86bf-53ae-b97c-3543f8451d51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_summary_comparison_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0be4ad4cb330bd8e933211ec0d45a9bdbb50b63808d32e247ac588f668b657b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ace41413-e89c-5402-965f-5fa89ef6bade', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('70485c1a-86bf-53ae-b97c-3543f8451d51', 1), '0be4ad4cb330bd8e933211ec0d45a9bdbb50b63808d32e247ac588f668b657b1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3', 5433, '2026-09-13 07:53:44.686565', '7d7cfd05095e54a5065d801a2257ed1ea8959e126a008fe9485aad4709915ef4', 'validated', '{"audio_key":"48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779","entity_key":"ex_source_summary_comparison_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d7cfd05095e54a5065d801a2257ed1ea8959e126a008fe9485aad4709915ef4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48025e86c62df94c32de2aa1213c07eff329852f45d5bdb46c4829c2a9be0779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_01 -> audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('14730791-0c96-516b-9623-ccc6051777ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e44d38f84e4f581f75aad4dcc3e64589068dcabfacf34a9bf76ea3d7688475cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f5bf871-062c-56a0-b4ce-e6daaa888458', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('14730791-0c96-516b-9623-ccc6051777ef', 1), 'e44d38f84e4f581f75aad4dcc3e64589068dcabfacf34a9bf76ea3d7688475cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3', 4597, '2026-09-13 07:53:45.782099', 'c5c5e635911767c95dda85024f750862a87da6fed1cb53b631a07541e22683ec', 'validated', '{"audio_key":"48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb","entity_key":"u_argument_evidence_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5c5e635911767c95dda85024f750862a87da6fed1cb53b631a07541e22683ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_evidence_01_listen -> audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1996e0fe-34d6-5f1d-ab94-f686455af2e4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_evidence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e44d38f84e4f581f75aad4dcc3e64589068dcabfacf34a9bf76ea3d7688475cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38e1dafb-e2e5-5468-ac73-627afac198f3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1996e0fe-34d6-5f1d-ab94-f686455af2e4', 1), 'e44d38f84e4f581f75aad4dcc3e64589068dcabfacf34a9bf76ea3d7688475cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3', 4597, '2026-09-13 07:53:45.782099', 'c5c5e635911767c95dda85024f750862a87da6fed1cb53b631a07541e22683ec', 'validated', '{"audio_key":"48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb","entity_key":"ex_argument_evidence_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5c5e635911767c95dda85024f750862a87da6fed1cb53b631a07541e22683ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48edc5f2319a28fdef10f0fc7d08e7d39c82ec3bcf1422a7842b67cb95a57edb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_02 -> audio/generated/de-DE/utterances/4b7c59190f1f66a22fe481007d22e58aeb2713a57fd08540af9ca925486e6053.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('edbe8c39-2f70-56ef-8fbf-ef4376b0ef29', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec4492d8ff1d6a25f4d09f39094b4750275378f46c0a76a0de4fdf6d18068d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a5455e5-b2c8-5ae1-bd0f-3a8acffc20f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('edbe8c39-2f70-56ef-8fbf-ef4376b0ef29', 1), 'ec4492d8ff1d6a25f4d09f39094b4750275378f46c0a76a0de4fdf6d18068d6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4b7c59190f1f66a22fe481007d22e58aeb2713a57fd08540af9ca925486e6053.mp3', 5041, '2026-09-13 07:53:46.251826', '12c9282e4cd03318fa26a77035ab1f6d92ccfe50eea3110abff41d1e836b61b0', 'validated', '{"audio_key":"4b7c59190f1f66a22fe481007d22e58aeb2713a57fd08540af9ca925486e6053","entity_key":"u_meetings_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12c9282e4cd03318fa26a77035ab1f6d92ccfe50eea3110abff41d1e836b61b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4b7c59190f1f66a22fe481007d22e58aeb2713a57fd08540af9ca925486e6053.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_03 -> audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5ae0cb12-3166-5ecb-8458-dc7fddf29aff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc101b3d49a65d3e28d5ca23ef8c96bab68aa47369de6f0326378c67b8be0ae5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae7a9dcf-3d58-55a3-a7d0-b9fb425e44b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5ae0cb12-3166-5ecb-8458-dc7fddf29aff', 1), 'fc101b3d49a65d3e28d5ca23ef8c96bab68aa47369de6f0326378c67b8be0ae5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3', 5459, '2026-09-13 07:53:47.395934', '88a572e5b7e252507f67982407136cf5cfa7050eb6266def83e3b0ca2beb8b89', 'validated', '{"audio_key":"529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22","entity_key":"u_data_trends_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88a572e5b7e252507f67982407136cf5cfa7050eb6266def83e3b0ca2beb8b89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_trends_02_listen -> audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4d9b6bf3-09a0-58b2-a21f-091180cedbc2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_trends_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc101b3d49a65d3e28d5ca23ef8c96bab68aa47369de6f0326378c67b8be0ae5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8026cb28-332e-5a2a-b089-dd04db18e388', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4d9b6bf3-09a0-58b2-a21f-091180cedbc2', 1), 'fc101b3d49a65d3e28d5ca23ef8c96bab68aa47369de6f0326378c67b8be0ae5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3', 5459, '2026-09-13 07:53:47.395934', '88a572e5b7e252507f67982407136cf5cfa7050eb6266def83e3b0ca2beb8b89', 'validated', '{"audio_key":"529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22","entity_key":"ex_data_trends_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88a572e5b7e252507f67982407136cf5cfa7050eb6266def83e3b0ca2beb8b89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/529b313438651c3f160097a77050b03aa745038d03f406e86e7fd1de2f92ad22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_01 -> audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4c7c1ec-e2de-5b8e-938d-509b1f973abd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ad48bce6084dfcb0baf6607a24bf5df5f3b3a9f97883efaa6ca8772fcb9440c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4034bef7-86f0-5826-8182-8412e76939b9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4c7c1ec-e2de-5b8e-938d-509b1f973abd', 1), '0ad48bce6084dfcb0baf6607a24bf5df5f3b3a9f97883efaa6ca8772fcb9440c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3', 3996, '2026-09-13 07:53:47.632005', '008a7768318aa83cf6510f3f0140eec39b76c2acf7b305dea29f9b98611961ee', 'validated', '{"audio_key":"5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf","entity_key":"u_social_issues_discussion_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"008a7768318aa83cf6510f3f0140eec39b76c2acf7b305dea29f9b98611961ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_social_issues_discussion_01_listen -> audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('42ce6431-3adf-512f-87eb-a0d4b7d14624', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_social_issues_discussion_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ad48bce6084dfcb0baf6607a24bf5df5f3b3a9f97883efaa6ca8772fcb9440c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1488d94c-79c4-5c19-b62e-5769267c2410', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('42ce6431-3adf-512f-87eb-a0d4b7d14624', 1), '0ad48bce6084dfcb0baf6607a24bf5df5f3b3a9f97883efaa6ca8772fcb9440c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3', 3996, '2026-09-13 07:53:47.632005', '008a7768318aa83cf6510f3f0140eec39b76c2acf7b305dea29f9b98611961ee', 'validated', '{"audio_key":"5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf","entity_key":"ex_social_issues_discussion_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"008a7768318aa83cf6510f3f0140eec39b76c2acf7b305dea29f9b98611961ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5badb141d4ec58b7749441d018504d398b2b01aff02fb0c8dcb788e4af4e15cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_05 -> audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('15252295-3fc2-5a4e-a229-93db881589e4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00d4366e917676d93bc61f215eb36792779f9c71b9349cdcbd2e603fbe09f20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e3ecc2-6847-5b4e-826c-53b6598603c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('15252295-3fc2-5a4e-a229-93db881589e4', 1), 'b00d4366e917676d93bc61f215eb36792779f9c71b9349cdcbd2e603fbe09f20',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3', 4179, '2026-09-13 07:53:48.907138', '034263a4a7051be3fda000083b25c52bdead20f3fcd807fddfe796cb8f0d87cf', 'validated', '{"audio_key":"5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14","entity_key":"u_argument_evidence_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"034263a4a7051be3fda000083b25c52bdead20f3fcd807fddfe796cb8f0d87cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_evidence_03_listen -> audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d8c3714c-7a23-5c98-8524-a5fe9b057bbf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_evidence_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00d4366e917676d93bc61f215eb36792779f9c71b9349cdcbd2e603fbe09f20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1842395-39cd-5d90-a3bb-5aab67541bf0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d8c3714c-7a23-5c98-8524-a5fe9b057bbf', 1), 'b00d4366e917676d93bc61f215eb36792779f9c71b9349cdcbd2e603fbe09f20',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3', 4179, '2026-09-13 07:53:48.907138', '034263a4a7051be3fda000083b25c52bdead20f3fcd807fddfe796cb8f0d87cf', 'validated', '{"audio_key":"5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14","entity_key":"ex_argument_evidence_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"034263a4a7051be3fda000083b25c52bdead20f3fcd807fddfe796cb8f0d87cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5c181d096c4686953fd84c9384252c4821e955c61902363ac4b713559ccdaf14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_03 -> audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('370e4f6d-0079-5e51-aae4-78e9fa1ed75e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34ff3d312e2811d7206593f15ddc2347b1d99efcb9c63b2aaf6cd223ec8ebaff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('433a67c9-4cd1-5cea-ab78-556294249923', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('370e4f6d-0079-5e51-aae4-78e9fa1ed75e', 1), '34ff3d312e2811d7206593f15ddc2347b1d99efcb9c63b2aaf6cd223ec8ebaff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3', 5093, '2026-09-13 07:53:49.180725', '0b233733db5e3538bd0b87527a5961be102e5c48b6dd3a58c2d8a9f979ba8bec', 'validated', '{"audio_key":"614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54","entity_key":"u_formal_messages_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b233733db5e3538bd0b87527a5961be102e5c48b6dd3a58c2d8a9f979ba8bec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_messages_escalation_02_listen -> audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('20b5a993-606c-5c3c-85af-50f17208a7eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_messages_escalation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34ff3d312e2811d7206593f15ddc2347b1d99efcb9c63b2aaf6cd223ec8ebaff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbea6a45-2572-5c2f-ba42-81920794dd44', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('20b5a993-606c-5c3c-85af-50f17208a7eb', 1), '34ff3d312e2811d7206593f15ddc2347b1d99efcb9c63b2aaf6cd223ec8ebaff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3', 5093, '2026-09-13 07:53:49.180725', '0b233733db5e3538bd0b87527a5961be102e5c48b6dd3a58c2d8a9f979ba8bec', 'validated', '{"audio_key":"614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54","entity_key":"ex_formal_messages_escalation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b233733db5e3538bd0b87527a5961be102e5c48b6dd3a58c2d8a9f979ba8bec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/614f98bc2d327c7d1bf9fbef5bcef3097b47f9c4750a969f4bdfd730f3188e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_05 -> audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('38b43237-7869-56e1-8a78-18006fb0c006', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8cea28c7f9bbc5dc30588ac351a8542e9aed3c9c8a0b8f7a91cb6b478d5d05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d7ea013-8ebc-5d23-b5c9-216715914639', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('38b43237-7869-56e1-8a78-18006fb0c006', 1), 'b8cea28c7f9bbc5dc30588ac351a8542e9aed3c9c8a0b8f7a91cb6b478d5d05f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3', 4440, '2026-09-13 07:53:50.410247', 'b993293a1ebc5b6b1ad1bfe979b48a16a172932c6576c15a529b4824a8b57294', 'validated', '{"audio_key":"62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840","entity_key":"u_source_summary_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b993293a1ebc5b6b1ad1bfe979b48a16a172932c6576c15a529b4824a8b57294","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_summary_comparison_03_listen -> audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8e637d9b-8332-5454-83b1-5055f24024bb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_summary_comparison_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8cea28c7f9bbc5dc30588ac351a8542e9aed3c9c8a0b8f7a91cb6b478d5d05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca3191d8-e28a-54d0-a5fd-9081b6367e12', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8e637d9b-8332-5454-83b1-5055f24024bb', 1), 'b8cea28c7f9bbc5dc30588ac351a8542e9aed3c9c8a0b8f7a91cb6b478d5d05f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3', 4440, '2026-09-13 07:53:50.410247', 'b993293a1ebc5b6b1ad1bfe979b48a16a172932c6576c15a529b4824a8b57294', 'validated', '{"audio_key":"62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840","entity_key":"ex_source_summary_comparison_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b993293a1ebc5b6b1ad1bfe979b48a16a172932c6576c15a529b4824a8b57294","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62c9ac9402685bc03bb8ffa891d0efa9eb3963c9a8feb8b2391c1a5538861840.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_06 -> audio/generated/de-DE/utterances/6447916d678d971ad7f887fb32e07e9d4c823f5fae70486dfa59ef1bdb011b90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b0fae8b-7a5d-5f2f-90e8-d000931ebc75', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42cfd1f7d88ba3f49363bdc4e4dab6a682c196c40e49d563832d26c03d4c4970'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf566f76-54ab-5033-a506-b8733ae7b0ac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b0fae8b-7a5d-5f2f-90e8-d000931ebc75', 1), '42cfd1f7d88ba3f49363bdc4e4dab6a682c196c40e49d563832d26c03d4c4970',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6447916d678d971ad7f887fb32e07e9d4c823f5fae70486dfa59ef1bdb011b90.mp3', 4362, '2026-09-13 07:53:50.646771', '7e9602ec61e142632378769e56dd1b95d6b563dfd06743888afcbbb7aa230ef6', 'validated', '{"audio_key":"6447916d678d971ad7f887fb32e07e9d4c823f5fae70486dfa59ef1bdb011b90","entity_key":"u_presentations_questions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e9602ec61e142632378769e56dd1b95d6b563dfd06743888afcbbb7aa230ef6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6447916d678d971ad7f887fb32e07e9d4c823f5fae70486dfa59ef1bdb011b90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_06 -> audio/generated/de-DE/utterances/64a88d611392962c35a0693abfef7748c0d936be5d6383032159da02e2ae118f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba02b7e4-a2b6-5f66-b76c-461e88d7ca41', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '310211ec311e88048316a3441a9ff6f9567d20861b65300a4d6fc6af451cc875'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fceb332b-17f8-5bbf-b749-feb939993465', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba02b7e4-a2b6-5f66-b76c-461e88d7ca41', 1), '310211ec311e88048316a3441a9ff6f9567d20861b65300a4d6fc6af451cc875',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/64a88d611392962c35a0693abfef7748c0d936be5d6383032159da02e2ae118f.mp3', 4858, '2026-09-13 07:53:51.918452', 'bef0fa08edbbeb053ade0998ecbdb143a53690ef9b0d2ca12b30dc1af122160f', 'validated', '{"audio_key":"64a88d611392962c35a0693abfef7748c0d936be5d6383032159da02e2ae118f","entity_key":"u_social_issues_discussion_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bef0fa08edbbeb053ade0998ecbdb143a53690ef9b0d2ca12b30dc1af122160f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/64a88d611392962c35a0693abfef7748c0d936be5d6383032159da02e2ae118f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_02 -> audio/generated/de-DE/utterances/6c9cd80d74395497d8c994cd342369403686c5e6774cb15a78d53c8084a6898e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e0c0bd95-9449-54e8-8944-99f75b013fbe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c712bbad8ccf6fbaf1d382281ea8e0b5df8a658319f5b9a8fb20c5e5fec8a91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6574189-9710-5176-8077-3035c4af3fc8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e0c0bd95-9449-54e8-8944-99f75b013fbe', 1), '0c712bbad8ccf6fbaf1d382281ea8e0b5df8a658319f5b9a8fb20c5e5fec8a91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c9cd80d74395497d8c994cd342369403686c5e6774cb15a78d53c8084a6898e.mp3', 5015, '2026-09-13 07:53:52.161420', 'f147b6a45dc22209a371192c63053bfe593641e6ce2ff725504a8983cd66ae9e', 'validated', '{"audio_key":"6c9cd80d74395497d8c994cd342369403686c5e6774cb15a78d53c8084a6898e","entity_key":"u_presentations_questions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f147b6a45dc22209a371192c63053bfe593641e6ce2ff725504a8983cd66ae9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c9cd80d74395497d8c994cd342369403686c5e6774cb15a78d53c8084a6898e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_04 -> audio/generated/de-DE/utterances/75ba65107bb7aa35def79e1493a17e413d9c0e9e412fd0726f068e75c2a5c453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9632360-228e-5f6f-85e1-57de5e1b7973', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da559986f17bd90de80fc5d834a998f2e9bf7b9970e668e01d99d11700f6a61b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f04f1a1-3e5d-54ba-a470-4061e1637b39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9632360-228e-5f6f-85e1-57de5e1b7973', 1), 'da559986f17bd90de80fc5d834a998f2e9bf7b9970e668e01d99d11700f6a61b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/75ba65107bb7aa35def79e1493a17e413d9c0e9e412fd0726f068e75c2a5c453.mp3', 5041, '2026-09-13 07:53:53.501445', 'ec81c6058cb4053109f664f706d0bca029d7a7bd0a4c34c82b7767aed2353976', 'validated', '{"audio_key":"75ba65107bb7aa35def79e1493a17e413d9c0e9e412fd0726f068e75c2a5c453","entity_key":"u_social_issues_discussion_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec81c6058cb4053109f664f706d0bca029d7a7bd0a4c34c82b7767aed2353976","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/75ba65107bb7aa35def79e1493a17e413d9c0e9e412fd0726f068e75c2a5c453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_03 -> audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('04d76ba1-c4e7-5786-8ec6-ce001fa67933', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f759620ead740825c580ffa2360b173369d62f6b806bff6195f67df7516b883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6619749-b27e-56bc-944c-a168175e26ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('04d76ba1-c4e7-5786-8ec6-ce001fa67933', 1), '3f759620ead740825c580ffa2360b173369d62f6b806bff6195f67df7516b883',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3', 4257, '2026-09-13 07:53:53.588518', '65c5158c75f8d9199a147001321a9858222f431b9954a19b5d26a666985d3cdd', 'validated', '{"audio_key":"77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d","entity_key":"u_presentations_questions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65c5158c75f8d9199a147001321a9858222f431b9954a19b5d26a666985d3cdd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presentations_questions_02_listen -> audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('65f01e74-980a-5264-acfe-97a2ea521a98', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presentations_questions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f759620ead740825c580ffa2360b173369d62f6b806bff6195f67df7516b883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f44fb9d7-0833-5c0b-80cd-1232ab0467c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('65f01e74-980a-5264-acfe-97a2ea521a98', 1), '3f759620ead740825c580ffa2360b173369d62f6b806bff6195f67df7516b883',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3', 4257, '2026-09-13 07:53:53.588518', '65c5158c75f8d9199a147001321a9858222f431b9954a19b5d26a666985d3cdd', 'validated', '{"audio_key":"77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d","entity_key":"ex_presentations_questions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65c5158c75f8d9199a147001321a9858222f431b9954a19b5d26a666985d3cdd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/77355eccd4ad4abf90d31ab8f2e41bfd283b099d0196a8781486ec6f24fe244d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_06 -> audio/generated/de-DE/utterances/79d48a15dddcc2874a80dbb0774433183030530a3e50f64a8e0bc41a92d33667.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1b26c8b2-48d9-56f5-bd17-d8c137600b78', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a747d8318d58e97fefe6a53fb94c69d9a10e5aa45979669b768f28a35d42616'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8c53537-ea1f-5428-976c-0c9edf100990', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1b26c8b2-48d9-56f5-bd17-d8c137600b78', 1), '2a747d8318d58e97fefe6a53fb94c69d9a10e5aa45979669b768f28a35d42616',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/79d48a15dddcc2874a80dbb0774433183030530a3e50f64a8e0bc41a92d33667.mp3', 4623, '2026-09-13 07:53:55.043505', '8729542fd3ebab44c50bf87e77d4002bc73301b51e3971172c5108ebdc029f78', 'validated', '{"audio_key":"79d48a15dddcc2874a80dbb0774433183030530a3e50f64a8e0bc41a92d33667","entity_key":"u_data_trends_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8729542fd3ebab44c50bf87e77d4002bc73301b51e3971172c5108ebdc029f78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/79d48a15dddcc2874a80dbb0774433183030530a3e50f64a8e0bc41a92d33667.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_06 -> audio/generated/de-DE/utterances/80442e10c919c8c28a6ce1df61c4a66df9ef0879a5b9b66a4a1013a889a21a13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b588f507-1800-5158-b87f-8c12f139304d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4faa1b8082f21d77ced19722a9216468ec4e3f37b53810b05e258a3b6cbc67a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb11740a-b6cc-5a6e-bd53-d5fbb217091c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b588f507-1800-5158-b87f-8c12f139304d', 1), '4faa1b8082f21d77ced19722a9216468ec4e3f37b53810b05e258a3b6cbc67a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/80442e10c919c8c28a6ce1df61c4a66df9ef0879a5b9b66a4a1013a889a21a13.mp3', 4545, '2026-09-13 07:53:55.226418', 'fe4c4a907cb15377c3cc402138802b8e5599b8f528f6e4e6dc65e124aba01db1', 'validated', '{"audio_key":"80442e10c919c8c28a6ce1df61c4a66df9ef0879a5b9b66a4a1013a889a21a13","entity_key":"u_negotiation_compromise_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe4c4a907cb15377c3cc402138802b8e5599b8f528f6e4e6dc65e124aba01db1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/80442e10c919c8c28a6ce1df61c4a66df9ef0879a5b9b66a4a1013a889a21a13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_06 -> audio/generated/de-DE/utterances/894ccd5312364855813b7a13ec43f1c8fa35ff0dc7c8f92a8c40128276bca408.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e6c2a85b-9b9e-5f14-a615-b2007713ee0a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0199a3911bf4ea786adebd7ae96f826e5966860fec48b154180c0243d52460f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f980f36f-0566-58a5-8e30-57ea08256255', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e6c2a85b-9b9e-5f14-a615-b2007713ee0a', 1), '0199a3911bf4ea786adebd7ae96f826e5966860fec48b154180c0243d52460f7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/894ccd5312364855813b7a13ec43f1c8fa35ff0dc7c8f92a8c40128276bca408.mp3', 3840, '2026-09-13 07:53:56.406281', '6ac2391e7577a07e982045cafd25005c2050355ad5d417149fb6ca73ac9f009c', 'validated', '{"audio_key":"894ccd5312364855813b7a13ec43f1c8fa35ff0dc7c8f92a8c40128276bca408","entity_key":"u_meetings_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ac2391e7577a07e982045cafd25005c2050355ad5d417149fb6ca73ac9f009c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/894ccd5312364855813b7a13ec43f1c8fa35ff0dc7c8f92a8c40128276bca408.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_02 -> audio/generated/de-DE/utterances/8badff583bf6e9a43c32960e6cd410c014cdf9a1cd3cedbd6c4aa349e86ab124.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f07c0804-40f7-5b50-9025-de3b0bdead8f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63b85ae0c5343657713ea2b218a70ef46c165bcf7399730f3794b5a9e3551121'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2125fbd3-e0ab-522b-b2ea-57fb2fe0359a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f07c0804-40f7-5b50-9025-de3b0bdead8f', 1), '63b85ae0c5343657713ea2b218a70ef46c165bcf7399730f3794b5a9e3551121',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8badff583bf6e9a43c32960e6cd410c014cdf9a1cd3cedbd6c4aa349e86ab124.mp3', 3239, '2026-09-13 07:53:56.524992', 'd83561d49370e2ebeec3fad09eda27137f4aca149d64be4107df4fb7d0c21a30', 'validated', '{"audio_key":"8badff583bf6e9a43c32960e6cd410c014cdf9a1cd3cedbd6c4aa349e86ab124","entity_key":"u_media_claims_uncertainty_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d83561d49370e2ebeec3fad09eda27137f4aca149d64be4107df4fb7d0c21a30","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8badff583bf6e9a43c32960e6cd410c014cdf9a1cd3cedbd6c4aa349e86ab124.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_05 -> audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('340784ff-f549-5e11-b3a2-89f20fddb45e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78d2010b1b110bbc7138c8853aeae9cef69a6331e3a8700fd92b23accc829f02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f1e8d48-43a6-5814-8f62-220cce514a3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('340784ff-f549-5e11-b3a2-89f20fddb45e', 1), '78d2010b1b110bbc7138c8853aeae9cef69a6331e3a8700fd92b23accc829f02',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3', 3787, '2026-09-13 07:53:57.867905', 'd4f9ca5e81b0de788210aa32f669079c32c99b20daeaee13b08be376b2e886ec', 'validated', '{"audio_key":"949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203","entity_key":"u_media_claims_uncertainty_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4f9ca5e81b0de788210aa32f669079c32c99b20daeaee13b08be376b2e886ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_claims_uncertainty_03_listen -> audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e7ad23b1-130a-5af1-a0cd-3d6b2dc7e02b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_claims_uncertainty_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78d2010b1b110bbc7138c8853aeae9cef69a6331e3a8700fd92b23accc829f02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('409beb65-b802-5a9d-9948-d2d92a4b4e03', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e7ad23b1-130a-5af1-a0cd-3d6b2dc7e02b', 1), '78d2010b1b110bbc7138c8853aeae9cef69a6331e3a8700fd92b23accc829f02',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3', 3787, '2026-09-13 07:53:57.867905', 'd4f9ca5e81b0de788210aa32f669079c32c99b20daeaee13b08be376b2e886ec', 'validated', '{"audio_key":"949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203","entity_key":"ex_media_claims_uncertainty_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4f9ca5e81b0de788210aa32f669079c32c99b20daeaee13b08be376b2e886ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/949cbdb64eed6c6892fe6efbf526de2279e2b3dfa81e957a5ac9bb06502d6203.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_02 -> audio/generated/de-DE/utterances/96c5e4c89d80d1cec8ddb99fab3925e92c6798013a105c3e86e97505be7dea83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('438a0bd2-8393-5c71-a965-391ad18a89df', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eac1e06fa0de684129f526c3a97b21119e4025ebe168e77ea43db62edfc44107'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('391398dc-3f44-5f49-924c-b00ce3b12392', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('438a0bd2-8393-5c71-a965-391ad18a89df', 1), 'eac1e06fa0de684129f526c3a97b21119e4025ebe168e77ea43db62edfc44107',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/96c5e4c89d80d1cec8ddb99fab3925e92c6798013a105c3e86e97505be7dea83.mp3', 3761, '2026-09-13 07:53:57.972966', '1ade62269335cd269465f5f5a59a85b8c58dddeda239fc9cc5bc06a6d2932c06', 'validated', '{"audio_key":"96c5e4c89d80d1cec8ddb99fab3925e92c6798013a105c3e86e97505be7dea83","entity_key":"u_negotiation_compromise_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ade62269335cd269465f5f5a59a85b8c58dddeda239fc9cc5bc06a6d2932c06","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/96c5e4c89d80d1cec8ddb99fab3925e92c6798013a105c3e86e97505be7dea83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_04 -> audio/generated/de-DE/utterances/9d86c28645c06ac00ce409ad032952273713ae71258b02f10bf662279e7d4ea3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44bbb768-0dad-5f88-bc8b-8e93e4046522', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dfbff736f256000624172a7bb5b338eec29d06dce09f6e8096bf65831d31057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('638e16ea-b341-50b7-bc8d-55ac0988ee68', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44bbb768-0dad-5f88-bc8b-8e93e4046522', 1), '3dfbff736f256000624172a7bb5b338eec29d06dce09f6e8096bf65831d31057',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9d86c28645c06ac00ce409ad032952273713ae71258b02f10bf662279e7d4ea3.mp3', 4362, '2026-09-13 07:53:59.260956', '6d4ad19155a58b230f6d6a769762ebe8e4517896fe18d224b8dbd3b32302fe47', 'validated', '{"audio_key":"9d86c28645c06ac00ce409ad032952273713ae71258b02f10bf662279e7d4ea3","entity_key":"u_media_claims_uncertainty_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d4ad19155a58b230f6d6a769762ebe8e4517896fe18d224b8dbd3b32302fe47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9d86c28645c06ac00ce409ad032952273713ae71258b02f10bf662279e7d4ea3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_06 -> audio/generated/de-DE/utterances/9f6ce525a05cc8e0deec0b4e02ed53a5eaac74be6b191a7ec04e3f1b9bd8a6bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3be2d708-9dee-5a47-9ab9-0f8f4b34ffb4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c99669b65f3e32d5898fd1dc3903ed144f74d321de9f532f3e4be5ad32143b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8501127c-c717-599b-b159-7509068aa2cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3be2d708-9dee-5a47-9ab9-0f8f4b34ffb4', 1), '3c99669b65f3e32d5898fd1dc3903ed144f74d321de9f532f3e4be5ad32143b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f6ce525a05cc8e0deec0b4e02ed53a5eaac74be6b191a7ec04e3f1b9bd8a6bd.mp3', 4675, '2026-09-13 07:53:59.491597', 'd43d7b093892371b36a9c14e3775a5b79b4c2154a2d9b0601e53caab831a5ad3', 'validated', '{"audio_key":"9f6ce525a05cc8e0deec0b4e02ed53a5eaac74be6b191a7ec04e3f1b9bd8a6bd","entity_key":"u_media_claims_uncertainty_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43d7b093892371b36a9c14e3775a5b79b4c2154a2d9b0601e53caab831a5ad3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f6ce525a05cc8e0deec0b4e02ed53a5eaac74be6b191a7ec04e3f1b9bd8a6bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presentations_questions_04 -> audio/generated/de-DE/utterances/a220f4eb978fc37f9fa405227f6985b36fc43cafe183eab5f1c683c15c3b4fcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('60e3d841-cf1c-512a-8e97-4ffac382af1b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presentations_questions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24b1bb86f44ab4c37345a18220c4d03f1679f2388b59109e35ed727f7d443a10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0d7651c-860d-5675-b367-7ffdc0cbab7c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('60e3d841-cf1c-512a-8e97-4ffac382af1b', 1), '24b1bb86f44ab4c37345a18220c4d03f1679f2388b59109e35ed727f7d443a10',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a220f4eb978fc37f9fa405227f6985b36fc43cafe183eab5f1c683c15c3b4fcb.mp3', 4623, '2026-09-13 07:54:00.774773', '4665d7b1eeaee69063de692cbab71a47cd9a9f7a9e852d98a007323359b8c429', 'validated', '{"audio_key":"a220f4eb978fc37f9fa405227f6985b36fc43cafe183eab5f1c683c15c3b4fcb","entity_key":"u_presentations_questions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4665d7b1eeaee69063de692cbab71a47cd9a9f7a9e852d98a007323359b8c429","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a220f4eb978fc37f9fa405227f6985b36fc43cafe183eab5f1c683c15c3b4fcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_negotiation_compromise_03 -> audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53171d32-144e-5c27-8045-fb49c900302c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_negotiation_compromise_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd1c49035e0ddb321ffac4bbebe8091e682b1a9dcee1f45b646695de11a0c0b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd82fc02-6f6b-5707-810e-1de59b51578a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53171d32-144e-5c27-8045-fb49c900302c', 1), 'fd1c49035e0ddb321ffac4bbebe8091e682b1a9dcee1f45b646695de11a0c0b6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3', 4911, '2026-09-13 07:54:01.062531', 'd8b280b83f9f505b07d68017207a0dc5b4a38f1185f585b95445299221f4b84d', 'validated', '{"audio_key":"a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b","entity_key":"u_negotiation_compromise_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8b280b83f9f505b07d68017207a0dc5b4a38f1185f585b95445299221f4b84d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_negotiation_compromise_02_listen -> audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68e1d49c-798c-54cf-80d9-354c5e6e7e98', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_negotiation_compromise_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd1c49035e0ddb321ffac4bbebe8091e682b1a9dcee1f45b646695de11a0c0b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f783c783-f91e-5f98-bc2c-cc93f944dc1a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68e1d49c-798c-54cf-80d9-354c5e6e7e98', 1), 'fd1c49035e0ddb321ffac4bbebe8091e682b1a9dcee1f45b646695de11a0c0b6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3', 4911, '2026-09-13 07:54:01.062531', 'd8b280b83f9f505b07d68017207a0dc5b4a38f1185f585b95445299221f4b84d', 'validated', '{"audio_key":"a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b","entity_key":"ex_negotiation_compromise_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8b280b83f9f505b07d68017207a0dc5b4a38f1185f585b95445299221f4b84d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a3c41ab734977f5e31d2b297ed513e5b19d3ea126dbec76b7cde0124c233721b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_03 -> audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa3aac0f-1dda-5675-b2bf-918d107361e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a55150879848c71bc21e500614571b0ea70cca71e874be342e3b1213af40b93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('184ac088-0391-5ac1-9cb5-481492cc8d54', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa3aac0f-1dda-5675-b2bf-918d107361e2', 1), '1a55150879848c71bc21e500614571b0ea70cca71e874be342e3b1213af40b93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3', 2951, '2026-09-13 07:54:02.005892', 'f14614bdf71fccdfed1770ad6dd3abc48625c150c25b4489bfdeaada00d1e714', 'validated', '{"audio_key":"a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab","entity_key":"u_source_summary_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f14614bdf71fccdfed1770ad6dd3abc48625c150c25b4489bfdeaada00d1e714","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_source_summary_comparison_02_listen -> audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('711c92a2-7ec7-5c0f-acf1-72302c81c84c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_source_summary_comparison_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a55150879848c71bc21e500614571b0ea70cca71e874be342e3b1213af40b93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af68a252-e995-5881-98f1-b286b246f3c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('711c92a2-7ec7-5c0f-acf1-72302c81c84c', 1), '1a55150879848c71bc21e500614571b0ea70cca71e874be342e3b1213af40b93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3', 2951, '2026-09-13 07:54:02.005892', 'f14614bdf71fccdfed1770ad6dd3abc48625c150c25b4489bfdeaada00d1e714', 'validated', '{"audio_key":"a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab","entity_key":"ex_source_summary_comparison_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f14614bdf71fccdfed1770ad6dd3abc48625c150c25b4489bfdeaada00d1e714","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a6a94ef03c365b92a1656b957c5049153471813ae3f7a2ea5ef6a54c5b3fb6ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_04 -> audio/generated/de-DE/utterances/a97a960b1daf0adfd0998652a7eb6e2f1b7072593d778d3436f53e69f3a3192b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f4fb51bf-f8d7-569d-9f7f-f476b2a7b2f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eee36451b531b360510e0f4d79efb49604ab93acc309caf996245d9ccab3202c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0e1d17b-005f-5201-af42-c6a644038911', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f4fb51bf-f8d7-569d-9f7f-f476b2a7b2f3', 1), 'eee36451b531b360510e0f4d79efb49604ab93acc309caf996245d9ccab3202c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a97a960b1daf0adfd0998652a7eb6e2f1b7072593d778d3436f53e69f3a3192b.mp3', 4832, '2026-09-13 07:54:02.570218', '2cbcde19478e9a0d9ca108fe7ca9132a425a1deab698926ce2e48735e104649c', 'validated', '{"audio_key":"a97a960b1daf0adfd0998652a7eb6e2f1b7072593d778d3436f53e69f3a3192b","entity_key":"u_nuanced_agreement_disagreement_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cbcde19478e9a0d9ca108fe7ca9132a425a1deab698926ce2e48735e104649c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a97a960b1daf0adfd0998652a7eb6e2f1b7072593d778d3436f53e69f3a3192b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_03 -> audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a513f5e1-4c3d-5e66-bc6f-426734960b3a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb41d0e28420b04dfbdc5be39878b1cd1901f5376e7eba5eea1f98405b2e7041'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('122bd6b2-eade-5bea-a3bb-4ebf97c1513c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a513f5e1-4c3d-5e66-bc6f-426734960b3a', 1), 'bb41d0e28420b04dfbdc5be39878b1cd1901f5376e7eba5eea1f98405b2e7041',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3', 4179, '2026-09-13 07:54:03.421710', '934d35046a3e099b35da364fe1409361c2c41b26b347c3f9d43a8b41a767dd6f', 'validated', '{"audio_key":"aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2","entity_key":"u_argument_evidence_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934d35046a3e099b35da364fe1409361c2c41b26b347c3f9d43a8b41a767dd6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_evidence_02_listen -> audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6dcd4458-c25f-5106-8749-1173d63d20ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_evidence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb41d0e28420b04dfbdc5be39878b1cd1901f5376e7eba5eea1f98405b2e7041'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08b4364e-e9bb-55eb-aec0-b9022666a8e0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6dcd4458-c25f-5106-8749-1173d63d20ca', 1), 'bb41d0e28420b04dfbdc5be39878b1cd1901f5376e7eba5eea1f98405b2e7041',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3', 4179, '2026-09-13 07:54:03.421710', '934d35046a3e099b35da364fe1409361c2c41b26b347c3f9d43a8b41a767dd6f', 'validated', '{"audio_key":"aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2","entity_key":"ex_argument_evidence_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934d35046a3e099b35da364fe1409361c2c41b26b347c3f9d43a8b41a767dd6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aacc94e229c6bb054eac1d03f4d29e5bd0cc8ef39b87ee49f0eb0fe145cdf4e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_06 -> audio/generated/de-DE/utterances/aad5e87ea016cdac6a0f952cad8dc3468de5bda891b49a02cb6f2a987fd16cfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7fc47f4e-faa9-51bb-9868-101869e86bc8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6ff8984507388f6ebf72787b246e37957dde1cccbb323f5088ca457da916f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad379c53-5ed2-5682-9e38-dbbf567f51a6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7fc47f4e-faa9-51bb-9868-101869e86bc8', 1), '6e6ff8984507388f6ebf72787b246e37957dde1cccbb323f5088ca457da916f3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aad5e87ea016cdac6a0f952cad8dc3468de5bda891b49a02cb6f2a987fd16cfc.mp3', 5198, '2026-09-13 07:54:04.161682', '8fa4a93854508a2c5a71343ef5045a9316ad2130c4e313ec773e20c4bb296c8c', 'validated', '{"audio_key":"aad5e87ea016cdac6a0f952cad8dc3468de5bda891b49a02cb6f2a987fd16cfc","entity_key":"u_formal_messages_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8fa4a93854508a2c5a71343ef5045a9316ad2130c4e313ec773e20c4bb296c8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aad5e87ea016cdac6a0f952cad8dc3468de5bda891b49a02cb6f2a987fd16cfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_05 -> audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b7d0bbef-6a47-5ca3-982b-05f80ef43c3c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '015e15bcbf31019ee1437a7d95f8b355a7ddeb7e63953a68fffc0703ecce5ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('318d45c7-886c-5345-95fb-0f8f43d92bcf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b7d0bbef-6a47-5ca3-982b-05f80ef43c3c', 1), '015e15bcbf31019ee1437a7d95f8b355a7ddeb7e63953a68fffc0703ecce5ace',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3', 5250, '2026-09-13 07:54:05.112713', '07a169b2327ec8dfff9bde64ad9e32274f89c9d7c6717aab9edf660e63fc96ae', 'validated', '{"audio_key":"af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6","entity_key":"u_formal_messages_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07a169b2327ec8dfff9bde64ad9e32274f89c9d7c6717aab9edf660e63fc96ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_messages_escalation_03_listen -> audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('26531b86-c4c9-51ba-bf56-6b1831c04208', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_messages_escalation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '015e15bcbf31019ee1437a7d95f8b355a7ddeb7e63953a68fffc0703ecce5ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ebf6e8e-89ce-551f-adf5-637c7ab70aa9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('26531b86-c4c9-51ba-bf56-6b1831c04208', 1), '015e15bcbf31019ee1437a7d95f8b355a7ddeb7e63953a68fffc0703ecce5ace',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3', 5250, '2026-09-13 07:54:05.112713', '07a169b2327ec8dfff9bde64ad9e32274f89c9d7c6717aab9edf660e63fc96ae', 'validated', '{"audio_key":"af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6","entity_key":"ex_formal_messages_escalation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07a169b2327ec8dfff9bde64ad9e32274f89c9d7c6717aab9edf660e63fc96ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af14352e6ce258b17054e09921e5566d438706b0c03e7d1047ec1fa24d63f3c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_04 -> audio/generated/de-DE/utterances/b67696129bfa1a26a87cf9911bbbf17347aa1a0b381c41b83141d8854fce483e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f488dac4-8705-50a8-95ca-73b1aec0ce8d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95e75c198023a73fec6c23e7fc5df412fff6c32c32e7815475710daa46a74d0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e4645a4-c01f-5aa3-9242-69ce5ef18b26', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f488dac4-8705-50a8-95ca-73b1aec0ce8d', 1), '95e75c198023a73fec6c23e7fc5df412fff6c32c32e7815475710daa46a74d0d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b67696129bfa1a26a87cf9911bbbf17347aa1a0b381c41b83141d8854fce483e.mp3', 3343, '2026-09-13 07:54:05.488389', '0be6342c22ed6a9ea46bf26a381d7d55024e35d408842509a8fcf829bd66c81d', 'validated', '{"audio_key":"b67696129bfa1a26a87cf9911bbbf17347aa1a0b381c41b83141d8854fce483e","entity_key":"u_argument_evidence_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0be6342c22ed6a9ea46bf26a381d7d55024e35d408842509a8fcf829bd66c81d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b67696129bfa1a26a87cf9911bbbf17347aa1a0b381c41b83141d8854fce483e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_02 -> audio/generated/de-DE/utterances/b936ed8a70eee1d9eb39eb1628fcfe052b2bfdc82e334a5ddb22d6c9483aba06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3679fe96-ffb7-5d00-870d-17beafc9e106', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0940dedbd8aafd67b8ba61ad2e24b184f17303ddbe8f70e30d3c75a2d5a91a67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d41936d6-7a63-5c6f-97a2-4de3bf5dcb73', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3679fe96-ffb7-5d00-870d-17beafc9e106', 1), '0940dedbd8aafd67b8ba61ad2e24b184f17303ddbe8f70e30d3c75a2d5a91a67',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b936ed8a70eee1d9eb39eb1628fcfe052b2bfdc82e334a5ddb22d6c9483aba06.mp3', 5250, '2026-09-13 07:54:06.690158', '3596f04775428511cdd0be9a171e0aa11a5b5154e483fd9c3f21f78e99630ba7', 'validated', '{"audio_key":"b936ed8a70eee1d9eb39eb1628fcfe052b2bfdc82e334a5ddb22d6c9483aba06","entity_key":"u_social_issues_discussion_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3596f04775428511cdd0be9a171e0aa11a5b5154e483fd9c3f21f78e99630ba7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b936ed8a70eee1d9eb39eb1628fcfe052b2bfdc82e334a5ddb22d6c9483aba06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_messages_escalation_01 -> audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5d42f64-d2c9-549b-bfd7-2561ba9081fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_messages_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6eede9809578b174b70dd828f8e486a0dbbaf2e77cdcb793c283b8fc2209e2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19b4500c-7fba-5c4d-b5c9-e707e61f6d3b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5d42f64-d2c9-549b-bfd7-2561ba9081fe', 1), 'a6eede9809578b174b70dd828f8e486a0dbbaf2e77cdcb793c283b8fc2209e2a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3', 4205, '2026-09-13 07:54:06.899179', '17411e7871f996f999aad3fa1db1ab49616177d9335e4357ac51dab98ec70077', 'validated', '{"audio_key":"bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515","entity_key":"u_formal_messages_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17411e7871f996f999aad3fa1db1ab49616177d9335e4357ac51dab98ec70077","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_messages_escalation_01_listen -> audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('806b1f19-2fda-5e11-af8b-e339056481b4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_messages_escalation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6eede9809578b174b70dd828f8e486a0dbbaf2e77cdcb793c283b8fc2209e2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98dcd36c-af43-5b5d-85e3-d81b447b44f6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('806b1f19-2fda-5e11-af8b-e339056481b4', 1), 'a6eede9809578b174b70dd828f8e486a0dbbaf2e77cdcb793c283b8fc2209e2a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3', 4205, '2026-09-13 07:54:06.899179', '17411e7871f996f999aad3fa1db1ab49616177d9335e4357ac51dab98ec70077', 'validated', '{"audio_key":"bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515","entity_key":"ex_formal_messages_escalation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17411e7871f996f999aad3fa1db1ab49616177d9335e4357ac51dab98ec70077","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bdcd8f6d83cb8dc83fdc33d04835e7729f7820f640593b5ce547149abf308515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_02 -> audio/generated/de-DE/utterances/bf3cb5574684c19ca504eacf99ec3438be963efd7bd25141171740775691e152.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('01d3b421-9cdd-50dc-b4c9-df13fba34786', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11e3248df62d1ed691ee6ddbacfda57cb64a07bd715deb81f1529ac4228e62c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63e6daae-60c0-53e9-b543-dad3e207d520', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('01d3b421-9cdd-50dc-b4c9-df13fba34786', 1), '11e3248df62d1ed691ee6ddbacfda57cb64a07bd715deb81f1529ac4228e62c0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf3cb5574684c19ca504eacf99ec3438be963efd7bd25141171740775691e152.mp3', 5146, '2026-09-13 07:54:08.344975', '98f79c955a8862e34c05ddc8a1f90cc5c294a82d3fa3999febc3b67ea521eb1b', 'validated', '{"audio_key":"bf3cb5574684c19ca504eacf99ec3438be963efd7bd25141171740775691e152","entity_key":"u_source_summary_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98f79c955a8862e34c05ddc8a1f90cc5c294a82d3fa3999febc3b67ea521eb1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf3cb5574684c19ca504eacf99ec3438be963efd7bd25141171740775691e152.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_06 -> audio/generated/de-DE/utterances/c801331a5167e764c674043f8b83fd23c8214080cc176ec8f560dececc849e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1126fd8f-34b7-5738-9a42-0ff31735b168', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70ba2e444b36540a129b9e0b2dd7f532e6624053e44e7b13d7e2a7a8365cfbe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8f036b-7f5b-5bc5-8bcd-8338fc3a014f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1126fd8f-34b7-5738-9a42-0ff31735b168', 1), '70ba2e444b36540a129b9e0b2dd7f532e6624053e44e7b13d7e2a7a8365cfbe1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c801331a5167e764c674043f8b83fd23c8214080cc176ec8f560dececc849e11.mp3', 4179, '2026-09-13 07:54:08.523158', 'cdd4469b6b6d93acfe8515ca2184d015f07f08b720f02216fb9fe5bcb53539d3', 'validated', '{"audio_key":"c801331a5167e764c674043f8b83fd23c8214080cc176ec8f560dececc849e11","entity_key":"u_source_summary_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdd4469b6b6d93acfe8515ca2184d015f07f08b720f02216fb9fe5bcb53539d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c801331a5167e764c674043f8b83fd23c8214080cc176ec8f560dececc849e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_02 -> audio/generated/de-DE/utterances/c8308efed4caaaafb801917e21d6352c889300773f555172fad343c06bf41249.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('75f3ab2f-a6de-5635-a2b5-9d5a9bfa7c79', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8fca7efd7c5b5b41bb180b117905567833ff41ec8c2401f9ecc566a7d48ff4b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4db5f4a-201b-5b83-afed-e9571bf24fa9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('75f3ab2f-a6de-5635-a2b5-9d5a9bfa7c79', 1), '8fca7efd7c5b5b41bb180b117905567833ff41ec8c2401f9ecc566a7d48ff4b4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c8308efed4caaaafb801917e21d6352c889300773f555172fad343c06bf41249.mp3', 3343, '2026-09-13 07:54:09.654437', '8bb8b823c668b6d0080a9c0b1c2f3d8652a2cda091038a185bf17b1b2f7578a6', 'validated', '{"audio_key":"c8308efed4caaaafb801917e21d6352c889300773f555172fad343c06bf41249","entity_key":"u_nuanced_agreement_disagreement_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bb8b823c668b6d0080a9c0b1c2f3d8652a2cda091038a185bf17b1b2f7578a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c8308efed4caaaafb801917e21d6352c889300773f555172fad343c06bf41249.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_evidence_06 -> audio/generated/de-DE/utterances/cd9b5523f9864af6019f08ed1329c0c740bb786cf6b69a95a639473575013de5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c815d1ac-91da-5257-8f93-27f1e8d1631f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3662a49e6501ca960c84297971db556ef5bbf9994234bd92fd85699a52ab4869'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7c51f27-47bb-593e-b270-535ada58417b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c815d1ac-91da-5257-8f93-27f1e8d1631f', 1), '3662a49e6501ca960c84297971db556ef5bbf9994234bd92fd85699a52ab4869',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd9b5523f9864af6019f08ed1329c0c740bb786cf6b69a95a639473575013de5.mp3', 3944, '2026-09-13 07:54:10.014615', 'ee48555842b00595ffd04d09f194bd5259e69a9e7f72e992bb824da037d45435', 'validated', '{"audio_key":"cd9b5523f9864af6019f08ed1329c0c740bb786cf6b69a95a639473575013de5","entity_key":"u_argument_evidence_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee48555842b00595ffd04d09f194bd5259e69a9e7f72e992bb824da037d45435","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd9b5523f9864af6019f08ed1329c0c740bb786cf6b69a95a639473575013de5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_01 -> audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3948871b-c8e2-58e3-8e80-813f7cd9614c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a2d3219e4ff81f2280c3af81be847ceaf3b5cec1312e545560f823e2200ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca343e41-f2e9-577d-8682-727c0cce742e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3948871b-c8e2-58e3-8e80-813f7cd9614c', 1), '62a2d3219e4ff81f2280c3af81be847ceaf3b5cec1312e545560f823e2200ab6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3', 5041, '2026-09-13 07:54:11.176651', '930d2cda8ec71ccd52797548ef13e14a39e92c717d5b15ffa2f73cbfc12e6add', 'validated', '{"audio_key":"ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a","entity_key":"u_meetings_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"930d2cda8ec71ccd52797548ef13e14a39e92c717d5b15ffa2f73cbfc12e6add","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meetings_decisions_01_listen -> audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7de7e237-764e-53b9-87df-d5418427371a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meetings_decisions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a2d3219e4ff81f2280c3af81be847ceaf3b5cec1312e545560f823e2200ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb0a64b5-8c91-518a-80c4-ddf657c57e69', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7de7e237-764e-53b9-87df-d5418427371a', 1), '62a2d3219e4ff81f2280c3af81be847ceaf3b5cec1312e545560f823e2200ab6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3', 5041, '2026-09-13 07:54:11.176651', '930d2cda8ec71ccd52797548ef13e14a39e92c717d5b15ffa2f73cbfc12e6add', 'validated', '{"audio_key":"ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a","entity_key":"ex_meetings_decisions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"930d2cda8ec71ccd52797548ef13e14a39e92c717d5b15ffa2f73cbfc12e6add","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce8c2d17c9b0bf3d77ea27025b05dd45cf8e4ccaf6d25855856aa60c897d6f7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_issues_discussion_05 -> audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('96cfd964-dd20-542d-aded-b77bf27c5716', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_issues_discussion_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e6551d1cfb9edeca02aba8fb6b9b62a5e26d5fb6b9b92745278285a66b778f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1ad29bd-41d7-5839-895d-349ed24ce342', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('96cfd964-dd20-542d-aded-b77bf27c5716', 1), '0e6551d1cfb9edeca02aba8fb6b9b62a5e26d5fb6b9b92745278285a66b778f5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3', 5668, '2026-09-13 07:54:11.639772', '2b2afcd7bbb5a5d04ff9e1aa636c3755c7d306722013bd41c3035709fabc9ac8', 'validated', '{"audio_key":"db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92","entity_key":"u_social_issues_discussion_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b2afcd7bbb5a5d04ff9e1aa636c3755c7d306722013bd41c3035709fabc9ac8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_social_issues_discussion_03_listen -> audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8cbfc4cd-71f1-5426-a049-7f8e17d26f1f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_social_issues_discussion_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e6551d1cfb9edeca02aba8fb6b9b62a5e26d5fb6b9b92745278285a66b778f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12844e2b-d334-5a57-ae40-7b340eee0609', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8cbfc4cd-71f1-5426-a049-7f8e17d26f1f', 1), '0e6551d1cfb9edeca02aba8fb6b9b62a5e26d5fb6b9b92745278285a66b778f5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3', 5668, '2026-09-13 07:54:11.639772', '2b2afcd7bbb5a5d04ff9e1aa636c3755c7d306722013bd41c3035709fabc9ac8', 'validated', '{"audio_key":"db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92","entity_key":"ex_social_issues_discussion_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b2afcd7bbb5a5d04ff9e1aa636c3755c7d306722013bd41c3035709fabc9ac8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db66655760e59ab20519b7021b0abcf88b004680b81caf21241da06267ab6c92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_06 -> audio/generated/de-DE/utterances/e26c44ade84fb78d60077ea92bf6c8a655e0eddf88ceff761daa7eaa2e106ce9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78aff788-0620-5cc0-8760-3c6d5e000ed0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d82264964402bbc7663893e8bac12783f2ece28bab7a3c57240192ff2e6c128'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17af425e-f737-54e8-93b2-a0d50ad99e2b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78aff788-0620-5cc0-8760-3c6d5e000ed0', 1), '0d82264964402bbc7663893e8bac12783f2ece28bab7a3c57240192ff2e6c128',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e26c44ade84fb78d60077ea92bf6c8a655e0eddf88ceff761daa7eaa2e106ce9.mp3', 3056, '2026-09-13 07:54:12.559855', '2cf30681b59ead849caaa4e7fdd9ab95184bfe01dc3c29eedff50e3c13d39856', 'validated', '{"audio_key":"e26c44ade84fb78d60077ea92bf6c8a655e0eddf88ceff761daa7eaa2e106ce9","entity_key":"u_nuanced_agreement_disagreement_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cf30681b59ead849caaa4e7fdd9ab95184bfe01dc3c29eedff50e3c13d39856","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e26c44ade84fb78d60077ea92bf6c8a655e0eddf88ceff761daa7eaa2e106ce9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_01 -> audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('56ffb9aa-33ca-5520-8057-c7b8076ba1b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4846f0d4f34a6a3dc5e7b2f67f551cac5617ad2f34fbe86cc2de2f9072ccb267'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c006378-2d10-5b7b-a2ed-58e171dfcfc0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('56ffb9aa-33ca-5520-8057-c7b8076ba1b6', 1), '4846f0d4f34a6a3dc5e7b2f67f551cac5617ad2f34fbe86cc2de2f9072ccb267',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3', 4675, '2026-09-13 07:54:13.186864', '151fa584ba06fe1d269366911e856c16d9d6acbdc1930a54337fa6d1fedd2307', 'validated', '{"audio_key":"eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9","entity_key":"u_nuanced_agreement_disagreement_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"151fa584ba06fe1d269366911e856c16d9d6acbdc1930a54337fa6d1fedd2307","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_nuanced_agreement_disagreement_01_listen -> audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('625327ae-8267-5081-a12f-35bbde361b6d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_nuanced_agreement_disagreement_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4846f0d4f34a6a3dc5e7b2f67f551cac5617ad2f34fbe86cc2de2f9072ccb267'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1ff3d08-2ea8-599f-bb5d-6d8de4b59088', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('625327ae-8267-5081-a12f-35bbde361b6d', 1), '4846f0d4f34a6a3dc5e7b2f67f551cac5617ad2f34fbe86cc2de2f9072ccb267',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3', 4675, '2026-09-13 07:54:13.186864', '151fa584ba06fe1d269366911e856c16d9d6acbdc1930a54337fa6d1fedd2307', 'validated', '{"audio_key":"eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9","entity_key":"ex_nuanced_agreement_disagreement_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"151fa584ba06fe1d269366911e856c16d9d6acbdc1930a54337fa6d1fedd2307","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eb193f9073ec4015c090541282fd6a1f304bb8211b85824ff95b07b08a3a77a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_05 -> audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5188c79c-d1b8-5a46-bcbd-9beaf73e90a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbcdb538e95b9fa0ab3056afee3c03392e8f9bcf9e437401f3f581f238dd73d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32e50a1e-9234-56d9-981c-daaaa5261eb5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5188c79c-d1b8-5a46-bcbd-9beaf73e90a5', 1), 'fbcdb538e95b9fa0ab3056afee3c03392e8f9bcf9e437401f3f581f238dd73d6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3', 4493, '2026-09-13 07:54:13.970402', '8154a3b1ba0791bb828bf9fe636724e5c84374e2768075176b765ccc86eb98a3', 'validated', '{"audio_key":"edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735","entity_key":"u_nuanced_agreement_disagreement_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8154a3b1ba0791bb828bf9fe636724e5c84374e2768075176b765ccc86eb98a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_nuanced_agreement_disagreement_03_listen -> audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('635236f9-3ea9-5e5c-b90c-9ab4c8f542df', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_nuanced_agreement_disagreement_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbcdb538e95b9fa0ab3056afee3c03392e8f9bcf9e437401f3f581f238dd73d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e2a9483-c1ed-5004-9d06-700c38280c0d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('635236f9-3ea9-5e5c-b90c-9ab4c8f542df', 1), 'fbcdb538e95b9fa0ab3056afee3c03392e8f9bcf9e437401f3f581f238dd73d6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3', 4493, '2026-09-13 07:54:13.970402', '8154a3b1ba0791bb828bf9fe636724e5c84374e2768075176b765ccc86eb98a3', 'validated', '{"audio_key":"edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735","entity_key":"ex_nuanced_agreement_disagreement_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8154a3b1ba0791bb828bf9fe636724e5c84374e2768075176b765ccc86eb98a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edccebc1c86675f9618238bb2aa2a2c0df112725f8b86fd52c11c3bc51e73735.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_claims_uncertainty_01 -> audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4ffc201-5b5e-5b16-957d-742541e05971', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_claims_uncertainty_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276e173fa73575b2c2cbcc54a3bf8e86e19246032347a73f1fdd91d2a1f30d62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('398b517b-9662-563f-a02b-6cc8f302ed68', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4ffc201-5b5e-5b16-957d-742541e05971', 1), '276e173fa73575b2c2cbcc54a3bf8e86e19246032347a73f1fdd91d2a1f30d62',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3', 4728, '2026-09-13 07:54:14.751120', '6848b4d92860c193db3e1333e1ad55f53e009402fcb10dc38940e9fe6bc03999', 'validated', '{"audio_key":"edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6","entity_key":"u_media_claims_uncertainty_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6848b4d92860c193db3e1333e1ad55f53e009402fcb10dc38940e9fe6bc03999","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_claims_uncertainty_01_listen -> audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c3549e81-9860-57e3-94e3-1c33323030c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_claims_uncertainty_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276e173fa73575b2c2cbcc54a3bf8e86e19246032347a73f1fdd91d2a1f30d62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fede9cb-0e2b-585d-a7e9-fc9845383e6f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c3549e81-9860-57e3-94e3-1c33323030c7', 1), '276e173fa73575b2c2cbcc54a3bf8e86e19246032347a73f1fdd91d2a1f30d62',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3', 4728, '2026-09-13 07:54:14.751120', '6848b4d92860c193db3e1333e1ad55f53e009402fcb10dc38940e9fe6bc03999', 'validated', '{"audio_key":"edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6","entity_key":"ex_media_claims_uncertainty_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6848b4d92860c193db3e1333e1ad55f53e009402fcb10dc38940e9fe6bc03999","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edec29ee473014bdf8281f9d5892490efb0608b286aebfffccb982ea0b4692d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_summary_comparison_04 -> audio/generated/de-DE/utterances/f0f6abc16ab241b184b5224972a1d7929261fe4c762d656b8551ef27e4dcba6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('937ca23d-a910-5a6d-b5ad-0b2d0aefb45a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_summary_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a837cf45806e371407bceb60dd8a0adc1cc1aa188a5096463e750cd3e296ed51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c2b0887-b08a-5319-b1b2-25efd89c6d12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('937ca23d-a910-5a6d-b5ad-0b2d0aefb45a', 1), 'a837cf45806e371407bceb60dd8a0adc1cc1aa188a5096463e750cd3e296ed51',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f0f6abc16ab241b184b5224972a1d7929261fe4c762d656b8551ef27e4dcba6b.mp3', 4205, '2026-09-13 07:54:15.354296', '021c9648fc848c3bbb7d64b82824fe49c7daa1f1f156f7a2efefff5b2b5bf52d', 'validated', '{"audio_key":"f0f6abc16ab241b184b5224972a1d7929261fe4c762d656b8551ef27e4dcba6b","entity_key":"u_source_summary_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"021c9648fc848c3bbb7d64b82824fe49c7daa1f1f156f7a2efefff5b2b5bf52d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f0f6abc16ab241b184b5224972a1d7929261fe4c762d656b8551ef27e4dcba6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_agreement_disagreement_03 -> audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03c9445b-4c02-5cd4-a90f-d5b0eb5a0bb3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_agreement_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cf75ad513797e8c18d6fe549cb492841ea1027b7917607ec5f9fb8858283ee9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f350c8ba-b2a3-530a-8367-347133368141', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03c9445b-4c02-5cd4-a90f-d5b0eb5a0bb3', 1), '9cf75ad513797e8c18d6fe549cb492841ea1027b7917607ec5f9fb8858283ee9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3', 4362, '2026-09-13 07:54:16.291263', 'e4ef72631dffa444176ea6e874338b84cee56b5a2a021abf6f716460fc74e071', 'validated', '{"audio_key":"f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686","entity_key":"u_nuanced_agreement_disagreement_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4ef72631dffa444176ea6e874338b84cee56b5a2a021abf6f716460fc74e071","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_nuanced_agreement_disagreement_02_listen -> audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44772c15-b601-528e-b381-108a4e0c3f06', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_nuanced_agreement_disagreement_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cf75ad513797e8c18d6fe549cb492841ea1027b7917607ec5f9fb8858283ee9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ebc488f-07dd-5fa7-86c0-55023be2f305', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44772c15-b601-528e-b381-108a4e0c3f06', 1), '9cf75ad513797e8c18d6fe549cb492841ea1027b7917607ec5f9fb8858283ee9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3', 4362, '2026-09-13 07:54:16.291263', 'e4ef72631dffa444176ea6e874338b84cee56b5a2a021abf6f716460fc74e071', 'validated', '{"audio_key":"f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686","entity_key":"ex_nuanced_agreement_disagreement_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4ef72631dffa444176ea6e874338b84cee56b5a2a021abf6f716460fc74e071","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f56b8245f0b137754e7ca59b602fe77cd8c24321776d578a1c41af147821c686.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_trends_01 -> audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85f2b719-79e7-5e9d-bb5b-b84f78135e47', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_trends_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38a42e488ea47fb060396d7b9f3abb7b0b463784568bc82251cf9c1d17b728a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c2066d5-4463-58fd-b333-8fda5cdac513', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85f2b719-79e7-5e9d-bb5b-b84f78135e47', 1), '38a42e488ea47fb060396d7b9f3abb7b0b463784568bc82251cf9c1d17b728a1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3', 5250, '2026-09-13 07:54:16.885250', '3c614a9b009d822f47e27086d0617311c62eae5df6286b61ea5ccacbcc215c0e', 'validated', '{"audio_key":"f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44","entity_key":"u_data_trends_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c614a9b009d822f47e27086d0617311c62eae5df6286b61ea5ccacbcc215c0e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_trends_01_listen -> audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8d4cdf6d-48ad-5bd0-b8e8-4a93fcc536ea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_trends_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38a42e488ea47fb060396d7b9f3abb7b0b463784568bc82251cf9c1d17b728a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('807b03af-682e-509b-be18-2f74d3c98564', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8d4cdf6d-48ad-5bd0-b8e8-4a93fcc536ea', 1), '38a42e488ea47fb060396d7b9f3abb7b0b463784568bc82251cf9c1d17b728a1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3', 5250, '2026-09-13 07:54:16.885250', '3c614a9b009d822f47e27086d0617311c62eae5df6286b61ea5ccacbcc215c0e', 'validated', '{"audio_key":"f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44","entity_key":"ex_data_trends_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c614a9b009d822f47e27086d0617311c62eae5df6286b61ea5ccacbcc215c0e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dfe0c07a286ec588ee5a8b6eaf4b1c01cb0713d04a9c1eb51ab8e6aed76b44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meetings_decisions_04 -> audio/generated/de-DE/utterances/fca570b9f93ddccc7b2c901e2bc7bd7aa58273da361a474f025df8a6a6d4697e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a536af66-3438-57e1-9c33-4a8ad4628150', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meetings_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2976500947547ff7be062fb6af697aea4a82f53332937bef92001edbe72b2d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a57a9e1d-e828-5007-ad20-3b218bd12062', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a536af66-3438-57e1-9c33-4a8ad4628150', 1), '2976500947547ff7be062fb6af697aea4a82f53332937bef92001edbe72b2d6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fca570b9f93ddccc7b2c901e2bc7bd7aa58273da361a474f025df8a6a6d4697e.mp3', 3944, '2026-09-13 07:54:17.665444', 'd06c4d6f4cedae3730e949287f6b97a29dee81e64492b8d0472095cc1a3ec7d9', 'validated', '{"audio_key":"fca570b9f93ddccc7b2c901e2bc7bd7aa58273da361a474f025df8a6a6d4697e","entity_key":"u_meetings_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06c4d6f4cedae3730e949287f6b97a29dee81e64492b8d0472095cc1a3ec7d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fca570b9f93ddccc7b2c901e2bc7bd7aa58273da361a474f025df8a6a6d4697e.mp3"}'
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

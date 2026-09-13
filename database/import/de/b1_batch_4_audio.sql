-- Generated audio link import for de-DE B1
-- Source manifest: audio/manifests/de/B1-batch-4.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_invitations_hosting_01:3 -> audio/generated/de-DE/dialogues/008b2d6f185744cc7aa9876377b10669626554c9fe9f69dc717d5fd39ec29213.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f4ebe48-3ff2-5761-bb08-a038385a32fe', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f398d6f16ca802326e233f54412500b67dd02cff21fe74d8967461dd4461a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2aeab759-8293-5182-b2fe-d487fea7f86a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f4ebe48-3ff2-5761-bb08-a038385a32fe', 1), 'c1f398d6f16ca802326e233f54412500b67dd02cff21fe74d8967461dd4461a9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/008b2d6f185744cc7aa9876377b10669626554c9fe9f69dc717d5fd39ec29213.mp3', 2533, '2026-09-13 06:58:15.900105', '448a16e1bd06dee28d70bfa5af1b4d9ae995724d0aa9bab6fc303bf5deb25ac5', 'validated', '{"audio_key":"008b2d6f185744cc7aa9876377b10669626554c9fe9f69dc717d5fd39ec29213","entity_key":"d_invitations_hosting_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"448a16e1bd06dee28d70bfa5af1b4d9ae995724d0aa9bab6fc303bf5deb25ac5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/008b2d6f185744cc7aa9876377b10669626554c9fe9f69dc717d5fd39ec29213.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_02:2 -> audio/generated/de-DE/dialogues/012234bf8def45a78a03258543eec34b4ae941ae38575879047cdbb637d1516c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('895a61a6-7ebc-5b12-a1f7-2769e6931f0b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ded65817c475787c292e2e9ba65067c12a397afd2e1b0a0380e1c75a6c72ece'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c226d97-0944-5413-b613-e757d4cda930', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('895a61a6-7ebc-5b12-a1f7-2769e6931f0b', 1), '6ded65817c475787c292e2e9ba65067c12a397afd2e1b0a0380e1c75a6c72ece',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/012234bf8def45a78a03258543eec34b4ae941ae38575879047cdbb637d1516c.mp3', 2089, '2026-09-13 06:58:15.844491', '8bd7e437255d189166cc08512a2eecad6479482ce0edb2de8f387e4279b9ab91', 'validated', '{"audio_key":"012234bf8def45a78a03258543eec34b4ae941ae38575879047cdbb637d1516c","entity_key":"d_goals_priorities_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8bd7e437255d189166cc08512a2eecad6479482ce0edb2de8f387e4279b9ab91","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/012234bf8def45a78a03258543eec34b4ae941ae38575879047cdbb637d1516c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_01:3 -> audio/generated/de-DE/dialogues/049e4ea7d373f6cc8516101d568bab15020b23655dbcc3cf38e121615aad7100.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf2a4a4f-ade0-5bba-8fd6-45b64ea51295', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3433fa22f6809d30c3bb68d3a4b396281cb3e1f488d69e07348dd2c30dbc91e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56670ab1-d6b3-5892-94c4-5660a32d68b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf2a4a4f-ade0-5bba-8fd6-45b64ea51295', 1), 'd3433fa22f6809d30c3bb68d3a4b396281cb3e1f488d69e07348dd2c30dbc91e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/049e4ea7d373f6cc8516101d568bab15020b23655dbcc3cf38e121615aad7100.mp3', 1515, '2026-09-13 06:58:16.837286', 'be0b9385946826a7039d9e00c4828ba4a3b06283ff1d40e7482425dd7866c10b', 'validated', '{"audio_key":"049e4ea7d373f6cc8516101d568bab15020b23655dbcc3cf38e121615aad7100","entity_key":"d_moving_relocation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"be0b9385946826a7039d9e00c4828ba4a3b06283ff1d40e7482425dd7866c10b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/049e4ea7d373f6cc8516101d568bab15020b23655dbcc3cf38e121615aad7100.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_03:3 -> audio/generated/de-DE/dialogues/04b100b911a6ff8fd72436c24f688fca28b585a35999de55822340aed16a1470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5b4da25-6b01-5340-8425-a67cacde4f1c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '835d7dfe2561edac0056fb4592122d31887deba5645dff04baae99b49d60cee1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5efbce62-2e74-580f-9053-988f8267ec31', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5b4da25-6b01-5340-8425-a67cacde4f1c', 1), '835d7dfe2561edac0056fb4592122d31887deba5645dff04baae99b49d60cee1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/04b100b911a6ff8fd72436c24f688fca28b585a35999de55822340aed16a1470.mp3', 3422, '2026-09-13 06:58:17.216714', '2d7491af55b559318d99af3289fe3331aa95e9c9c138fccbc6bb1af173e4b7f4', 'validated', '{"audio_key":"04b100b911a6ff8fd72436c24f688fca28b585a35999de55822340aed16a1470","entity_key":"d_home_repairs_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2d7491af55b559318d99af3289fe3331aa95e9c9c138fccbc6bb1af173e4b7f4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/04b100b911a6ff8fd72436c24f688fca28b585a35999de55822340aed16a1470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_01:4 -> audio/generated/de-DE/dialogues/06912e3968ba2249362f098715a47a515ad4e0ea1354159ac21de41e66cfe605.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d0379d1-db7f-5e10-94c2-9bccf0addb8e', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce98710ad7edac586a2805c4c229d44d7d06383ab6124b3fedfd872d97e4ff0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68b0ee98-490f-5008-913a-418ca9441c35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d0379d1-db7f-5e10-94c2-9bccf0addb8e', 1), 'ce98710ad7edac586a2805c4c229d44d7d06383ab6124b3fedfd872d97e4ff0b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06912e3968ba2249362f098715a47a515ad4e0ea1354159ac21de41e66cfe605.mp3', 2690, '2026-09-13 06:58:17.964786', '42c2056bf917b016ca4be576f07d2d1f4069d7cb60aa6c8e971a7595dea6326e', 'validated', '{"audio_key":"06912e3968ba2249362f098715a47a515ad4e0ea1354159ac21de41e66cfe605","entity_key":"d_moving_relocation_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"42c2056bf917b016ca4be576f07d2d1f4069d7cb60aa6c8e971a7595dea6326e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/06912e3968ba2249362f098715a47a515ad4e0ea1354159ac21de41e66cfe605.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_02:3 -> audio/generated/de-DE/dialogues/06dc6e4829696c1e81adc6fe5c299821219c136bd2757b02192a3aa8d85332d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72b9f3ae-ec84-57a0-b59e-f689c5ece2d8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19dc9cd73d81dbe14865905f989ffe647ad671cdb0ccf9cd1f33d3965fa8916b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b49e28b9-1fbd-512a-ad72-f162e258fbd9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72b9f3ae-ec84-57a0-b59e-f689c5ece2d8', 1), '19dc9cd73d81dbe14865905f989ffe647ad671cdb0ccf9cd1f33d3965fa8916b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06dc6e4829696c1e81adc6fe5c299821219c136bd2757b02192a3aa8d85332d1.mp3', 1567, '2026-09-13 06:58:18.185781', '8dee2cfd7bb462b422a92deb021db3bace06409a77acd6cc436e8752c9d006f2', 'validated', '{"audio_key":"06dc6e4829696c1e81adc6fe5c299821219c136bd2757b02192a3aa8d85332d1","entity_key":"d_doctor_visit_followup_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8dee2cfd7bb462b422a92deb021db3bace06409a77acd6cc436e8752c9d006f2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/06dc6e4829696c1e81adc6fe5c299821219c136bd2757b02192a3aa8d85332d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_02:2 -> audio/generated/de-DE/dialogues/092dedd19baea399a62ec20f3eac921d47b0135f3dd5f1d0fc67bf29888e1f56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c33b000-b704-5ee2-bbcb-bd5783c76d25', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '285e2be43ab5cfd4f035121e07ca5296da59bdd0ba0bcfdc8bb8cbdf6cba6379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7729efdb-2d9b-501e-b133-b18ae8cc4403', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c33b000-b704-5ee2-bbcb-bd5783c76d25', 1), '285e2be43ab5cfd4f035121e07ca5296da59bdd0ba0bcfdc8bb8cbdf6cba6379',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/092dedd19baea399a62ec20f3eac921d47b0135f3dd5f1d0fc67bf29888e1f56.mp3', 3239, '2026-09-13 06:58:19.163522', 'f42bb5a4013e10bc60bcad9e1d0a69dc45f980a701281ec9865fb0318981cdb2', 'validated', '{"audio_key":"092dedd19baea399a62ec20f3eac921d47b0135f3dd5f1d0fc67bf29888e1f56","entity_key":"d_doctor_visit_followup_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f42bb5a4013e10bc60bcad9e1d0a69dc45f980a701281ec9865fb0318981cdb2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/092dedd19baea399a62ec20f3eac921d47b0135f3dd5f1d0fc67bf29888e1f56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_03:4 -> audio/generated/de-DE/dialogues/09ec7237ca918510d95bbb2737e8cef76806d5c5445d4837e69102da339d9b1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe53ba8f-798a-57c7-995a-d7fb879b9fdc', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7292880867400244ecc61a452bebb10c58becae6e8629f3357434f804b29b54e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f85acf61-4e32-5f5a-a2ee-0bd412c98ac5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe53ba8f-798a-57c7-995a-d7fb879b9fdc', 1), '7292880867400244ecc61a452bebb10c58becae6e8629f3357434f804b29b54e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09ec7237ca918510d95bbb2737e8cef76806d5c5445d4837e69102da339d9b1f.mp3', 1515, '2026-09-13 06:58:19.201521', '12f3e006a3352171823e5a808c9d9298dcdf3866edcfbf5227a7db4645b4b884', 'validated', '{"audio_key":"09ec7237ca918510d95bbb2737e8cef76806d5c5445d4837e69102da339d9b1f","entity_key":"d_doctor_visit_followup_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"12f3e006a3352171823e5a808c9d9298dcdf3866edcfbf5227a7db4645b4b884","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/09ec7237ca918510d95bbb2737e8cef76806d5c5445d4837e69102da339d9b1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_02:2 -> audio/generated/de-DE/dialogues/0c66ec3f3e2b0473dda204a85578d993bde9e16f6ff3c87fac5e6afaab7f0bf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81b298d9-3fec-57f5-bafe-415abccfa804', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac6508c1d27d9da26aaf1708f477eec3ff618bee33fdda054eceaf41548801a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bdbb93b-a284-5c7d-a5a7-848ab2eb613f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81b298d9-3fec-57f5-bafe-415abccfa804', 1), 'ac6508c1d27d9da26aaf1708f477eec3ff618bee33fdda054eceaf41548801a6',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c66ec3f3e2b0473dda204a85578d993bde9e16f6ff3c87fac5e6afaab7f0bf6.mp3', 1985, '2026-09-13 06:58:20.190704', 'd73c61b5d2e45a91c3aff6964b10b63ab47b306bf9ceaf93abb5b94e27ba9875', 'validated', '{"audio_key":"0c66ec3f3e2b0473dda204a85578d993bde9e16f6ff3c87fac5e6afaab7f0bf6","entity_key":"d_city_services_public_places_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d73c61b5d2e45a91c3aff6964b10b63ab47b306bf9ceaf93abb5b94e27ba9875","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0c66ec3f3e2b0473dda204a85578d993bde9e16f6ff3c87fac5e6afaab7f0bf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_01:2 -> audio/generated/de-DE/dialogues/0d5294a64fb55efcf9e617c779eaef2f1369bbdf9cf4ca11033f75b63d33c85a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bf740c3-6ed1-52ff-9751-4817df7139fe', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '752e721c4d33252371e62af4721dfc53b06d67f7f28db00eb20de799c8e1ee94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8efbf0f-8d32-5b88-88d7-42a78ad6fa7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bf740c3-6ed1-52ff-9751-4817df7139fe', 1), '752e721c4d33252371e62af4721dfc53b06d67f7f28db00eb20de799c8e1ee94',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0d5294a64fb55efcf9e617c779eaef2f1369bbdf9cf4ca11033f75b63d33c85a.mp3', 3578, '2026-09-13 06:58:20.460599', 'fe452911c994d3e781fb30ff7cc190d03173dc01567b8c4173b23d0f4a154ce8', 'validated', '{"audio_key":"0d5294a64fb55efcf9e617c779eaef2f1369bbdf9cf4ca11033f75b63d33c85a","entity_key":"d_online_accounts_privacy_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fe452911c994d3e781fb30ff7cc190d03173dc01567b8c4173b23d0f4a154ce8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0d5294a64fb55efcf9e617c779eaef2f1369bbdf9cf4ca11033f75b63d33c85a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_01:1 -> audio/generated/de-DE/dialogues/0f8fb002fa155b500bf9bd18aa569b9a2d2401e4110b234735877708dfe1963a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a896626c-f362-5592-b142-03d41d37576e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47018ccade6ba99270596598ebbc1986af8470d20ef2a71b9ba465fbb6aa1acf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b595f1fc-60a0-5901-91c7-5c88b870e501', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a896626c-f362-5592-b142-03d41d37576e', 1), '47018ccade6ba99270596598ebbc1986af8470d20ef2a71b9ba465fbb6aa1acf',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0f8fb002fa155b500bf9bd18aa569b9a2d2401e4110b234735877708dfe1963a.mp3', 2742, '2026-09-13 06:58:21.334091', '4a9406cf39e38ba7debd3dd44340f2ca1dee22b97036e0fdfee5181ad898c01e', 'validated', '{"audio_key":"0f8fb002fa155b500bf9bd18aa569b9a2d2401e4110b234735877708dfe1963a","entity_key":"d_goals_priorities_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4a9406cf39e38ba7debd3dd44340f2ca1dee22b97036e0fdfee5181ad898c01e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0f8fb002fa155b500bf9bd18aa569b9a2d2401e4110b234735877708dfe1963a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_01:4 -> audio/generated/de-DE/dialogues/10aaca101049a8f72129e5661053605665bd410faf4ba351910e708ec783d0af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d41192c6-b8b9-514f-8bc1-8e8a5b9ea04b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50467d0059f8f7e0c8a49261a1c4aeb6cec7b7938284d105d75c7e32a0575384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daeea458-ee48-5db4-8a5b-6b7da7a44ec4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d41192c6-b8b9-514f-8bc1-8e8a5b9ea04b', 1), '50467d0059f8f7e0c8a49261a1c4aeb6cec7b7938284d105d75c7e32a0575384',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/10aaca101049a8f72129e5661053605665bd410faf4ba351910e708ec783d0af.mp3', 2220, '2026-09-13 06:58:21.521305', 'b39168410db9632757da6a279d769b4fce3f3547bf61206e2c4d0adc02343118', 'validated', '{"audio_key":"10aaca101049a8f72129e5661053605665bd410faf4ba351910e708ec783d0af","entity_key":"d_goals_priorities_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b39168410db9632757da6a279d769b4fce3f3547bf61206e2c4d0adc02343118","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/10aaca101049a8f72129e5661053605665bd410faf4ba351910e708ec783d0af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_02:1 -> audio/generated/de-DE/dialogues/11320c3f09c64b26f49b2bb6a0a0afa256f273d8f158318c306c55dd5f719727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('826dcc73-704c-5cf7-b3ad-bd204b5ea2c2', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88e8f76eeb96ff5f57ff82d42bb8efa43d380c0334568bf3e522687470cb184c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cd2b3d2-1177-5392-a614-470023b8c481', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('826dcc73-704c-5cf7-b3ad-bd204b5ea2c2', 1), '88e8f76eeb96ff5f57ff82d42bb8efa43d380c0334568bf3e522687470cb184c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/11320c3f09c64b26f49b2bb6a0a0afa256f273d8f158318c306c55dd5f719727.mp3', 2351, '2026-09-13 06:58:22.388012', 'eb33381c2ce1453812f43107b0da2fae9d896273b4349f938d1d6e1187bc8f4a', 'validated', '{"audio_key":"11320c3f09c64b26f49b2bb6a0a0afa256f273d8f158318c306c55dd5f719727","entity_key":"d_work_feedback_teamwork_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb33381c2ce1453812f43107b0da2fae9d896273b4349f938d1d6e1187bc8f4a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/11320c3f09c64b26f49b2bb6a0a0afa256f273d8f158318c306c55dd5f719727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_02:3 -> audio/generated/de-DE/dialogues/138636a0bf1c52170b10151ed0a79058315db8cdf449884649b8591dad6d0acc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d0aa9d3-5180-5321-abc0-010056c591cd', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c86ebe43142c62570094d842e4d7423df018705a671f2148643c11b407bbca9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04604cea-e606-5c80-8b36-f98ee0030c83', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d0aa9d3-5180-5321-abc0-010056c591cd', 1), 'c86ebe43142c62570094d842e4d7423df018705a671f2148643c11b407bbca9d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/138636a0bf1c52170b10151ed0a79058315db8cdf449884649b8591dad6d0acc.mp3', 2037, '2026-09-13 06:58:22.719474', '1b100bf5112dc29298c870b8acfc149cd9ad53815b7cbd5c5f02390cbf23fd78', 'validated', '{"audio_key":"138636a0bf1c52170b10151ed0a79058315db8cdf449884649b8591dad6d0acc","entity_key":"d_city_services_public_places_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1b100bf5112dc29298c870b8acfc149cd9ad53815b7cbd5c5f02390cbf23fd78","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/138636a0bf1c52170b10151ed0a79058315db8cdf449884649b8591dad6d0acc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_01:1 -> audio/generated/de-DE/dialogues/13fa4edc95606e88924d610e35b5b6cc69562514fd91cb07ff469589b911d19b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a16ef3af-6b7f-591f-b089-50b744c40947', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ef443ea478c699eb16ec06b327f5bfacf533f1d9864f1b05deaaed5519c4cd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e219a06-5178-5746-8339-8c900fd27b01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a16ef3af-6b7f-591f-b089-50b744c40947', 1), '9ef443ea478c699eb16ec06b327f5bfacf533f1d9864f1b05deaaed5519c4cd9',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/13fa4edc95606e88924d610e35b5b6cc69562514fd91cb07ff469589b911d19b.mp3', 2638, '2026-09-13 06:58:23.466167', '4a4902fa2b99e9b3cad0727044bbc9637cff830daf31b284ebcd043d8898ba4f', 'validated', '{"audio_key":"13fa4edc95606e88924d610e35b5b6cc69562514fd91cb07ff469589b911d19b","entity_key":"d_online_accounts_privacy_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4a4902fa2b99e9b3cad0727044bbc9637cff830daf31b284ebcd043d8898ba4f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/13fa4edc95606e88924d610e35b5b6cc69562514fd91cb07ff469589b911d19b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_02:4 -> audio/generated/de-DE/dialogues/1771fdf06e7e5b6a3125ff603c3453bedbd41ec90c9d87c2cb272dbf6ce2e940.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50e1bd19-cdf3-5f74-8f29-7d2fff479e6b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e05e72e1ee82934185af3476ad629db808d19e5b124371b00c16ec696e61c6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('062af0a8-c7f0-51a3-a17b-83516899fee7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50e1bd19-cdf3-5f74-8f29-7d2fff479e6b', 1), '6e05e72e1ee82934185af3476ad629db808d19e5b124371b00c16ec696e61c6c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1771fdf06e7e5b6a3125ff603c3453bedbd41ec90c9d87c2cb272dbf6ce2e940.mp3', 2873, '2026-09-13 06:58:23.832431', '577419e2657e0a9c00fcfee6f03e5c13bc35d0e17fdce278897417f651ecad71', 'validated', '{"audio_key":"1771fdf06e7e5b6a3125ff603c3453bedbd41ec90c9d87c2cb272dbf6ce2e940","entity_key":"d_exams_learning_stress_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"577419e2657e0a9c00fcfee6f03e5c13bc35d0e17fdce278897417f651ecad71","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1771fdf06e7e5b6a3125ff603c3453bedbd41ec90c9d87c2cb272dbf6ce2e940.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_01:2 -> audio/generated/de-DE/dialogues/17d8c94f2329563fc1d1495912c0c54c2758ed01d690cf8336104fd0e4231e82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f3bfcadf-3331-5b49-8e52-c19b16805507', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6ba3f48a636f141004eaa86cc4c81f7c04b4107348cda0958048aec0a56c7b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('beb95262-647a-5ee9-aebe-6448281b3d25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f3bfcadf-3331-5b49-8e52-c19b16805507', 1), 'e6ba3f48a636f141004eaa86cc4c81f7c04b4107348cda0958048aec0a56c7b1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17d8c94f2329563fc1d1495912c0c54c2758ed01d690cf8336104fd0e4231e82.mp3', 1697, '2026-09-13 06:58:24.481795', '1b6fecb6159f1fb0ae081a54b89a8e0452dba18a66d47f4c31b49b0b64a4d1fc', 'validated', '{"audio_key":"17d8c94f2329563fc1d1495912c0c54c2758ed01d690cf8336104fd0e4231e82","entity_key":"d_invitations_hosting_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1b6fecb6159f1fb0ae081a54b89a8e0452dba18a66d47f4c31b49b0b64a4d1fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/17d8c94f2329563fc1d1495912c0c54c2758ed01d690cf8336104fd0e4231e82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_03:1 -> audio/generated/de-DE/dialogues/1822f5efe486b496866298d2def649708eaf1e9269906e8513adedcd186bad3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8753c0de-266e-5763-9264-4dfe8eabbc4a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14c3ae0608924aea2f632fa7c15844d343d2549226cd56adc5de0c1dcb78b4cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71a048c9-810b-5f68-8b04-2d24f0ff8064', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8753c0de-266e-5763-9264-4dfe8eabbc4a', 1), '14c3ae0608924aea2f632fa7c15844d343d2549226cd56adc5de0c1dcb78b4cb',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1822f5efe486b496866298d2def649708eaf1e9269906e8513adedcd186bad3f.mp3', 1671, '2026-09-13 06:58:24.862729', 'ad2a0f7cc2ca4bebb4db6fd600089f7b9df7708018e938400e6c309580a7ebc7', 'validated', '{"audio_key":"1822f5efe486b496866298d2def649708eaf1e9269906e8513adedcd186bad3f","entity_key":"d_doctor_visit_followup_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ad2a0f7cc2ca4bebb4db6fd600089f7b9df7708018e938400e6c309580a7ebc7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1822f5efe486b496866298d2def649708eaf1e9269906e8513adedcd186bad3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_01:4 -> audio/generated/de-DE/dialogues/1c6b17a993df7ad09ca6cd2b89b48b8ca9c106471c42762c06e2ed3ca6fff9af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f91e7fb3-c834-5c59-9ef3-c13226bee17c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f443e19460c6f616606f634957552678f3225b35a0bb44cbe8c4bb78852a419'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73cde349-3192-5f9f-bfea-f75dc5efde8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f91e7fb3-c834-5c59-9ef3-c13226bee17c', 1), '0f443e19460c6f616606f634957552678f3225b35a0bb44cbe8c4bb78852a419',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c6b17a993df7ad09ca6cd2b89b48b8ca9c106471c42762c06e2ed3ca6fff9af.mp3', 2115, '2026-09-13 06:58:25.647071', '1ed4669a018cd87300930e6918a34e2eab7a3a64b365541b6116bf40d740d604', 'validated', '{"audio_key":"1c6b17a993df7ad09ca6cd2b89b48b8ca9c106471c42762c06e2ed3ca6fff9af","entity_key":"d_home_repairs_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1ed4669a018cd87300930e6918a34e2eab7a3a64b365541b6116bf40d740d604","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1c6b17a993df7ad09ca6cd2b89b48b8ca9c106471c42762c06e2ed3ca6fff9af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_01:3 -> audio/generated/de-DE/dialogues/1d4970b4f4fee347023139a2a7b3d513bcff578deff21b548341ae63c0469a09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c25a0020-f333-5bfc-86c7-8d63046ba331', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b78b59e6c80b677d681498e05b85bfe27598d3e306bc49a21092c42ab22a40e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5b369b7-5740-5c0a-af95-ec5ec180caea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c25a0020-f333-5bfc-86c7-8d63046ba331', 1), 'b78b59e6c80b677d681498e05b85bfe27598d3e306bc49a21092c42ab22a40e2',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d4970b4f4fee347023139a2a7b3d513bcff578deff21b548341ae63c0469a09.mp3', 2115, '2026-09-13 06:58:25.910583', '60e097e3d34e1e3b0a2d3faa23f6ea6407fd4fb154bcb71a95ccbb5d98d2222f', 'validated', '{"audio_key":"1d4970b4f4fee347023139a2a7b3d513bcff578deff21b548341ae63c0469a09","entity_key":"d_doctor_visit_followup_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"60e097e3d34e1e3b0a2d3faa23f6ea6407fd4fb154bcb71a95ccbb5d98d2222f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1d4970b4f4fee347023139a2a7b3d513bcff578deff21b548341ae63c0469a09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_01:4 -> audio/generated/de-DE/dialogues/1f9865064e8ab10563dbc4bef030f0b4e74462a516e863c65be71aa7337d00cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8662805a-8733-593e-b29f-94642cfb9598', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e6e63591249f1faa9460b9d9603ecd534c61290f09465409b21e725035145c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d9aefae-19b3-5db7-a4a8-f4efe6fa9a99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8662805a-8733-593e-b29f-94642cfb9598', 1), '7e6e63591249f1faa9460b9d9603ecd534c61290f09465409b21e725035145c0',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1f9865064e8ab10563dbc4bef030f0b4e74462a516e863c65be71aa7337d00cf.mp3', 1619, '2026-09-13 06:58:26.641995', '322a9f36fa903809ea9e9c05f4b1acd974f0e9ce233d5691b4b66329f9562696', 'validated', '{"audio_key":"1f9865064e8ab10563dbc4bef030f0b4e74462a516e863c65be71aa7337d00cf","entity_key":"d_invitations_hosting_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"322a9f36fa903809ea9e9c05f4b1acd974f0e9ce233d5691b4b66329f9562696","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1f9865064e8ab10563dbc4bef030f0b4e74462a516e863c65be71aa7337d00cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_03:4 -> audio/generated/de-DE/dialogues/20fdaf2273bb272d67ddda2b1dba3e5e0e02d0813de9cf4700f98aba790381c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a175980a-a3e0-56b1-947c-d670edd20a2a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84d97d8d137191be34413c535676a17dd904e7445664de53d2b80867cdf48b10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85d9c8c3-4699-5e0d-86ec-390876b7a319', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a175980a-a3e0-56b1-947c-d670edd20a2a', 1), '84d97d8d137191be34413c535676a17dd904e7445664de53d2b80867cdf48b10',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/20fdaf2273bb272d67ddda2b1dba3e5e0e02d0813de9cf4700f98aba790381c7.mp3', 2586, '2026-09-13 06:58:27.003907', '7d80e5a3aaa41804586181223de3277b79bffd6621ff9b85523adf22a6e62a93', 'validated', '{"audio_key":"20fdaf2273bb272d67ddda2b1dba3e5e0e02d0813de9cf4700f98aba790381c7","entity_key":"d_work_feedback_teamwork_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7d80e5a3aaa41804586181223de3277b79bffd6621ff9b85523adf22a6e62a93","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/20fdaf2273bb272d67ddda2b1dba3e5e0e02d0813de9cf4700f98aba790381c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_03:3 -> audio/generated/de-DE/dialogues/213d4c20ed9402be73b34af54d3127c6bab31024ace4da41c4adf07a41e2c9f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb3d8d87-52d9-582a-828b-8953d3703e5c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4e7468873449ed2e45c68d954ad3b37a6bfebc808ba79f832dbd915336a1fb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dd8111b-5409-52eb-b09f-bae9c56cf9ac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb3d8d87-52d9-582a-828b-8953d3703e5c', 1), 'a4e7468873449ed2e45c68d954ad3b37a6bfebc808ba79f832dbd915336a1fb9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/213d4c20ed9402be73b34af54d3127c6bab31024ace4da41c4adf07a41e2c9f0.mp3', 2925, '2026-09-13 06:58:27.727852', '37bcad51754abacf79c0ede998da60f3df66b06ddc386debd9a05e99bfeaaf32', 'validated', '{"audio_key":"213d4c20ed9402be73b34af54d3127c6bab31024ace4da41c4adf07a41e2c9f0","entity_key":"d_doctor_visit_followup_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"37bcad51754abacf79c0ede998da60f3df66b06ddc386debd9a05e99bfeaaf32","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/213d4c20ed9402be73b34af54d3127c6bab31024ace4da41c4adf07a41e2c9f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_01:3 -> audio/generated/de-DE/dialogues/2509085b8e0343f1e9f83cba5de9214f866885b0127a8a5b5b503397fbb763ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26c96f6b-68ad-539a-90d1-d8831ee89384', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f9469f5d8fd20605444a4eee80b59c0ec3f52dfeae28e3a269760e34b6e0944'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e8d4484-cbff-55e7-bf32-c022a691503d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26c96f6b-68ad-539a-90d1-d8831ee89384', 1), '7f9469f5d8fd20605444a4eee80b59c0ec3f52dfeae28e3a269760e34b6e0944',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2509085b8e0343f1e9f83cba5de9214f866885b0127a8a5b5b503397fbb763ad.mp3', 1906, '2026-09-13 06:58:28.042100', '44bdaa82d7fa61a3e31f9f49842b81321b6fd151d941c634418fd5166c80a909', 'validated', '{"audio_key":"2509085b8e0343f1e9f83cba5de9214f866885b0127a8a5b5b503397fbb763ad","entity_key":"d_home_repairs_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"44bdaa82d7fa61a3e31f9f49842b81321b6fd151d941c634418fd5166c80a909","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2509085b8e0343f1e9f83cba5de9214f866885b0127a8a5b5b503397fbb763ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_03:2 -> audio/generated/de-DE/dialogues/29ae42a15f6fa9ab4906d2a0f66a6658cb0e825cecf52eb9f590ffe38b9fe80e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89dd029a-df10-577d-acd7-0cd1b88da490', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5f491dea14a193c50f228c43cf921ee1f01320d4e34b714ceab6fdc8cce7aa3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('148e9dc7-130b-590d-874c-17e778df9228', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89dd029a-df10-577d-acd7-0cd1b88da490', 1), 'e5f491dea14a193c50f228c43cf921ee1f01320d4e34b714ceab6fdc8cce7aa3',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29ae42a15f6fa9ab4906d2a0f66a6658cb0e825cecf52eb9f590ffe38b9fe80e.mp3', 2220, '2026-09-13 06:58:28.803915', 'c5fe78de7173b8f1474ea1870ca07e01e79c67e5f160b0a819595ec951fa282b', 'validated', '{"audio_key":"29ae42a15f6fa9ab4906d2a0f66a6658cb0e825cecf52eb9f590ffe38b9fe80e","entity_key":"d_moving_relocation_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c5fe78de7173b8f1474ea1870ca07e01e79c67e5f160b0a819595ec951fa282b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/29ae42a15f6fa9ab4906d2a0f66a6658cb0e825cecf52eb9f590ffe38b9fe80e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_01:1 -> audio/generated/de-DE/dialogues/2c3d2bc2a7bc14200ecc547b21a33d484f088f1db2c3fa71bcadd1280f41ab46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('495f02c8-200b-5d92-a195-70fb69ff98d8', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23420ef264b5d1516c27514b33b07b088d30916c424642f2f699b459038fbe50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edf4ed61-498f-568c-8119-e795a489c687', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('495f02c8-200b-5d92-a195-70fb69ff98d8', 1), '23420ef264b5d1516c27514b33b07b088d30916c424642f2f699b459038fbe50',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c3d2bc2a7bc14200ecc547b21a33d484f088f1db2c3fa71bcadd1280f41ab46.mp3', 1515, '2026-09-13 06:58:29.017573', '65f5fe3a0873cb3319936a28c9d56c013543bb7cca711100b9ab028a46a8c472', 'validated', '{"audio_key":"2c3d2bc2a7bc14200ecc547b21a33d484f088f1db2c3fa71bcadd1280f41ab46","entity_key":"d_moving_relocation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"65f5fe3a0873cb3319936a28c9d56c013543bb7cca711100b9ab028a46a8c472","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c3d2bc2a7bc14200ecc547b21a33d484f088f1db2c3fa71bcadd1280f41ab46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_03:4 -> audio/generated/de-DE/dialogues/2cb7b700f8a78af8be86759e4b71543860c0dbd2289b6204650ecaa2eb1c4e16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2b408312-70d5-5c78-89eb-0040a0000778', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '119f8fc4f668577447454e74141939fd7ea0848e8547e71cb3f17a9f5f5ecdeb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('836f4698-4fbb-50a6-b4e5-ab6a59690352', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2b408312-70d5-5c78-89eb-0040a0000778', 1), '119f8fc4f668577447454e74141939fd7ea0848e8547e71cb3f17a9f5f5ecdeb',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cb7b700f8a78af8be86759e4b71543860c0dbd2289b6204650ecaa2eb1c4e16.mp3', 1985, '2026-09-13 06:58:29.851393', '0cbddd09da1c824d26c9fb7486f27240294e8567693f93f30f04e4b3d1f7b3b2', 'validated', '{"audio_key":"2cb7b700f8a78af8be86759e4b71543860c0dbd2289b6204650ecaa2eb1c4e16","entity_key":"d_city_services_public_places_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0cbddd09da1c824d26c9fb7486f27240294e8567693f93f30f04e4b3d1f7b3b2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2cb7b700f8a78af8be86759e4b71543860c0dbd2289b6204650ecaa2eb1c4e16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_02:3 -> audio/generated/de-DE/dialogues/2d8bc940487b503885a240c41b7ee19b640aa260429bc9062781f64652f7db26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47b113dc-ca4f-5320-936f-79d67746eba3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1934ac7398f677d0902b7c9e8d592b62dbef7aed14c653902332595906d4769d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fd70f1e-2c96-5e36-a862-5206c67db74f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47b113dc-ca4f-5320-936f-79d67746eba3', 1), '1934ac7398f677d0902b7c9e8d592b62dbef7aed14c653902332595906d4769d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d8bc940487b503885a240c41b7ee19b640aa260429bc9062781f64652f7db26.mp3', 2821, '2026-09-13 06:58:30.117884', '7a12b7425091c6c28997b1567c04a8b3bf2282ae6d6f72de27b6713069c7791e', 'validated', '{"audio_key":"2d8bc940487b503885a240c41b7ee19b640aa260429bc9062781f64652f7db26","entity_key":"d_invitations_hosting_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a12b7425091c6c28997b1567c04a8b3bf2282ae6d6f72de27b6713069c7791e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2d8bc940487b503885a240c41b7ee19b640aa260429bc9062781f64652f7db26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_02:2 -> audio/generated/de-DE/dialogues/2f58d1252d81e50ff95b6d4e3df757899f31342d33ce0cf691c83f942292be33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8644a480-b0da-544c-9693-6c18fb8c30bb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ac6325bc1d89371250edda338cd7d8cc5d87ec0e2c19eff266d1b5f15b85a3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e450e70-e8eb-52fa-b64f-9812aea7771b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8644a480-b0da-544c-9693-6c18fb8c30bb', 1), '1ac6325bc1d89371250edda338cd7d8cc5d87ec0e2c19eff266d1b5f15b85a3d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f58d1252d81e50ff95b6d4e3df757899f31342d33ce0cf691c83f942292be33.mp3', 2821, '2026-09-13 06:58:30.936974', '4ea72c37f4c4e480b590a89c6c3897cea5a2589f8329f18c52bf2f669f94f11b', 'validated', '{"audio_key":"2f58d1252d81e50ff95b6d4e3df757899f31342d33ce0cf691c83f942292be33","entity_key":"d_home_repairs_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4ea72c37f4c4e480b590a89c6c3897cea5a2589f8329f18c52bf2f669f94f11b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2f58d1252d81e50ff95b6d4e3df757899f31342d33ce0cf691c83f942292be33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_02:3 -> audio/generated/de-DE/dialogues/3383b65b8243f86fc695275127d930d771e272470153f21ea7d4a1031d917452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6bc34e62-4b14-5f66-a399-fb0ad1786f09', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34f975e6638a217d2b413c8703d1c921b1bbfb0f3512f8e6102472c08114ba53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cee83cd0-98a2-5ca8-a224-56f149beb7df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6bc34e62-4b14-5f66-a399-fb0ad1786f09', 1), '34f975e6638a217d2b413c8703d1c921b1bbfb0f3512f8e6102472c08114ba53',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3383b65b8243f86fc695275127d930d771e272470153f21ea7d4a1031d917452.mp3', 1802, '2026-09-13 06:58:31.166806', 'b40acd6fad79a8c588e47fbf7c8f70b0c7d8dc71aade88bf445f702894a36fd3', 'validated', '{"audio_key":"3383b65b8243f86fc695275127d930d771e272470153f21ea7d4a1031d917452","entity_key":"d_goals_priorities_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b40acd6fad79a8c588e47fbf7c8f70b0c7d8dc71aade88bf445f702894a36fd3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3383b65b8243f86fc695275127d930d771e272470153f21ea7d4a1031d917452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_03:2 -> audio/generated/de-DE/dialogues/349370c51595149329b79141214e58998163cf33b6c9dfeaa1dd07bfc8816c6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f448738e-f7fa-57d9-9ea3-9fe49002fbdf', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69ff33ad10ab7449a455c6bc2e0ef81dd649187fd961bec199ee14022b97f9d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('669ff549-fedf-5acd-86f2-9e284d0760e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f448738e-f7fa-57d9-9ea3-9fe49002fbdf', 1), '69ff33ad10ab7449a455c6bc2e0ef81dd649187fd961bec199ee14022b97f9d3',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/349370c51595149329b79141214e58998163cf33b6c9dfeaa1dd07bfc8816c6e.mp3', 5511, '2026-09-13 06:58:32.448468', '67a28734a908a0dd392c3d084e95b0007d21a00cb209e25df468d1ccd0ca1b86', 'validated', '{"audio_key":"349370c51595149329b79141214e58998163cf33b6c9dfeaa1dd07bfc8816c6e","entity_key":"d_city_services_public_places_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"67a28734a908a0dd392c3d084e95b0007d21a00cb209e25df468d1ccd0ca1b86","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/349370c51595149329b79141214e58998163cf33b6c9dfeaa1dd07bfc8816c6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:2 -> audio/generated/de-DE/dialogues/353b5eabaa39fd8965d019f2fd14a19b500b4a0652b66c2c3749eb7432890e59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56c1d2b5-23f1-505a-8320-8672382c304d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6271ebcfefb2d34679a1845a4189f855491fb6014521b1d1e8c880ff54bd661'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('472aebb7-8182-5fb5-9a8f-ec7a9834893e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56c1d2b5-23f1-505a-8320-8672382c304d', 1), 'e6271ebcfefb2d34679a1845a4189f855491fb6014521b1d1e8c880ff54bd661',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/353b5eabaa39fd8965d019f2fd14a19b500b4a0652b66c2c3749eb7432890e59.mp3', 3160, '2026-09-13 06:58:32.435255', '6532b41257a25943ed1fdd2b2f64862b226f373a083e48772f4956a0403c8df3', 'validated', '{"audio_key":"353b5eabaa39fd8965d019f2fd14a19b500b4a0652b66c2c3749eb7432890e59","entity_key":"d_contracts_subscriptions_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6532b41257a25943ed1fdd2b2f64862b226f373a083e48772f4956a0403c8df3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/353b5eabaa39fd8965d019f2fd14a19b500b4a0652b66c2c3749eb7432890e59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_02:4 -> audio/generated/de-DE/dialogues/3c2ed5ce3a461b3f515d51102a48a85761948ea36da6b457937035d82c1f90ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1e91faf-af73-5973-9b28-b3d2097acafe', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10ad82f3caea23b9edf76442352be11a86a5877083dd4ec17dc8a0c9eabae05e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9de951a-e1bc-5331-b265-870ca3b947c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1e91faf-af73-5973-9b28-b3d2097acafe', 1), '10ad82f3caea23b9edf76442352be11a86a5877083dd4ec17dc8a0c9eabae05e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3c2ed5ce3a461b3f515d51102a48a85761948ea36da6b457937035d82c1f90ba.mp3', 3004, '2026-09-13 06:58:33.601569', 'd38d42009d4c9047188babace7c3a1e03600ff6fcc6d8616043774154c6117f1', 'validated', '{"audio_key":"3c2ed5ce3a461b3f515d51102a48a85761948ea36da6b457937035d82c1f90ba","entity_key":"d_city_services_public_places_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d38d42009d4c9047188babace7c3a1e03600ff6fcc6d8616043774154c6117f1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3c2ed5ce3a461b3f515d51102a48a85761948ea36da6b457937035d82c1f90ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_02:2 -> audio/generated/de-DE/dialogues/3ca838dad2fc3269fa2d100e296e67a82ba2d3e5032bcd65334e3553e05dd0b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd908da6-d0aa-56b3-aaf1-b0446bf39393', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df0005e7201955a0d2f33e7543282f9211cfa2a4e062f4dbf7865a261819a55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('904f4e03-8aab-545d-81c0-fff0edd27cae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd908da6-d0aa-56b3-aaf1-b0446bf39393', 1), 'df0005e7201955a0d2f33e7543282f9211cfa2a4e062f4dbf7865a261819a55c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ca838dad2fc3269fa2d100e296e67a82ba2d3e5032bcd65334e3553e05dd0b3.mp3', 2455, '2026-09-13 06:58:33.536095', '5b0097e506dba47b6fd7c6af7682e80af003cd3b5b656a1e9903f7a3a47b9745', 'validated', '{"audio_key":"3ca838dad2fc3269fa2d100e296e67a82ba2d3e5032bcd65334e3553e05dd0b3","entity_key":"d_invitations_hosting_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"5b0097e506dba47b6fd7c6af7682e80af003cd3b5b656a1e9903f7a3a47b9745","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3ca838dad2fc3269fa2d100e296e67a82ba2d3e5032bcd65334e3553e05dd0b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_03:1 -> audio/generated/de-DE/dialogues/3ce7d17b536b38cc9982f96eafdfe6a89be457c9193676cb29ec302f41bcdf6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12c6ec94-27b5-57d2-904c-a121cf2575f9', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6254cb9e8762f9137f8899ebc71bf38cf670d1934a478c84386a9df698a6637b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fabfceff-4b37-585c-b778-4b0a50b2b00f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12c6ec94-27b5-57d2-904c-a121cf2575f9', 1), '6254cb9e8762f9137f8899ebc71bf38cf670d1934a478c84386a9df698a6637b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ce7d17b536b38cc9982f96eafdfe6a89be457c9193676cb29ec302f41bcdf6e.mp3', 2586, '2026-09-13 06:58:34.617353', '47f69495e4e8ed66862d1ec4e505a3312423c3f5246f207736ce5659275a1613', 'validated', '{"audio_key":"3ce7d17b536b38cc9982f96eafdfe6a89be457c9193676cb29ec302f41bcdf6e","entity_key":"d_invitations_hosting_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"47f69495e4e8ed66862d1ec4e505a3312423c3f5246f207736ce5659275a1613","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3ce7d17b536b38cc9982f96eafdfe6a89be457c9193676cb29ec302f41bcdf6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_03:2 -> audio/generated/de-DE/dialogues/472db20f5586150d46f609327f3528a64757704b91e3febb76b75af8ec2324d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('702dee4c-53c6-59c8-8ebd-55a39d1b7bf2', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '371741ad13a6b2509cc725ecd207e35ffcf8e184c6d4131dce798c7d6d928420'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4666bbff-e712-522c-b78c-229ff483f41e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('702dee4c-53c6-59c8-8ebd-55a39d1b7bf2', 1), '371741ad13a6b2509cc725ecd207e35ffcf8e184c6d4131dce798c7d6d928420',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/472db20f5586150d46f609327f3528a64757704b91e3febb76b75af8ec2324d3.mp3', 4075, '2026-09-13 06:58:34.834280', '67694616c6ba33254b5db02b9b54ad2300da039390b29569af80eec654ccf6f6', 'validated', '{"audio_key":"472db20f5586150d46f609327f3528a64757704b91e3febb76b75af8ec2324d3","entity_key":"d_goals_priorities_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"67694616c6ba33254b5db02b9b54ad2300da039390b29569af80eec654ccf6f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/472db20f5586150d46f609327f3528a64757704b91e3febb76b75af8ec2324d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_02:1 -> audio/generated/de-DE/dialogues/4ac18b11c36919dfabbc0febf7baa189b6b5744a21b00350feb7113d78816d22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06dfc6d2-76e2-5c36-b779-fca09d8d209d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbfe915696fe45049896159e4c9feda83f6e7b0d0f9441af02271d5483a20536'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('038cc3ba-57de-5141-aa05-6a5f8fc66fca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06dfc6d2-76e2-5c36-b779-fca09d8d209d', 1), 'bbfe915696fe45049896159e4c9feda83f6e7b0d0f9441af02271d5483a20536',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ac18b11c36919dfabbc0febf7baa189b6b5744a21b00350feb7113d78816d22.mp3', 2324, '2026-09-13 06:58:35.686622', '3cd8c13b14ed450b007613483577134e5da94f7978efeef7c1d3fa3fd405cb87', 'validated', '{"audio_key":"4ac18b11c36919dfabbc0febf7baa189b6b5744a21b00350feb7113d78816d22","entity_key":"d_exams_learning_stress_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3cd8c13b14ed450b007613483577134e5da94f7978efeef7c1d3fa3fd405cb87","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ac18b11c36919dfabbc0febf7baa189b6b5744a21b00350feb7113d78816d22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_01:4 -> audio/generated/de-DE/dialogues/4ae7261bfcc0845fdb31d015015846d88da338a511c349d555b02a588e9151d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47e09af6-535c-504a-a4fe-8e46a8347f3e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fb31ba58d846179d1a04d392cc6b9006e0027d66c8c31f009e09c4ec2256d1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('698a64ba-f40f-55a5-80ee-9f4afd12362e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47e09af6-535c-504a-a4fe-8e46a8347f3e', 1), '4fb31ba58d846179d1a04d392cc6b9006e0027d66c8c31f009e09c4ec2256d1d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ae7261bfcc0845fdb31d015015846d88da338a511c349d555b02a588e9151d8.mp3', 2220, '2026-09-13 06:58:35.937568', '0f847d5237bf2cfb64032bc2cef0b47e51f61337bf5b515b6ccae1adb7ba4ecb', 'validated', '{"audio_key":"4ae7261bfcc0845fdb31d015015846d88da338a511c349d555b02a588e9151d8","entity_key":"d_exams_learning_stress_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0f847d5237bf2cfb64032bc2cef0b47e51f61337bf5b515b6ccae1adb7ba4ecb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4ae7261bfcc0845fdb31d015015846d88da338a511c349d555b02a588e9151d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_01:4 -> audio/generated/de-DE/dialogues/4b62d8a28e471a50254195d76e59104bf60924a946b34b46725d5cdf230405e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3161233b-9e7f-531c-bd20-5925c0b1d632', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85cbb9d3d4e84544da0f11af40d8263847ae1b38e6fa3565c4023c0871f09d4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26acd874-f9df-59da-b768-3794596886cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3161233b-9e7f-531c-bd20-5925c0b1d632', 1), '85cbb9d3d4e84544da0f11af40d8263847ae1b38e6fa3565c4023c0871f09d4d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b62d8a28e471a50254195d76e59104bf60924a946b34b46725d5cdf230405e9.mp3', 1384, '2026-09-13 06:58:36.702266', '7a592468470e36cc7d72a0fd879be2007e2b544162bab614f499679d75278ae4', 'validated', '{"audio_key":"4b62d8a28e471a50254195d76e59104bf60924a946b34b46725d5cdf230405e9","entity_key":"d_doctor_visit_followup_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7a592468470e36cc7d72a0fd879be2007e2b544162bab614f499679d75278ae4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4b62d8a28e471a50254195d76e59104bf60924a946b34b46725d5cdf230405e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_02:1 -> audio/generated/de-DE/dialogues/4cd6e4fd8a24132de8eeacee5ad176b48a721821287367c9eb0a55248984d90d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cf9be99-d467-57a0-944a-4d431e9c01ff', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4bb81ebacdc07a36cf1cdebb46c7a4dff662cdbcbab5108d01152b92e93c8c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77d4d222-6dff-5d86-a6ce-630701cc0493', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cf9be99-d467-57a0-944a-4d431e9c01ff', 1), 'c4bb81ebacdc07a36cf1cdebb46c7a4dff662cdbcbab5108d01152b92e93c8c6',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4cd6e4fd8a24132de8eeacee5ad176b48a721821287367c9eb0a55248984d90d.mp3', 2168, '2026-09-13 06:58:37.006446', '9280eb75a7bba9540f1ae551becbd8a219fe68812a3e7c7a39294e15391ad6c3', 'validated', '{"audio_key":"4cd6e4fd8a24132de8eeacee5ad176b48a721821287367c9eb0a55248984d90d","entity_key":"d_goals_priorities_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9280eb75a7bba9540f1ae551becbd8a219fe68812a3e7c7a39294e15391ad6c3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4cd6e4fd8a24132de8eeacee5ad176b48a721821287367c9eb0a55248984d90d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_03:3 -> audio/generated/de-DE/dialogues/579495ebc54d7caca2b7bee046dd9e4c7ad27ee917f15d22ac1f75b7ee63cfd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5bc1c438-7b11-509e-9e2b-9e8a9ef0f21b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e1fb396713297ad29dacede8c2827e40dcf83b039ebe2ca05dc6e2f332c4c79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fa0328b-7489-5edc-bb39-f6281bea3f04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5bc1c438-7b11-509e-9e2b-9e8a9ef0f21b', 1), '2e1fb396713297ad29dacede8c2827e40dcf83b039ebe2ca05dc6e2f332c4c79',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/579495ebc54d7caca2b7bee046dd9e4c7ad27ee917f15d22ac1f75b7ee63cfd1.mp3', 1515, '2026-09-13 06:58:37.679782', '9b8926a9f4cf4d34d68b9ba1e9a26fd2b6de288fa8a299b8742a6456a61f5e15', 'validated', '{"audio_key":"579495ebc54d7caca2b7bee046dd9e4c7ad27ee917f15d22ac1f75b7ee63cfd1","entity_key":"d_online_accounts_privacy_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9b8926a9f4cf4d34d68b9ba1e9a26fd2b6de288fa8a299b8742a6456a61f5e15","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/579495ebc54d7caca2b7bee046dd9e4c7ad27ee917f15d22ac1f75b7ee63cfd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:2 -> audio/generated/de-DE/dialogues/5893522ec6874013be97d8a07537bcbd88694605388c8f739834a2ea69aec78e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c9e1234-bb6b-5bf1-b64e-ab0e189d3aa5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bad9e526e9c9fdc170402899f016f6153a313ee59adb46f7c6afe8211b786809'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b940d0e-1031-5ee5-b933-b45319bdfc06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c9e1234-bb6b-5bf1-b64e-ab0e189d3aa5', 1), 'bad9e526e9c9fdc170402899f016f6153a313ee59adb46f7c6afe8211b786809',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5893522ec6874013be97d8a07537bcbd88694605388c8f739834a2ea69aec78e.mp3', 5564, '2026-09-13 06:58:38.492929', '9a1e682ca5d711ba99059707fb8820a8ea65b784a3990ef586de987a72588a81', 'validated', '{"audio_key":"5893522ec6874013be97d8a07537bcbd88694605388c8f739834a2ea69aec78e","entity_key":"d_contracts_subscriptions_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9a1e682ca5d711ba99059707fb8820a8ea65b784a3990ef586de987a72588a81","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5893522ec6874013be97d8a07537bcbd88694605388c8f739834a2ea69aec78e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_01:3 -> audio/generated/de-DE/dialogues/599d327c01f7be5c1843b992ee475b103a8c2ced6914980e820d214b80f050c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('753f1d35-fb2c-55b5-8aa2-3a47938b9fbf', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15dec00b53c5e25e2476333dc5f0ae88d23ab6594a8b28ce0f5f22a81d034b3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0f41ca0-2246-5d47-8c70-f23f6b275981', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('753f1d35-fb2c-55b5-8aa2-3a47938b9fbf', 1), '15dec00b53c5e25e2476333dc5f0ae88d23ab6594a8b28ce0f5f22a81d034b3b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/599d327c01f7be5c1843b992ee475b103a8c2ced6914980e820d214b80f050c8.mp3', 3160, '2026-09-13 06:58:38.850723', '4f78e9920f28fb25716a61ed883aa31cfa539a3f614fe330b0bb69a43b0c31dc', 'validated', '{"audio_key":"599d327c01f7be5c1843b992ee475b103a8c2ced6914980e820d214b80f050c8","entity_key":"d_city_services_public_places_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4f78e9920f28fb25716a61ed883aa31cfa539a3f614fe330b0bb69a43b0c31dc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/599d327c01f7be5c1843b992ee475b103a8c2ced6914980e820d214b80f050c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_03:1 -> audio/generated/de-DE/dialogues/5b66b85bb82217296e1075a0ce9ec154f3f4c04920eaba96beb3b9f2fed8708b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b20f25e-3c06-5f09-9b1c-c43497cfb194', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '157a35786cdd42d667af573cfa231d4b8af4fd09c0a514b99917db93bc464673'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d11531e4-5d8c-56ef-9bd3-85d81f024b38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b20f25e-3c06-5f09-9b1c-c43497cfb194', 1), '157a35786cdd42d667af573cfa231d4b8af4fd09c0a514b99917db93bc464673',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b66b85bb82217296e1075a0ce9ec154f3f4c04920eaba96beb3b9f2fed8708b.mp3', 1619, '2026-09-13 06:58:39.486091', 'd0c27d48911e9d40f67c7717ffaa1c89a2d512718f151fc4bc9ef18ccba36b11', 'validated', '{"audio_key":"5b66b85bb82217296e1075a0ce9ec154f3f4c04920eaba96beb3b9f2fed8708b","entity_key":"d_exams_learning_stress_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d0c27d48911e9d40f67c7717ffaa1c89a2d512718f151fc4bc9ef18ccba36b11","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5b66b85bb82217296e1075a0ce9ec154f3f4c04920eaba96beb3b9f2fed8708b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_02:2 -> audio/generated/de-DE/dialogues/5d0ba27826ecb1ce7b32c4d18fea9a5c48e6158a1eafe62c73b3cf7654b4ce02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76d297e6-f3f1-50b1-9687-c4546ac7d5b1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f74a130426c9569099efec99b58c1b4f5e22c99638f54f3351cc47f27ea35285'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07d3736d-5ab4-5804-b826-2af690fe3c1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76d297e6-f3f1-50b1-9687-c4546ac7d5b1', 1), 'f74a130426c9569099efec99b58c1b4f5e22c99638f54f3351cc47f27ea35285',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d0ba27826ecb1ce7b32c4d18fea9a5c48e6158a1eafe62c73b3cf7654b4ce02.mp3', 3604, '2026-09-13 06:58:40.086183', '8d4f7f190a536b68a4b94eea8ff6c9f0823aa7308ddef6d34ee4bcff568969b7', 'validated', '{"audio_key":"5d0ba27826ecb1ce7b32c4d18fea9a5c48e6158a1eafe62c73b3cf7654b4ce02","entity_key":"d_moving_relocation_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8d4f7f190a536b68a4b94eea8ff6c9f0823aa7308ddef6d34ee4bcff568969b7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5d0ba27826ecb1ce7b32c4d18fea9a5c48e6158a1eafe62c73b3cf7654b4ce02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_01:4 -> audio/generated/de-DE/dialogues/607d442b358cb4d79e4d22838c226777b36eb86030e554ae09ac89b1b339430f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f030238-745b-5a42-8c3c-f52d50c6011e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c79ace1197d30503f757f90ea4004e46bcc1443bb7d27060e12dc721d8f09b02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbb5f889-78a9-5a4d-b549-b11c87529ea1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f030238-745b-5a42-8c3c-f52d50c6011e', 1), 'c79ace1197d30503f757f90ea4004e46bcc1443bb7d27060e12dc721d8f09b02',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/607d442b358cb4d79e4d22838c226777b36eb86030e554ae09ac89b1b339430f.mp3', 3343, '2026-09-13 06:58:40.697087', '65f729647460f6cbeb3259d90ebd8317d397cd795301e8bb143c40ed1f9d0334', 'validated', '{"audio_key":"607d442b358cb4d79e4d22838c226777b36eb86030e554ae09ac89b1b339430f","entity_key":"d_online_accounts_privacy_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"65f729647460f6cbeb3259d90ebd8317d397cd795301e8bb143c40ed1f9d0334","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/607d442b358cb4d79e4d22838c226777b36eb86030e554ae09ac89b1b339430f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_02:2 -> audio/generated/de-DE/dialogues/61834f57bd2eb342bae8fdddb59e678d57a7e231fd47448d65e09df04c0fb383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('537dcdc7-0c6c-59e2-a2d6-c288ffe85c1e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7336613e063422f5fb7c39482f489631e6d99f3746c06465118677b582531a65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d95969a-c596-5630-8176-3d1327e7a50d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('537dcdc7-0c6c-59e2-a2d6-c288ffe85c1e', 1), '7336613e063422f5fb7c39482f489631e6d99f3746c06465118677b582531a65',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/61834f57bd2eb342bae8fdddb59e678d57a7e231fd47448d65e09df04c0fb383.mp3', 2638, '2026-09-13 06:58:41.227897', 'f666de6bf0f9cac5a742f5476a1b49139c8773eb706bfa1d6394f03ec3ca40b2', 'validated', '{"audio_key":"61834f57bd2eb342bae8fdddb59e678d57a7e231fd47448d65e09df04c0fb383","entity_key":"d_exams_learning_stress_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f666de6bf0f9cac5a742f5476a1b49139c8773eb706bfa1d6394f03ec3ca40b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/61834f57bd2eb342bae8fdddb59e678d57a7e231fd47448d65e09df04c0fb383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_02:2 -> audio/generated/de-DE/dialogues/68f7305a6b260b892e560ecc9ec8efdd4c587cdef945af6edb8fe235367b4acd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d2cc31f6-29a7-5a81-883b-7a61a7dda262', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14d731effd5d44b9f1b3dcb390677de29ef0bc116517fd33993e910688a5a9a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f5e9a35-5c33-5db5-9168-5cb83752d458', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d2cc31f6-29a7-5a81-883b-7a61a7dda262', 1), '14d731effd5d44b9f1b3dcb390677de29ef0bc116517fd33993e910688a5a9a9',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68f7305a6b260b892e560ecc9ec8efdd4c587cdef945af6edb8fe235367b4acd.mp3', 1567, '2026-09-13 06:58:41.691901', '212769abd1a2b5b6fe49d6d6f98a9449114552f1a3ea0a858b7b2675f93fb058', 'validated', '{"audio_key":"68f7305a6b260b892e560ecc9ec8efdd4c587cdef945af6edb8fe235367b4acd","entity_key":"d_online_accounts_privacy_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"212769abd1a2b5b6fe49d6d6f98a9449114552f1a3ea0a858b7b2675f93fb058","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/68f7305a6b260b892e560ecc9ec8efdd4c587cdef945af6edb8fe235367b4acd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_01:2 -> audio/generated/de-DE/dialogues/6a83c38d43f607f930424e62615a939d9d6551551421a7efd4b12a8535577991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a037660c-0a21-58c9-a464-9f0e8faddcaf', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04dc0ec5998259d6cd5d7aaee3137a066cd4d41c47a6570e7572263dee59a658'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d07c1aaa-1931-5f4a-8b9d-d24272590fe7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a037660c-0a21-58c9-a464-9f0e8faddcaf', 1), '04dc0ec5998259d6cd5d7aaee3137a066cd4d41c47a6570e7572263dee59a658',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6a83c38d43f607f930424e62615a939d9d6551551421a7efd4b12a8535577991.mp3', 3291, '2026-09-13 06:58:42.387210', '34b109714713e7ce23d78416b8848267ce9126361a402a0f092cdd9e6f743e5d', 'validated', '{"audio_key":"6a83c38d43f607f930424e62615a939d9d6551551421a7efd4b12a8535577991","entity_key":"d_doctor_visit_followup_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"34b109714713e7ce23d78416b8848267ce9126361a402a0f092cdd9e6f743e5d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6a83c38d43f607f930424e62615a939d9d6551551421a7efd4b12a8535577991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_02:4 -> audio/generated/de-DE/dialogues/6d250399a144a37dc22d26e0dc69bf3b87568725bf46f52debd8f6d3bc143d81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acf9fce1-ba2a-54db-942d-eee3c527bb75', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec1a44b1966eda1fa41aa339d86b6b48c1a56dae0a0f00af287ab1f0c6c82cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5fe5012-1256-5e7a-862d-2943922d186e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acf9fce1-ba2a-54db-942d-eee3c527bb75', 1), 'ec1a44b1966eda1fa41aa339d86b6b48c1a56dae0a0f00af287ab1f0c6c82cc7',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d250399a144a37dc22d26e0dc69bf3b87568725bf46f52debd8f6d3bc143d81.mp3', 1567, '2026-09-13 06:58:42.680618', '5fdfadd763abb6e282b6f7c5b4d52f6a4bd09ef5a53c277124973a71bbbc4a6b', 'validated', '{"audio_key":"6d250399a144a37dc22d26e0dc69bf3b87568725bf46f52debd8f6d3bc143d81","entity_key":"d_online_accounts_privacy_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5fdfadd763abb6e282b6f7c5b4d52f6a4bd09ef5a53c277124973a71bbbc4a6b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6d250399a144a37dc22d26e0dc69bf3b87568725bf46f52debd8f6d3bc143d81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_01:3 -> audio/generated/de-DE/dialogues/6ea8ec9dbdf2fa01ad95ff0d8a564295913748c3d5d0b94571e5ce92ae878b4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c573fabb-e934-5c9e-a0b2-212957657f7f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f04b13c7eb0bca8a03c1d00e16616c1cdc14f75f12dc2faa433f7272da3aab8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee474209-ada5-58e6-8c72-a2620bcc1601', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c573fabb-e934-5c9e-a0b2-212957657f7f', 1), 'f04b13c7eb0bca8a03c1d00e16616c1cdc14f75f12dc2faa433f7272da3aab8e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6ea8ec9dbdf2fa01ad95ff0d8a564295913748c3d5d0b94571e5ce92ae878b4d.mp3', 3526, '2026-09-13 06:58:43.574084', 'b47e72010e317717b6277eaa09ee83df66e41edb924e309291b9a22505cbee41', 'validated', '{"audio_key":"6ea8ec9dbdf2fa01ad95ff0d8a564295913748c3d5d0b94571e5ce92ae878b4d","entity_key":"d_work_feedback_teamwork_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b47e72010e317717b6277eaa09ee83df66e41edb924e309291b9a22505cbee41","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6ea8ec9dbdf2fa01ad95ff0d8a564295913748c3d5d0b94571e5ce92ae878b4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_03:3 -> audio/generated/de-DE/dialogues/6eaffe77922104506f582ad90bb07667fb83382ba3d3caeeddcc5109c7d463dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf370ae6-f18d-5237-8072-62f2615bad5c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '434c9f4a07b3325a676b3ae4ab0ae170d537a3ba7b0c7df4aa5273dc9d2ae6e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('652a8958-70f1-59b1-88f6-df1dff8ad879', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf370ae6-f18d-5237-8072-62f2615bad5c', 1), '434c9f4a07b3325a676b3ae4ab0ae170d537a3ba7b0c7df4aa5273dc9d2ae6e5',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6eaffe77922104506f582ad90bb07667fb83382ba3d3caeeddcc5109c7d463dd.mp3', 1802, '2026-09-13 06:58:43.674058', '6c98b2f33dcd30f243903e11d758695bc79f6809db6d1507280a6df74d4e3313', 'validated', '{"audio_key":"6eaffe77922104506f582ad90bb07667fb83382ba3d3caeeddcc5109c7d463dd","entity_key":"d_goals_priorities_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6c98b2f33dcd30f243903e11d758695bc79f6809db6d1507280a6df74d4e3313","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6eaffe77922104506f582ad90bb07667fb83382ba3d3caeeddcc5109c7d463dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:4 -> audio/generated/de-DE/dialogues/70ed1db3f06ec224295f1f028166d6a920c1684967d9e0e782f202ebda4bda6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('304cf115-57cb-534b-b3c2-9a238e8c0e86', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c928d59f86c7270ca61ab0c47501b4d6ea28496074f30c7ee155982775b8c854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5615d323-108a-5a52-a7fc-a295fe76f190', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('304cf115-57cb-534b-b3c2-9a238e8c0e86', 1), 'c928d59f86c7270ca61ab0c47501b4d6ea28496074f30c7ee155982775b8c854',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/70ed1db3f06ec224295f1f028166d6a920c1684967d9e0e782f202ebda4bda6b.mp3', 3056, '2026-09-13 06:58:44.744548', '4e300b9ac14dd56de4b414020c11aa8348dcaf8aaf7e930971cbc04c5133d7cf', 'validated', '{"audio_key":"70ed1db3f06ec224295f1f028166d6a920c1684967d9e0e782f202ebda4bda6b","entity_key":"d_contracts_subscriptions_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e300b9ac14dd56de4b414020c11aa8348dcaf8aaf7e930971cbc04c5133d7cf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/70ed1db3f06ec224295f1f028166d6a920c1684967d9e0e782f202ebda4bda6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_03:1 -> audio/generated/de-DE/dialogues/723fc95fb2f361016a91f134314e60bcaf7944cfe9598e7a4eb180ac6b974ced.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd44b571-3f13-5822-8343-373d7e731267', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7da8acccbb84b1116ba43023be22b5b374cae08ec1a2cf438e4a4c39f8c7e78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82c4178d-4867-50dc-a390-95d36061efa7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd44b571-3f13-5822-8343-373d7e731267', 1), 'b7da8acccbb84b1116ba43023be22b5b374cae08ec1a2cf438e4a4c39f8c7e78',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/723fc95fb2f361016a91f134314e60bcaf7944cfe9598e7a4eb180ac6b974ced.mp3', 2586, '2026-09-13 06:58:44.767283', 'eafc4077296b1bb6b554b0b10e13ce1cebff89334a578cc82f5ec269488af3e2', 'validated', '{"audio_key":"723fc95fb2f361016a91f134314e60bcaf7944cfe9598e7a4eb180ac6b974ced","entity_key":"d_city_services_public_places_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"eafc4077296b1bb6b554b0b10e13ce1cebff89334a578cc82f5ec269488af3e2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/723fc95fb2f361016a91f134314e60bcaf7944cfe9598e7a4eb180ac6b974ced.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_01:2 -> audio/generated/de-DE/dialogues/777fa18894695a79ed1f1af00dca96a5e86d1713a6c0e543d1e755c07c0c1fc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ded6664-af47-5758-8f32-e85a0ad74edc', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41e71e70c7f844495f82b689b9ba1a7b184657c5ee9f9bb97401585989e6b0f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a027197-2b3c-5326-83e9-9964d2952f6d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ded6664-af47-5758-8f32-e85a0ad74edc', 1), '41e71e70c7f844495f82b689b9ba1a7b184657c5ee9f9bb97401585989e6b0f8',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/777fa18894695a79ed1f1af00dca96a5e86d1713a6c0e543d1e755c07c0c1fc5.mp3', 3004, '2026-09-13 06:58:45.881469', '6998794db698719944452117e55b2a0a14207b0a3d95d03b83f81a04f2c48cce', 'validated', '{"audio_key":"777fa18894695a79ed1f1af00dca96a5e86d1713a6c0e543d1e755c07c0c1fc5","entity_key":"d_city_services_public_places_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6998794db698719944452117e55b2a0a14207b0a3d95d03b83f81a04f2c48cce","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/777fa18894695a79ed1f1af00dca96a5e86d1713a6c0e543d1e755c07c0c1fc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_02:1 -> audio/generated/de-DE/dialogues/782f68ffbef7c71383198606e9627bcd332ffd3ceeb21d767e785448bf59014b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9de8599-656d-5ecc-a552-f2434f4f4416', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c730459c5c768de861fd50ef6daffe13bdb5dea26761e3dadb2f682884b72c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68828f70-ab60-5648-99e3-603e33670bf4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9de8599-656d-5ecc-a552-f2434f4f4416', 1), '5c730459c5c768de861fd50ef6daffe13bdb5dea26761e3dadb2f682884b72c7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/782f68ffbef7c71383198606e9627bcd332ffd3ceeb21d767e785448bf59014b.mp3', 3186, '2026-09-13 06:58:45.941597', 'c57cba57cc1c271d8af7e0dc197e025fc44c33f5b9113035048df82ccc3cd4ca', 'validated', '{"audio_key":"782f68ffbef7c71383198606e9627bcd332ffd3ceeb21d767e785448bf59014b","entity_key":"d_online_accounts_privacy_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c57cba57cc1c271d8af7e0dc197e025fc44c33f5b9113035048df82ccc3cd4ca","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/782f68ffbef7c71383198606e9627bcd332ffd3ceeb21d767e785448bf59014b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:3 -> audio/generated/de-DE/dialogues/7a4b4d400f7e28d608bbdcc2917fc6ac03608a5b21de7b9fda91c67f8c54dc08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a65999e2-02c4-5f1b-8113-81b1350b8223', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9172dbb661a56a99e5aecdd74c37e3661f9c897218c21b0e02336c6d9527a140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f258b8d-2db5-5c02-b0b4-339d3bc159c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a65999e2-02c4-5f1b-8113-81b1350b8223', 1), '9172dbb661a56a99e5aecdd74c37e3661f9c897218c21b0e02336c6d9527a140',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a4b4d400f7e28d608bbdcc2917fc6ac03608a5b21de7b9fda91c67f8c54dc08.mp3', 1802, '2026-09-13 06:58:46.913861', '905d826e51544d1bbec209d978caaf1e88ecbdeb754b76feb93ec5c0d2817f38', 'validated', '{"audio_key":"7a4b4d400f7e28d608bbdcc2917fc6ac03608a5b21de7b9fda91c67f8c54dc08","entity_key":"d_contracts_subscriptions_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"905d826e51544d1bbec209d978caaf1e88ecbdeb754b76feb93ec5c0d2817f38","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7a4b4d400f7e28d608bbdcc2917fc6ac03608a5b21de7b9fda91c67f8c54dc08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_02:1 -> audio/generated/de-DE/dialogues/7d59d2bc10318357930921205c2068fc5d5bef448aa627ec892fcef3f016c583.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eccdabe5-0569-536e-9a6a-8e2fedf8352c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a33ab76c6c4d29403eba67bfac0dbc0c63e44495f891f01aa81189dde8642cf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a343e3aa-5489-5fef-be89-706ca407866e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eccdabe5-0569-536e-9a6a-8e2fedf8352c', 1), 'a33ab76c6c4d29403eba67bfac0dbc0c63e44495f891f01aa81189dde8642cf8',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d59d2bc10318357930921205c2068fc5d5bef448aa627ec892fcef3f016c583.mp3', 2690, '2026-09-13 06:58:47.067886', '5dab8d34fdc6c6568cd0c48116a7b6a282c56020ee990c5c92f88d7874d12bbf', 'validated', '{"audio_key":"7d59d2bc10318357930921205c2068fc5d5bef448aa627ec892fcef3f016c583","entity_key":"d_home_repairs_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5dab8d34fdc6c6568cd0c48116a7b6a282c56020ee990c5c92f88d7874d12bbf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7d59d2bc10318357930921205c2068fc5d5bef448aa627ec892fcef3f016c583.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_02:1 -> audio/generated/de-DE/dialogues/7e526c22e39aec09f0ad197d13373b061020b02e8bc368ce4f57a08bb2638d1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bde92592-1a74-5f77-b667-c110fd297860', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f3d6879144c267e7a7ad7dafe2316f9aedb3d81337fd6d01f6cf43df0ba0d5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b095467-09ee-5064-a74c-87cc6403f23f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bde92592-1a74-5f77-b667-c110fd297860', 1), '8f3d6879144c267e7a7ad7dafe2316f9aedb3d81337fd6d01f6cf43df0ba0d5e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7e526c22e39aec09f0ad197d13373b061020b02e8bc368ce4f57a08bb2638d1b.mp3', 2220, '2026-09-13 06:58:47.996784', 'bab72f6056aa8053d834c02400a6dd9c574f9a196001ebcec9463f90dd32cebe', 'validated', '{"audio_key":"7e526c22e39aec09f0ad197d13373b061020b02e8bc368ce4f57a08bb2638d1b","entity_key":"d_invitations_hosting_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bab72f6056aa8053d834c02400a6dd9c574f9a196001ebcec9463f90dd32cebe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7e526c22e39aec09f0ad197d13373b061020b02e8bc368ce4f57a08bb2638d1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_01:1 -> audio/generated/de-DE/dialogues/7edf4284cbfe9123d679e993e31f6ec8310a34bef4460c5beae179828b8cfd2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4644bcac-4323-543f-b0d0-66ffe452e47e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1be0fee5ab2227f695affe729bebb8e8a617fad2c7218c119472d927bd645a79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2daaa33-0f33-57e2-b6ef-0fa6fe02ee7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4644bcac-4323-543f-b0d0-66ffe452e47e', 1), '1be0fee5ab2227f695affe729bebb8e8a617fad2c7218c119472d927bd645a79',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7edf4284cbfe9123d679e993e31f6ec8310a34bef4460c5beae179828b8cfd2c.mp3', 1750, '2026-09-13 06:58:48.073924', '3910881774980bdb168d87d2bbe8d9231e7e212d46209fd47f23c916087708f5', 'validated', '{"audio_key":"7edf4284cbfe9123d679e993e31f6ec8310a34bef4460c5beae179828b8cfd2c","entity_key":"d_doctor_visit_followup_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3910881774980bdb168d87d2bbe8d9231e7e212d46209fd47f23c916087708f5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7edf4284cbfe9123d679e993e31f6ec8310a34bef4460c5beae179828b8cfd2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_01:2 -> audio/generated/de-DE/dialogues/83d9f0640fa1b83effe73d25a8f9e665985b9cff33bfb75944296f9a27e682a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03cbf2bb-994e-53be-a433-fc4f6641f0c8', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca026fdb245bc8b56cb3beb05d1b9b7059b07efb484cbdceb2acb745f706b0e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da9f455e-3e21-5140-bf9b-5ae129930463', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03cbf2bb-994e-53be-a433-fc4f6641f0c8', 1), 'ca026fdb245bc8b56cb3beb05d1b9b7059b07efb484cbdceb2acb745f706b0e6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83d9f0640fa1b83effe73d25a8f9e665985b9cff33bfb75944296f9a27e682a1.mp3', 1802, '2026-09-13 06:58:49.040576', '1dd6ee8f58c82bd1db4dbd87abc344f7fe6365026c0af57bfeab61c87bf2f767', 'validated', '{"audio_key":"83d9f0640fa1b83effe73d25a8f9e665985b9cff33bfb75944296f9a27e682a1","entity_key":"d_moving_relocation_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1dd6ee8f58c82bd1db4dbd87abc344f7fe6365026c0af57bfeab61c87bf2f767","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/83d9f0640fa1b83effe73d25a8f9e665985b9cff33bfb75944296f9a27e682a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_03:2 -> audio/generated/de-DE/dialogues/83ddfdfdd5382aa3cdd495cbbcba288ab1ba05aadba55a957d7ac492b9c27ec8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b383877-c142-5794-9019-2fb92e0ad5be', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5535d949769dc289e56119b2fc8ac35cc35f03cf1c9866cf404ac4c053f15c07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dccf1a82-53ca-5ec8-95b3-f8eb2a78f243', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b383877-c142-5794-9019-2fb92e0ad5be', 1), '5535d949769dc289e56119b2fc8ac35cc35f03cf1c9866cf404ac4c053f15c07',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83ddfdfdd5382aa3cdd495cbbcba288ab1ba05aadba55a957d7ac492b9c27ec8.mp3', 3578, '2026-09-13 06:58:49.403974', '272ba8d221504ec1f70ae7c48c8b3934bf861022c3f733c3689839cc2be15deb', 'validated', '{"audio_key":"83ddfdfdd5382aa3cdd495cbbcba288ab1ba05aadba55a957d7ac492b9c27ec8","entity_key":"d_online_accounts_privacy_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"272ba8d221504ec1f70ae7c48c8b3934bf861022c3f733c3689839cc2be15deb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/83ddfdfdd5382aa3cdd495cbbcba288ab1ba05aadba55a957d7ac492b9c27ec8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_02:4 -> audio/generated/de-DE/dialogues/84aa66b1fff1a9572e01afa89e3675a0a38ef8cd559dbf7cd2d78cf0ce364b36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f2179045-26ca-5cfd-bdad-630fb702d321', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c027a5dd4007bb6fcd899c30794f0fc13ac7a4895a3c3ec8a1beadc948d3d97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bb46741-37c6-5d4a-856e-cc26efe478ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f2179045-26ca-5cfd-bdad-630fb702d321', 1), '4c027a5dd4007bb6fcd899c30794f0fc13ac7a4895a3c3ec8a1beadc948d3d97',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84aa66b1fff1a9572e01afa89e3675a0a38ef8cd559dbf7cd2d78cf0ce364b36.mp3', 2507, '2026-09-13 06:58:50.143158', '35c1b26728184cd6ae5a93cd9ca60809425884e45111b21ecfe6ccd55b914122', 'validated', '{"audio_key":"84aa66b1fff1a9572e01afa89e3675a0a38ef8cd559dbf7cd2d78cf0ce364b36","entity_key":"d_moving_relocation_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"35c1b26728184cd6ae5a93cd9ca60809425884e45111b21ecfe6ccd55b914122","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/84aa66b1fff1a9572e01afa89e3675a0a38ef8cd559dbf7cd2d78cf0ce364b36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_02:4 -> audio/generated/de-DE/dialogues/84ec7b0e0ce6f50537e9acf1f0b9cce5728699c0fcbfb244fcb650c25702bd63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b7c91cd-4fcb-5c0a-8bed-f3f5112dedbd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77a904175a71300cab5fe861a163cef95ea7bf7082226305f454774d68a18d0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('461002d5-5817-553a-8d90-eb93835b635b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b7c91cd-4fcb-5c0a-8bed-f3f5112dedbd', 1), '77a904175a71300cab5fe861a163cef95ea7bf7082226305f454774d68a18d0e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84ec7b0e0ce6f50537e9acf1f0b9cce5728699c0fcbfb244fcb650c25702bd63.mp3', 2037, '2026-09-13 06:58:50.469161', 'e8a0d0c1fd3a9fa5d2762e847048c3e13c5a9f616122e73b203298543b275c47', 'validated', '{"audio_key":"84ec7b0e0ce6f50537e9acf1f0b9cce5728699c0fcbfb244fcb650c25702bd63","entity_key":"d_home_repairs_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e8a0d0c1fd3a9fa5d2762e847048c3e13c5a9f616122e73b203298543b275c47","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/84ec7b0e0ce6f50537e9acf1f0b9cce5728699c0fcbfb244fcb650c25702bd63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_03:1 -> audio/generated/de-DE/dialogues/881faf80513ce185217b59ffed56f429ed6ed571d5c3d1fea1492445017c9b41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ca3d0cf-ea40-59af-b34e-c44b9baf9ff9', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebcaa3bf58b41696ba088ded1c58bb43ee9908c087a8c9df77e23518b4614199'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bba08dc-5738-5a66-863e-3be48502e881', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ca3d0cf-ea40-59af-b34e-c44b9baf9ff9', 1), 'ebcaa3bf58b41696ba088ded1c58bb43ee9908c087a8c9df77e23518b4614199',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/881faf80513ce185217b59ffed56f429ed6ed571d5c3d1fea1492445017c9b41.mp3', 2089, '2026-09-13 06:58:51.186534', 'fbda220b9d7a473d073892245ff042d4ce63f9fd5acfc84352607526b3539508', 'validated', '{"audio_key":"881faf80513ce185217b59ffed56f429ed6ed571d5c3d1fea1492445017c9b41","entity_key":"d_moving_relocation_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fbda220b9d7a473d073892245ff042d4ce63f9fd5acfc84352607526b3539508","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/881faf80513ce185217b59ffed56f429ed6ed571d5c3d1fea1492445017c9b41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:1 -> audio/generated/de-DE/dialogues/89fd49a4d6b3bbbca8c6c71101bc28d728c7aa5e0a80d819cbddc70eb0926a8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d533e761-3a4e-5b9f-ad3f-b03785952938', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8165af667b7b4d1c1fa500b23cdd62f13966b05bb930233b0b65307162b32411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de259a1d-0522-5365-846b-b4dcb5a8bc4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d533e761-3a4e-5b9f-ad3f-b03785952938', 1), '8165af667b7b4d1c1fa500b23cdd62f13966b05bb930233b0b65307162b32411',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89fd49a4d6b3bbbca8c6c71101bc28d728c7aa5e0a80d819cbddc70eb0926a8f.mp3', 1515, '2026-09-13 06:58:51.468337', 'c47662feb35e143ade4072d9a656a193432817ef43c565a3b7c563755ec2b10e', 'validated', '{"audio_key":"89fd49a4d6b3bbbca8c6c71101bc28d728c7aa5e0a80d819cbddc70eb0926a8f","entity_key":"d_contracts_subscriptions_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c47662feb35e143ade4072d9a656a193432817ef43c565a3b7c563755ec2b10e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/89fd49a4d6b3bbbca8c6c71101bc28d728c7aa5e0a80d819cbddc70eb0926a8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_01:2 -> audio/generated/de-DE/dialogues/8b0728c0a7dcfdebcb9bfdbb8a393f9b30e4ee39389bdb79ddf9020a3730ce73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('181ca6ac-a055-53ae-8dbf-567b3462dc80', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cc2ed44bf8e4a5d405a7c1dfa2a49555fdd00a00dd6b90fd8436926aa8a7d80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74440037-572b-5dde-b49f-efebe6d956d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('181ca6ac-a055-53ae-8dbf-567b3462dc80', 1), '6cc2ed44bf8e4a5d405a7c1dfa2a49555fdd00a00dd6b90fd8436926aa8a7d80',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8b0728c0a7dcfdebcb9bfdbb8a393f9b30e4ee39389bdb79ddf9020a3730ce73.mp3', 3004, '2026-09-13 06:58:52.354110', 'e85fb08394ac6570b8dc9ed1db8281502f394f29c4470bfbaaaaf8c8ba8409f2', 'validated', '{"audio_key":"8b0728c0a7dcfdebcb9bfdbb8a393f9b30e4ee39389bdb79ddf9020a3730ce73","entity_key":"d_home_repairs_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e85fb08394ac6570b8dc9ed1db8281502f394f29c4470bfbaaaaf8c8ba8409f2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8b0728c0a7dcfdebcb9bfdbb8a393f9b30e4ee39389bdb79ddf9020a3730ce73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_02:3 -> audio/generated/de-DE/dialogues/8c7c697c6fa5b22a763f81d14be05781eca2756b4644eb9db165ff2572cad3fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eca262d1-338d-5a11-bfa6-c13712c4ff1f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a976296a34ad552bec10db21eeb9d85e3d0874d6df15bc2fbeabe166761b6e93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ee567c9-27db-5ada-ae2f-1b7fca2ad405', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eca262d1-338d-5a11-bfa6-c13712c4ff1f', 1), 'a976296a34ad552bec10db21eeb9d85e3d0874d6df15bc2fbeabe166761b6e93',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c7c697c6fa5b22a763f81d14be05781eca2756b4644eb9db165ff2572cad3fb.mp3', 3944, '2026-09-13 06:58:52.697271', 'c7ab9246b28c4b95617e00640cb0ab5a487e48b7f0f62a5a1e3e9fd335068a21', 'validated', '{"audio_key":"8c7c697c6fa5b22a763f81d14be05781eca2756b4644eb9db165ff2572cad3fb","entity_key":"d_online_accounts_privacy_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c7ab9246b28c4b95617e00640cb0ab5a487e48b7f0f62a5a1e3e9fd335068a21","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8c7c697c6fa5b22a763f81d14be05781eca2756b4644eb9db165ff2572cad3fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_01:4 -> audio/generated/de-DE/dialogues/8ce9f77fd924f0f183e309de9de855ed8cb104cd5aa5e0462659dadd0ba0bf44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd95ad40-77fd-51ac-a9d1-847d39bcfc1e', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa84db37b8dc3faba908dabd3c5357bc8d5b56f72342c1a22691ed72aa3184d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('347eb8a9-d7a0-5762-9b98-e27f2e1857b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd95ad40-77fd-51ac-a9d1-847d39bcfc1e', 1), 'fa84db37b8dc3faba908dabd3c5357bc8d5b56f72342c1a22691ed72aa3184d0',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ce9f77fd924f0f183e309de9de855ed8cb104cd5aa5e0462659dadd0ba0bf44.mp3', 2168, '2026-09-13 06:58:53.414252', '136e7ef101c3581632ef71e7b7599940a6390a669df219fd54a1def31ff7d430', 'validated', '{"audio_key":"8ce9f77fd924f0f183e309de9de855ed8cb104cd5aa5e0462659dadd0ba0bf44","entity_key":"d_work_feedback_teamwork_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"136e7ef101c3581632ef71e7b7599940a6390a669df219fd54a1def31ff7d430","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8ce9f77fd924f0f183e309de9de855ed8cb104cd5aa5e0462659dadd0ba0bf44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_01:1 -> audio/generated/de-DE/dialogues/91a4a83b86376be0383615ae4f5b11a0c05db32f39f8a1d9a4b14f550b5c08c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8621c924-6120-5d6b-845f-40818df2ae74', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d2b3713995639d47936b322e5cecfc5c1676c71e60fa5b43b3b1821bb92a77c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fec27f6-5971-5a38-bc73-e04bc127279a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8621c924-6120-5d6b-845f-40818df2ae74', 1), '1d2b3713995639d47936b322e5cecfc5c1676c71e60fa5b43b3b1821bb92a77c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91a4a83b86376be0383615ae4f5b11a0c05db32f39f8a1d9a4b14f550b5c08c9.mp3', 1697, '2026-09-13 06:58:53.701975', '880d20492107bbeaf4f0dca3f52dfe123493175c503e32be2cfcc173a9e08a70', 'validated', '{"audio_key":"91a4a83b86376be0383615ae4f5b11a0c05db32f39f8a1d9a4b14f550b5c08c9","entity_key":"d_home_repairs_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"880d20492107bbeaf4f0dca3f52dfe123493175c503e32be2cfcc173a9e08a70","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/91a4a83b86376be0383615ae4f5b11a0c05db32f39f8a1d9a4b14f550b5c08c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_03:3 -> audio/generated/de-DE/dialogues/948435e9164258445e00a314a683dc373b9a0d9aff6a03b99d6cb5b2603104bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1aa5305e-c5d9-5f08-a875-be56fce41a06', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1ed59317bac2398ea45780d362a072f2b92062a766e79eb1fa6ef337cd56683'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b638c8f-2d31-5917-8b14-7d240504a571', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1aa5305e-c5d9-5f08-a875-be56fce41a06', 1), 'e1ed59317bac2398ea45780d362a072f2b92062a766e79eb1fa6ef337cd56683',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/948435e9164258445e00a314a683dc373b9a0d9aff6a03b99d6cb5b2603104bc.mp3', 2089, '2026-09-13 06:58:54.576282', '64b9246d6dfe2f65dfba31d2340e50399bb1ccfb93f64e7d688d41330684c4e7', 'validated', '{"audio_key":"948435e9164258445e00a314a683dc373b9a0d9aff6a03b99d6cb5b2603104bc","entity_key":"d_city_services_public_places_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"64b9246d6dfe2f65dfba31d2340e50399bb1ccfb93f64e7d688d41330684c4e7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/948435e9164258445e00a314a683dc373b9a0d9aff6a03b99d6cb5b2603104bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_03:4 -> audio/generated/de-DE/dialogues/953fb4339e067dd89b5fcad8f6d1a98b2baacc297afaf8d0623864d4303c5781.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33663026-45a8-5a36-8309-7ebc981a5411', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83a8a535535dd4aa61333a8cb08b890b808b676fb7cbd81e0e85b2957f41177'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f83b8521-275f-5c08-934a-59b3ad62e8db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33663026-45a8-5a36-8309-7ebc981a5411', 1), 'b83a8a535535dd4aa61333a8cb08b890b808b676fb7cbd81e0e85b2957f41177',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/953fb4339e067dd89b5fcad8f6d1a98b2baacc297afaf8d0623864d4303c5781.mp3', 3604, '2026-09-13 06:58:54.897287', '48fdca17c5cdae817c007763aa62b78d9b24ae907e57d54d6545cbf1f77656d7', 'validated', '{"audio_key":"953fb4339e067dd89b5fcad8f6d1a98b2baacc297afaf8d0623864d4303c5781","entity_key":"d_online_accounts_privacy_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"48fdca17c5cdae817c007763aa62b78d9b24ae907e57d54d6545cbf1f77656d7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/953fb4339e067dd89b5fcad8f6d1a98b2baacc297afaf8d0623864d4303c5781.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_01:2 -> audio/generated/de-DE/dialogues/9bdacd202494b5c1c13ee1d5d848cdac0f20a5884222e175ece77467ebd2317f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('071eec10-c45e-546e-801c-41712be07664', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '477ad84ac847aec8e85841bc9ee2f36686f68828416288d3862a5a83c3ea5728'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa305757-c07b-5566-a373-80a52cef540f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('071eec10-c45e-546e-801c-41712be07664', 1), '477ad84ac847aec8e85841bc9ee2f36686f68828416288d3862a5a83c3ea5728',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9bdacd202494b5c1c13ee1d5d848cdac0f20a5884222e175ece77467ebd2317f.mp3', 3239, '2026-09-13 06:58:55.766736', '255e6afe05b20cf4df6d9c9146d6dfd491c1fc27b1f4f843e4c8f2f7e01446b5', 'validated', '{"audio_key":"9bdacd202494b5c1c13ee1d5d848cdac0f20a5884222e175ece77467ebd2317f","entity_key":"d_exams_learning_stress_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"255e6afe05b20cf4df6d9c9146d6dfd491c1fc27b1f4f843e4c8f2f7e01446b5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/9bdacd202494b5c1c13ee1d5d848cdac0f20a5884222e175ece77467ebd2317f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:4 -> audio/generated/de-DE/dialogues/9e3893410d944ee58d152b2aa2aa7e8b8051b15652d3b11eb9e19e1b6f56cbf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1db91fa4-35a8-5516-955c-24e813006013', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '041980adb754e45f71e4abc13774d5361b656c49a8e1d8150e3b1cfeccd8f45b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdacd951-e588-5f8a-9d33-e28d77505fad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1db91fa4-35a8-5516-955c-24e813006013', 1), '041980adb754e45f71e4abc13774d5361b656c49a8e1d8150e3b1cfeccd8f45b',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e3893410d944ee58d152b2aa2aa7e8b8051b15652d3b11eb9e19e1b6f56cbf4.mp3', 2533, '2026-09-13 06:58:55.954758', '30aa0036ea940f8a75f1c23ba1b4c4f69d3c7515a50dcef07e309e39c2583d0c', 'validated', '{"audio_key":"9e3893410d944ee58d152b2aa2aa7e8b8051b15652d3b11eb9e19e1b6f56cbf4","entity_key":"d_contracts_subscriptions_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"30aa0036ea940f8a75f1c23ba1b4c4f69d3c7515a50dcef07e309e39c2583d0c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9e3893410d944ee58d152b2aa2aa7e8b8051b15652d3b11eb9e19e1b6f56cbf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_03:1 -> audio/generated/de-DE/dialogues/a07ad5a4db922653e5e181ec0a1af0daf398ca6db65cce266f68d3ba1b6a4c52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbea268b-a050-5c42-8c39-0cc82e777f26', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0671e30d72a54f6a381521086938d18337853776b5f30dca2cdf99bb158d2eac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('723f919f-bd41-5548-b41a-0e9183b22577', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbea268b-a050-5c42-8c39-0cc82e777f26', 1), '0671e30d72a54f6a381521086938d18337853776b5f30dca2cdf99bb158d2eac',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a07ad5a4db922653e5e181ec0a1af0daf398ca6db65cce266f68d3ba1b6a4c52.mp3', 2115, '2026-09-13 06:58:56.994904', '176e6c2f007556478b1a7227c171e0f0c68da6b65913a4a80380569a09c868e5', 'validated', '{"audio_key":"a07ad5a4db922653e5e181ec0a1af0daf398ca6db65cce266f68d3ba1b6a4c52","entity_key":"d_home_repairs_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"176e6c2f007556478b1a7227c171e0f0c68da6b65913a4a80380569a09c868e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a07ad5a4db922653e5e181ec0a1af0daf398ca6db65cce266f68d3ba1b6a4c52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_03:3 -> audio/generated/de-DE/dialogues/a271f87cf962aa714723e222ca22f1921912a7cdd9a5f145ec2b311e3bc825bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1fe56730-dc0b-58f1-8a6f-a3148c0a92d7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cc9ee9bbbb754a4ec269b76c84e7317162b5ae334f20cd7d39cc2b5441b817b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('512cd9a7-0c6f-562e-baf4-a8779816d23c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1fe56730-dc0b-58f1-8a6f-a3148c0a92d7', 1), '2cc9ee9bbbb754a4ec269b76c84e7317162b5ae334f20cd7d39cc2b5441b817b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a271f87cf962aa714723e222ca22f1921912a7cdd9a5f145ec2b311e3bc825bf.mp3', 1567, '2026-09-13 06:58:57.060426', '178a04d955f783ef85825d420924e6c3f86e981ac48108533648c9f519150234', 'validated', '{"audio_key":"a271f87cf962aa714723e222ca22f1921912a7cdd9a5f145ec2b311e3bc825bf","entity_key":"d_moving_relocation_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"178a04d955f783ef85825d420924e6c3f86e981ac48108533648c9f519150234","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a271f87cf962aa714723e222ca22f1921912a7cdd9a5f145ec2b311e3bc825bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_02:4 -> audio/generated/de-DE/dialogues/a379bf2555b5e05846136aa522b7623685d5222ded8d2178835e490213e67753.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abcd49e7-96e0-5e9d-98f0-1b222148768d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c29e612107443addf529e05552de05558841472d5c494312ee8d0791b97f96a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddfad25e-68e9-50dd-a3f8-dbe420ea5ed4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abcd49e7-96e0-5e9d-98f0-1b222148768d', 1), '5c29e612107443addf529e05552de05558841472d5c494312ee8d0791b97f96a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a379bf2555b5e05846136aa522b7623685d5222ded8d2178835e490213e67753.mp3', 3709, '2026-09-13 06:58:58.208643', '07adf2c12a830fd96d173be3ea12f6e27e4f218fe31e34c754ee4ea2acbfc13f', 'validated', '{"audio_key":"a379bf2555b5e05846136aa522b7623685d5222ded8d2178835e490213e67753","entity_key":"d_doctor_visit_followup_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"07adf2c12a830fd96d173be3ea12f6e27e4f218fe31e34c754ee4ea2acbfc13f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a379bf2555b5e05846136aa522b7623685d5222ded8d2178835e490213e67753.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_01:1 -> audio/generated/de-DE/dialogues/a55cd6dc399417513198621882090e10064798536d9f6f28e92fd5aae813b38f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('065c4349-b176-5339-83ad-334d8f8cc834', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3afee07d44dadbcf94433697f52c72953b0c2a52344e96334641b36487bf02d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1d57e0e-bdb0-5350-9c45-f3ae6ac443a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('065c4349-b176-5339-83ad-334d8f8cc834', 1), '3afee07d44dadbcf94433697f52c72953b0c2a52344e96334641b36487bf02d6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a55cd6dc399417513198621882090e10064798536d9f6f28e92fd5aae813b38f.mp3', 3056, '2026-09-13 06:58:58.202027', 'd3d0405345c1421edd5be1f6ba895db0d28272c7618527df4e81ae54b8300c0e', 'validated', '{"audio_key":"a55cd6dc399417513198621882090e10064798536d9f6f28e92fd5aae813b38f","entity_key":"d_invitations_hosting_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d3d0405345c1421edd5be1f6ba895db0d28272c7618527df4e81ae54b8300c0e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a55cd6dc399417513198621882090e10064798536d9f6f28e92fd5aae813b38f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_03:4 -> audio/generated/de-DE/dialogues/a56cf8ccb3dd17979c19d34e710a1e193792cc415363ee67c95646d4a4a0092b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53d3663a-542d-55a0-897a-3ca9269649fe', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0424bebd4ababfb0f19eb50b439cc576947576b94656d69a1e1de180ec7bdb3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2360a6d5-5caa-5ac0-bd3f-ede3de5d59b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53d3663a-542d-55a0-897a-3ca9269649fe', 1), '0424bebd4ababfb0f19eb50b439cc576947576b94656d69a1e1de180ec7bdb3d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a56cf8ccb3dd17979c19d34e710a1e193792cc415363ee67c95646d4a4a0092b.mp3', 2507, '2026-09-13 06:58:59.286340', '9c5ce8e0fce7320d351bfcb85a53a811291c2646620ea949b1dfe4c5a00674bf', 'validated', '{"audio_key":"a56cf8ccb3dd17979c19d34e710a1e193792cc415363ee67c95646d4a4a0092b","entity_key":"d_home_repairs_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9c5ce8e0fce7320d351bfcb85a53a811291c2646620ea949b1dfe4c5a00674bf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a56cf8ccb3dd17979c19d34e710a1e193792cc415363ee67c95646d4a4a0092b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_01:1 -> audio/generated/de-DE/dialogues/a60c910b8a21a81e74a29bd69666de3060564223948a4eeace02cfd0231fc7a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4064473-9008-5cd1-a87f-49489c231ead', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bd7053c1232f54094a2ccb1f61c19a6e42bc0e11f7e74334ddf7cc748278a3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('962ec62d-7cee-5637-88ac-76f5bbc43074', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4064473-9008-5cd1-a87f-49489c231ead', 1), '6bd7053c1232f54094a2ccb1f61c19a6e42bc0e11f7e74334ddf7cc748278a3e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a60c910b8a21a81e74a29bd69666de3060564223948a4eeace02cfd0231fc7a7.mp3', 2768, '2026-09-13 06:58:59.326860', '41ef82c9aac7ffcef48e987ed712f5bff85693ee80bc029dcef07d7092781968', 'validated', '{"audio_key":"a60c910b8a21a81e74a29bd69666de3060564223948a4eeace02cfd0231fc7a7","entity_key":"d_work_feedback_teamwork_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"41ef82c9aac7ffcef48e987ed712f5bff85693ee80bc029dcef07d7092781968","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a60c910b8a21a81e74a29bd69666de3060564223948a4eeace02cfd0231fc7a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_03:2 -> audio/generated/de-DE/dialogues/a895922c189ca787440333385ca242ca06dd88913042cffd7df5f39fea60255d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('974a3e0e-b741-5dfe-9c37-d066f667303c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45331243438dbe1c650eb95a65c5a4b52a65f1f1cf3cd0273bdcc9ead20d6137'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('485d14fb-5d4d-5183-b88b-5220b061600c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('974a3e0e-b741-5dfe-9c37-d066f667303c', 1), '45331243438dbe1c650eb95a65c5a4b52a65f1f1cf3cd0273bdcc9ead20d6137',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a895922c189ca787440333385ca242ca06dd88913042cffd7df5f39fea60255d.mp3', 1985, '2026-09-13 06:59:00.365230', 'a7fb773b70130aeb09d110a87aaec713d905730a3cb22e19d6d6f51e7c06bc19', 'validated', '{"audio_key":"a895922c189ca787440333385ca242ca06dd88913042cffd7df5f39fea60255d","entity_key":"d_work_feedback_teamwork_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a7fb773b70130aeb09d110a87aaec713d905730a3cb22e19d6d6f51e7c06bc19","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a895922c189ca787440333385ca242ca06dd88913042cffd7df5f39fea60255d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:1 -> audio/generated/de-DE/dialogues/ac667587cc143b3b3245fa958ff35fe275d08cb2102e6e1135a9eb42acb4780f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b829c33d-fb4b-5a7f-b216-80a0ce17d9c7', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '386de244ba5af596200c48ae1f12168fe7f6b3f83fa7029f5cf4e96dc7e9b32e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1470b3e6-a16c-55d7-80dd-c71429856471', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b829c33d-fb4b-5a7f-b216-80a0ce17d9c7', 1), '386de244ba5af596200c48ae1f12168fe7f6b3f83fa7029f5cf4e96dc7e9b32e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac667587cc143b3b3245fa958ff35fe275d08cb2102e6e1135a9eb42acb4780f.mp3', 2168, '2026-09-13 06:59:00.419040', '50d81659f6b8914f542e59038de52a8a0587bebbc204b68b98e6279321c65bb3', 'validated', '{"audio_key":"ac667587cc143b3b3245fa958ff35fe275d08cb2102e6e1135a9eb42acb4780f","entity_key":"d_contracts_subscriptions_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"50d81659f6b8914f542e59038de52a8a0587bebbc204b68b98e6279321c65bb3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ac667587cc143b3b3245fa958ff35fe275d08cb2102e6e1135a9eb42acb4780f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_02:2 -> audio/generated/de-DE/dialogues/b11e99533e98e12f5e970f8457e79d59c3e69de430ba9d622f6f04ee626c88c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cc55cef-ce9a-5ad9-9f02-6f8503b8ffbe', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a9123fbd1706cf3b3177064127a5795acfce893926f81be64089967f41d50eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f680a266-27db-5b6f-8700-0529123e3374', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cc55cef-ce9a-5ad9-9f02-6f8503b8ffbe', 1), '7a9123fbd1706cf3b3177064127a5795acfce893926f81be64089967f41d50eb',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b11e99533e98e12f5e970f8457e79d59c3e69de430ba9d622f6f04ee626c88c3.mp3', 3944, '2026-09-13 06:59:01.582384', '6f788ae9ef4c75986ddad25bade23aa367a5fbb8fa0019d60ced4a04bc27ba29', 'validated', '{"audio_key":"b11e99533e98e12f5e970f8457e79d59c3e69de430ba9d622f6f04ee626c88c3","entity_key":"d_work_feedback_teamwork_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6f788ae9ef4c75986ddad25bade23aa367a5fbb8fa0019d60ced4a04bc27ba29","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b11e99533e98e12f5e970f8457e79d59c3e69de430ba9d622f6f04ee626c88c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_02:1 -> audio/generated/de-DE/dialogues/b49e1b36db3488d85e1b1c4ba011257403d9d44c0972e8d3a424f004d6a21e93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4fb428bb-4fdd-5036-8d92-adda4761bbfe', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9d1cbcf97f3e9057a84469beab34b7cf2d1ef9925df0b0b93490cc2c29e912e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2b73e62-b5da-5926-a4a5-6abfe5f85340', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4fb428bb-4fdd-5036-8d92-adda4761bbfe', 1), 'e9d1cbcf97f3e9057a84469beab34b7cf2d1ef9925df0b0b93490cc2c29e912e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b49e1b36db3488d85e1b1c4ba011257403d9d44c0972e8d3a424f004d6a21e93.mp3', 2507, '2026-09-13 06:59:01.526786', 'd0053142ad7cf9af3578267865a2b2db14721df23995d754d7f6ac3b5eaa363c', 'validated', '{"audio_key":"b49e1b36db3488d85e1b1c4ba011257403d9d44c0972e8d3a424f004d6a21e93","entity_key":"d_city_services_public_places_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d0053142ad7cf9af3578267865a2b2db14721df23995d754d7f6ac3b5eaa363c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b49e1b36db3488d85e1b1c4ba011257403d9d44c0972e8d3a424f004d6a21e93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:3 -> audio/generated/de-DE/dialogues/b680b2436891f0a7334fd6735b9b1b822f353c48c169727c4145afbeae2ea452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3780208d-f752-548d-98c9-f0bca3abe14b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f686ad47fd7031a48587b854e8437bdf515127b8c3c0695f7f2e2d4c6cf61b9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d925f042-e086-5d8b-b03c-f444d8ef7f23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3780208d-f752-548d-98c9-f0bca3abe14b', 1), 'f686ad47fd7031a48587b854e8437bdf515127b8c3c0695f7f2e2d4c6cf61b9e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b680b2436891f0a7334fd6735b9b1b822f353c48c169727c4145afbeae2ea452.mp3', 1253, '2026-09-13 06:59:02.609473', '2ef64689ed9dd5c4b284f3f9a0c44d5ca78b0afc2f32df45a93f4dcf8f30c84a', 'validated', '{"audio_key":"b680b2436891f0a7334fd6735b9b1b822f353c48c169727c4145afbeae2ea452","entity_key":"d_contracts_subscriptions_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2ef64689ed9dd5c4b284f3f9a0c44d5ca78b0afc2f32df45a93f4dcf8f30c84a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b680b2436891f0a7334fd6735b9b1b822f353c48c169727c4145afbeae2ea452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_03:2 -> audio/generated/de-DE/dialogues/b72e26b762a78b2f04f62153ad3a94e9ca792be893fe76edd0e90cb3b0356872.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cae2541a-0552-5b7e-99ef-f905f3b4153a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '846a324f78b3af22d8b02d0a94bfd3cdd51b1b697187e1b64ca7c23d14af92eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd218b1a-af7c-5964-95e8-e8e62ee6c955', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cae2541a-0552-5b7e-99ef-f905f3b4153a', 1), '846a324f78b3af22d8b02d0a94bfd3cdd51b1b697187e1b64ca7c23d14af92eb',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b72e26b762a78b2f04f62153ad3a94e9ca792be893fe76edd0e90cb3b0356872.mp3', 2507, '2026-09-13 06:59:02.695017', '8c80396fd2c5e2afb49045ff6fd504c9a07bd58b56313e70a85169218544cef6', 'validated', '{"audio_key":"b72e26b762a78b2f04f62153ad3a94e9ca792be893fe76edd0e90cb3b0356872","entity_key":"d_home_repairs_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8c80396fd2c5e2afb49045ff6fd504c9a07bd58b56313e70a85169218544cef6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b72e26b762a78b2f04f62153ad3a94e9ca792be893fe76edd0e90cb3b0356872.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_01:2 -> audio/generated/de-DE/dialogues/b83657f7d8dee9d0ddc814ad2a6fab869abf2923fbc0a8025acf0eecc5b2c7f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d0fadb1-5313-5eba-b0f8-4392b278390b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bef8e4b2d3bebc52a7037efbcee735938d876a84d462d5b8612a3710154c957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6222072-99a1-5059-9bca-d2b797776c1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d0fadb1-5313-5eba-b0f8-4392b278390b', 1), '4bef8e4b2d3bebc52a7037efbcee735938d876a84d462d5b8612a3710154c957',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b83657f7d8dee9d0ddc814ad2a6fab869abf2923fbc0a8025acf0eecc5b2c7f8.mp3', 3239, '2026-09-13 06:59:03.774383', '8f504416214c921658cdbf5c6cab1f63253db0bef392a84edd5d6bbd50c85b7e', 'validated', '{"audio_key":"b83657f7d8dee9d0ddc814ad2a6fab869abf2923fbc0a8025acf0eecc5b2c7f8","entity_key":"d_goals_priorities_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8f504416214c921658cdbf5c6cab1f63253db0bef392a84edd5d6bbd50c85b7e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b83657f7d8dee9d0ddc814ad2a6fab869abf2923fbc0a8025acf0eecc5b2c7f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_03:4 -> audio/generated/de-DE/dialogues/be148ea1724ba03c8bde572120019ae91178c98a3dfbf704d71cd0b37ed574f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96108275-c493-5cce-b404-34094fa8e258', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '797709b6e6a59c35ac23a054a473620e0a6d61ab1b0531c1e320c243688f8313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c277398f-ecd5-56c9-bfca-a1d205f04c73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96108275-c493-5cce-b404-34094fa8e258', 1), '797709b6e6a59c35ac23a054a473620e0a6d61ab1b0531c1e320c243688f8313',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/be148ea1724ba03c8bde572120019ae91178c98a3dfbf704d71cd0b37ed574f9.mp3', 2821, '2026-09-13 06:59:03.812478', '9f2583087a2767b6912680bc89574130c243b1988ea1a6789b5f5a5217019c7e', 'validated', '{"audio_key":"be148ea1724ba03c8bde572120019ae91178c98a3dfbf704d71cd0b37ed574f9","entity_key":"d_moving_relocation_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9f2583087a2767b6912680bc89574130c243b1988ea1a6789b5f5a5217019c7e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/be148ea1724ba03c8bde572120019ae91178c98a3dfbf704d71cd0b37ed574f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_03:2 -> audio/generated/de-DE/dialogues/bff868f957568dde2994f02cd9031520732eec362a3476ddaea4224f3b4b1408.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cf051d0-a708-559b-88a3-31ae523db10e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5ead166ef65f5c8bb47099499e6450492b1c86e37a0c58d0fedc375e407949a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8037ee8-f045-5d2e-bf60-2aadfba7d4d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cf051d0-a708-559b-88a3-31ae523db10e', 1), 'f5ead166ef65f5c8bb47099499e6450492b1c86e37a0c58d0fedc375e407949a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bff868f957568dde2994f02cd9031520732eec362a3476ddaea4224f3b4b1408.mp3', 3056, '2026-09-13 06:59:04.937671', 'e132f95844287b77f6738857f97b5aeb8c2589073522f2621bca1255e6f7f8b5', 'validated', '{"audio_key":"bff868f957568dde2994f02cd9031520732eec362a3476ddaea4224f3b4b1408","entity_key":"d_invitations_hosting_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e132f95844287b77f6738857f97b5aeb8c2589073522f2621bca1255e6f7f8b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/bff868f957568dde2994f02cd9031520732eec362a3476ddaea4224f3b4b1408.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:2 -> audio/generated/de-DE/dialogues/c27cf817601c870ead27b2f612aaea144dacfe3bc3179395a9e3344b1c45ba43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12cf34e1-dbbc-560b-aeec-0961f4eb0488', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a480c483557b35fa308eab67965dbc751f6e34337165b2731af6af853e3ac32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21d74a1e-2cd2-5025-aab9-61f367703370', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12cf34e1-dbbc-560b-aeec-0961f4eb0488', 1), '2a480c483557b35fa308eab67965dbc751f6e34337165b2731af6af853e3ac32',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c27cf817601c870ead27b2f612aaea144dacfe3bc3179395a9e3344b1c45ba43.mp3', 2168, '2026-09-13 06:59:04.843388', 'dfa75a6ec1dcd0ebb74493cda060bc0d441a3f21f60a88f6bc69ae42d4a674e4', 'validated', '{"audio_key":"c27cf817601c870ead27b2f612aaea144dacfe3bc3179395a9e3344b1c45ba43","entity_key":"d_contracts_subscriptions_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dfa75a6ec1dcd0ebb74493cda060bc0d441a3f21f60a88f6bc69ae42d4a674e4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c27cf817601c870ead27b2f612aaea144dacfe3bc3179395a9e3344b1c45ba43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_02:4 -> audio/generated/de-DE/dialogues/c445e6aafd8a2fd028f16d2acaeaf796c48665238662db87abd9339098295bd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f78a467-7daf-5eb7-8648-79662527dd74', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8c4b74d28b77de7adeb08da82f08f6a94594ad6019bff2b92c982a01a25bee2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('572db8ee-42d7-5654-9f55-e598d192ccdc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f78a467-7daf-5eb7-8648-79662527dd74', 1), 'b8c4b74d28b77de7adeb08da82f08f6a94594ad6019bff2b92c982a01a25bee2',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c445e6aafd8a2fd028f16d2acaeaf796c48665238662db87abd9339098295bd9.mp3', 2037, '2026-09-13 06:59:05.914108', '6b919aece1e49980a2066e58efa0e84a176bc2ad0a9af2a5a9a8a04fe70c1c20', 'validated', '{"audio_key":"c445e6aafd8a2fd028f16d2acaeaf796c48665238662db87abd9339098295bd9","entity_key":"d_goals_priorities_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"6b919aece1e49980a2066e58efa0e84a176bc2ad0a9af2a5a9a8a04fe70c1c20","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c445e6aafd8a2fd028f16d2acaeaf796c48665238662db87abd9339098295bd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_03:1 -> audio/generated/de-DE/dialogues/c57101ed865859b2db9935052df50d69eb49629ef7114b2ff6e3f4b8edf3c8d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8561fc9-2daa-5b5b-8743-8185bfc2f675', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1047218af238c95424e405d72ee9c51bf5ed11305348e0b9442f9c2924c1310'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b404cf8d-5a02-5615-aa72-368b2387fd0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8561fc9-2daa-5b5b-8743-8185bfc2f675', 1), 'f1047218af238c95424e405d72ee9c51bf5ed11305348e0b9442f9c2924c1310',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c57101ed865859b2db9935052df50d69eb49629ef7114b2ff6e3f4b8edf3c8d6.mp3', 3108, '2026-09-13 06:59:06.071062', '72c4a7a5c279b715ade5f72d24412bd70eeea106f6365b531bc467e40716332c', 'validated', '{"audio_key":"c57101ed865859b2db9935052df50d69eb49629ef7114b2ff6e3f4b8edf3c8d6","entity_key":"d_goals_priorities_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"72c4a7a5c279b715ade5f72d24412bd70eeea106f6365b531bc467e40716332c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c57101ed865859b2db9935052df50d69eb49629ef7114b2ff6e3f4b8edf3c8d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_03:3 -> audio/generated/de-DE/dialogues/c5c394685b8698101c08e63fee325d789b7c6947c6abc7dd7063a11c319edd8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4fa11d46-943b-5ba2-8142-82142bd98dff', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27dc1289420d60247365188fc48a264328b92a36b215de30dc6e5d0c4e0643e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b62d2569-fb6d-5f49-8c04-27bbcdf1f24c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4fa11d46-943b-5ba2-8142-82142bd98dff', 1), '27dc1289420d60247365188fc48a264328b92a36b215de30dc6e5d0c4e0643e2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c5c394685b8698101c08e63fee325d789b7c6947c6abc7dd7063a11c319edd8e.mp3', 2821, '2026-09-13 06:59:07.069737', '1c6fc6bab906d0c7ab582b77b6b9e7543ca168f85b185e3657a6b27c8ec69e86', 'validated', '{"audio_key":"c5c394685b8698101c08e63fee325d789b7c6947c6abc7dd7063a11c319edd8e","entity_key":"d_invitations_hosting_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1c6fc6bab906d0c7ab582b77b6b9e7543ca168f85b185e3657a6b27c8ec69e86","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c5c394685b8698101c08e63fee325d789b7c6947c6abc7dd7063a11c319edd8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_03:4 -> audio/generated/de-DE/dialogues/c6285f91f369f7afa7c4fdc8d049d8d05259c98229e8886e672ba6aa38e95c58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e28b39c5-850b-553d-b4c9-1c7a812fe4f8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f766da4d3ba961c46b8767e412ad9519454d7eff84aa560b5834f0c66fa3fda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64be7db9-02bd-530a-8a86-1042389acd7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e28b39c5-850b-553d-b4c9-1c7a812fe4f8', 1), '8f766da4d3ba961c46b8767e412ad9519454d7eff84aa560b5834f0c66fa3fda',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6285f91f369f7afa7c4fdc8d049d8d05259c98229e8886e672ba6aa38e95c58.mp3', 5381, '2026-09-13 06:59:07.544103', 'b71c76d62d9ed7b7031d351424cae690487e4a3a1edf29aebb7a73f7ae0d8ca3', 'validated', '{"audio_key":"c6285f91f369f7afa7c4fdc8d049d8d05259c98229e8886e672ba6aa38e95c58","entity_key":"d_goals_priorities_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b71c76d62d9ed7b7031d351424cae690487e4a3a1edf29aebb7a73f7ae0d8ca3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c6285f91f369f7afa7c4fdc8d049d8d05259c98229e8886e672ba6aa38e95c58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_priorities_01:3 -> audio/generated/de-DE/dialogues/c941dbcda3c201807870839da47eb400dd9befc96782557c925d352da8aa8902.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc80080b-7673-574e-857a-f69c11c8abc1', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_priorities_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ce503107d08d5aefefad881ab3fee4ace8b70f8f5cb342589bf07d227f5c9ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04bfbf98-46b7-5233-a70d-d38a54556e4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc80080b-7673-574e-857a-f69c11c8abc1', 1), '3ce503107d08d5aefefad881ab3fee4ace8b70f8f5cb342589bf07d227f5c9ff',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c941dbcda3c201807870839da47eb400dd9befc96782557c925d352da8aa8902.mp3', 1515, '2026-09-13 06:59:08.041178', '930ac44133332d18c236c0a3d601ff030186cb5f6109504978e54d6df72085ba', 'validated', '{"audio_key":"c941dbcda3c201807870839da47eb400dd9befc96782557c925d352da8aa8902","entity_key":"d_goals_priorities_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"930ac44133332d18c236c0a3d601ff030186cb5f6109504978e54d6df72085ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c941dbcda3c201807870839da47eb400dd9befc96782557c925d352da8aa8902.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_02:3 -> audio/generated/de-DE/dialogues/cefaffe7515b267fea82c83c558c577647b9e7bd73b908b5de5221786aa83e64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6e899de-c374-5a00-8b24-08aeb04679ca', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf5a22411732f6faaf85dd67ed207b1f6a905d3bd3210e443a046befceeaebf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29f585d6-1b4f-568a-a287-c07a1199cd54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6e899de-c374-5a00-8b24-08aeb04679ca', 1), 'cf5a22411732f6faaf85dd67ed207b1f6a905d3bd3210e443a046befceeaebf0',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cefaffe7515b267fea82c83c558c577647b9e7bd73b908b5de5221786aa83e64.mp3', 2324, '2026-09-13 06:59:08.645403', 'ccef975d734d98f60f5a64f101ffa975bde7cf148aed2631f89f8e8b5375cba0', 'validated', '{"audio_key":"cefaffe7515b267fea82c83c558c577647b9e7bd73b908b5de5221786aa83e64","entity_key":"d_work_feedback_teamwork_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ccef975d734d98f60f5a64f101ffa975bde7cf148aed2631f89f8e8b5375cba0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cefaffe7515b267fea82c83c558c577647b9e7bd73b908b5de5221786aa83e64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_01:4 -> audio/generated/de-DE/dialogues/cf0daa7bad9be2f0a8100c71f4fae4a7fe62d82fdaef709178986c1905e78f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b99efd3-d777-5e6a-a476-a30b42ff96b8', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebc29ab71e7c8cd55a99e0eac65b90269c9dc823d75e421e2da1b92c4a99f8d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a75eaa3-c833-5bf3-98b2-29a5c3325c44', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b99efd3-d777-5e6a-a476-a30b42ff96b8', 1), 'ebc29ab71e7c8cd55a99e0eac65b90269c9dc823d75e421e2da1b92c4a99f8d7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf0daa7bad9be2f0a8100c71f4fae4a7fe62d82fdaef709178986c1905e78f01.mp3', 2351, '2026-09-13 06:59:09.138722', '9f8e46c9f9fae035871bf7ddc323a5e0104e0f3489da826c5a0c6f32b7f6cc39', 'validated', '{"audio_key":"cf0daa7bad9be2f0a8100c71f4fae4a7fe62d82fdaef709178986c1905e78f01","entity_key":"d_city_services_public_places_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9f8e46c9f9fae035871bf7ddc323a5e0104e0f3489da826c5a0c6f32b7f6cc39","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cf0daa7bad9be2f0a8100c71f4fae4a7fe62d82fdaef709178986c1905e78f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_01:3 -> audio/generated/de-DE/dialogues/cfc62d38ff277fdcc47b4659d621e23123a3adb65a0ad1c1a002d724fcc4dd68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b598874-3bb2-5a41-b110-8c4b8a103add', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd028a632d3f46d8607146cc159b675d002e88735909399af5ce68e9c42aefb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b155b22-4621-5a24-b336-9bba715fa65c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b598874-3bb2-5a41-b110-8c4b8a103add', 1), 'fd028a632d3f46d8607146cc159b675d002e88735909399af5ce68e9c42aefb9',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cfc62d38ff277fdcc47b4659d621e23123a3adb65a0ad1c1a002d724fcc4dd68.mp3', 1567, '2026-09-13 06:59:09.650498', '7a4ed628f19d2d6dcb8cd08aafcc054f88c9d9339a1a23de6286bc1a55e201cb', 'validated', '{"audio_key":"cfc62d38ff277fdcc47b4659d621e23123a3adb65a0ad1c1a002d724fcc4dd68","entity_key":"d_online_accounts_privacy_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7a4ed628f19d2d6dcb8cd08aafcc054f88c9d9339a1a23de6286bc1a55e201cb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cfc62d38ff277fdcc47b4659d621e23123a3adb65a0ad1c1a002d724fcc4dd68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_02:4 -> audio/generated/de-DE/dialogues/d00a9f759d23f9257a4261e26be0e68df91e314de9d6f3a5c34a747def829841.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b0bd80a-960d-5e97-9817-358d2770fd17', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6111505ca8a3db068428740dacf1e589cb99673cde4c2e955aa3ac98d239df81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('214d0573-bb6f-5977-9148-5f41a130b2ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b0bd80a-960d-5e97-9817-358d2770fd17', 1), '6111505ca8a3db068428740dacf1e589cb99673cde4c2e955aa3ac98d239df81',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d00a9f759d23f9257a4261e26be0e68df91e314de9d6f3a5c34a747def829841.mp3', 1697, '2026-09-13 06:59:10.129958', '4cfc8364a508af1d852f5e3d1449d422690cf3f8bddcc9e770288a1e7493478e', 'validated', '{"audio_key":"d00a9f759d23f9257a4261e26be0e68df91e314de9d6f3a5c34a747def829841","entity_key":"d_invitations_hosting_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"4cfc8364a508af1d852f5e3d1449d422690cf3f8bddcc9e770288a1e7493478e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d00a9f759d23f9257a4261e26be0e68df91e314de9d6f3a5c34a747def829841.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_02:1 -> audio/generated/de-DE/dialogues/d13a0b01beda06d25a319974b1415e9365d360533f78df0223a86b243022f650.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf9dc801-067f-5858-af5f-49945a1742fd', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f7f1641b4588da0052b4500b5b2bfe2dcc0fa81b9ba05de2006f5d034cbbb72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2050935c-48c2-56db-86c2-cf82a875ade0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf9dc801-067f-5858-af5f-49945a1742fd', 1), '2f7f1641b4588da0052b4500b5b2bfe2dcc0fa81b9ba05de2006f5d034cbbb72',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d13a0b01beda06d25a319974b1415e9365d360533f78df0223a86b243022f650.mp3', 2351, '2026-09-13 06:59:10.716647', '90825958b92bc09c5217cd9a9730b23f961a2775a13fcc7d3977e0de634f4076', 'validated', '{"audio_key":"d13a0b01beda06d25a319974b1415e9365d360533f78df0223a86b243022f650","entity_key":"d_moving_relocation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90825958b92bc09c5217cd9a9730b23f961a2775a13fcc7d3977e0de634f4076","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d13a0b01beda06d25a319974b1415e9365d360533f78df0223a86b243022f650.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_city_services_public_places_01:1 -> audio/generated/de-DE/dialogues/d2f1acff48c088e7df92df01688f568cf220ff6a54109b56a22b79b9cdbb7390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6a9307d-bd41-50d4-91f1-849dc30b42d2', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_city_services_public_places_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43b5568eac8ba1de978b06b6454a3c5b04b315eaa5e0ee5af0602b9aceee2a54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83fc7efe-6c95-5ca0-8d84-0b56a2d87502', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6a9307d-bd41-50d4-91f1-849dc30b42d2', 1), '43b5568eac8ba1de978b06b6454a3c5b04b315eaa5e0ee5af0602b9aceee2a54',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2f1acff48c088e7df92df01688f568cf220ff6a54109b56a22b79b9cdbb7390.mp3', 2925, '2026-09-13 06:59:11.244867', '58ead17aa4ebc385a91a9de3ed0d5298d7ccada0cc3bee126761fbc15cb5632d', 'validated', '{"audio_key":"d2f1acff48c088e7df92df01688f568cf220ff6a54109b56a22b79b9cdbb7390","entity_key":"d_city_services_public_places_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"58ead17aa4ebc385a91a9de3ed0d5298d7ccada0cc3bee126761fbc15cb5632d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d2f1acff48c088e7df92df01688f568cf220ff6a54109b56a22b79b9cdbb7390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_01:3 -> audio/generated/de-DE/dialogues/d309748c8f3fccd8f0357481ebd098486807fc6d40c198ecc38c672eaf8dab6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dca5ff29-ef30-558e-b833-79a094859ebb', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e6b5678785c58bb32aa098017ade384e434627520463fa8431a8d59e20bb2d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15eb550f-d1ac-5deb-bc8e-87244ffc92f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dca5ff29-ef30-558e-b833-79a094859ebb', 1), '2e6b5678785c58bb32aa098017ade384e434627520463fa8431a8d59e20bb2d0',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d309748c8f3fccd8f0357481ebd098486807fc6d40c198ecc38c672eaf8dab6f.mp3', 2742, '2026-09-13 06:59:11.814840', 'cfda94c72c7bde9c9ca2c54a5cc7f5c5bb92014755cc599e9c961574fd0ecd06', 'validated', '{"audio_key":"d309748c8f3fccd8f0357481ebd098486807fc6d40c198ecc38c672eaf8dab6f","entity_key":"d_exams_learning_stress_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cfda94c72c7bde9c9ca2c54a5cc7f5c5bb92014755cc599e9c961574fd0ecd06","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d309748c8f3fccd8f0357481ebd098486807fc6d40c198ecc38c672eaf8dab6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_online_accounts_privacy_03:1 -> audio/generated/de-DE/dialogues/d5fdad42eb9f06138b094b6bc27308b7ad53747826f863b65904e2e5298257c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4420129-9184-5eee-82c5-c2deea6679d7', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_online_accounts_privacy_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2bcc2a6741e087d34ce8b77e92dc7b588a3be900f005ca5abaf2217b84c2692'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26745744-861e-53d3-8eed-f9c14da7c5d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4420129-9184-5eee-82c5-c2deea6679d7', 1), 'a2bcc2a6741e087d34ce8b77e92dc7b588a3be900f005ca5abaf2217b84c2692',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d5fdad42eb9f06138b094b6bc27308b7ad53747826f863b65904e2e5298257c6.mp3', 2768, '2026-09-13 06:59:12.319722', '0cfc31e32293f9d2b7ed9166b5f1a5d74d80ddba1147d7aa31b5953dbdf586e4', 'validated', '{"audio_key":"d5fdad42eb9f06138b094b6bc27308b7ad53747826f863b65904e2e5298257c6","entity_key":"d_online_accounts_privacy_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0cfc31e32293f9d2b7ed9166b5f1a5d74d80ddba1147d7aa31b5953dbdf586e4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d5fdad42eb9f06138b094b6bc27308b7ad53747826f863b65904e2e5298257c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_03:2 -> audio/generated/de-DE/dialogues/d62f99626d03c3d2210ed7ad855032cef99a90d8cb10c6b02e6f2b9e9d8478dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d0cbc1f-70a2-52ae-85d8-6a36448c16df', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43fde9a0be0aee7e424fc0f15321942d534ffa3637e132cb45ca4c45c6b7495d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bb09b7c-95fd-56e1-99f3-a6a4f0ae9b84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d0cbc1f-70a2-52ae-85d8-6a36448c16df', 1), '43fde9a0be0aee7e424fc0f15321942d534ffa3637e132cb45ca4c45c6b7495d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d62f99626d03c3d2210ed7ad855032cef99a90d8cb10c6b02e6f2b9e9d8478dd.mp3', 2533, '2026-09-13 06:59:12.931856', '4f14505c0686968fa5ddbd1b8ed59a6775ebc8a84fd6a8ced7d355f2ccbfe57c', 'validated', '{"audio_key":"d62f99626d03c3d2210ed7ad855032cef99a90d8cb10c6b02e6f2b9e9d8478dd","entity_key":"d_exams_learning_stress_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4f14505c0686968fa5ddbd1b8ed59a6775ebc8a84fd6a8ced7d355f2ccbfe57c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d62f99626d03c3d2210ed7ad855032cef99a90d8cb10c6b02e6f2b9e9d8478dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_01:2 -> audio/generated/de-DE/dialogues/d7dbcea602ea327fe907198ebfcad5e4b67833c0486018a5327636c91efb7f95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc6264ef-f54e-5dfa-bc38-6fc513bc7afa', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d0b47e7dc1782b20766e076a980cbb35c7374ccec2382d905ceae57765bcb2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24bc5161-d08c-5226-94ec-4a244992ab9d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc6264ef-f54e-5dfa-bc38-6fc513bc7afa', 1), '2d0b47e7dc1782b20766e076a980cbb35c7374ccec2382d905ceae57765bcb2c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d7dbcea602ea327fe907198ebfcad5e4b67833c0486018a5327636c91efb7f95.mp3', 1985, '2026-09-13 06:59:13.337771', 'f829103a84dbfc2962ed49dfa04d8af2fc9af30d851547ce7aa2f273197cf0ba', 'validated', '{"audio_key":"d7dbcea602ea327fe907198ebfcad5e4b67833c0486018a5327636c91efb7f95","entity_key":"d_work_feedback_teamwork_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f829103a84dbfc2962ed49dfa04d8af2fc9af30d851547ce7aa2f273197cf0ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d7dbcea602ea327fe907198ebfcad5e4b67833c0486018a5327636c91efb7f95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_03:4 -> audio/generated/de-DE/dialogues/d92657c56fb899726e8cb7fd33d1c1391470de96208089cd2e3890a1305f4bf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('206d6826-34b2-59fd-b337-09543937dc1c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e892a95a0bcd2bc53517837723bbb06e17391f0f3cb1dd5ba11e45e8dbbf685c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b27f3277-4768-575f-b472-d488debf4293', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('206d6826-34b2-59fd-b337-09543937dc1c', 1), 'e892a95a0bcd2bc53517837723bbb06e17391f0f3cb1dd5ba11e45e8dbbf685c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d92657c56fb899726e8cb7fd33d1c1391470de96208089cd2e3890a1305f4bf8.mp3', 2586, '2026-09-13 06:59:14.019377', '8a233bf4b602a80f72925f495067c43d7433e652bb190045ce42491838576217', 'validated', '{"audio_key":"d92657c56fb899726e8cb7fd33d1c1391470de96208089cd2e3890a1305f4bf8","entity_key":"d_exams_learning_stress_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8a233bf4b602a80f72925f495067c43d7433e652bb190045ce42491838576217","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d92657c56fb899726e8cb7fd33d1c1391470de96208089cd2e3890a1305f4bf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_repairs_02:3 -> audio/generated/de-DE/dialogues/dc9e847e3c6cc39502fdc91bf1593cb5b59026737f3732a022a500cfe7424b4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f37e5d5b-e14a-5161-a7f8-6dd5371ea293', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_repairs_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34e54798771d4e2ba483daa5f0c2c8bfbe49d714ec19e9c5b8de81a525e55bba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26e8ce78-a392-50db-a1eb-2d45fa4b9ffa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f37e5d5b-e14a-5161-a7f8-6dd5371ea293', 1), '34e54798771d4e2ba483daa5f0c2c8bfbe49d714ec19e9c5b8de81a525e55bba',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc9e847e3c6cc39502fdc91bf1593cb5b59026737f3732a022a500cfe7424b4d.mp3', 2638, '2026-09-13 06:59:14.467023', '327d18aabbb55a42bceb5d50a192103c99f06695cdfd67eb3981590c72e666a4', 'validated', '{"audio_key":"dc9e847e3c6cc39502fdc91bf1593cb5b59026737f3732a022a500cfe7424b4d","entity_key":"d_home_repairs_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"327d18aabbb55a42bceb5d50a192103c99f06695cdfd67eb3981590c72e666a4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dc9e847e3c6cc39502fdc91bf1593cb5b59026737f3732a022a500cfe7424b4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_03:2 -> audio/generated/de-DE/dialogues/df1a7eed5c54fa4ead52d04aa60a9c7a9ddef14818311d343a710cfa390d8e5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee5b0378-bbe7-51ce-a64d-b8cfcacf33b4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dfce729bdc7e27156f763609fca94bd9c3bafe141f3bf6f8e6485d36447d3b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1299a73b-bddd-566a-81f6-685cb097e853', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee5b0378-bbe7-51ce-a64d-b8cfcacf33b4', 1), '5dfce729bdc7e27156f763609fca94bd9c3bafe141f3bf6f8e6485d36447d3b6',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df1a7eed5c54fa4ead52d04aa60a9c7a9ddef14818311d343a710cfa390d8e5e.mp3', 4257, '2026-09-13 06:59:15.306503', 'cdad912c5b9e1865665a7235badf3e2f55622233aa6c12d7a64e2c6f2d61de4c', 'validated', '{"audio_key":"df1a7eed5c54fa4ead52d04aa60a9c7a9ddef14818311d343a710cfa390d8e5e","entity_key":"d_doctor_visit_followup_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cdad912c5b9e1865665a7235badf3e2f55622233aa6c12d7a64e2c6f2d61de4c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/df1a7eed5c54fa4ead52d04aa60a9c7a9ddef14818311d343a710cfa390d8e5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_03:3 -> audio/generated/de-DE/dialogues/df2e073e6d832021f4aca451287a1417ec416b84fcec4cdf51c33a9c79a1514e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b8d0f17-0162-5cea-be26-05eb90055059', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c008bb14e08e8f6582fe142d86efc391a3e896577b2bb8bb0c4ef55a263dad93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2790bf9-f30e-573d-b7e6-4cfafb0086e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b8d0f17-0162-5cea-be26-05eb90055059', 1), 'c008bb14e08e8f6582fe142d86efc391a3e896577b2bb8bb0c4ef55a263dad93',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df2e073e6d832021f4aca451287a1417ec416b84fcec4cdf51c33a9c79a1514e.mp3', 2037, '2026-09-13 06:59:15.550016', 'ece84ff8b44ed98bbe16eb32c80754c0bc817ebc87dc49404fbf189866bbf66d', 'validated', '{"audio_key":"df2e073e6d832021f4aca451287a1417ec416b84fcec4cdf51c33a9c79a1514e","entity_key":"d_exams_learning_stress_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ece84ff8b44ed98bbe16eb32c80754c0bc817ebc87dc49404fbf189866bbf66d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/df2e073e6d832021f4aca451287a1417ec416b84fcec4cdf51c33a9c79a1514e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_03:1 -> audio/generated/de-DE/dialogues/e15108371e3f383f91991a4ec5d48d021e68d939c8c48c7e4886ffd3520ff377.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01883727-4605-50fe-8b68-f903e3da164c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cf1e90105e1257f2be65445f29d76310974caf001b80a9fa9d062f16d800b2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06dea4e4-ceb7-5d4b-b429-9bdcf8040235', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01883727-4605-50fe-8b68-f903e3da164c', 1), '9cf1e90105e1257f2be65445f29d76310974caf001b80a9fa9d062f16d800b2d',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e15108371e3f383f91991a4ec5d48d021e68d939c8c48c7e4886ffd3520ff377.mp3', 3108, '2026-09-13 06:59:16.499947', '6a39fa69634de4c8fa07e89a0cce91a769b094bb8da39ad263082ca790552fe4', 'validated', '{"audio_key":"e15108371e3f383f91991a4ec5d48d021e68d939c8c48c7e4886ffd3520ff377","entity_key":"d_work_feedback_teamwork_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6a39fa69634de4c8fa07e89a0cce91a769b094bb8da39ad263082ca790552fe4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e15108371e3f383f91991a4ec5d48d021e68d939c8c48c7e4886ffd3520ff377.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_01:1 -> audio/generated/de-DE/dialogues/e4efc0852509c0b9487fb97fc067adb380b2b6aa7786d2452cdc0d07ac8265d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a499a62-7b1e-595a-a23b-19cbc0fad281', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f454ad23cd204050f8ec7f56f03e99b255cc51be3c7a069c90521d1c29d7b086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8d73b6a-6935-58d7-b37d-6ea0cf279897', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a499a62-7b1e-595a-a23b-19cbc0fad281', 1), 'f454ad23cd204050f8ec7f56f03e99b255cc51be3c7a069c90521d1c29d7b086',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e4efc0852509c0b9487fb97fc067adb380b2b6aa7786d2452cdc0d07ac8265d6.mp3', 2168, '2026-09-13 06:59:16.757748', 'e9482b75346de233ca0da067bd397c46aa7b2935aa835c86d40f920f7e57400c', 'validated', '{"audio_key":"e4efc0852509c0b9487fb97fc067adb380b2b6aa7786d2452cdc0d07ac8265d6","entity_key":"d_exams_learning_stress_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e9482b75346de233ca0da067bd397c46aa7b2935aa835c86d40f920f7e57400c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e4efc0852509c0b9487fb97fc067adb380b2b6aa7786d2452cdc0d07ac8265d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_moving_relocation_02:3 -> audio/generated/de-DE/dialogues/e5e5c948b58f5a24f204b20df9fbb1143126f63633beb5b2fc5a083eedb96908.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa05dfe8-4ee2-5557-a55c-3b510ca6d005', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_moving_relocation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa4f26339546103c9cbb0baf12dec4583fdbe485e89b0edf571be1537158145d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c3ca83f-5845-55e3-b913-9430673bf75f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa05dfe8-4ee2-5557-a55c-3b510ca6d005', 1), 'aa4f26339546103c9cbb0baf12dec4583fdbe485e89b0edf571be1537158145d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e5e5c948b58f5a24f204b20df9fbb1143126f63633beb5b2fc5a083eedb96908.mp3', 1515, '2026-09-13 06:59:17.486991', '50948b820b437ace07ec6caba079f9fc84c8868588e87d0b4866559d4b58e7ee', 'validated', '{"audio_key":"e5e5c948b58f5a24f204b20df9fbb1143126f63633beb5b2fc5a083eedb96908","entity_key":"d_moving_relocation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"50948b820b437ace07ec6caba079f9fc84c8868588e87d0b4866559d4b58e7ee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e5e5c948b58f5a24f204b20df9fbb1143126f63633beb5b2fc5a083eedb96908.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:3 -> audio/generated/de-DE/dialogues/e73c596be82ebd11962c7ac784ff30d557637f287f2a71dc54e321f483270040.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5006563-55ec-515e-a55f-3474a419f0f7', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10ce842d5bee59b8c0562b44dd971ae4b9d0df201ebdc50bb0518cfbc0a5a068'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8aca0bf2-69c4-503b-8859-7f2ecdfef481', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5006563-55ec-515e-a55f-3474a419f0f7', 1), '10ce842d5bee59b8c0562b44dd971ae4b9d0df201ebdc50bb0518cfbc0a5a068',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e73c596be82ebd11962c7ac784ff30d557637f287f2a71dc54e321f483270040.mp3', 1750, '2026-09-13 06:59:17.796164', '2d9fe57db0123cfa649c69db362232c5dd71b8ec77b257494a0106c4d1850ad0', 'validated', '{"audio_key":"e73c596be82ebd11962c7ac784ff30d557637f287f2a71dc54e321f483270040","entity_key":"d_contracts_subscriptions_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d9fe57db0123cfa649c69db362232c5dd71b8ec77b257494a0106c4d1850ad0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e73c596be82ebd11962c7ac784ff30d557637f287f2a71dc54e321f483270040.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:4 -> audio/generated/de-DE/dialogues/e77415fe325b024439a2c6cbd450babf9d946ef3a0d0528db158750fcbecfd21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9bbbff5f-f2b0-5f17-b3a3-f3f5b74ecd9d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e6869fdfaec1f94f86472a54b17843966ac5a0745ddcbf39fa17aa262372adf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de1e924e-2997-5bc8-9004-93f2282c4d89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9bbbff5f-f2b0-5f17-b3a3-f3f5b74ecd9d', 1), '3e6869fdfaec1f94f86472a54b17843966ac5a0745ddcbf39fa17aa262372adf',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e77415fe325b024439a2c6cbd450babf9d946ef3a0d0528db158750fcbecfd21.mp3', 2168, '2026-09-13 06:59:18.522826', 'ed4bd85e0a07d64c563006954b3b6058865872ce32c291862fe0f5dac6c36d09', 'validated', '{"audio_key":"e77415fe325b024439a2c6cbd450babf9d946ef3a0d0528db158750fcbecfd21","entity_key":"d_contracts_subscriptions_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ed4bd85e0a07d64c563006954b3b6058865872ce32c291862fe0f5dac6c36d09","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e77415fe325b024439a2c6cbd450babf9d946ef3a0d0528db158750fcbecfd21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_03:3 -> audio/generated/de-DE/dialogues/e8a8193adf8e93ea66d02fe69e7e1f8b02b3d3dfc1ad3966c6daf5b072b885d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ea7a902-8f21-559b-9dde-a0ef3b4be057', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3e0e9f559a2f16b6f8ed55b60d6622d999c50497cfe2e2367c2503815950403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f113cb5-70a3-557b-bbd6-c4c91101def5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ea7a902-8f21-559b-9dde-a0ef3b4be057', 1), 'a3e0e9f559a2f16b6f8ed55b60d6622d999c50497cfe2e2367c2503815950403',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8a8193adf8e93ea66d02fe69e7e1f8b02b3d3dfc1ad3966c6daf5b072b885d4.mp3', 1149, '2026-09-13 06:59:18.743653', 'f4ea8954a03c9186d6960cf6729220b3fe6016b0b4376c1a48f9ccf9668b51ad', 'validated', '{"audio_key":"e8a8193adf8e93ea66d02fe69e7e1f8b02b3d3dfc1ad3966c6daf5b072b885d4","entity_key":"d_work_feedback_teamwork_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f4ea8954a03c9186d6960cf6729220b3fe6016b0b4376c1a48f9ccf9668b51ad","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e8a8193adf8e93ea66d02fe69e7e1f8b02b3d3dfc1ad3966c6daf5b072b885d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:1 -> audio/generated/de-DE/dialogues/eb105a18b14f421b423933292dadca8f4f53d5e2d44912082f8eb4e76ef5d5dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68fe0be6-c7e6-596d-920f-d1befe85b0c7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '551528841be1205d0f877f79671b677978bfc451773a961b4057a06a40a5674b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c286e8d-ed91-572c-b16c-dbd8702f42ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68fe0be6-c7e6-596d-920f-d1befe85b0c7', 1), '551528841be1205d0f877f79671b677978bfc451773a961b4057a06a40a5674b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb105a18b14f421b423933292dadca8f4f53d5e2d44912082f8eb4e76ef5d5dc.mp3', 1906, '2026-09-13 06:59:19.609547', '7c466d08e00c3a62919b29840a5a171b55eb204db7ed0a3aeb5a29396013a2f0', 'validated', '{"audio_key":"eb105a18b14f421b423933292dadca8f4f53d5e2d44912082f8eb4e76ef5d5dc","entity_key":"d_contracts_subscriptions_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7c466d08e00c3a62919b29840a5a171b55eb204db7ed0a3aeb5a29396013a2f0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/eb105a18b14f421b423933292dadca8f4f53d5e2d44912082f8eb4e76ef5d5dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_doctor_visit_followup_02:1 -> audio/generated/de-DE/dialogues/f25bf17b67901ea42e179be328e5e9e2b3f670c79702c1a16f16b1830282aa1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bba0632-db0f-5001-abd0-80da88d7c01f', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_doctor_visit_followup_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da4105ac0a312e03b3b3f7721515768adbe926d872226b00eb893e1483e3ee66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72294af6-1ead-5e6e-b3f4-3a2e773a4e2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bba0632-db0f-5001-abd0-80da88d7c01f', 1), 'da4105ac0a312e03b3b3f7721515768adbe926d872226b00eb893e1483e3ee66',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f25bf17b67901ea42e179be328e5e9e2b3f670c79702c1a16f16b1830282aa1d.mp3', 1384, '2026-09-13 06:59:19.714447', '8df6a4dcce55078d818a8f8609afd78c1ea98d5a8f529f7e195398c5c6756ab0', 'validated', '{"audio_key":"f25bf17b67901ea42e179be328e5e9e2b3f670c79702c1a16f16b1830282aa1d","entity_key":"d_doctor_visit_followup_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8df6a4dcce55078d818a8f8609afd78c1ea98d5a8f529f7e195398c5c6756ab0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f25bf17b67901ea42e179be328e5e9e2b3f670c79702c1a16f16b1830282aa1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_invitations_hosting_03:4 -> audio/generated/de-DE/dialogues/f469c253b16d73a8a0bf660679f89f204200532bc299695fa312769431f113db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('762767a0-3e8f-5471-a0cd-3da9c50908fe', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_invitations_hosting_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6b42c79893a994afc2b3a9ef6bf43612dd351a41e768a6a99ac7f7563e5924d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58d71877-5787-542c-88f6-238d5b72ab29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('762767a0-3e8f-5471-a0cd-3da9c50908fe', 1), 'a6b42c79893a994afc2b3a9ef6bf43612dd351a41e768a6a99ac7f7563e5924d',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f469c253b16d73a8a0bf660679f89f204200532bc299695fa312769431f113db.mp3', 2037, '2026-09-13 06:59:20.666346', '71c091189391694b99516c8496ebd46aab9f521d81d111b270009e0bed0d6251', 'validated', '{"audio_key":"f469c253b16d73a8a0bf660679f89f204200532bc299695fa312769431f113db","entity_key":"d_invitations_hosting_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"71c091189391694b99516c8496ebd46aab9f521d81d111b270009e0bed0d6251","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f469c253b16d73a8a0bf660679f89f204200532bc299695fa312769431f113db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_exams_learning_stress_02:3 -> audio/generated/de-DE/dialogues/f7991953fb60535172dbe4366c11190d960b7967163c2ec6dda3b0f67ddb681e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dbd6be42-92bc-56aa-a5b8-fa0c23e7c0b8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_exams_learning_stress_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19ef4b19b5557b41b32f45bbfdd4b53c180d84c0bce777879b21f8f7b9cdb955'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cfb9a2f-97ae-504f-8841-a78629e2e420', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dbd6be42-92bc-56aa-a5b8-fa0c23e7c0b8', 1), '19ef4b19b5557b41b32f45bbfdd4b53c180d84c0bce777879b21f8f7b9cdb955',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7991953fb60535172dbe4366c11190d960b7967163c2ec6dda3b0f67ddb681e.mp3', 2351, '2026-09-13 06:59:20.782647', '722760ab6aeb66e488ef4576493ae7a163328e5efb240d3adc87127d74df839d', 'validated', '{"audio_key":"f7991953fb60535172dbe4366c11190d960b7967163c2ec6dda3b0f67ddb681e","entity_key":"d_exams_learning_stress_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"722760ab6aeb66e488ef4576493ae7a163328e5efb240d3adc87127d74df839d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f7991953fb60535172dbe4366c11190d960b7967163c2ec6dda3b0f67ddb681e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_feedback_teamwork_02:4 -> audio/generated/de-DE/dialogues/fb2dce96fd693ac028e3f02590c9517f2d5f92a6d00aa913501e26b9daded724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e298c6bf-aaa9-57df-8300-08355acd825a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_feedback_teamwork_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d137931b2ad69a5de93f2bb1cef83f823e9a70f1d94e1cdb3d42498fa68272c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f747f995-07ed-572b-906f-981ca024ca78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e298c6bf-aaa9-57df-8300-08355acd825a', 1), '5d137931b2ad69a5de93f2bb1cef83f823e9a70f1d94e1cdb3d42498fa68272c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fb2dce96fd693ac028e3f02590c9517f2d5f92a6d00aa913501e26b9daded724.mp3', 2821, '2026-09-13 06:59:21.736266', 'b3eb408fa14ec456e39c2ed29a7528a96b2c9b6dd45a2a22ae2c9e4a51394e38', 'validated', '{"audio_key":"fb2dce96fd693ac028e3f02590c9517f2d5f92a6d00aa913501e26b9daded724","entity_key":"d_work_feedback_teamwork_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b3eb408fa14ec456e39c2ed29a7528a96b2c9b6dd45a2a22ae2c9e4a51394e38","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fb2dce96fd693ac028e3f02590c9517f2d5f92a6d00aa913501e26b9daded724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_03 -> audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('383753c2-9ca4-550a-b390-232377d7f057', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84a8fcfc-8001-59f3-943c-edc1748e67ad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('383753c2-9ca4-550a-b390-232377d7f057', 1), '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3', 1201, '2026-09-13 05:29:31.928182', 'c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35', 'validated', '{"audio_key":"077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec","entity_key":"lx_doctor_visit_followup_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_03 -> audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('433a5322-4e1f-5999-bd00-32222a7e0eff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b0731f5-b4e2-5b03-a18c-c3a6e68cb8ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('433a5322-4e1f-5999-bd00-32222a7e0eff', 1), '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3', 1201, '2026-09-13 05:29:31.928182', 'c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35', 'validated', '{"audio_key":"077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec","entity_key":"wf_doctor_visit_followup_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_03 -> audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b379e0e6-eb23-5c1b-b5c8-9c227956da63', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb9d4f2d-0117-532d-b432-97219303954c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b379e0e6-eb23-5c1b-b5c8-9c227956da63', 1), 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3', 1018, '2026-09-13 06:42:57.072419', '90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e', 'validated', '{"audio_key":"0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754","entity_key":"lx_goals_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_03 -> audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09d1ed7d-7f6a-5514-a380-d6c2427ca758', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601d1534-0c82-58c5-b102-2299e296d671', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09d1ed7d-7f6a-5514-a380-d6c2427ca758', 1), 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3', 1018, '2026-09-13 06:42:57.072419', '90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e', 'validated', '{"audio_key":"0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754","entity_key":"wf_goals_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_02 -> audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5bcd316b-813a-5b80-86d5-bdde32d21fa7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e909d150-f185-580c-8f99-f82a9b9efd97', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5bcd316b-813a-5b80-86d5-bdde32d21fa7', 1), '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3', 1253, '2026-09-13 06:59:21.781104', '0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f', 'validated', '{"audio_key":"16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad","entity_key":"lx_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_02 -> audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7d850562-1dda-50ff-8273-1e2a5a005a62', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a039af7-3bf8-5e1b-93bd-793d6b003f12', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7d850562-1dda-50ff-8273-1e2a5a005a62', 1), '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3', 1253, '2026-09-13 06:59:21.781104', '0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f', 'validated', '{"audio_key":"16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad","entity_key":"wf_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_03 -> audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ccbaf2f5-f79b-51e0-b734-8b1651f1238e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af355e45241de08617c5a4c79e69ee2d5d2f6df3158da23443b294f41f018dd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e417bab-c8f4-5c7c-bbf0-13d7fb868f0b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ccbaf2f5-f79b-51e0-b734-8b1651f1238e', 1), 'af355e45241de08617c5a4c79e69ee2d5d2f6df3158da23443b294f41f018dd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3', 1149, '2026-09-13 06:59:22.711978', '638e53f0f1e6fa4c94496b24ee01cba2ecc4cecb39c1c75031dcfe39833eb5ac', 'validated', '{"audio_key":"1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388","entity_key":"lx_invitations_hosting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"638e53f0f1e6fa4c94496b24ee01cba2ecc4cecb39c1c75031dcfe39833eb5ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_03 -> audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a21d45cc-813a-51b8-afe7-fa42ebbcbc1a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af355e45241de08617c5a4c79e69ee2d5d2f6df3158da23443b294f41f018dd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbd5bc08-7a71-5d34-afa1-48fbf6e34b03', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a21d45cc-813a-51b8-afe7-fa42ebbcbc1a', 1), 'af355e45241de08617c5a4c79e69ee2d5d2f6df3158da23443b294f41f018dd8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3', 1149, '2026-09-13 06:59:22.711978', '638e53f0f1e6fa4c94496b24ee01cba2ecc4cecb39c1c75031dcfe39833eb5ac', 'validated', '{"audio_key":"1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388","entity_key":"wf_invitations_hosting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"638e53f0f1e6fa4c94496b24ee01cba2ecc4cecb39c1c75031dcfe39833eb5ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1abec7c7c9ac5763937d1bfd085a454911123c0cbba7227a8c8b69df34291388.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_06 -> audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ebf2ca04-b04e-575c-8932-bab9b9f98e5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('138767ab-ac83-5cc3-87b0-ee1ce79e53bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ebf2ca04-b04e-575c-8932-bab9b9f98e5f', 1), 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3', 1097, '2026-09-13 05:29:38.404096', 'a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da', 'validated', '{"audio_key":"1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca","entity_key":"lx_city_services_public_places_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_06 -> audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f35422f5-32e7-5e07-a6e2-10eb525cfe4e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1c4827b-039b-5e64-86a3-b3f5585ab6df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f35422f5-32e7-5e07-a6e2-10eb525cfe4e', 1), 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3', 1097, '2026-09-13 05:29:38.404096', 'a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da', 'validated', '{"audio_key":"1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca","entity_key":"wf_city_services_public_places_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_04 -> audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1d94c4bf-6f6c-5666-aaa2-6801c52f6892', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18b85bf570a1a3e0105202bfdd8e366738e7a778ae8577d35d1c48d74dd2d9d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f996131-73a0-5437-ba54-4ef88f605c7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1d94c4bf-6f6c-5666-aaa2-6801c52f6892', 1), '18b85bf570a1a3e0105202bfdd8e366738e7a778ae8577d35d1c48d74dd2d9d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3', 1201, '2026-09-13 06:59:22.746764', 'f31d60e4b24a466029c57c29dcee2fe453520200dc373bf82b65af587c17da7c', 'validated', '{"audio_key":"1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906","entity_key":"lx_invitations_hosting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f31d60e4b24a466029c57c29dcee2fe453520200dc373bf82b65af587c17da7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_04 -> audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f6c986c7-0129-5322-9dc5-87b55fe5ead2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18b85bf570a1a3e0105202bfdd8e366738e7a778ae8577d35d1c48d74dd2d9d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5512b20d-bd54-5539-ac22-d7e1958adf98', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f6c986c7-0129-5322-9dc5-87b55fe5ead2', 1), '18b85bf570a1a3e0105202bfdd8e366738e7a778ae8577d35d1c48d74dd2d9d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3', 1201, '2026-09-13 06:59:22.746764', 'f31d60e4b24a466029c57c29dcee2fe453520200dc373bf82b65af587c17da7c', 'validated', '{"audio_key":"1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906","entity_key":"wf_invitations_hosting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f31d60e4b24a466029c57c29dcee2fe453520200dc373bf82b65af587c17da7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1c0ee2e01f0b438d1b253a7fafb34b9482b598b45cea0ae2c219acbb9c2ed906.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_06 -> audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1dfe3c6b-96e0-50aa-a25d-2f8f987ae108', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdfccb90bbe91a2b3eed18c7280709a96fea8c02c60ff9a310bda824cf058863'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5b25966-b735-55f4-86fc-5332794677af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1dfe3c6b-96e0-50aa-a25d-2f8f987ae108', 1), 'bdfccb90bbe91a2b3eed18c7280709a96fea8c02c60ff9a310bda824cf058863',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3', 1149, '2026-09-13 06:59:23.801786', '0976691448bca80789e1674b0cb1c923d0b4c9e016153face7f02919f0bff8a1', 'validated', '{"audio_key":"2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c","entity_key":"lx_online_accounts_privacy_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0976691448bca80789e1674b0cb1c923d0b4c9e016153face7f02919f0bff8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_06 -> audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d1bfc441-24a6-550a-8ff1-d4cce353a6d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdfccb90bbe91a2b3eed18c7280709a96fea8c02c60ff9a310bda824cf058863'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ef308a7-2e5a-5d92-b356-9d6b3822fd1b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d1bfc441-24a6-550a-8ff1-d4cce353a6d6', 1), 'bdfccb90bbe91a2b3eed18c7280709a96fea8c02c60ff9a310bda824cf058863',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3', 1149, '2026-09-13 06:59:23.801786', '0976691448bca80789e1674b0cb1c923d0b4c9e016153face7f02919f0bff8a1', 'validated', '{"audio_key":"2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c","entity_key":"wf_online_accounts_privacy_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0976691448bca80789e1674b0cb1c923d0b4c9e016153face7f02919f0bff8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2af49b25cb340e910271879fb41208369259c34b846029f3fbb3fe215a48a13c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_goals_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('100982bb-4248-5a5c-82bd-e0187cb04613', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0d65da1-3d53-5269-a9c2-82b594199dd1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('100982bb-4248-5a5c-82bd-e0187cb04613', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_goals_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_02 -> audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b91b409-d4f1-5454-8638-b7eb453cd6eb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9381d82eea8f14e50a5c5d9e9d4b9defdde35aa0a094e37d358c36cbf5148807'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53aabf8a-6a8f-5c66-a325-459ac2abbb08', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b91b409-d4f1-5454-8638-b7eb453cd6eb', 1), '9381d82eea8f14e50a5c5d9e9d4b9defdde35aa0a094e37d358c36cbf5148807',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3', 1149, '2026-09-13 06:59:23.812109', '1be7a36fb3ee7d3929901ed23eff7d6dfd57c8208fd959c0e2078a0906904b43', 'validated', '{"audio_key":"2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d","entity_key":"lx_doctor_visit_followup_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1be7a36fb3ee7d3929901ed23eff7d6dfd57c8208fd959c0e2078a0906904b43","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_02 -> audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45c109cf-fd3c-52ce-8d5f-64e9662e0c45', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9381d82eea8f14e50a5c5d9e9d4b9defdde35aa0a094e37d358c36cbf5148807'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e54850e-bc18-5154-aec4-8d6504358172', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45c109cf-fd3c-52ce-8d5f-64e9662e0c45', 1), '9381d82eea8f14e50a5c5d9e9d4b9defdde35aa0a094e37d358c36cbf5148807',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3', 1149, '2026-09-13 06:59:23.812109', '1be7a36fb3ee7d3929901ed23eff7d6dfd57c8208fd959c0e2078a0906904b43', 'validated', '{"audio_key":"2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d","entity_key":"wf_doctor_visit_followup_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1be7a36fb3ee7d3929901ed23eff7d6dfd57c8208fd959c0e2078a0906904b43","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2fd65d88ebfe9650e4019b02e5cc0a390dc87d8554d775b20fd2501fe1aa382d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_03 -> audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da02b0ea-7307-5f6a-a3f0-48ead52cc667', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1329de3d85e79e52960149d377e565a4e3d97050be39e2d940492b9b8ca919dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c23610b7-7ded-5b1b-9d24-dd0f8de7bb2f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da02b0ea-7307-5f6a-a3f0-48ead52cc667', 1), '1329de3d85e79e52960149d377e565a4e3d97050be39e2d940492b9b8ca919dc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3', 1201, '2026-09-13 06:59:24.743316', 'eb53f1a7fe7ef10720824ec77f9e0b0998118128137b90053c4b65e4312f2eb5', 'validated', '{"audio_key":"301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d","entity_key":"lx_exams_learning_stress_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb53f1a7fe7ef10720824ec77f9e0b0998118128137b90053c4b65e4312f2eb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_03 -> audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12bd9a1c-2459-594b-ae51-71a61018702a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1329de3d85e79e52960149d377e565a4e3d97050be39e2d940492b9b8ca919dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('409a8296-1ac5-5830-b473-d72c144584eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12bd9a1c-2459-594b-ae51-71a61018702a', 1), '1329de3d85e79e52960149d377e565a4e3d97050be39e2d940492b9b8ca919dc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3', 1201, '2026-09-13 06:59:24.743316', 'eb53f1a7fe7ef10720824ec77f9e0b0998118128137b90053c4b65e4312f2eb5', 'validated', '{"audio_key":"301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d","entity_key":"wf_exams_learning_stress_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb53f1a7fe7ef10720824ec77f9e0b0998118128137b90053c4b65e4312f2eb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/301aca03330166534c9cfb9bdb11b94d14d1f0f13b45deb405e01be14261793d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_03 -> audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96f12a1e-e259-5227-9c5d-887d6f0a0d71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('032624b2-f2c2-5d29-b345-785b3dfd768c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96f12a1e-e259-5227-9c5d-887d6f0a0d71', 1), '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3', 862, '2026-09-13 06:17:29.258752', '488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0', 'validated', '{"audio_key":"34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b","entity_key":"lx_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_03 -> audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9817b3e6-fa60-5c9f-80a0-8745c4e21c6e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef08eaa5-946d-522c-a6b0-4191c577cb80', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9817b3e6-fa60-5c9f-80a0-8745c4e21c6e', 1), '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3', 862, '2026-09-13 06:17:29.258752', '488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0', 'validated', '{"audio_key":"34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b","entity_key":"wf_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_01 -> audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddd1b3e4-c48b-58b6-8c99-3902c5d327d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eec8e8fc-9627-5dfe-8edd-f5152412112c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddd1b3e4-c48b-58b6-8c99-3902c5d327d6', 1), 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3', 1149, '2026-09-13 06:59:24.872665', '32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c', 'validated', '{"audio_key":"3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef","entity_key":"lx_doctor_visit_followup_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_01 -> audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64776862-6bbe-58b1-9ec8-ae2234e4fe2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f982c8e-5a95-513a-907d-a37c32f05893', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64776862-6bbe-58b1-9ec8-ae2234e4fe2c', 1), 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3', 1149, '2026-09-13 06:59:24.872665', '32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c', 'validated', '{"audio_key":"3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef","entity_key":"wf_doctor_visit_followup_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_04 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d17c99a-690b-53b5-ad47-9c13bcd58e9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"lx_doctor_visit_followup_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_04 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6dd50c92-35a1-5b57-ace6-4e0e026f5729', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5e7ca7b-358c-5df9-bd79-ee2457f12adf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6dd50c92-35a1-5b57-ace6-4e0e026f5729', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"wf_doctor_visit_followup_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_01 -> audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da28021b-6d0f-5253-8aa1-524f44f8673b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b06e72aabf9b286463e9aad3dc3362ff3333f808c2d441d41f1d12c49c2261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e12538ee-424e-5f71-a499-81c687144339', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da28021b-6d0f-5253-8aa1-524f44f8673b', 1), 'f7b06e72aabf9b286463e9aad3dc3362ff3333f808c2d441d41f1d12c49c2261',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3', 1071, '2026-09-13 06:59:25.877901', '6d337405010d78f69f0b7a4aa37a68ac72996b0c9b638eb8d19cee3c295142bd', 'validated', '{"audio_key":"3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c","entity_key":"lx_city_services_public_places_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d337405010d78f69f0b7a4aa37a68ac72996b0c9b638eb8d19cee3c295142bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_01 -> audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84cccb48-debe-5687-9e96-651d3ad563ef', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b06e72aabf9b286463e9aad3dc3362ff3333f808c2d441d41f1d12c49c2261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab2a4699-b8c9-555b-ae5c-46117ebe1df2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84cccb48-debe-5687-9e96-651d3ad563ef', 1), 'f7b06e72aabf9b286463e9aad3dc3362ff3333f808c2d441d41f1d12c49c2261',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3', 1071, '2026-09-13 06:59:25.877901', '6d337405010d78f69f0b7a4aa37a68ac72996b0c9b638eb8d19cee3c295142bd', 'validated', '{"audio_key":"3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c","entity_key":"wf_city_services_public_places_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d337405010d78f69f0b7a4aa37a68ac72996b0c9b638eb8d19cee3c295142bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e106ae04e6e18ff7847361c41d4f118fb2616cbbcbb5a83042200ffd1f3341c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_02 -> audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('48181cbf-c3e3-5af1-98d8-9aa140e172f3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40462142c50e5c3efc8eb0e194a4da767a84fa94b4a5bb22ced82f68f20b7ea9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3d4bdf6-f219-55d2-aac9-aec46b75631a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('48181cbf-c3e3-5af1-98d8-9aa140e172f3', 1), '40462142c50e5c3efc8eb0e194a4da767a84fa94b4a5bb22ced82f68f20b7ea9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3', 966, '2026-09-13 05:29:55.211535', '08dcd5f0f8c53dc89d8ac3b1bf36f86e05b6b581fa55a47125bde65e0bc8bb7f', 'validated', '{"audio_key":"3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2","entity_key":"lx_moving_relocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08dcd5f0f8c53dc89d8ac3b1bf36f86e05b6b581fa55a47125bde65e0bc8bb7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_02 -> audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48510eb5-f586-5434-aee5-09c8fc38a2f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40462142c50e5c3efc8eb0e194a4da767a84fa94b4a5bb22ced82f68f20b7ea9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6fb1968-f25b-5558-9c6f-85b219d4d8ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48510eb5-f586-5434-aee5-09c8fc38a2f9', 1), '40462142c50e5c3efc8eb0e194a4da767a84fa94b4a5bb22ced82f68f20b7ea9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3', 966, '2026-09-13 05:29:55.211535', '08dcd5f0f8c53dc89d8ac3b1bf36f86e05b6b581fa55a47125bde65e0bc8bb7f', 'validated', '{"audio_key":"3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2","entity_key":"wf_moving_relocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08dcd5f0f8c53dc89d8ac3b1bf36f86e05b6b581fa55a47125bde65e0bc8bb7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e1dda5244126ec649228bcea82135d3d2b95a58c5b84001e1842994d4e174b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_05 -> audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c0ee2d4c-e805-5a67-acdb-20e8fa8e6996', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '858e4ba7a29fd38b630ed73a79e2738333b3fc6778fafa90252f5556c1262fdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff3a3768-184c-567d-83a7-495bb7915ace', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c0ee2d4c-e805-5a67-acdb-20e8fa8e6996', 1), '858e4ba7a29fd38b630ed73a79e2738333b3fc6778fafa90252f5556c1262fdc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3', 914, '2026-09-13 05:29:56.239999', '4b97d69d880d32ecb5d2610f6e82b03bf260b392d3706aeaabd03f4b1e2686ed', 'validated', '{"audio_key":"3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b","entity_key":"lx_exams_learning_stress_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b97d69d880d32ecb5d2610f6e82b03bf260b392d3706aeaabd03f4b1e2686ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_05 -> audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('713e8f96-82ce-5906-ac4d-852c056e8359', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '858e4ba7a29fd38b630ed73a79e2738333b3fc6778fafa90252f5556c1262fdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf31a656-dcd3-59a5-bde3-0ed2cf3ba04d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('713e8f96-82ce-5906-ac4d-852c056e8359', 1), '858e4ba7a29fd38b630ed73a79e2738333b3fc6778fafa90252f5556c1262fdc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3', 914, '2026-09-13 05:29:56.239999', '4b97d69d880d32ecb5d2610f6e82b03bf260b392d3706aeaabd03f4b1e2686ed', 'validated', '{"audio_key":"3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b","entity_key":"wf_exams_learning_stress_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b97d69d880d32ecb5d2610f6e82b03bf260b392d3706aeaabd03f4b1e2686ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f017306f481aec526ae11513ca82df27d4ba64163ffb8aa7f329fbe3881c87b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_05 -> audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f77b4e39-0b73-5315-a604-9372862681f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd59d563e636e74ba0a7accfcb17655d8ec7673902d68419b2d5af4207e74a35d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4cbb003-3c53-505a-b698-a4c03984a5a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f77b4e39-0b73-5315-a604-9372862681f9', 1), 'd59d563e636e74ba0a7accfcb17655d8ec7673902d68419b2d5af4207e74a35d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3', 1436, '2026-09-13 06:59:26.725882', '796628d2e3ada67f7e27dd434c008162bbb79a3e951f2fb0642ce6e2a3c12261', 'validated', '{"audio_key":"4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225","entity_key":"lx_doctor_visit_followup_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"796628d2e3ada67f7e27dd434c008162bbb79a3e951f2fb0642ce6e2a3c12261","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_05 -> audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8458270-5c03-50c2-b5d6-b3636d9c1860', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd59d563e636e74ba0a7accfcb17655d8ec7673902d68419b2d5af4207e74a35d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b833a61-d19a-5644-a6de-c052b4eae064', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8458270-5c03-50c2-b5d6-b3636d9c1860', 1), 'd59d563e636e74ba0a7accfcb17655d8ec7673902d68419b2d5af4207e74a35d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3', 1436, '2026-09-13 06:59:26.725882', '796628d2e3ada67f7e27dd434c008162bbb79a3e951f2fb0642ce6e2a3c12261', 'validated', '{"audio_key":"4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225","entity_key":"wf_doctor_visit_followup_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"796628d2e3ada67f7e27dd434c008162bbb79a3e951f2fb0642ce6e2a3c12261","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4595d1dfb73e3f2f1c8f62552e6940dd7a883a50861aaa31bfbccb3ba0abf225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_01 -> audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4206504d-6635-50cf-a1f5-7e12a11e2114', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df8525011f618f54a41da2ac9e08cbf57c8f4674244d601d41f0fa18d54c19d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6670d06-2783-5230-abff-93747cc1ea56', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4206504d-6635-50cf-a1f5-7e12a11e2114', 1), 'df8525011f618f54a41da2ac9e08cbf57c8f4674244d601d41f0fa18d54c19d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3', 1071, '2026-09-13 06:59:26.855821', '48648781a0ba0e116b2e03a801ad5e8cf7bba607b031a3d9dfae2ee709dbbd4b', 'validated', '{"audio_key":"45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795","entity_key":"lx_online_accounts_privacy_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48648781a0ba0e116b2e03a801ad5e8cf7bba607b031a3d9dfae2ee709dbbd4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_01 -> audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec88a8f6-b798-556e-99fd-0f4278a7ac0c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df8525011f618f54a41da2ac9e08cbf57c8f4674244d601d41f0fa18d54c19d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b53aaa77-4e57-5aa5-8a63-0ba963aa801f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec88a8f6-b798-556e-99fd-0f4278a7ac0c', 1), 'df8525011f618f54a41da2ac9e08cbf57c8f4674244d601d41f0fa18d54c19d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3', 1071, '2026-09-13 06:59:26.855821', '48648781a0ba0e116b2e03a801ad5e8cf7bba607b031a3d9dfae2ee709dbbd4b', 'validated', '{"audio_key":"45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795","entity_key":"wf_online_accounts_privacy_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48648781a0ba0e116b2e03a801ad5e8cf7bba607b031a3d9dfae2ee709dbbd4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45f2d1ba81aad8731e9fba266982f51f7c26e9d76f3a430489c5cb3e4cdb6795.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_04 -> audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e06415a5-f54c-5fe1-a443-ed3b144c8ebe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1b8d7b180e12cb2c52dabe6897a9f7b1c15ed46456d6c7e4841524acfb28d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36fb6c00-f5b7-5bfe-8d78-ceede36ea88e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e06415a5-f54c-5fe1-a443-ed3b144c8ebe', 1), '4b1b8d7b180e12cb2c52dabe6897a9f7b1c15ed46456d6c7e4841524acfb28d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3', 1567, '2026-09-13 06:59:27.783540', 'd9e1b7e87c9a4b27d39f2b613ddae633e77c5cf2dd86ed187b545362cfe27d0f', 'validated', '{"audio_key":"4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0","entity_key":"lx_home_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9e1b7e87c9a4b27d39f2b613ddae633e77c5cf2dd86ed187b545362cfe27d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_04 -> audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('859fc3ab-51c6-50d4-99bf-72e98a3b084f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1b8d7b180e12cb2c52dabe6897a9f7b1c15ed46456d6c7e4841524acfb28d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9897951d-4776-5a5a-8a81-005a95853946', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('859fc3ab-51c6-50d4-99bf-72e98a3b084f', 1), '4b1b8d7b180e12cb2c52dabe6897a9f7b1c15ed46456d6c7e4841524acfb28d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3', 1567, '2026-09-13 06:59:27.783540', 'd9e1b7e87c9a4b27d39f2b613ddae633e77c5cf2dd86ed187b545362cfe27d0f', 'validated', '{"audio_key":"4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0","entity_key":"wf_home_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9e1b7e87c9a4b27d39f2b613ddae633e77c5cf2dd86ed187b545362cfe27d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c3825caccaa1143db056823a4add7d81a96028ab222c46bd297d6f592c2bbc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_05 -> audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f4eb9914-d071-5846-9af3-6922b6468bb1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd677190e0a9990e7d5fa9e4c1bbde44271fb8959c4acb6d43e02ed991128b4bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('124d23c8-88be-5834-bf08-9051a7a4bad8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f4eb9914-d071-5846-9af3-6922b6468bb1', 1), 'd677190e0a9990e7d5fa9e4c1bbde44271fb8959c4acb6d43e02ed991128b4bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3', 1280, '2026-09-13 06:59:27.901678', '62f12f5cd545e28ce91f08df1c049f0600a2a2582fd0491519ff607acb90657c', 'validated', '{"audio_key":"5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f","entity_key":"lx_city_services_public_places_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62f12f5cd545e28ce91f08df1c049f0600a2a2582fd0491519ff607acb90657c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_05 -> audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47e5badf-8380-5ba9-91a0-74ab3be3175a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd677190e0a9990e7d5fa9e4c1bbde44271fb8959c4acb6d43e02ed991128b4bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6eba2e1f-b46d-54f7-8e73-0234113d45ce', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47e5badf-8380-5ba9-91a0-74ab3be3175a', 1), 'd677190e0a9990e7d5fa9e4c1bbde44271fb8959c4acb6d43e02ed991128b4bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3', 1280, '2026-09-13 06:59:27.901678', '62f12f5cd545e28ce91f08df1c049f0600a2a2582fd0491519ff607acb90657c', 'validated', '{"audio_key":"5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f","entity_key":"wf_city_services_public_places_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62f12f5cd545e28ce91f08df1c049f0600a2a2582fd0491519ff607acb90657c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5056d28fa0ff77d32f6de7c7a6f641e6a22923e510c347f3f376820823f26d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_02 -> audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b4fcf557-f6c6-5d89-8ec7-ec369465bb70', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0a76419a5565cdd318ae036dfea95a3c855cc80875131863dced3e90d8eeec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f836858-71b7-51ac-af8e-c09d46ab3252', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b4fcf557-f6c6-5d89-8ec7-ec369465bb70', 1), 'd0a76419a5565cdd318ae036dfea95a3c855cc80875131863dced3e90d8eeec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3', 1436, '2026-09-13 06:59:28.776737', '2329bb05fd02ebd19e999db9cd071d606ba6a0dadc8d0455867cc438ec53f048', 'validated', '{"audio_key":"517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587","entity_key":"lx_exams_learning_stress_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2329bb05fd02ebd19e999db9cd071d606ba6a0dadc8d0455867cc438ec53f048","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_02 -> audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('61319a0b-8ccc-539a-9673-1c226d874da4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0a76419a5565cdd318ae036dfea95a3c855cc80875131863dced3e90d8eeec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('813dad08-1f29-5af8-af22-2321146ac20c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('61319a0b-8ccc-539a-9673-1c226d874da4', 1), 'd0a76419a5565cdd318ae036dfea95a3c855cc80875131863dced3e90d8eeec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3', 1436, '2026-09-13 06:59:28.776737', '2329bb05fd02ebd19e999db9cd071d606ba6a0dadc8d0455867cc438ec53f048', 'validated', '{"audio_key":"517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587","entity_key":"wf_exams_learning_stress_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2329bb05fd02ebd19e999db9cd071d606ba6a0dadc8d0455867cc438ec53f048","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/517449c01d6d6060f910a7e9ba361824d3599c1378dda473650aa37550234587.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_06 -> audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71783b94-658b-58b0-94b4-ccadf374de95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fd223e0-78de-5a6c-b992-5584825eb95e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71783b94-658b-58b0-94b4-ccadf374de95', 1), '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3', 1332, '2026-09-13 05:30:06.208376', 'f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f', 'validated', '{"audio_key":"5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd","entity_key":"lx_moving_relocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_06 -> audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5841c9b4-b55c-5ebb-bd17-acd69185c558', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe6ffb8d-8b3a-5ca5-8287-08b1a7f80a87', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5841c9b4-b55c-5ebb-bd17-acd69185c558', 1), '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3', 1332, '2026-09-13 05:30:06.208376', 'f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f', 'validated', '{"audio_key":"5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd","entity_key":"wf_moving_relocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_03 -> audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e818c740-28cd-5f11-b4a0-6887197bce3e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea52924f-9109-5dcb-be11-5137fb0dc242', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e818c740-28cd-5f11-b4a0-6887197bce3e', 1), '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3', 1018, '2026-09-13 06:43:05.074128', 'df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd', 'validated', '{"audio_key":"5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985","entity_key":"lx_city_services_public_places_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_03 -> audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('43c232ac-5f89-5243-b0d9-798188c69d78', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95058e1c-0042-5b4e-bd89-88fa96ba2fda', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('43c232ac-5f89-5243-b0d9-798188c69d78', 1), '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3', 1018, '2026-09-13 06:43:05.074128', 'df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd', 'validated', '{"audio_key":"5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985","entity_key":"wf_city_services_public_places_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_02 -> audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab0c4547-9939-5f48-85fa-552c8edb53de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f952ec099ee01cc4a57051f845435f685e4913fdd10e9a6528a03b441f1d688d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4fdd8d9-9252-5385-b67b-57b408a7777b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab0c4547-9939-5f48-85fa-552c8edb53de', 1), 'f952ec099ee01cc4a57051f845435f685e4913fdd10e9a6528a03b441f1d688d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3', 1280, '2026-09-13 06:59:28.893385', '46395eb84789e81495c6628afef31aa941491460ff4dfc74309715ed02c399f6', 'validated', '{"audio_key":"615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d","entity_key":"lx_work_feedback_teamwork_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46395eb84789e81495c6628afef31aa941491460ff4dfc74309715ed02c399f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_02 -> audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db875188-4794-5796-aae1-312ce1d79bf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f952ec099ee01cc4a57051f845435f685e4913fdd10e9a6528a03b441f1d688d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d21595c7-fe1c-57e7-a33e-df070ed05aad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db875188-4794-5796-aae1-312ce1d79bf4', 1), 'f952ec099ee01cc4a57051f845435f685e4913fdd10e9a6528a03b441f1d688d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3', 1280, '2026-09-13 06:59:28.893385', '46395eb84789e81495c6628afef31aa941491460ff4dfc74309715ed02c399f6', 'validated', '{"audio_key":"615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d","entity_key":"wf_work_feedback_teamwork_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46395eb84789e81495c6628afef31aa941491460ff4dfc74309715ed02c399f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/615d0ef442c4b46c55e6c0ad4e2141dae2bcade8d9ca84790a54cb845de6685d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_06 -> audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aee21156-fa9c-58a7-be07-88777ecdbedd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b488e469-1f3a-5670-9bb4-cc8854fe4290', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aee21156-fa9c-58a7-be07-88777ecdbedd', 1), 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3', 1253, '2026-09-13 05:30:10.605223', 'b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad', 'validated', '{"audio_key":"62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44","entity_key":"lx_invitations_hosting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_06 -> audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('724ffd3a-e835-59c2-94bc-17939f37c8d9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ba911e4-9dc0-5f59-9a47-18d3a9012347', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('724ffd3a-e835-59c2-94bc-17939f37c8d9', 1), 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3', 1253, '2026-09-13 05:30:10.605223', 'b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad', 'validated', '{"audio_key":"62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44","entity_key":"wf_invitations_hosting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_06 -> audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f0ebccc-cb25-5bbd-af12-279d91f26def', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89dcd89e-e5af-5f72-9e09-e075c8a0b9f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f0ebccc-cb25-5bbd-af12-279d91f26def', 1), '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3', 1253, '2026-09-13 06:59:29.730948', 'da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23', 'validated', '{"audio_key":"62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420","entity_key":"lx_goals_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_06 -> audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c951c4f-d85e-5551-a9ee-8d987aba3cbc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bffe325-4bfd-5dc7-b0fd-f13891ad26a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c951c4f-d85e-5551-a9ee-8d987aba3cbc', 1), '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3', 1253, '2026-09-13 06:59:29.730948', 'da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23', 'validated', '{"audio_key":"62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420","entity_key":"wf_goals_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_06 -> audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1100b21-5d88-5548-8a8a-d84196e67244', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85a49fe7-8b6d-59fc-87f3-2d908ce0b75e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1100b21-5d88-5548-8a8a-d84196e67244', 1), '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3', 1071, '2026-09-13 06:59:29.827831', '73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f', 'validated', '{"audio_key":"71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc","entity_key":"lx_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_06 -> audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('795dbbd3-84fa-57b2-b24b-35e68098d759', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62fe1694-c038-5911-a109-254f7c4a02e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('795dbbd3-84fa-57b2-b24b-35e68098d759', 1), '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3', 1071, '2026-09-13 06:59:29.827831', '73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f', 'validated', '{"audio_key":"71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc","entity_key":"wf_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_03 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b814f5b-0250-59a8-9b52-6d6d8564ad5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"lx_work_feedback_teamwork_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_03 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2edcdf35-e2f3-5af1-961c-4147025d0bfb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ff78f30-ae5d-518f-821e-26db1c83b818', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2edcdf35-e2f3-5af1-961c-4147025d0bfb', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"wf_work_feedback_teamwork_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_06 -> audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('80553645-446a-5a27-bdf5-47f3a2d1702c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa08916a46f1d8bdc0dabf0e8f596df50be6e53d676ea505b455d88f19a859ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e8a37c-2450-5760-a927-ba51e2cbb7a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('80553645-446a-5a27-bdf5-47f3a2d1702c', 1), 'aa08916a46f1d8bdc0dabf0e8f596df50be6e53d676ea505b455d88f19a859ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3', 1018, '2026-09-13 06:59:30.679922', '1649799765e840fca9fed1c0d8ce0b988cb2b51639ade42c2f33e975e7e45a3b', 'validated', '{"audio_key":"7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07","entity_key":"lx_work_feedback_teamwork_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1649799765e840fca9fed1c0d8ce0b988cb2b51639ade42c2f33e975e7e45a3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_06 -> audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73677616-ed73-54fc-8bca-18f69b58298a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa08916a46f1d8bdc0dabf0e8f596df50be6e53d676ea505b455d88f19a859ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dd48b71-dcfc-54e2-ab1b-053fb4f94d37', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73677616-ed73-54fc-8bca-18f69b58298a', 1), 'aa08916a46f1d8bdc0dabf0e8f596df50be6e53d676ea505b455d88f19a859ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3', 1018, '2026-09-13 06:59:30.679922', '1649799765e840fca9fed1c0d8ce0b988cb2b51639ade42c2f33e975e7e45a3b', 'validated', '{"audio_key":"7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07","entity_key":"wf_work_feedback_teamwork_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1649799765e840fca9fed1c0d8ce0b988cb2b51639ade42c2f33e975e7e45a3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a7de23dfd5b65e6aecc3efcd40b2694adb52fba99c0b1e1e65f47441f83bc07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_04 -> audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1dd8e989-e1a4-526b-896a-bef780be3843', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74a21210f155389b033ae53238f7c0856134ad9dd992e565ef70f686e8fc0eb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7634700e-687a-5135-8165-9393bd77f00e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1dd8e989-e1a4-526b-896a-bef780be3843', 1), '74a21210f155389b033ae53238f7c0856134ad9dd992e565ef70f686e8fc0eb1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3', 1436, '2026-09-13 06:59:30.839610', 'ba31b48bff971a0372738a32b5407df5c2f699988615a8540c772f46314cdeb3', 'validated', '{"audio_key":"8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2","entity_key":"lx_moving_relocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba31b48bff971a0372738a32b5407df5c2f699988615a8540c772f46314cdeb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_04 -> audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b682c534-0d87-5ff8-a5e1-638c16cf20ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74a21210f155389b033ae53238f7c0856134ad9dd992e565ef70f686e8fc0eb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4afcb0ac-a071-5f51-a012-08e3c9ed430e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b682c534-0d87-5ff8-a5e1-638c16cf20ab', 1), '74a21210f155389b033ae53238f7c0856134ad9dd992e565ef70f686e8fc0eb1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3', 1436, '2026-09-13 06:59:30.839610', 'ba31b48bff971a0372738a32b5407df5c2f699988615a8540c772f46314cdeb3', 'validated', '{"audio_key":"8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2","entity_key":"wf_moving_relocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba31b48bff971a0372738a32b5407df5c2f699988615a8540c772f46314cdeb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8980852fd1d720014cd84305c269418106095d7af06d0ccb6e6eb5a343aeb2c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_01 -> audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3fb809bc-8716-5b77-ac8c-a13ed45fd330', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac77df347205252b074d45aff7891debdba0ff1466cc0c351416d1662bb71ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9829c83f-ffb7-5a3e-9d72-657f4d85281c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3fb809bc-8716-5b77-ac8c-a13ed45fd330', 1), 'aac77df347205252b074d45aff7891debdba0ff1466cc0c351416d1662bb71ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3', 1018, '2026-09-13 06:59:31.625466', '3f9cdc07492d6379c63e51cb5ce54997d0a3cf4fd4c2222a1cb65fa77713a4b2', 'validated', '{"audio_key":"8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272","entity_key":"lx_work_feedback_teamwork_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f9cdc07492d6379c63e51cb5ce54997d0a3cf4fd4c2222a1cb65fa77713a4b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_01 -> audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e3ae7961-4455-52d6-a95d-a98ed485e7c8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac77df347205252b074d45aff7891debdba0ff1466cc0c351416d1662bb71ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78dddb6f-fb85-583b-8eef-dea784764a9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e3ae7961-4455-52d6-a95d-a98ed485e7c8', 1), 'aac77df347205252b074d45aff7891debdba0ff1466cc0c351416d1662bb71ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3', 1018, '2026-09-13 06:59:31.625466', '3f9cdc07492d6379c63e51cb5ce54997d0a3cf4fd4c2222a1cb65fa77713a4b2', 'validated', '{"audio_key":"8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272","entity_key":"wf_work_feedback_teamwork_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f9cdc07492d6379c63e51cb5ce54997d0a3cf4fd4c2222a1cb65fa77713a4b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f8fa53fe1f14f909d8e4293c1d9750648bfcb12eb89b32a36501db7a767e272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_04 -> audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a5a6b6c-7966-57b2-8066-1b666176f233', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca2e6f44-3b28-5a23-8ee3-3a383c5bbee9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a5a6b6c-7966-57b2-8066-1b666176f233', 1), 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3', 1018, '2026-09-13 06:17:36.006596', '7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed', 'validated', '{"audio_key":"996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642","entity_key":"lx_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_04 -> audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f754b0d1-8eb1-5d37-86b4-283f560a7fd3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05a148c6-d03f-5846-97f1-ccf145e8a616', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f754b0d1-8eb1-5d37-86b4-283f560a7fd3', 1), 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3', 1018, '2026-09-13 06:17:36.006596', '7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed', 'validated', '{"audio_key":"996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642","entity_key":"wf_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_02 -> audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bcf6bc3a-c24d-5333-833e-c715c65538a1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a36c101570cc4410993de5385ad7034adb2dae6a05139ac7672577803084634d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4a19d37-6b1e-54af-945c-ac98bae51de9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bcf6bc3a-c24d-5333-833e-c715c65538a1', 1), 'a36c101570cc4410993de5385ad7034adb2dae6a05139ac7672577803084634d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3', 1097, '2026-09-13 06:59:31.787749', '08218d2e6eb59d49637d4c9f740147b991905ed873dd74918e54ebbd732854df', 'validated', '{"audio_key":"997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1","entity_key":"lx_online_accounts_privacy_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08218d2e6eb59d49637d4c9f740147b991905ed873dd74918e54ebbd732854df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_02 -> audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('695279f9-327c-5f75-be17-8bc680a7dbd1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a36c101570cc4410993de5385ad7034adb2dae6a05139ac7672577803084634d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('881e47f6-b61b-5ef9-8198-3f1486aec7e6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('695279f9-327c-5f75-be17-8bc680a7dbd1', 1), 'a36c101570cc4410993de5385ad7034adb2dae6a05139ac7672577803084634d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3', 1097, '2026-09-13 06:59:31.787749', '08218d2e6eb59d49637d4c9f740147b991905ed873dd74918e54ebbd732854df', 'validated', '{"audio_key":"997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1","entity_key":"wf_online_accounts_privacy_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08218d2e6eb59d49637d4c9f740147b991905ed873dd74918e54ebbd732854df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/997e0ffb6b1406400b6eee7a81b0e4afcd9d9fcedb2c514304a2f94adaed7eb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_06 -> audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cc369a6f-b0f9-586f-a46e-c0bfd7a54a6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '609d5e56649fd7f59b10b39e095def132690cdfbc658607b84afbc112f25b523'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6212a286-b016-594c-bf0c-da1dbf293bcd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cc369a6f-b0f9-586f-a46e-c0bfd7a54a6c', 1), '609d5e56649fd7f59b10b39e095def132690cdfbc658607b84afbc112f25b523',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3', 1018, '2026-09-13 06:59:32.567585', '3dcbb7362b185a8ec1b5db2f973d69c210370ff585673c8a155bb2626ecb9b09', 'validated', '{"audio_key":"9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f","entity_key":"lx_home_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dcbb7362b185a8ec1b5db2f973d69c210370ff585673c8a155bb2626ecb9b09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_06 -> audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e79efcf-13b9-5fbc-bfd6-25b0f24ba7f3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '609d5e56649fd7f59b10b39e095def132690cdfbc658607b84afbc112f25b523'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('967c03b2-c43c-5a38-9eaf-b611e9651b3e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e79efcf-13b9-5fbc-bfd6-25b0f24ba7f3', 1), '609d5e56649fd7f59b10b39e095def132690cdfbc658607b84afbc112f25b523',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3', 1018, '2026-09-13 06:59:32.567585', '3dcbb7362b185a8ec1b5db2f973d69c210370ff585673c8a155bb2626ecb9b09', 'validated', '{"audio_key":"9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f","entity_key":"wf_home_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dcbb7362b185a8ec1b5db2f973d69c210370ff585673c8a155bb2626ecb9b09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d887520d86f61e8d6e1144b4d9b8adefe0f784d115217ad95bd97b01c2f0a8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_05 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_work_feedback_teamwork_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_05 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('910fd73a-9dfb-567e-b510-81e4616ce727', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('533d7c77-7fac-5809-a8d7-8a391e76a193', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('910fd73a-9dfb-567e-b510-81e4616ce727', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_work_feedback_teamwork_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_01 -> audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8013173-8efd-52df-b263-8f95d91b4865', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56994c35191c3096c626c50dbb2bf4385a426cf6c54f7dd0087946bc02df7b8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3648aad8-69da-5c4b-b27d-f0a229b40f0b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8013173-8efd-52df-b263-8f95d91b4865', 1), '56994c35191c3096c626c50dbb2bf4385a426cf6c54f7dd0087946bc02df7b8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3', 966, '2026-09-13 06:59:33.512112', '7c4d18fb6e47fef061d58d95c214e600461b6263339fc5c99724d3c5c73e5739', 'validated', '{"audio_key":"a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721","entity_key":"lx_moving_relocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c4d18fb6e47fef061d58d95c214e600461b6263339fc5c99724d3c5c73e5739","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_01 -> audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('59289664-eb6c-5b9c-8cfb-15dfdd10b421', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56994c35191c3096c626c50dbb2bf4385a426cf6c54f7dd0087946bc02df7b8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('675b5c00-89a9-507a-b8ce-bb06850dac75', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('59289664-eb6c-5b9c-8cfb-15dfdd10b421', 1), '56994c35191c3096c626c50dbb2bf4385a426cf6c54f7dd0087946bc02df7b8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3', 966, '2026-09-13 06:59:33.512112', '7c4d18fb6e47fef061d58d95c214e600461b6263339fc5c99724d3c5c73e5739', 'validated', '{"audio_key":"a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721","entity_key":"wf_moving_relocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c4d18fb6e47fef061d58d95c214e600461b6263339fc5c99724d3c5c73e5739","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4e6211abc6bb8dc8ba69ddfcb3382118bb6f0003f4a6e3d623e70182bca1721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c9c26db-fda0-5cdb-9fba-200c7253ca98', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"lx_goals_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b524feed-73c6-50e7-b3ee-4370add72f6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d6bda90-1371-510a-876e-577b1ed585ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b524feed-73c6-50e7-b3ee-4370add72f6d', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"wf_goals_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_01 -> audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4975aee3-8474-593b-8652-55e65611802e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a18e8dfaa76f46f8ab59e4df62b0af79f2d259eb90a89d5ce0be3f7db7b291ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42415107-7c17-5332-8bf9-5f6c478b00ef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4975aee3-8474-593b-8652-55e65611802e', 1), 'a18e8dfaa76f46f8ab59e4df62b0af79f2d259eb90a89d5ce0be3f7db7b291ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3', 1071, '2026-09-13 06:59:33.688232', 'ca5fc0b7d3ed7d81cc4ed9f64646931872dc2fdff9a91aa8d8750c9e6f4e3156', 'validated', '{"audio_key":"aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e","entity_key":"lx_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca5fc0b7d3ed7d81cc4ed9f64646931872dc2fdff9a91aa8d8750c9e6f4e3156","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_01 -> audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c3b5088-f840-5aae-8ba8-216aff1a904b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a18e8dfaa76f46f8ab59e4df62b0af79f2d259eb90a89d5ce0be3f7db7b291ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('420f4bc5-49da-5e38-9157-c711887011b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c3b5088-f840-5aae-8ba8-216aff1a904b', 1), 'a18e8dfaa76f46f8ab59e4df62b0af79f2d259eb90a89d5ce0be3f7db7b291ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3', 1071, '2026-09-13 06:59:33.688232', 'ca5fc0b7d3ed7d81cc4ed9f64646931872dc2fdff9a91aa8d8750c9e6f4e3156', 'validated', '{"audio_key":"aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e","entity_key":"wf_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca5fc0b7d3ed7d81cc4ed9f64646931872dc2fdff9a91aa8d8750c9e6f4e3156","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aac061f1e6e4593fb545c727c8d93d74d480cc41b353a9e4e703532e8cdf896e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_05 -> audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a5d17283-7ee9-53ed-9f12-14925cd152db', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f13dbf818fb1c083bfe7083cbc11ca8bf88c03c857795621322a751b83f8fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('845d479b-299e-59e2-82bd-6d0ca24888ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a5d17283-7ee9-53ed-9f12-14925cd152db', 1), '3f13dbf818fb1c083bfe7083cbc11ca8bf88c03c857795621322a751b83f8fa4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3', 1097, '2026-09-13 06:59:34.458907', '89c42ebb0113ed3e7d03fad02d465c35a52f4f6f1dde2705f1b70f8a52635e2d', 'validated', '{"audio_key":"ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554","entity_key":"lx_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c42ebb0113ed3e7d03fad02d465c35a52f4f6f1dde2705f1b70f8a52635e2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_05 -> audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('537bddd4-c3b2-5de7-bb97-b353d731a73f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f13dbf818fb1c083bfe7083cbc11ca8bf88c03c857795621322a751b83f8fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55c796b3-651a-5b3b-957b-0e859bd28a8e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('537bddd4-c3b2-5de7-bb97-b353d731a73f', 1), '3f13dbf818fb1c083bfe7083cbc11ca8bf88c03c857795621322a751b83f8fa4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3', 1097, '2026-09-13 06:59:34.458907', '89c42ebb0113ed3e7d03fad02d465c35a52f4f6f1dde2705f1b70f8a52635e2d', 'validated', '{"audio_key":"ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554","entity_key":"wf_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c42ebb0113ed3e7d03fad02d465c35a52f4f6f1dde2705f1b70f8a52635e2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ae11336d4843fda5489aa9172571fd511a75c96808874da95c434cf4a4f1b554.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_doctor_visit_followup_06 -> audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4c25e5b8-77af-5ff1-9e39-c73378e13fe8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_doctor_visit_followup_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7da7212b6beefd235cb0730a9bb78109e74146aba041c5069f90081dd01350c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c965e2e4-b2c9-53c8-b4a5-40b83c69be06', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4c25e5b8-77af-5ff1-9e39-c73378e13fe8', 1), '7da7212b6beefd235cb0730a9bb78109e74146aba041c5069f90081dd01350c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3', 1201, '2026-09-13 06:59:34.629103', '6cf6bc558113957fc4860fefbe8d844cb77dcac9c04ef0d86b13cca131cc4aa0', 'validated', '{"audio_key":"b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea","entity_key":"lx_doctor_visit_followup_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6cf6bc558113957fc4860fefbe8d844cb77dcac9c04ef0d86b13cca131cc4aa0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_doctor_visit_followup_06 -> audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('20b65809-ed8f-5c55-a41e-bb8b95878607', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_doctor_visit_followup_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7da7212b6beefd235cb0730a9bb78109e74146aba041c5069f90081dd01350c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('505f4bee-f5e9-5384-97fe-1553f41f1cd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('20b65809-ed8f-5c55-a41e-bb8b95878607', 1), '7da7212b6beefd235cb0730a9bb78109e74146aba041c5069f90081dd01350c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3', 1201, '2026-09-13 06:59:34.629103', '6cf6bc558113957fc4860fefbe8d844cb77dcac9c04ef0d86b13cca131cc4aa0', 'validated', '{"audio_key":"b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea","entity_key":"wf_doctor_visit_followup_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6cf6bc558113957fc4860fefbe8d844cb77dcac9c04ef0d86b13cca131cc4aa0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b14038b5f2dd340a65f07f21cd5bc7edf92ac83e02d2c8b4cae5779e46b3a5ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_03 -> audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27c935d9-1fcc-5fbe-9098-c32f1637865b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18bd864f-f2d7-58c3-bf40-0086ab09dba5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27c935d9-1fcc-5fbe-9098-c32f1637865b', 1), 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3', 1097, '2026-09-13 05:54:45.072659', 'b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270', 'validated', '{"audio_key":"b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0","entity_key":"lx_online_accounts_privacy_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_03 -> audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3aa09281-79e6-5063-aa91-8dde51ea6959', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83e75389-d118-52b1-81a9-1de304b6e4f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3aa09281-79e6-5063-aa91-8dde51ea6959', 1), 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3', 1097, '2026-09-13 05:54:45.072659', 'b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270', 'validated', '{"audio_key":"b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0","entity_key":"wf_online_accounts_privacy_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_04 -> audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae4bde2b-3a0f-503f-980e-2e5e7177ef86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7310f17f-0fa6-5e0a-8e4d-b0e1f2556b6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae4bde2b-3a0f-503f-980e-2e5e7177ef86', 1), '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3', 1436, '2026-09-13 05:30:44.828218', '12540dca91551333370aefd0b752bace014915155e776935937a675538b27721', 'validated', '{"audio_key":"b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae","entity_key":"lx_exams_learning_stress_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12540dca91551333370aefd0b752bace014915155e776935937a675538b27721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_04 -> audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e83658a7-5636-5977-9321-095783e5d829', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97c104fb-a7b4-54b9-b1ae-a343c8007e32', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e83658a7-5636-5977-9321-095783e5d829', 1), '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3', 1436, '2026-09-13 05:30:44.828218', '12540dca91551333370aefd0b752bace014915155e776935937a675538b27721', 'validated', '{"audio_key":"b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae","entity_key":"wf_exams_learning_stress_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12540dca91551333370aefd0b752bace014915155e776935937a675538b27721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_04 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9aa0a52f-8e67-5238-83b4-6bddb15bc5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"lx_goals_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_04 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('acceffe8-e79c-5b2b-986d-6c51003cf234', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00d8c464-001a-5367-8303-cd86de67d4bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('acceffe8-e79c-5b2b-986d-6c51003cf234', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"wf_goals_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_05 -> audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a7445403-7ecf-5d26-8e0f-750c042e1e4e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a0563b5075380ba87ecf0049201b5ec7530d80f1c63ec58c3e6c584f7e65236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1d8b360-7956-5201-a7d9-98aee51498bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a7445403-7ecf-5d26-8e0f-750c042e1e4e', 1), '9a0563b5075380ba87ecf0049201b5ec7530d80f1c63ec58c3e6c584f7e65236',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3', 1018, '2026-09-13 05:30:46.170221', '39a236cac174b96b5797342aef77e3a270fb0ecd143b3149c8802c3d5fe2ecb4', 'validated', '{"audio_key":"bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45","entity_key":"lx_invitations_hosting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39a236cac174b96b5797342aef77e3a270fb0ecd143b3149c8802c3d5fe2ecb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_05 -> audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0da622d0-7821-586c-94e1-41ff24e115db', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a0563b5075380ba87ecf0049201b5ec7530d80f1c63ec58c3e6c584f7e65236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('092c167e-2a7e-5c6c-8f02-d7f52c65c1e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0da622d0-7821-586c-94e1-41ff24e115db', 1), '9a0563b5075380ba87ecf0049201b5ec7530d80f1c63ec58c3e6c584f7e65236',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3', 1018, '2026-09-13 05:30:46.170221', '39a236cac174b96b5797342aef77e3a270fb0ecd143b3149c8802c3d5fe2ecb4', 'validated', '{"audio_key":"bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45","entity_key":"wf_invitations_hosting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39a236cac174b96b5797342aef77e3a270fb0ecd143b3149c8802c3d5fe2ecb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb73edc9a52834ae442bfdcdb86493b1f3f4762ee9c7a6c6963e91a497680f45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_02 -> audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eaf4903d-ef75-5214-9d3c-b0385e8abd06', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b67ee77b0ee44cfc2149f70255296b65a875b8358b2589bd24cf4aa4ce847b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0383d1bd-3c57-5872-927d-147f6e4a3d0e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eaf4903d-ef75-5214-9d3c-b0385e8abd06', 1), '6b67ee77b0ee44cfc2149f70255296b65a875b8358b2589bd24cf4aa4ce847b1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3', 1149, '2026-09-13 06:59:35.587033', 'e30495941e3a58e2327c09fc26f4482220441abe8ba5313180f73b2f69079a76', 'validated', '{"audio_key":"c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef","entity_key":"lx_city_services_public_places_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e30495941e3a58e2327c09fc26f4482220441abe8ba5313180f73b2f69079a76","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_02 -> audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96b54761-ec54-5ac9-8f0c-4df325d13b97', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b67ee77b0ee44cfc2149f70255296b65a875b8358b2589bd24cf4aa4ce847b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94235eeb-2a84-5cc0-9310-a7594ff1b90a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96b54761-ec54-5ac9-8f0c-4df325d13b97', 1), '6b67ee77b0ee44cfc2149f70255296b65a875b8358b2589bd24cf4aa4ce847b1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3', 1149, '2026-09-13 06:59:35.587033', 'e30495941e3a58e2327c09fc26f4482220441abe8ba5313180f73b2f69079a76', 'validated', '{"audio_key":"c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef","entity_key":"wf_city_services_public_places_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e30495941e3a58e2327c09fc26f4482220441abe8ba5313180f73b2f69079a76","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c3179cb7c24b849abc2d3725a8ffbfae46b9ca21c14b77dea1d1304ef31456ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_03 -> audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cb706d32-ec47-58fb-9b7e-7b58a51ba1ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96a90a43149f4f7baec21f7074a073b5f007d86c67ae2600390b1f271a63bcb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('365d4ce0-6623-5418-9def-b91749ecfd5b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cb706d32-ec47-58fb-9b7e-7b58a51ba1ce', 1), '96a90a43149f4f7baec21f7074a073b5f007d86c67ae2600390b1f271a63bcb1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3', 1071, '2026-09-13 06:59:36.461749', '0385b8f43e0166db42368d199dcffca2ff7aded86e7a2232b7c43010fdde57fa', 'validated', '{"audio_key":"c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c","entity_key":"lx_moving_relocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0385b8f43e0166db42368d199dcffca2ff7aded86e7a2232b7c43010fdde57fa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_03 -> audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba21cc73-312e-54be-b458-7f5681ba43f5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96a90a43149f4f7baec21f7074a073b5f007d86c67ae2600390b1f271a63bcb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f89fa9a9-cbe9-550e-a3c3-a34400d7a02c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba21cc73-312e-54be-b458-7f5681ba43f5', 1), '96a90a43149f4f7baec21f7074a073b5f007d86c67ae2600390b1f271a63bcb1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3', 1071, '2026-09-13 06:59:36.461749', '0385b8f43e0166db42368d199dcffca2ff7aded86e7a2232b7c43010fdde57fa', 'validated', '{"audio_key":"c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c","entity_key":"wf_moving_relocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0385b8f43e0166db42368d199dcffca2ff7aded86e7a2232b7c43010fdde57fa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c448d6e1dac3166f11c615ce2a75952e2bb9f6b65b048d47c8330bb09bc1055c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_01 -> audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5165737-e668-5aac-b7e6-48c4d6e88907', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '187eb42977f142c6d49b7458150022b73abe393c8b4fbeb4c39df155e66052b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb8d4c87-72e4-54af-b61e-69fd3fd0b896', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5165737-e668-5aac-b7e6-48c4d6e88907', 1), '187eb42977f142c6d49b7458150022b73abe393c8b4fbeb4c39df155e66052b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3', 1253, '2026-09-13 06:59:36.532834', 'acbecb48ffaa0641457c83b25d76cd58420e0e74fb844185abc7a5c968405c9f', 'validated', '{"audio_key":"c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b","entity_key":"lx_home_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acbecb48ffaa0641457c83b25d76cd58420e0e74fb844185abc7a5c968405c9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_01 -> audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('16866aba-62af-56b0-8fd0-98347e32ba6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '187eb42977f142c6d49b7458150022b73abe393c8b4fbeb4c39df155e66052b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d96f81f-f6cf-50c6-98be-8bb5fa60c93b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('16866aba-62af-56b0-8fd0-98347e32ba6c', 1), '187eb42977f142c6d49b7458150022b73abe393c8b4fbeb4c39df155e66052b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3', 1253, '2026-09-13 06:59:36.532834', 'acbecb48ffaa0641457c83b25d76cd58420e0e74fb844185abc7a5c968405c9f', 'validated', '{"audio_key":"c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b","entity_key":"wf_home_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acbecb48ffaa0641457c83b25d76cd58420e0e74fb844185abc7a5c968405c9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c62550e1afcaa79eab352ddabf5d691fdf57dbcc0dbd436c31bc4d1d31e99f7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_01 -> audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb244832-2105-5351-a112-dba2d57f215e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15e886c77b59ef4dd0ba00c871ce40a5ad52ee5724a143976085465fdb2e0631'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f31df49-07a2-5530-96fe-6ed3d2716bb9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb244832-2105-5351-a112-dba2d57f215e', 1), '15e886c77b59ef4dd0ba00c871ce40a5ad52ee5724a143976085465fdb2e0631',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3', 914, '2026-09-13 05:30:51.086643', '11be18220a4b73e92a0c69fd78f0d702f3e42283c9b401061b7bfb5f959b1aea', 'validated', '{"audio_key":"c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36","entity_key":"lx_invitations_hosting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11be18220a4b73e92a0c69fd78f0d702f3e42283c9b401061b7bfb5f959b1aea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_01 -> audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0129b0bb-718f-5faf-bd65-5e337b9e49b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15e886c77b59ef4dd0ba00c871ce40a5ad52ee5724a143976085465fdb2e0631'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc4b6c5c-97ae-5e8e-b7c8-1968d0aaeade', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0129b0bb-718f-5faf-bd65-5e337b9e49b8', 1), '15e886c77b59ef4dd0ba00c871ce40a5ad52ee5724a143976085465fdb2e0631',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3', 914, '2026-09-13 05:30:51.086643', '11be18220a4b73e92a0c69fd78f0d702f3e42283c9b401061b7bfb5f959b1aea', 'validated', '{"audio_key":"c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36","entity_key":"wf_invitations_hosting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11be18220a4b73e92a0c69fd78f0d702f3e42283c9b401061b7bfb5f959b1aea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6bb5f87e2d82d3891ed4f1af7b4e1493e52890b0e16f18720cd16795f835f36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_01 -> audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c6b03704-be76-51aa-be47-be7cf13cebdf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf53b7f7-d551-5a15-a808-1e9bb65b0677', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c6b03704-be76-51aa-be47-be7cf13cebdf', 1), 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3', 1071, '2026-09-13 05:30:51.626024', 'e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1', 'validated', '{"audio_key":"c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c","entity_key":"lx_exams_learning_stress_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_01 -> audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78e54a5e-f80c-5d64-adaa-0ccb43a93592', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6b73de2-f1bc-5e83-b674-e71b62a3f553', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78e54a5e-f80c-5d64-adaa-0ccb43a93592', 1), 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3', 1071, '2026-09-13 05:30:51.626024', 'e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1', 'validated', '{"audio_key":"c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c","entity_key":"wf_exams_learning_stress_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_city_services_public_places_04 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_city_services_public_places_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f15cf4-84bc-53e0-a46e-2ace42f0af60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"lx_city_services_public_places_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_city_services_public_places_04 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66ba1de2-accb-54f7-add1-16afa55ca235', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_city_services_public_places_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('149fcb24-4689-52df-905e-4779e1c1376c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66ba1de2-accb-54f7-add1-16afa55ca235', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"wf_city_services_public_places_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_feedback_teamwork_04 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_feedback_teamwork_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f15cf4-84bc-53e0-a46e-2ace42f0af60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"lx_work_feedback_teamwork_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_feedback_teamwork_04 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('31ef80b7-5227-50e4-9352-e60b660fbff2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_feedback_teamwork_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0e0502c-043e-5b52-ae3a-6062c1c584c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('31ef80b7-5227-50e4-9352-e60b660fbff2', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"wf_work_feedback_teamwork_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_04 -> audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e6beb42-be6d-5720-bf78-737d6923e4e0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777b451a3adb005d45beefb9961ef653738d847a6e432b49de6122b56b907df5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b45e1f84-81bc-5560-b555-07d7ad86c927', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e6beb42-be6d-5720-bf78-737d6923e4e0', 1), '777b451a3adb005d45beefb9961ef653738d847a6e432b49de6122b56b907df5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3', 966, '2026-09-13 06:59:37.386771', '569fe48d4fd341126e00c405ccd34e3b486208cf5e84ef8f2bfd4875d097e30b', 'validated', '{"audio_key":"d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb","entity_key":"lx_online_accounts_privacy_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"569fe48d4fd341126e00c405ccd34e3b486208cf5e84ef8f2bfd4875d097e30b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_04 -> audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cc79878f-30dc-5aa3-b63d-bbd43377ac81', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777b451a3adb005d45beefb9961ef653738d847a6e432b49de6122b56b907df5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68319d14-1cd4-56c1-b5f1-c0e76ee513ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cc79878f-30dc-5aa3-b63d-bbd43377ac81', 1), '777b451a3adb005d45beefb9961ef653738d847a6e432b49de6122b56b907df5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3', 966, '2026-09-13 06:59:37.386771', '569fe48d4fd341126e00c405ccd34e3b486208cf5e84ef8f2bfd4875d097e30b', 'validated', '{"audio_key":"d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb","entity_key":"wf_online_accounts_privacy_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"569fe48d4fd341126e00c405ccd34e3b486208cf5e84ef8f2bfd4875d097e30b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d09903e86a27e620335679edd47156f8713ba467abfd90832a8e281949a20afb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_invitations_hosting_02 -> audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cc3ef742-e931-52da-af62-9f14df357d54', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_invitations_hosting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c26b2313636b95a2fa8735568280c776e59139949e7795bd5e0b77201b91074e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc2944c2-1086-594d-afb8-83ad1bf90f26', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cc3ef742-e931-52da-af62-9f14df357d54', 1), 'c26b2313636b95a2fa8735568280c776e59139949e7795bd5e0b77201b91074e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3', 1149, '2026-09-13 06:59:37.494789', '8442735b042bd976c724158a330f2a5f3bf0a1717159fd847e501ef6067c710d', 'validated', '{"audio_key":"d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306","entity_key":"lx_invitations_hosting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8442735b042bd976c724158a330f2a5f3bf0a1717159fd847e501ef6067c710d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_invitations_hosting_02 -> audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('df047775-92a4-5159-af96-6802701d0c23', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_invitations_hosting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c26b2313636b95a2fa8735568280c776e59139949e7795bd5e0b77201b91074e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f867fc22-1712-5b9f-a502-8f6363749be5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('df047775-92a4-5159-af96-6802701d0c23', 1), 'c26b2313636b95a2fa8735568280c776e59139949e7795bd5e0b77201b91074e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3', 1149, '2026-09-13 06:59:37.494789', '8442735b042bd976c724158a330f2a5f3bf0a1717159fd847e501ef6067c710d', 'validated', '{"audio_key":"d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306","entity_key":"wf_invitations_hosting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8442735b042bd976c724158a330f2a5f3bf0a1717159fd847e501ef6067c710d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d28e4a849b01317415f6d777315357cf4b165d5e047251e6b07814e0c4db7306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_moving_relocation_05 -> audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d1dbe53-c3ca-527d-86bf-9ce6b3f6b5d0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_moving_relocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ae37499fd2d795711f7678fcf00751208c78f8beccd5e966a6b4d546ec0f838'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14887330-ce83-5102-9e74-b72d0a1de27f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d1dbe53-c3ca-527d-86bf-9ce6b3f6b5d0', 1), '3ae37499fd2d795711f7678fcf00751208c78f8beccd5e966a6b4d546ec0f838',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3', 1253, '2026-09-13 06:59:38.335466', '202a342ce5a7213b85a8de330a694c5ca6a060408643398702b94a75666d7ff0', 'validated', '{"audio_key":"d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a","entity_key":"lx_moving_relocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"202a342ce5a7213b85a8de330a694c5ca6a060408643398702b94a75666d7ff0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_moving_relocation_05 -> audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2998f52-17a7-5ffd-bbfe-5179c2dff9d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_moving_relocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ae37499fd2d795711f7678fcf00751208c78f8beccd5e966a6b4d546ec0f838'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('804028db-9e28-5946-8f6d-8e307b9f94e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2998f52-17a7-5ffd-bbfe-5179c2dff9d1', 1), '3ae37499fd2d795711f7678fcf00751208c78f8beccd5e966a6b4d546ec0f838',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3', 1253, '2026-09-13 06:59:38.335466', '202a342ce5a7213b85a8de330a694c5ca6a060408643398702b94a75666d7ff0', 'validated', '{"audio_key":"d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a","entity_key":"wf_moving_relocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"202a342ce5a7213b85a8de330a694c5ca6a060408643398702b94a75666d7ff0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5d14636e1ecf55855156c72373269e934b34bb68847e270caa4c3b63544a76a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_exams_learning_stress_06 -> audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3ef4466-ed4d-5d34-8e4a-e5bd5f0d119d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_exams_learning_stress_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08ce39a8ff7c1d9aebc6729ea64bbcbee7cd9764a83773d3217daf58b3e4d8bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bd239ea-80f3-5a44-9191-60c288871442', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3ef4466-ed4d-5d34-8e4a-e5bd5f0d119d', 1), '08ce39a8ff7c1d9aebc6729ea64bbcbee7cd9764a83773d3217daf58b3e4d8bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3', 1201, '2026-09-13 06:59:38.461488', '52473fe9575e651959b2f62830c68db75c87ca0408ae60ba4da41f53acef9f38', 'validated', '{"audio_key":"d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc","entity_key":"lx_exams_learning_stress_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52473fe9575e651959b2f62830c68db75c87ca0408ae60ba4da41f53acef9f38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_exams_learning_stress_06 -> audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d2874a5-8bca-5593-afd7-90aef573a66a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_exams_learning_stress_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08ce39a8ff7c1d9aebc6729ea64bbcbee7cd9764a83773d3217daf58b3e4d8bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c706ca0-99aa-51d4-8e94-486222ff5317', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d2874a5-8bca-5593-afd7-90aef573a66a', 1), '08ce39a8ff7c1d9aebc6729ea64bbcbee7cd9764a83773d3217daf58b3e4d8bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3', 1201, '2026-09-13 06:59:38.461488', '52473fe9575e651959b2f62830c68db75c87ca0408ae60ba4da41f53acef9f38', 'validated', '{"audio_key":"d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc","entity_key":"wf_exams_learning_stress_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52473fe9575e651959b2f62830c68db75c87ca0408ae60ba4da41f53acef9f38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5df94377d3d54b1863f5821d777d1ed8e792b9a753d303bb98a0caec73c0cbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_priorities_01 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46f9c994-a2a2-5f54-a9bd-604ed0abf872', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"lx_goals_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_priorities_01 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d22cc611-0351-5380-a471-ce75c5c6f3b4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6daf18f-c312-5dd5-97a5-df49fa54aac7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d22cc611-0351-5380-a471-ce75c5c6f3b4', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"wf_goals_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_online_accounts_privacy_05 -> audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d6651854-6cd7-5f91-b7e3-872087faeeb4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_online_accounts_privacy_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb4e03a5f19593fdb8451492d60e1af427483c8bfff7f81d504a5bd4a6e19d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ce8391-9541-552d-ac6f-abd2008f51ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d6651854-6cd7-5f91-b7e3-872087faeeb4', 1), 'eb4e03a5f19593fdb8451492d60e1af427483c8bfff7f81d504a5bd4a6e19d24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3', 1149, '2026-09-13 06:59:39.285438', '11642863dc6c9d8a1db2a0dab5e329ca9bf043ad1c2c39b8c5a600b7767f9c9a', 'validated', '{"audio_key":"f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106","entity_key":"lx_online_accounts_privacy_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11642863dc6c9d8a1db2a0dab5e329ca9bf043ad1c2c39b8c5a600b7767f9c9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_online_accounts_privacy_05 -> audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85562ad6-a609-50fc-811f-c2d500fdbe87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_online_accounts_privacy_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb4e03a5f19593fdb8451492d60e1af427483c8bfff7f81d504a5bd4a6e19d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fdb2f5d-e7be-5d37-a5bc-4412c3131f5f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85562ad6-a609-50fc-811f-c2d500fdbe87', 1), 'eb4e03a5f19593fdb8451492d60e1af427483c8bfff7f81d504a5bd4a6e19d24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3', 1149, '2026-09-13 06:59:39.285438', '11642863dc6c9d8a1db2a0dab5e329ca9bf043ad1c2c39b8c5a600b7767f9c9a', 'validated', '{"audio_key":"f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106","entity_key":"wf_online_accounts_privacy_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11642863dc6c9d8a1db2a0dab5e329ca9bf043ad1c2c39b8c5a600b7767f9c9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f68be023fdcc5c06864902440c51c527b323b65d61c15d5440d4b36ef1561106.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_05 -> audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66063fa9-212b-51d2-bbef-82d939877364', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '184d6a9a5edf213d60071d1a36a2da5afc735fd9b767c94b5d4bb3ab2de56213'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a7225b1-8f57-5cb2-83ad-9083b07412d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66063fa9-212b-51d2-bbef-82d939877364', 1), '184d6a9a5edf213d60071d1a36a2da5afc735fd9b767c94b5d4bb3ab2de56213',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3', 1436, '2026-09-13 06:59:39.436713', 'aa4e272063a5ea761a313d01781233ced206dfe9e079164bd2a243bc7a66f12c', 'validated', '{"audio_key":"f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9","entity_key":"lx_home_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa4e272063a5ea761a313d01781233ced206dfe9e079164bd2a243bc7a66f12c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_05 -> audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b1bcdde-c7bd-568e-a4ab-fb85db3f3053', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '184d6a9a5edf213d60071d1a36a2da5afc735fd9b767c94b5d4bb3ab2de56213'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b84c527-77da-548c-acd8-3745aeb46895', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b1bcdde-c7bd-568e-a4ab-fb85db3f3053', 1), '184d6a9a5edf213d60071d1a36a2da5afc735fd9b767c94b5d4bb3ab2de56213',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3', 1436, '2026-09-13 06:59:39.436713', 'aa4e272063a5ea761a313d01781233ced206dfe9e079164bd2a243bc7a66f12c', 'validated', '{"audio_key":"f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9","entity_key":"wf_home_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa4e272063a5ea761a313d01781233ced206dfe9e079164bd2a243bc7a66f12c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74958b61b92a1a0e6f6f08a9f4a757a809882d3ed5ea3da00746bdcd1891de9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_02 -> audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3293830-a3e6-5222-9956-1a1aad23e0fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6784a428284f2e380c61a0838fae101d39463ed9e0ed6a377cca96c6c4c9cfb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b00a278f-f2fb-5fe3-a6b6-9bedd851640e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3293830-a3e6-5222-9956-1a1aad23e0fa', 1), '6784a428284f2e380c61a0838fae101d39463ed9e0ed6a377cca96c6c4c9cfb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3', 1253, '2026-09-13 06:59:40.247420', 'aef99fa0eaed8b7ae383b7160625f96633c7da7ac7dff5624e20d65f0f3f0516', 'validated', '{"audio_key":"fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff","entity_key":"lx_home_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aef99fa0eaed8b7ae383b7160625f96633c7da7ac7dff5624e20d65f0f3f0516","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_02 -> audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94ddc56b-17d7-5cdd-ba53-b885938785f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6784a428284f2e380c61a0838fae101d39463ed9e0ed6a377cca96c6c4c9cfb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a071d214-5aed-5824-8b03-1c0f1aebb43e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94ddc56b-17d7-5cdd-ba53-b885938785f6', 1), '6784a428284f2e380c61a0838fae101d39463ed9e0ed6a377cca96c6c4c9cfb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3', 1253, '2026-09-13 06:59:40.247420', 'aef99fa0eaed8b7ae383b7160625f96633c7da7ac7dff5624e20d65f0f3f0516', 'validated', '{"audio_key":"fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff","entity_key":"wf_home_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aef99fa0eaed8b7ae383b7160625f96633c7da7ac7dff5624e20d65f0f3f0516","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fb688549ca7862e2211c37f72b210453da9f53cd5aba36b64c44ba158aece3ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_repairs_03 -> audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aa674988-39eb-572b-bc8e-2df1096064af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64adc7b61f5f4f41b7fe993d83da99f94a1b655ab2b3b21c2c5998825e16ebe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4dfd327-7370-5da6-b9ac-f8b4e269ef13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aa674988-39eb-572b-bc8e-2df1096064af', 1), 'c64adc7b61f5f4f41b7fe993d83da99f94a1b655ab2b3b21c2c5998825e16ebe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3', 1201, '2026-09-13 06:59:40.374440', '6ec0f5e216ace9ec023a77f6c7a4e3a425c22d65dee48a5161b284c39fb376b1', 'validated', '{"audio_key":"ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a","entity_key":"lx_home_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ec0f5e216ace9ec023a77f6c7a4e3a425c22d65dee48a5161b284c39fb376b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_repairs_03 -> audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45bf3be5-874c-5720-8a58-d45c8a41cd17', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64adc7b61f5f4f41b7fe993d83da99f94a1b655ab2b3b21c2c5998825e16ebe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f52f344e-b091-5ab5-ad3c-513ab4853db7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45bf3be5-874c-5720-8a58-d45c8a41cd17', 1), 'c64adc7b61f5f4f41b7fe993d83da99f94a1b655ab2b3b21c2c5998825e16ebe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3', 1201, '2026-09-13 06:59:40.374440', '6ec0f5e216ace9ec023a77f6c7a4e3a425c22d65dee48a5161b284c39fb376b1', 'validated', '{"audio_key":"ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a","entity_key":"wf_home_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ec0f5e216ace9ec023a77f6c7a4e3a425c22d65dee48a5161b284c39fb376b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff2ab8f43d2f48787a0112d9c0c34dfaa72544b199c9d4824bc0b5d935763e9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_04 -> audio/generated/de-DE/utterances/0379cbbd8131b96a15f526bcb1c65533d56a0b47de80905fb82ddb6f49014599.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a1c478c1-21dd-50e8-9b0a-2786eb4eece6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '610a96598796a38224cffca36f360a6c75e188a8c5443720245805eb012485af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eca8f1a-7640-508e-af17-edd99737f6a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a1c478c1-21dd-50e8-9b0a-2786eb4eece6', 1), '610a96598796a38224cffca36f360a6c75e188a8c5443720245805eb012485af',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0379cbbd8131b96a15f526bcb1c65533d56a0b47de80905fb82ddb6f49014599.mp3', 3840, '2026-09-13 06:59:41.598159', '67ad122def84e360c5e63084b75ccfe9f9794acbf673e3ee82917c6b4e8c13b8', 'validated', '{"audio_key":"0379cbbd8131b96a15f526bcb1c65533d56a0b47de80905fb82ddb6f49014599","entity_key":"u_moving_relocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"67ad122def84e360c5e63084b75ccfe9f9794acbf673e3ee82917c6b4e8c13b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0379cbbd8131b96a15f526bcb1c65533d56a0b47de80905fb82ddb6f49014599.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_04 -> audio/generated/de-DE/utterances/06d9bcf9bdeaad4bb3d389a2d7206bce6d519b1688d2ac71af911c3cb7fde564.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85994fb6-532c-544b-98ca-b6de742bee41', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37d93edbc09a404473ef672da69b154ce746f031efaa5604a6530f4244000f42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0581e3f3-0538-5764-9ca6-067e94029f86', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85994fb6-532c-544b-98ca-b6de742bee41', 1), '37d93edbc09a404473ef672da69b154ce746f031efaa5604a6530f4244000f42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06d9bcf9bdeaad4bb3d389a2d7206bce6d519b1688d2ac71af911c3cb7fde564.mp3', 5381, '2026-09-13 06:59:41.820078', '72a895ca26464b1485b58e4e9bc6a79f58ede40a30b2ad425b926ed8dcc4f929', 'validated', '{"audio_key":"06d9bcf9bdeaad4bb3d389a2d7206bce6d519b1688d2ac71af911c3cb7fde564","entity_key":"u_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72a895ca26464b1485b58e4e9bc6a79f58ede40a30b2ad425b926ed8dcc4f929","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06d9bcf9bdeaad4bb3d389a2d7206bce6d519b1688d2ac71af911c3cb7fde564.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_05 -> audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c9a298b1-d3dd-574c-b254-3917e43ab158', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e90f5c96c5986e5a3f34235d344d84f834679979af26e0192fea7e35900eb4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62e7b4e2-7939-5622-bfb5-48561f94df0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c9a298b1-d3dd-574c-b254-3917e43ab158', 1), '8e90f5c96c5986e5a3f34235d344d84f834679979af26e0192fea7e35900eb4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3', 3343, '2026-09-13 06:59:42.832357', '7f23dd7ff7e30f35b0aa6053543efe6e72b8b42d8fc9ab2b848441faf0d8089a', 'validated', '{"audio_key":"090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77","entity_key":"u_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f23dd7ff7e30f35b0aa6053543efe6e72b8b42d8fc9ab2b848441faf0d8089a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_03_listen -> audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c2ef9137-6e9d-58da-ba80-60c2995b94af', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e90f5c96c5986e5a3f34235d344d84f834679979af26e0192fea7e35900eb4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1174db2-2921-54dd-b445-0ab7a626d828', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c2ef9137-6e9d-58da-ba80-60c2995b94af', 1), '8e90f5c96c5986e5a3f34235d344d84f834679979af26e0192fea7e35900eb4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3', 3343, '2026-09-13 06:59:42.832357', '7f23dd7ff7e30f35b0aa6053543efe6e72b8b42d8fc9ab2b848441faf0d8089a', 'validated', '{"audio_key":"090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77","entity_key":"ex_contracts_subscriptions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f23dd7ff7e30f35b0aa6053543efe6e72b8b42d8fc9ab2b848441faf0d8089a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/090afaf3b1e0c4720bfc22db96d73dbe1e8e5e6d080ec97b91b03d14c6f24d77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_03 -> audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a76b288-b5c6-5581-be8f-ddb42f882d1b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca4d7b09a059f4651b889d000a689de014345763903f78d32bbb7badcf031912'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95a2371f-deeb-5f78-a2e4-edad601dab63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a76b288-b5c6-5581-be8f-ddb42f882d1b', 1), 'ca4d7b09a059f4651b889d000a689de014345763903f78d32bbb7badcf031912',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3', 4832, '2026-09-13 06:59:43.185485', '2abbde31835e6be6f0887dd176cd863868cccf1b920fa7cc8360f3ea8e86397b', 'validated', '{"audio_key":"1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0","entity_key":"u_doctor_visit_followup_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2abbde31835e6be6f0887dd176cd863868cccf1b920fa7cc8360f3ea8e86397b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_doctor_visit_followup_02_listen -> audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a1e2dbc8-5a6f-5b41-942c-8c9de4e0d79d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_doctor_visit_followup_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca4d7b09a059f4651b889d000a689de014345763903f78d32bbb7badcf031912'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab2a8047-dd84-5720-a5f5-3d0c4f3a3da5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a1e2dbc8-5a6f-5b41-942c-8c9de4e0d79d', 1), 'ca4d7b09a059f4651b889d000a689de014345763903f78d32bbb7badcf031912',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3', 4832, '2026-09-13 06:59:43.185485', '2abbde31835e6be6f0887dd176cd863868cccf1b920fa7cc8360f3ea8e86397b', 'validated', '{"audio_key":"1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0","entity_key":"ex_doctor_visit_followup_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2abbde31835e6be6f0887dd176cd863868cccf1b920fa7cc8360f3ea8e86397b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f539b3d0df1172baf49138018ed2106bfdd85f36da42d44c1810b5506d33ef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_06 -> audio/generated/de-DE/utterances/2246beb0092e5f72812ddca26091e6b0720dbc6cd97b79eee66e73e5d297832d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('65fc54d9-4640-52e5-8027-2096e393be93', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b721952394420f24be359cca22c4d8ce3dd4256f18df65b6dadb44c7e09334'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cf582e4-359c-5caa-96b6-48d5a14cb14d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('65fc54d9-4640-52e5-8027-2096e393be93', 1), 'a0b721952394420f24be359cca22c4d8ce3dd4256f18df65b6dadb44c7e09334',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2246beb0092e5f72812ddca26091e6b0720dbc6cd97b79eee66e73e5d297832d.mp3', 4179, '2026-09-13 06:59:44.270919', '65b4a0a2f9517316a90abef6d7490a1832195c31bf0d2df38744af8551e6ddb6', 'validated', '{"audio_key":"2246beb0092e5f72812ddca26091e6b0720dbc6cd97b79eee66e73e5d297832d","entity_key":"u_invitations_hosting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65b4a0a2f9517316a90abef6d7490a1832195c31bf0d2df38744af8551e6ddb6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2246beb0092e5f72812ddca26091e6b0720dbc6cd97b79eee66e73e5d297832d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_06 -> audio/generated/de-DE/utterances/240e232f4d5168291bd25e065267e01a7185bcbac32444e9e61b90a9f92de84b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16fc2e8e-4b47-5d8d-b532-ad396e3cd41c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e769cd3b82171abef8d9864617e321c1c75834f0b3ff6bd4881af649232685f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7db39b25-9e1d-54e8-b7f3-5ef498abe0c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16fc2e8e-4b47-5d8d-b532-ad396e3cd41c', 1), 'e769cd3b82171abef8d9864617e321c1c75834f0b3ff6bd4881af649232685f2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/240e232f4d5168291bd25e065267e01a7185bcbac32444e9e61b90a9f92de84b.mp3', 5250, '2026-09-13 06:59:44.582070', 'f26d61a16fcef58c876377952808e185467ef49492af4adfd5a9c403f2c1150c', 'validated', '{"audio_key":"240e232f4d5168291bd25e065267e01a7185bcbac32444e9e61b90a9f92de84b","entity_key":"u_work_feedback_teamwork_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f26d61a16fcef58c876377952808e185467ef49492af4adfd5a9c403f2c1150c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/240e232f4d5168291bd25e065267e01a7185bcbac32444e9e61b90a9f92de84b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_04 -> audio/generated/de-DE/utterances/2458aaddbb5addd44f6213cca76f0251e9096377f168f9aea903dc1866acbe6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b9cb2587-3caf-5ba9-b7ae-6fcadb2825e5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc8b734b510b9a665e72c785f5587568b49dcfff88eecc65edc993edd5858cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ff13f6f-1b25-5e73-b3d0-22680e6ece49', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b9cb2587-3caf-5ba9-b7ae-6fcadb2825e5', 1), 'dcc8b734b510b9a665e72c785f5587568b49dcfff88eecc65edc993edd5858cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2458aaddbb5addd44f6213cca76f0251e9096377f168f9aea903dc1866acbe6c.mp3', 5616, '2026-09-13 06:59:45.791925', 'd05967d137c9cee34e951823b40c4149ba23522332936b44460c1d3befe45f01', 'validated', '{"audio_key":"2458aaddbb5addd44f6213cca76f0251e9096377f168f9aea903dc1866acbe6c","entity_key":"u_goals_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d05967d137c9cee34e951823b40c4149ba23522332936b44460c1d3befe45f01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2458aaddbb5addd44f6213cca76f0251e9096377f168f9aea903dc1866acbe6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_06 -> audio/generated/de-DE/utterances/29da5a11750683e40b350c09b99238751ea1921a75d3f37f69613bd0a52309bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16be72d1-0e41-594f-b3ef-23a4ebe823ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '573ed5938011190b752c48857dfa0ac623ab206828e6bd0c295843d0dce86317'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1db5ae8-accd-5b6e-b472-aebaa02c10d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16be72d1-0e41-594f-b3ef-23a4ebe823ca', 1), '573ed5938011190b752c48857dfa0ac623ab206828e6bd0c295843d0dce86317',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/29da5a11750683e40b350c09b99238751ea1921a75d3f37f69613bd0a52309bd.mp3', 5459, '2026-09-13 06:59:46.079195', '42cece9096092252fed98aca351e4bf0b47ead2354fe173d4eaa2ec8ae7983eb', 'validated', '{"audio_key":"29da5a11750683e40b350c09b99238751ea1921a75d3f37f69613bd0a52309bd","entity_key":"u_online_accounts_privacy_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42cece9096092252fed98aca351e4bf0b47ead2354fe173d4eaa2ec8ae7983eb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/29da5a11750683e40b350c09b99238751ea1921a75d3f37f69613bd0a52309bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_03 -> audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('864be0bb-e867-50c6-9df2-b49ec5c668bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '493bbf0e3fd98fca0c15ef10c409cfb18337ea839e8a39e181de64cd7d070cd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db8f3a69-39ff-5026-bc0c-43c1c59c2929', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('864be0bb-e867-50c6-9df2-b49ec5c668bd', 1), '493bbf0e3fd98fca0c15ef10c409cfb18337ea839e8a39e181de64cd7d070cd8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3', 3604, '2026-09-13 06:59:46.974523', '98090189c7e66e338e60028e660fcd0c161634760680eb4bf6d0ab785ded80a4', 'validated', '{"audio_key":"2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7","entity_key":"u_city_services_public_places_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98090189c7e66e338e60028e660fcd0c161634760680eb4bf6d0ab785ded80a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_city_services_public_places_02_listen -> audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6577750d-5725-511d-8142-54a52e1ff0d6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_city_services_public_places_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '493bbf0e3fd98fca0c15ef10c409cfb18337ea839e8a39e181de64cd7d070cd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30b1fb63-3151-5457-b39a-f2712d854351', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6577750d-5725-511d-8142-54a52e1ff0d6', 1), '493bbf0e3fd98fca0c15ef10c409cfb18337ea839e8a39e181de64cd7d070cd8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3', 3604, '2026-09-13 06:59:46.974523', '98090189c7e66e338e60028e660fcd0c161634760680eb4bf6d0ab785ded80a4', 'validated', '{"audio_key":"2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7","entity_key":"ex_city_services_public_places_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98090189c7e66e338e60028e660fcd0c161634760680eb4bf6d0ab785ded80a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2ced8d80886be2bc293187b0e0ae512103206ad0c95f7a6359a81140557ae4b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_03 -> audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('36b0014a-d117-5adf-8cb6-124f65d853d7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f2651007421734450fda6c21500f807760a530ab75a1c4c01f56bcf74695a81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5e61ebd-4514-5cea-a6cd-ed9d9c6e3e8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('36b0014a-d117-5adf-8cb6-124f65d853d7', 1), '4f2651007421734450fda6c21500f807760a530ab75a1c4c01f56bcf74695a81',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3', 3578, '2026-09-13 06:59:47.283522', 'f0d481b8e88143c390882cd2e07f2dc5ac85c11be277e03183f675064ae0034c', 'validated', '{"audio_key":"302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e","entity_key":"u_moving_relocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0d481b8e88143c390882cd2e07f2dc5ac85c11be277e03183f675064ae0034c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_moving_relocation_02_listen -> audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('16db39b5-c27e-536d-8ece-919a0c3833ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_moving_relocation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f2651007421734450fda6c21500f807760a530ab75a1c4c01f56bcf74695a81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31db88c7-5afc-5929-b999-e6a6d7fabd03', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('16db39b5-c27e-536d-8ece-919a0c3833ca', 1), '4f2651007421734450fda6c21500f807760a530ab75a1c4c01f56bcf74695a81',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3', 3578, '2026-09-13 06:59:47.283522', 'f0d481b8e88143c390882cd2e07f2dc5ac85c11be277e03183f675064ae0034c', 'validated', '{"audio_key":"302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e","entity_key":"ex_moving_relocation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0d481b8e88143c390882cd2e07f2dc5ac85c11be277e03183f675064ae0034c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/302592730d1ab4abf7fbf8dcfce848ace298d7161acbcaa27eb36e4c29026f7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_01 -> audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a498b0c9-067c-5912-8742-b6ed69c51928', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2831970fd603f59b1dd7a9d5552f34e464d84a39d9634f60579a9fd038171d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9c84257-bdc9-5b2f-8dfc-1f7741ece5a8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a498b0c9-067c-5912-8742-b6ed69c51928', 1), 'b2831970fd603f59b1dd7a9d5552f34e464d84a39d9634f60579a9fd038171d9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3', 4623, '2026-09-13 06:59:48.384485', '072307edb8547d192f403a5f26e2253cbfa8c7d63d2484330b0680002764faf9', 'validated', '{"audio_key":"354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95","entity_key":"u_work_feedback_teamwork_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"072307edb8547d192f403a5f26e2253cbfa8c7d63d2484330b0680002764faf9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_feedback_teamwork_01_listen -> audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9b10b425-09ea-549b-8ee2-6bbcd1430270', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_feedback_teamwork_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2831970fd603f59b1dd7a9d5552f34e464d84a39d9634f60579a9fd038171d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('388ae969-c4a8-577b-9c94-67adab97688d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9b10b425-09ea-549b-8ee2-6bbcd1430270', 1), 'b2831970fd603f59b1dd7a9d5552f34e464d84a39d9634f60579a9fd038171d9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3', 4623, '2026-09-13 06:59:48.384485', '072307edb8547d192f403a5f26e2253cbfa8c7d63d2484330b0680002764faf9', 'validated', '{"audio_key":"354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95","entity_key":"ex_work_feedback_teamwork_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"072307edb8547d192f403a5f26e2253cbfa8c7d63d2484330b0680002764faf9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/354d0265581fb83e6f6ba083319a33b1c63afe33f73252be97a23aa4ae4fca95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_02 -> audio/generated/de-DE/utterances/3d194de7f3ff0dd1dab76773378fa6fb9d982f5e45d40ba0a81d6e666289697c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d3f2a03-dc0c-5cc3-b7bc-a70af0d3560c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '116706b0f034cd6a00b4ef755cc791461b0050562d7dadcac9ea4306724a1e17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0c70751-cee0-5604-b0b5-7b8d5bd54c52', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d3f2a03-dc0c-5cc3-b7bc-a70af0d3560c', 1), '116706b0f034cd6a00b4ef755cc791461b0050562d7dadcac9ea4306724a1e17',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3d194de7f3ff0dd1dab76773378fa6fb9d982f5e45d40ba0a81d6e666289697c.mp3', 5198, '2026-09-13 06:59:48.736125', '9820d83a865f4e9f5775de9735cf487e585d9351433e759858ad74fa22389758', 'validated', '{"audio_key":"3d194de7f3ff0dd1dab76773378fa6fb9d982f5e45d40ba0a81d6e666289697c","entity_key":"u_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9820d83a865f4e9f5775de9735cf487e585d9351433e759858ad74fa22389758","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3d194de7f3ff0dd1dab76773378fa6fb9d982f5e45d40ba0a81d6e666289697c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_06 -> audio/generated/de-DE/utterances/42a5679d2ea09c6aea6aba4ccc1877011a3c85f367f89a9e6f5b28f461419418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0a669bb6-fc86-511a-953d-d48ac36cecc8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f9aeb22c5ac21f7fa9f9563519827052fa56c1aa00bf2948b7c4a4f441d0227'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7baf6a8-5465-5b91-8878-86a368b13828', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0a669bb6-fc86-511a-953d-d48ac36cecc8', 1), '6f9aeb22c5ac21f7fa9f9563519827052fa56c1aa00bf2948b7c4a4f441d0227',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/42a5679d2ea09c6aea6aba4ccc1877011a3c85f367f89a9e6f5b28f461419418.mp3', 5015, '2026-09-13 06:59:49.797822', '30fe615158efd452361edf0b6afe67baeed4ab18ea519b02113bd9bf1e0bdfeb', 'validated', '{"audio_key":"42a5679d2ea09c6aea6aba4ccc1877011a3c85f367f89a9e6f5b28f461419418","entity_key":"u_home_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30fe615158efd452361edf0b6afe67baeed4ab18ea519b02113bd9bf1e0bdfeb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/42a5679d2ea09c6aea6aba4ccc1877011a3c85f367f89a9e6f5b28f461419418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_05 -> audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c5be97db-6ad9-52ad-88f1-554942eda602', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39c070f2de2fcc12227191f37fe870528f2dfd79c353c87b8542d436a0c4a470'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a1e643f-c310-5681-b06e-907f561c7f4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c5be97db-6ad9-52ad-88f1-554942eda602', 1), '39c070f2de2fcc12227191f37fe870528f2dfd79c353c87b8542d436a0c4a470',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3', 5564, '2026-09-13 06:59:50.219030', '2235c9bd5cef80ed43c17562aa5a9fbe4e705536e6f703020497f9e0318525f7', 'validated', '{"audio_key":"47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a","entity_key":"u_exams_learning_stress_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2235c9bd5cef80ed43c17562aa5a9fbe4e705536e6f703020497f9e0318525f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_exams_learning_stress_03_listen -> audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c5aa1b67-a0fd-5025-b101-95cb832ffe72', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_exams_learning_stress_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39c070f2de2fcc12227191f37fe870528f2dfd79c353c87b8542d436a0c4a470'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f2cc7e3-7130-5d43-8402-64c896c43c5a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c5aa1b67-a0fd-5025-b101-95cb832ffe72', 1), '39c070f2de2fcc12227191f37fe870528f2dfd79c353c87b8542d436a0c4a470',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3', 5564, '2026-09-13 06:59:50.219030', '2235c9bd5cef80ed43c17562aa5a9fbe4e705536e6f703020497f9e0318525f7', 'validated', '{"audio_key":"47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a","entity_key":"ex_exams_learning_stress_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2235c9bd5cef80ed43c17562aa5a9fbe4e705536e6f703020497f9e0318525f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47f98a04a38d8ca0c40b36fc731635ae68c8a4afb200ca81a6e57693d41ef72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_05 -> audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9185f700-662d-54d9-b29f-549e899619ea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '558daadbe217dc6a78ee17fcf1839db1186ad58323e4eddecb2e1da59045b898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfcbf4d8-6b1f-5537-91cb-fdc9ced63eb1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9185f700-662d-54d9-b29f-549e899619ea', 1), '558daadbe217dc6a78ee17fcf1839db1186ad58323e4eddecb2e1da59045b898',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3', 4440, '2026-09-13 06:59:51.103541', '05e4d248b54f02ac27753642c0f0661715ceca07e3ae1971c82e81d698c698e3', 'validated', '{"audio_key":"4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755","entity_key":"u_online_accounts_privacy_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05e4d248b54f02ac27753642c0f0661715ceca07e3ae1971c82e81d698c698e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_online_accounts_privacy_03_listen -> audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('01420e48-c14c-56b9-b22e-fa30efbb7ec9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_online_accounts_privacy_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '558daadbe217dc6a78ee17fcf1839db1186ad58323e4eddecb2e1da59045b898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f7c6d7f-3eb7-598c-8e8e-94cd109c70c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('01420e48-c14c-56b9-b22e-fa30efbb7ec9', 1), '558daadbe217dc6a78ee17fcf1839db1186ad58323e4eddecb2e1da59045b898',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3', 4440, '2026-09-13 06:59:51.103541', '05e4d248b54f02ac27753642c0f0661715ceca07e3ae1971c82e81d698c698e3', 'validated', '{"audio_key":"4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755","entity_key":"ex_online_accounts_privacy_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05e4d248b54f02ac27753642c0f0661715ceca07e3ae1971c82e81d698c698e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e1a71d455d1605cfacdbd693feea128628988fad3d2c5cc0d1c6b386fb72755.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_04 -> audio/generated/de-DE/utterances/4e6468b77398ad43e694f64f3d95f5869b09d0cbfaf6dd49a49696a0293de5f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f082babd-7eb2-5745-babd-b79e46c06559', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40887153869d4ec388bbbb7f4887c68db84be5c5ed96f359e2f7c4fb6a69ed4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90d8b95f-7404-5847-8c85-bad8fc70c0d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f082babd-7eb2-5745-babd-b79e46c06559', 1), '40887153869d4ec388bbbb7f4887c68db84be5c5ed96f359e2f7c4fb6a69ed4a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e6468b77398ad43e694f64f3d95f5869b09d0cbfaf6dd49a49696a0293de5f7.mp3', 3578, '2026-09-13 06:59:51.417169', 'e10d96f6e6de19dbf218300d5db3291764f53e57250d2b58c834dbb72f76507c', 'validated', '{"audio_key":"4e6468b77398ad43e694f64f3d95f5869b09d0cbfaf6dd49a49696a0293de5f7","entity_key":"u_home_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e10d96f6e6de19dbf218300d5db3291764f53e57250d2b58c834dbb72f76507c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e6468b77398ad43e694f64f3d95f5869b09d0cbfaf6dd49a49696a0293de5f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_02 -> audio/generated/de-DE/utterances/540551bac7d036fb35d9c45bfea988b5924755dfb8cb38570f371e263c87b63d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e80e30f-67e0-5833-84c3-26e64daf18f2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c075864fb2733eaddbcd198162edc4d3db83046442ab2fe1c0a1001d43094dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37d79476-e3ec-5574-948f-5c6b7b181fd5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e80e30f-67e0-5833-84c3-26e64daf18f2', 1), 'c075864fb2733eaddbcd198162edc4d3db83046442ab2fe1c0a1001d43094dc3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/540551bac7d036fb35d9c45bfea988b5924755dfb8cb38570f371e263c87b63d.mp3', 4911, '2026-09-13 06:59:52.497776', 'e0921e08075e19bf7ee9de6e04d2e3f8a85dc41e3785c0f6d7eca7115faf7990', 'validated', '{"audio_key":"540551bac7d036fb35d9c45bfea988b5924755dfb8cb38570f371e263c87b63d","entity_key":"u_goals_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0921e08075e19bf7ee9de6e04d2e3f8a85dc41e3785c0f6d7eca7115faf7990","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/540551bac7d036fb35d9c45bfea988b5924755dfb8cb38570f371e263c87b63d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_02 -> audio/generated/de-DE/utterances/5a0bbd11b47952d97fa0668fc85e5d073c4077640ed00c18590db4a8ab6b94a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b33196a-9108-5ce6-8b32-93e94fa2a398', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ed474ee09ef33958f91d30a3fc176e2c8270942535e84dcb7123da798e3b4e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d14132c-80f3-55f1-a49b-8cc2180abec3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b33196a-9108-5ce6-8b32-93e94fa2a398', 1), '6ed474ee09ef33958f91d30a3fc176e2c8270942535e84dcb7123da798e3b4e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5a0bbd11b47952d97fa0668fc85e5d073c4077640ed00c18590db4a8ab6b94a6.mp3', 4858, '2026-09-13 06:59:52.805158', '2fc99a7d3f68522f8742235adcfff7e8051d73efa19ac4aa3d00b5239fcb5d94', 'validated', '{"audio_key":"5a0bbd11b47952d97fa0668fc85e5d073c4077640ed00c18590db4a8ab6b94a6","entity_key":"u_city_services_public_places_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fc99a7d3f68522f8742235adcfff7e8051d73efa19ac4aa3d00b5239fcb5d94","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5a0bbd11b47952d97fa0668fc85e5d073c4077640ed00c18590db4a8ab6b94a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_02 -> audio/generated/de-DE/utterances/633b87a0b22ab755313af5576941898305c1f2972b639cfb8aed5e4105194669.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9413953b-ca38-5db0-8eb4-20a5fe2f5539', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02f53d0a32f6824a55604222600ccf96689ada41c3759b232be8e20af387d073'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1050e632-3af1-53f0-8123-0f8ba10876d3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9413953b-ca38-5db0-8eb4-20a5fe2f5539', 1), '02f53d0a32f6824a55604222600ccf96689ada41c3759b232be8e20af387d073',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/633b87a0b22ab755313af5576941898305c1f2972b639cfb8aed5e4105194669.mp3', 4832, '2026-09-13 06:59:53.878834', '8808f76f99b2490839af337d94154bd4c7e39a469d138a1c0b14c6ebad724c28', 'validated', '{"audio_key":"633b87a0b22ab755313af5576941898305c1f2972b639cfb8aed5e4105194669","entity_key":"u_work_feedback_teamwork_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8808f76f99b2490839af337d94154bd4c7e39a469d138a1c0b14c6ebad724c28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/633b87a0b22ab755313af5576941898305c1f2972b639cfb8aed5e4105194669.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_02 -> audio/generated/de-DE/utterances/6690e3bc24401d6a39c0a2db9127bfb82868956c9811413c7c9cac788527bd94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('104facc4-123b-5da0-8f30-0a54507b66d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf4bf905bebf2107e586ab6729b016ca54eb3277514457811c282fc57e31e56a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34e168b6-0f07-5263-88b0-04ae1a62b02a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('104facc4-123b-5da0-8f30-0a54507b66d5', 1), 'cf4bf905bebf2107e586ab6729b016ca54eb3277514457811c282fc57e31e56a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6690e3bc24401d6a39c0a2db9127bfb82868956c9811413c7c9cac788527bd94.mp3', 4728, '2026-09-13 06:59:54.197846', '81486f9ce2966301e765a7cb7fe76aeb928c005ae0d22f4877d50e54dea8456d', 'validated', '{"audio_key":"6690e3bc24401d6a39c0a2db9127bfb82868956c9811413c7c9cac788527bd94","entity_key":"u_home_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81486f9ce2966301e765a7cb7fe76aeb928c005ae0d22f4877d50e54dea8456d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6690e3bc24401d6a39c0a2db9127bfb82868956c9811413c7c9cac788527bd94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_04 -> audio/generated/de-DE/utterances/67616a28d300128934954e18696e02fabac0363743a2e8a984faca64f1bc5d2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93063a03-93e6-5bdb-acb1-81e0527afd64', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '932e6765379b21e094e6aeffedf6c22c1640f62ec04457dd28d217557f7f4ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ccaeea8-360f-55a4-8392-d1116904dc38', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93063a03-93e6-5bdb-acb1-81e0527afd64', 1), '932e6765379b21e094e6aeffedf6c22c1640f62ec04457dd28d217557f7f4ad8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67616a28d300128934954e18696e02fabac0363743a2e8a984faca64f1bc5d2e.mp3', 4911, '2026-09-13 06:59:55.256758', 'da24c25800362af939f5779333e735692e59592b1ca408b80f88940bf768b288', 'validated', '{"audio_key":"67616a28d300128934954e18696e02fabac0363743a2e8a984faca64f1bc5d2e","entity_key":"u_online_accounts_privacy_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da24c25800362af939f5779333e735692e59592b1ca408b80f88940bf768b288","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67616a28d300128934954e18696e02fabac0363743a2e8a984faca64f1bc5d2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_01 -> audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9f9796b-ac82-5cf2-b465-3896f6d48861', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cac8bfad75a194d148667c3547f7f06523a5efd215ac295fbd233e4e90e432e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c8bc14e-7fe8-5a5f-8e4a-548ebfc17782', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9f9796b-ac82-5cf2-b465-3896f6d48861', 1), '9cac8bfad75a194d148667c3547f7f06523a5efd215ac295fbd233e4e90e432e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3', 3944, '2026-09-13 06:59:55.549395', 'fc6ab32c295c81b9db72a383bd3fa9b28e742211935a012e983cac579293a093', 'validated', '{"audio_key":"67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232","entity_key":"u_moving_relocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc6ab32c295c81b9db72a383bd3fa9b28e742211935a012e983cac579293a093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_moving_relocation_01_listen -> audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1d70c071-e73a-5dac-a47f-cfb513f5fcc9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_moving_relocation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cac8bfad75a194d148667c3547f7f06523a5efd215ac295fbd233e4e90e432e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d090a07-0f81-5e4f-9cd4-377695624f26', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1d70c071-e73a-5dac-a47f-cfb513f5fcc9', 1), '9cac8bfad75a194d148667c3547f7f06523a5efd215ac295fbd233e4e90e432e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3', 3944, '2026-09-13 06:59:55.549395', 'fc6ab32c295c81b9db72a383bd3fa9b28e742211935a012e983cac579293a093', 'validated', '{"audio_key":"67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232","entity_key":"ex_moving_relocation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc6ab32c295c81b9db72a383bd3fa9b28e742211935a012e983cac579293a093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67a0992eadabe54eede03f15f9b90c715f6e727fd6b8aca82151ccf1b241e232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_03 -> audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a8b08672-3550-5379-afcb-f7601ffa88ee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf77ac258d034dcd48105255729786f7ca9f7643ee5498ad99847c9af87f004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83b4afdb-4773-5536-804b-dbe27e0d7b00', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a8b08672-3550-5379-afcb-f7601ffa88ee', 1), 'ebf77ac258d034dcd48105255729786f7ca9f7643ee5498ad99847c9af87f004',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3', 3604, '2026-09-13 06:59:56.511744', 'e69c2c74989d1b86d219594380de8734952008992e270118ac0b02528ec8abb6', 'validated', '{"audio_key":"6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3","entity_key":"u_invitations_hosting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e69c2c74989d1b86d219594380de8734952008992e270118ac0b02528ec8abb6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_invitations_hosting_02_listen -> audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cd78c7c4-f822-57aa-9e36-438fa9c5141b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_invitations_hosting_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf77ac258d034dcd48105255729786f7ca9f7643ee5498ad99847c9af87f004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52fa76f7-4b39-5e1a-9ef3-779457450551', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cd78c7c4-f822-57aa-9e36-438fa9c5141b', 1), 'ebf77ac258d034dcd48105255729786f7ca9f7643ee5498ad99847c9af87f004',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3', 3604, '2026-09-13 06:59:56.511744', 'e69c2c74989d1b86d219594380de8734952008992e270118ac0b02528ec8abb6', 'validated', '{"audio_key":"6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3","entity_key":"ex_invitations_hosting_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e69c2c74989d1b86d219594380de8734952008992e270118ac0b02528ec8abb6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6fca8ea4d936e4ea19420707936b63f94d3e7a2d7b49457df035659c92282fa3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_04 -> audio/generated/de-DE/utterances/6fd443a0100d3cda8bb6e7ac60bbf71120633dc818cef146d5674e61ead6c6fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f33f6d95-e4dd-5866-880b-043fe4b76ffa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e13af22546f44ddb14a7510661449f896f917ef2a13d34742c16ade27e230ff1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d2d5f3f-fd7b-5b2b-afbb-b7e89ecece24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f33f6d95-e4dd-5866-880b-043fe4b76ffa', 1), 'e13af22546f44ddb14a7510661449f896f917ef2a13d34742c16ade27e230ff1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6fd443a0100d3cda8bb6e7ac60bbf71120633dc818cef146d5674e61ead6c6fa.mp3', 5877, '2026-09-13 06:59:57.164604', 'e0f07c05b4773b5d592513db47205dd214148aa644e7acd4c9b9690ce82c18c9', 'validated', '{"audio_key":"6fd443a0100d3cda8bb6e7ac60bbf71120633dc818cef146d5674e61ead6c6fa","entity_key":"u_city_services_public_places_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0f07c05b4773b5d592513db47205dd214148aa644e7acd4c9b9690ce82c18c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6fd443a0100d3cda8bb6e7ac60bbf71120633dc818cef146d5674e61ead6c6fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_05 -> audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7b60c53-c221-5407-965d-75645b784f36', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c20f8d199961463b8b31edff8eb7c201201d1856c93c81b7f9ceeefa119e660a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f540a94a-4383-5af5-b1b1-a90e55d9ffd3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7b60c53-c221-5407-965d-75645b784f36', 1), 'c20f8d199961463b8b31edff8eb7c201201d1856c93c81b7f9ceeefa119e660a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3', 6034, '2026-09-13 06:59:58.054261', '8c6541fd397ebb91d66634dbb00836d73bd21dcd4363b96086c8d59461bfe952', 'validated', '{"audio_key":"73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82","entity_key":"u_goals_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c6541fd397ebb91d66634dbb00836d73bd21dcd4363b96086c8d59461bfe952","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_goals_priorities_03_listen -> audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d7742e63-67ca-52fc-a4a6-c35ad9f7b1dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_goals_priorities_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c20f8d199961463b8b31edff8eb7c201201d1856c93c81b7f9ceeefa119e660a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f4d3969-0f4b-5cd3-9711-5713e17ece94', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d7742e63-67ca-52fc-a4a6-c35ad9f7b1dc', 1), 'c20f8d199961463b8b31edff8eb7c201201d1856c93c81b7f9ceeefa119e660a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3', 6034, '2026-09-13 06:59:58.054261', '8c6541fd397ebb91d66634dbb00836d73bd21dcd4363b96086c8d59461bfe952', 'validated', '{"audio_key":"73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82","entity_key":"ex_goals_priorities_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c6541fd397ebb91d66634dbb00836d73bd21dcd4363b96086c8d59461bfe952","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/73c14d76533f266459f4f4324604b27a72f149bf482e57cccd59809ddffb8d82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_02 -> audio/generated/de-DE/utterances/763cfa082598a3a347aa20ee7f9c39d619cc65dd8bc26dabc2ece18abd0cef15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('59cefe52-7dd3-5e26-9c65-4b08e6f22273', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b0fba4ffd6ada36f1da4a8e2f8c96c845c1bc76984e54bd12c95fc27091ff50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b45d240-6244-5a03-924b-493d042229c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('59cefe52-7dd3-5e26-9c65-4b08e6f22273', 1), '5b0fba4ffd6ada36f1da4a8e2f8c96c845c1bc76984e54bd12c95fc27091ff50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/763cfa082598a3a347aa20ee7f9c39d619cc65dd8bc26dabc2ece18abd0cef15.mp3', 4597, '2026-09-13 06:59:58.524604', 'fe3f5bc1a2ad8d8caf6f6450b31a79b77f94d47cc84e947a2d1c3179574dc80b', 'validated', '{"audio_key":"763cfa082598a3a347aa20ee7f9c39d619cc65dd8bc26dabc2ece18abd0cef15","entity_key":"u_moving_relocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe3f5bc1a2ad8d8caf6f6450b31a79b77f94d47cc84e947a2d1c3179574dc80b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/763cfa082598a3a347aa20ee7f9c39d619cc65dd8bc26dabc2ece18abd0cef15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_01 -> audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85c27d1f-d024-5767-aa7a-c28d56fe133e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cd52ba58a79da7e38072d8cde0ef3854b25271b0701fc459cb26eecd63a004d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8a55e68-60bb-5d21-8501-16d0c2335b1f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85c27d1f-d024-5767-aa7a-c28d56fe133e', 1), '1cd52ba58a79da7e38072d8cde0ef3854b25271b0701fc459cb26eecd63a004d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3', 4440, '2026-09-13 06:59:59.413773', 'be6906875ab5ab286f65a890baec34290ec5a511eb4b936bda5c0ea5a4012974', 'validated', '{"audio_key":"7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9","entity_key":"u_doctor_visit_followup_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be6906875ab5ab286f65a890baec34290ec5a511eb4b936bda5c0ea5a4012974","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_doctor_visit_followup_01_listen -> audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('136f5c8f-aba9-55cb-9ae0-4bc417cf10ea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_doctor_visit_followup_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cd52ba58a79da7e38072d8cde0ef3854b25271b0701fc459cb26eecd63a004d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('947d02bb-9e88-51da-97e9-0076eae0bc63', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('136f5c8f-aba9-55cb-9ae0-4bc417cf10ea', 1), '1cd52ba58a79da7e38072d8cde0ef3854b25271b0701fc459cb26eecd63a004d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3', 4440, '2026-09-13 06:59:59.413773', 'be6906875ab5ab286f65a890baec34290ec5a511eb4b936bda5c0ea5a4012974', 'validated', '{"audio_key":"7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9","entity_key":"ex_doctor_visit_followup_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be6906875ab5ab286f65a890baec34290ec5a511eb4b936bda5c0ea5a4012974","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f2ef2c089e9a8761c2fd77b731a829fb0710c98e02810baaa3506d4b34355c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_05 -> audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03b18502-2a0b-5bcf-a8ad-60d077ea2748', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44218fdf55b0d104d2dd1ef0e571962490daa114c56436383a3547b9082c2b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afa0c340-b112-52d3-8ec0-124dc151a76d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03b18502-2a0b-5bcf-a8ad-60d077ea2748', 1), '44218fdf55b0d104d2dd1ef0e571962490daa114c56436383a3547b9082c2b38',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3', 3578, '2026-09-13 06:59:59.814730', '76928368a44fe60bef0348d1d6764b1a1bbef1412f8dfc44d2bfbbc0ce852f7b', 'validated', '{"audio_key":"8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7","entity_key":"u_home_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76928368a44fe60bef0348d1d6764b1a1bbef1412f8dfc44d2bfbbc0ce852f7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_home_repairs_03_listen -> audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e8a99fc-fa9d-5912-bf39-d1417359ef0e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_home_repairs_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44218fdf55b0d104d2dd1ef0e571962490daa114c56436383a3547b9082c2b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010e48c4-e791-5a0f-9263-16a273ef6fc8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e8a99fc-fa9d-5912-bf39-d1417359ef0e', 1), '44218fdf55b0d104d2dd1ef0e571962490daa114c56436383a3547b9082c2b38',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3', 3578, '2026-09-13 06:59:59.814730', '76928368a44fe60bef0348d1d6764b1a1bbef1412f8dfc44d2bfbbc0ce852f7b', 'validated', '{"audio_key":"8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7","entity_key":"ex_home_repairs_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76928368a44fe60bef0348d1d6764b1a1bbef1412f8dfc44d2bfbbc0ce852f7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8910ef41273d9e3d091a1a52e2a5f5ed80b5f8538a0c28136f57f26aa8dea8b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_02 -> audio/generated/de-DE/utterances/8c5ae82685a59aaabcf935049a2ccb6be287ffcf7c6b6ccfc30a7f2e94652679.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81409010-2afd-51c0-9cde-785c22d2b430', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2901f3cd8d0f0d0f56e1a57add8d3d0035ec8ce5211aaed56744d1fefaa66298'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fec86f3b-4aca-54c9-bab6-eab45c27ae5b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81409010-2afd-51c0-9cde-785c22d2b430', 1), '2901f3cd8d0f0d0f56e1a57add8d3d0035ec8ce5211aaed56744d1fefaa66298',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c5ae82685a59aaabcf935049a2ccb6be287ffcf7c6b6ccfc30a7f2e94652679.mp3', 4414, '2026-09-13 07:00:00.710540', 'e79b275c13417cc2af35a26e3ffdd303f96f8328b50fe9b04b6b1d67c7ce8ae7', 'validated', '{"audio_key":"8c5ae82685a59aaabcf935049a2ccb6be287ffcf7c6b6ccfc30a7f2e94652679","entity_key":"u_doctor_visit_followup_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e79b275c13417cc2af35a26e3ffdd303f96f8328b50fe9b04b6b1d67c7ce8ae7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c5ae82685a59aaabcf935049a2ccb6be287ffcf7c6b6ccfc30a7f2e94652679.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_06 -> audio/generated/de-DE/utterances/8c75272b883401f10dcd95c33e27fbb34b9ab999e1733d5f3bc30a700879782a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a876606e-3e27-58cb-a719-214a1632d07f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72b23988bb90bb59a43107ad0d61bf1ed4b347b97a040ac90305636d2ef2ca92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43e396c5-3c54-5039-bf8e-260a9b77c93a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a876606e-3e27-58cb-a719-214a1632d07f', 1), '72b23988bb90bb59a43107ad0d61bf1ed4b347b97a040ac90305636d2ef2ca92',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c75272b883401f10dcd95c33e27fbb34b9ab999e1733d5f3bc30a700879782a.mp3', 4440, '2026-09-13 07:00:01.093396', '6b26fc834336c7807f64e3ed41be8b3c8a0937bb18ee214e8be21add486f3f86', 'validated', '{"audio_key":"8c75272b883401f10dcd95c33e27fbb34b9ab999e1733d5f3bc30a700879782a","entity_key":"u_goals_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b26fc834336c7807f64e3ed41be8b3c8a0937bb18ee214e8be21add486f3f86","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c75272b883401f10dcd95c33e27fbb34b9ab999e1733d5f3bc30a700879782a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_03 -> audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('440b5e58-1d5b-541e-84cb-db9a1027ae55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '940dc7af193c09ea5af31e48f3e1c9045260ccfb8d3a7d49d1c8deaaa144f557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87490b6b-069e-542b-b239-c96f01bbf5b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('440b5e58-1d5b-541e-84cb-db9a1027ae55', 1), '940dc7af193c09ea5af31e48f3e1c9045260ccfb8d3a7d49d1c8deaaa144f557',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3', 4075, '2026-09-13 07:00:02.041044', '926b57be4ad0d2a9088ba48a2fa854a30bf560543d795af22d36cb6640f47ba2', 'validated', '{"audio_key":"8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381","entity_key":"u_home_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"926b57be4ad0d2a9088ba48a2fa854a30bf560543d795af22d36cb6640f47ba2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_home_repairs_02_listen -> audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d1005bd6-6e1b-5212-b46a-0ceb828d5fb2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_home_repairs_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '940dc7af193c09ea5af31e48f3e1c9045260ccfb8d3a7d49d1c8deaaa144f557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4027de1-d669-5dcd-a3a1-02e524e9ca8f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d1005bd6-6e1b-5212-b46a-0ceb828d5fb2', 1), '940dc7af193c09ea5af31e48f3e1c9045260ccfb8d3a7d49d1c8deaaa144f557',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3', 4075, '2026-09-13 07:00:02.041044', '926b57be4ad0d2a9088ba48a2fa854a30bf560543d795af22d36cb6640f47ba2', 'validated', '{"audio_key":"8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381","entity_key":"ex_home_repairs_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"926b57be4ad0d2a9088ba48a2fa854a30bf560543d795af22d36cb6640f47ba2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e8d77eb77a76e6859e8b5a07c7d70463973a2a30320973f197e13909d273381.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_02 -> audio/generated/de-DE/utterances/91997bdedb82cc5d61927a321ad5b9a2f64d326fe8047e96c0dc70e28f9b4911.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8fe2cfe4-1833-58a8-b0b9-4db0e9d4c176', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8cfdbeb944a2394f1e85400d5d9a55d9c8ff035b7fbc8bfc63eea69743da94c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64883396-d666-5580-bfce-bf3764615ff1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8fe2cfe4-1833-58a8-b0b9-4db0e9d4c176', 1), 'e8cfdbeb944a2394f1e85400d5d9a55d9c8ff035b7fbc8bfc63eea69743da94c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/91997bdedb82cc5d61927a321ad5b9a2f64d326fe8047e96c0dc70e28f9b4911.mp3', 3996, '2026-09-13 07:00:02.360250', 'c3fbef5df130f76993a419f8e9bba913b92356aa3ec8a2850a4202ef6fb0da4a', 'validated', '{"audio_key":"91997bdedb82cc5d61927a321ad5b9a2f64d326fe8047e96c0dc70e28f9b4911","entity_key":"u_exams_learning_stress_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3fbef5df130f76993a419f8e9bba913b92356aa3ec8a2850a4202ef6fb0da4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/91997bdedb82cc5d61927a321ad5b9a2f64d326fe8047e96c0dc70e28f9b4911.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_06 -> audio/generated/de-DE/utterances/950aa5aec3d7b81235142d0d40231ecd1536ea415e29a50e39b5bede9eb87db3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('281e1677-18ad-5d9a-b5c5-8d6d5dad7bd7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '179e14433daa67f876287d72e9046a208e69b7c66f4081c2fa0beb26aa38fe99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e5d1559-32dd-52b4-9293-a85286386fd8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('281e1677-18ad-5d9a-b5c5-8d6d5dad7bd7', 1), '179e14433daa67f876287d72e9046a208e69b7c66f4081c2fa0beb26aa38fe99',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/950aa5aec3d7b81235142d0d40231ecd1536ea415e29a50e39b5bede9eb87db3.mp3', 3787, '2026-09-13 07:00:03.379091', 'ee43dd14bb541a246ea2a0cae5bd1eb74fadcd860ef54438bed5125ae2548567', 'validated', '{"audio_key":"950aa5aec3d7b81235142d0d40231ecd1536ea415e29a50e39b5bede9eb87db3","entity_key":"u_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee43dd14bb541a246ea2a0cae5bd1eb74fadcd860ef54438bed5125ae2548567","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/950aa5aec3d7b81235142d0d40231ecd1536ea415e29a50e39b5bede9eb87db3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_05 -> audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db3c47cf-d0f1-525e-943b-d7e236e1542f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ecff38a0f2f09374ad7987fc068df8606e38e8488a3efb21c57c9b4f41c80c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4ff9b70-25b8-5080-a861-c0f42ebf7454', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db3c47cf-d0f1-525e-943b-d7e236e1542f', 1), '6ecff38a0f2f09374ad7987fc068df8606e38e8488a3efb21c57c9b4f41c80c2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3', 5328, '2026-09-13 07:00:03.795118', '69b4212ddf7366e2ace06b9b9991f1f0d719d35d6d0a1bbee101403651485f7c', 'validated', '{"audio_key":"95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84","entity_key":"u_moving_relocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69b4212ddf7366e2ace06b9b9991f1f0d719d35d6d0a1bbee101403651485f7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_moving_relocation_03_listen -> audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('53b6fa19-a50f-5817-b96f-69d05c6a421b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_moving_relocation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ecff38a0f2f09374ad7987fc068df8606e38e8488a3efb21c57c9b4f41c80c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af9b2049-66ee-57c2-8145-4062766fa647', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('53b6fa19-a50f-5817-b96f-69d05c6a421b', 1), '6ecff38a0f2f09374ad7987fc068df8606e38e8488a3efb21c57c9b4f41c80c2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3', 5328, '2026-09-13 07:00:03.795118', '69b4212ddf7366e2ace06b9b9991f1f0d719d35d6d0a1bbee101403651485f7c', 'validated', '{"audio_key":"95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84","entity_key":"ex_moving_relocation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69b4212ddf7366e2ace06b9b9991f1f0d719d35d6d0a1bbee101403651485f7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/95b09e5d486a3f7c7719fbbc5d79251f5fc386b8cdf584d448784214ce77fc84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_02 -> audio/generated/de-DE/utterances/97924ca6244e8b371a89270ca16e985e4497e5baeed8e72479cf47a1c9262ae6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9124de09-e89c-5e54-8c3c-5d8eebf8c4de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b21103cf9d361025433c27c6164012a3432e4d15a15ad25494735db10bf764a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a020ab2-559d-5a09-83fc-7b086e3e5607', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9124de09-e89c-5e54-8c3c-5d8eebf8c4de', 1), 'b21103cf9d361025433c27c6164012a3432e4d15a15ad25494735db10bf764a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/97924ca6244e8b371a89270ca16e985e4497e5baeed8e72479cf47a1c9262ae6.mp3', 4780, '2026-09-13 07:00:04.735576', '662f6829475e37ed51e54e8a24c4745d20e6e1183ab1a8aa275b09a81ecd800a', 'validated', '{"audio_key":"97924ca6244e8b371a89270ca16e985e4497e5baeed8e72479cf47a1c9262ae6","entity_key":"u_invitations_hosting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"662f6829475e37ed51e54e8a24c4745d20e6e1183ab1a8aa275b09a81ecd800a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/97924ca6244e8b371a89270ca16e985e4497e5baeed8e72479cf47a1c9262ae6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_06 -> audio/generated/de-DE/utterances/9a7181b43b6793f9428982ea76f42d919d9d2f1dc6f467a13e866dab21be359f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ef482f65-0c29-5489-b6a0-2488ca3ec4fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4413e927263829b3d9141be1a7987d08ff6b01213e7c54e3a354b0cac5bdf9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1295d099-dba6-5c82-8db5-3509c55a815b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ef482f65-0c29-5489-b6a0-2488ca3ec4fd', 1), 'a4413e927263829b3d9141be1a7987d08ff6b01213e7c54e3a354b0cac5bdf9f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9a7181b43b6793f9428982ea76f42d919d9d2f1dc6f467a13e866dab21be359f.mp3', 4597, '2026-09-13 07:00:05.160839', '68da700514f60651e019beffb46b8f3a947894c75b92299d7423476a5eee524e', 'validated', '{"audio_key":"9a7181b43b6793f9428982ea76f42d919d9d2f1dc6f467a13e866dab21be359f","entity_key":"u_exams_learning_stress_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68da700514f60651e019beffb46b8f3a947894c75b92299d7423476a5eee524e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9a7181b43b6793f9428982ea76f42d919d9d2f1dc6f467a13e866dab21be359f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_04 -> audio/generated/de-DE/utterances/a0c83b2db4f5bba22c255016591909c64d766ac153485c7ed858ec6d7eafc7eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('805b1bc6-5875-570e-984b-c49662fa9912', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a101deda918ce510c2b1bdadae1c02e7270e8cb1cf1f79384cd779d81ddd019'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e73af4b-9c4c-54fd-a29d-a4aa187b1b66', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('805b1bc6-5875-570e-984b-c49662fa9912', 1), '1a101deda918ce510c2b1bdadae1c02e7270e8cb1cf1f79384cd779d81ddd019',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a0c83b2db4f5bba22c255016591909c64d766ac153485c7ed858ec6d7eafc7eb.mp3', 4493, '2026-09-13 07:00:06.027458', '3c18f744e87b41db8ab1d987b4041fd9857dfa0a62c7105d67d8e0d1dcc0ef78', 'validated', '{"audio_key":"a0c83b2db4f5bba22c255016591909c64d766ac153485c7ed858ec6d7eafc7eb","entity_key":"u_exams_learning_stress_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c18f744e87b41db8ab1d987b4041fd9857dfa0a62c7105d67d8e0d1dcc0ef78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a0c83b2db4f5bba22c255016591909c64d766ac153485c7ed858ec6d7eafc7eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_01 -> audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb6a000a-92e0-5dbd-aa03-5c96651dc063', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cbbcea5129267fd02fb92f062124100d8027cf1ab014550ad6bf83cb8f63d7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38bc4ce0-7962-51cd-860e-3ce59e7d438a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb6a000a-92e0-5dbd-aa03-5c96651dc063', 1), '7cbbcea5129267fd02fb92f062124100d8027cf1ab014550ad6bf83cb8f63d7c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3', 5041, '2026-09-13 07:00:06.572976', '7527502f2444db0f0d1b0e36076e15c4c30fe5980c31ad0ef53fcb054c0b00b6', 'validated', '{"audio_key":"aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d","entity_key":"u_exams_learning_stress_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7527502f2444db0f0d1b0e36076e15c4c30fe5980c31ad0ef53fcb054c0b00b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_exams_learning_stress_01_listen -> audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1e90f696-c2e6-5207-a3a6-1445f5d9c74c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_exams_learning_stress_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cbbcea5129267fd02fb92f062124100d8027cf1ab014550ad6bf83cb8f63d7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57b4e8ef-be2d-512e-b4af-c1d70abe6893', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1e90f696-c2e6-5207-a3a6-1445f5d9c74c', 1), '7cbbcea5129267fd02fb92f062124100d8027cf1ab014550ad6bf83cb8f63d7c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3', 5041, '2026-09-13 07:00:06.572976', '7527502f2444db0f0d1b0e36076e15c4c30fe5980c31ad0ef53fcb054c0b00b6', 'validated', '{"audio_key":"aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d","entity_key":"ex_exams_learning_stress_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7527502f2444db0f0d1b0e36076e15c4c30fe5980c31ad0ef53fcb054c0b00b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aab3941e2315fa58f81b335a5c8d1e54c397bfcd1ab152400f1c1cdfaa23ef0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_03 -> audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c550f25a-a35b-523a-8cfe-e139d91a844b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63283242377214017607d24d3282792ed7921414ff47b976d067c3ff7579aa7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef893bea-afcf-55f0-a25a-5e9c937227d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c550f25a-a35b-523a-8cfe-e139d91a844b', 1), '63283242377214017607d24d3282792ed7921414ff47b976d067c3ff7579aa7a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3', 5982, '2026-09-13 07:00:07.515829', 'b554cbd65f2afd868ad1aeebe3997fc83d5ea6051e2d940bf14af6a0012f1144', 'validated', '{"audio_key":"ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480","entity_key":"u_goals_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b554cbd65f2afd868ad1aeebe3997fc83d5ea6051e2d940bf14af6a0012f1144","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_goals_priorities_02_listen -> audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('eaceb6b4-11fe-5827-b9a4-2eb773d5db97', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_goals_priorities_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63283242377214017607d24d3282792ed7921414ff47b976d067c3ff7579aa7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88917bb3-0dad-5af0-8f7d-002771bd980a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('eaceb6b4-11fe-5827-b9a4-2eb773d5db97', 1), '63283242377214017607d24d3282792ed7921414ff47b976d067c3ff7579aa7a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3', 5982, '2026-09-13 07:00:07.515829', 'b554cbd65f2afd868ad1aeebe3997fc83d5ea6051e2d940bf14af6a0012f1144', 'validated', '{"audio_key":"ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480","entity_key":"ex_goals_priorities_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b554cbd65f2afd868ad1aeebe3997fc83d5ea6051e2d940bf14af6a0012f1144","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad13299c2da16a4f79c6787c8771a27f90eca0ac670666a49978142046347480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_05 -> audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('485258c0-16b0-59d6-b41f-b749830a81b9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28d9e26bfb708b0deb6cd565904a05c4acbd4e00e499fe748bae18dd2fdcd14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2ce8e31-6551-5640-bc43-eecf662e611a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('485258c0-16b0-59d6-b41f-b749830a81b9', 1), 'd28d9e26bfb708b0deb6cd565904a05c4acbd4e00e499fe748bae18dd2fdcd14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3', 6086, '2026-09-13 07:00:08.094665', '8cd6969e322f9988ff88727047436e110f713daebb7f7a4f4e7f018b43624a9e', 'validated', '{"audio_key":"b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97","entity_key":"u_city_services_public_places_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cd6969e322f9988ff88727047436e110f713daebb7f7a4f4e7f018b43624a9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_city_services_public_places_03_listen -> audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e88557e2-0dc6-5012-b753-86213dd6c388', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_city_services_public_places_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28d9e26bfb708b0deb6cd565904a05c4acbd4e00e499fe748bae18dd2fdcd14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c86457d-ca16-5661-b1e0-9c1ac82e5aab', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e88557e2-0dc6-5012-b753-86213dd6c388', 1), 'd28d9e26bfb708b0deb6cd565904a05c4acbd4e00e499fe748bae18dd2fdcd14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3', 6086, '2026-09-13 07:00:08.094665', '8cd6969e322f9988ff88727047436e110f713daebb7f7a4f4e7f018b43624a9e', 'validated', '{"audio_key":"b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97","entity_key":"ex_city_services_public_places_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cd6969e322f9988ff88727047436e110f713daebb7f7a4f4e7f018b43624a9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b6017b350a78f50784af8eb10370fe6b04e3e716c6a799adc725d53aa7366e97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_06 -> audio/generated/de-DE/utterances/b9a41199aaf743f447141b5859239ba956029348728dce00ba71770f569c4268.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5f9f4b4e-ff84-5519-8018-e036e14535a8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c16474244d61c0673974e9fc06968d086ec1e7a1fe0723ca2dd3b76b27e4dc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14ff29f3-f12e-53dd-ae28-858cfcefd012', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5f9f4b4e-ff84-5519-8018-e036e14535a8', 1), 'c16474244d61c0673974e9fc06968d086ec1e7a1fe0723ca2dd3b76b27e4dc35',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b9a41199aaf743f447141b5859239ba956029348728dce00ba71770f569c4268.mp3', 5877, '2026-09-13 07:00:08.955952', '0088ae9ad071782919e73032463f355b0102c5fb83ab9a43acb6ae8e2d93f9be', 'validated', '{"audio_key":"b9a41199aaf743f447141b5859239ba956029348728dce00ba71770f569c4268","entity_key":"u_doctor_visit_followup_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0088ae9ad071782919e73032463f355b0102c5fb83ab9a43acb6ae8e2d93f9be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b9a41199aaf743f447141b5859239ba956029348728dce00ba71770f569c4268.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_03 -> audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f7fd18b-2aa3-55d9-af9a-8289d7aae32a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd849908804fd1fc7f77b68f2fc38083593765c1a488ef645d5ce2624978542ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d034c97-3862-5b76-a485-56b197217e6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f7fd18b-2aa3-55d9-af9a-8289d7aae32a', 1), 'd849908804fd1fc7f77b68f2fc38083593765c1a488ef645d5ce2624978542ce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3', 4440, '2026-09-13 07:00:09.405897', '9fbbeca6bb04149ff2c570d674895710832c46d3b8b811c2d3031b9a016df9dc', 'validated', '{"audio_key":"c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c","entity_key":"u_work_feedback_teamwork_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fbbeca6bb04149ff2c570d674895710832c46d3b8b811c2d3031b9a016df9dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_feedback_teamwork_02_listen -> audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bb51c00e-1153-5700-9efe-7ffe33c5749c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_feedback_teamwork_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd849908804fd1fc7f77b68f2fc38083593765c1a488ef645d5ce2624978542ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff348dd7-14da-53f7-8db7-ffee266f87eb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bb51c00e-1153-5700-9efe-7ffe33c5749c', 1), 'd849908804fd1fc7f77b68f2fc38083593765c1a488ef645d5ce2624978542ce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3', 4440, '2026-09-13 07:00:09.405897', '9fbbeca6bb04149ff2c570d674895710832c46d3b8b811c2d3031b9a016df9dc', 'validated', '{"audio_key":"c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c","entity_key":"ex_work_feedback_teamwork_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fbbeca6bb04149ff2c570d674895710832c46d3b8b811c2d3031b9a016df9dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c460876ca350a6b18803ef33bdd473bb2095ee53fbafaec31bf492619b6fd38c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_01 -> audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('942e6d6f-97c3-5d5f-9fee-ca0221083460', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd908ef673af45192df3eb647827d458add46b5546eb1a3de182bd5aa721f0db3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4da054a-1d1b-5a55-9c5f-146d9f0f46a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('942e6d6f-97c3-5d5f-9fee-ca0221083460', 1), 'd908ef673af45192df3eb647827d458add46b5546eb1a3de182bd5aa721f0db3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3', 3944, '2026-09-13 07:00:10.200454', '9d650b27b88ece330fb9b06b62a9b7956e297b04e51e55a06cc44b2254f3de78', 'validated', '{"audio_key":"c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a","entity_key":"u_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d650b27b88ece330fb9b06b62a9b7956e297b04e51e55a06cc44b2254f3de78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_01_listen -> audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7beb86fa-1d75-530e-be0d-17b559335349', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd908ef673af45192df3eb647827d458add46b5546eb1a3de182bd5aa721f0db3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5195b4d4-532f-53b9-b31a-fd6e1d480926', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7beb86fa-1d75-530e-be0d-17b559335349', 1), 'd908ef673af45192df3eb647827d458add46b5546eb1a3de182bd5aa721f0db3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3', 3944, '2026-09-13 07:00:10.200454', '9d650b27b88ece330fb9b06b62a9b7956e297b04e51e55a06cc44b2254f3de78', 'validated', '{"audio_key":"c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a","entity_key":"ex_contracts_subscriptions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d650b27b88ece330fb9b06b62a9b7956e297b04e51e55a06cc44b2254f3de78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c856866c13301c17b64ad9d9754aff4e1e55ddbcd996046e9fcc1448e0ea232a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_01 -> audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae4561e1-991d-5958-809d-3499999893c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cda7a47643ed95bb93bbcee00a0f8ab2f7b490ff809f8cbbfe413e97e635e94f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dea90fca-3b13-515b-9ca9-e6845af1b1a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae4561e1-991d-5958-809d-3499999893c6', 1), 'cda7a47643ed95bb93bbcee00a0f8ab2f7b490ff809f8cbbfe413e97e635e94f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3', 6504, '2026-09-13 07:00:11.057893', '88d5169258a5c95f416ecaddca17c4368340fab69ad6a2207d44f40fe6ce72ce', 'validated', '{"audio_key":"c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b","entity_key":"u_online_accounts_privacy_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d5169258a5c95f416ecaddca17c4368340fab69ad6a2207d44f40fe6ce72ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_online_accounts_privacy_01_listen -> audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b9e41784-4643-5ec8-9ecc-f6c583a7bd04', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_online_accounts_privacy_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cda7a47643ed95bb93bbcee00a0f8ab2f7b490ff809f8cbbfe413e97e635e94f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a1fdea5-15ef-591f-bac1-b178d80a3e85', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b9e41784-4643-5ec8-9ecc-f6c583a7bd04', 1), 'cda7a47643ed95bb93bbcee00a0f8ab2f7b490ff809f8cbbfe413e97e635e94f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3', 6504, '2026-09-13 07:00:11.057893', '88d5169258a5c95f416ecaddca17c4368340fab69ad6a2207d44f40fe6ce72ce', 'validated', '{"audio_key":"c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b","entity_key":"ex_online_accounts_privacy_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d5169258a5c95f416ecaddca17c4368340fab69ad6a2207d44f40fe6ce72ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c947c8a9861dd8ff5cc1174f3fbfc7bb9c8e7bba8625bcb1e2ec09cc5759e14b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_moving_relocation_06 -> audio/generated/de-DE/utterances/cc88e0499f75e8dfe25c304eacfd95fe7698f3687ae556e688ac53c07ee17045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49787eef-1605-573f-94eb-b944750f3898', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_moving_relocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b81f6185f33e16a60624cb76ceb041f46a75a1b0ba961de49957f748c6e8dbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa5618cd-2ef4-5f57-a1ed-3711002c929f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49787eef-1605-573f-94eb-b944750f3898', 1), '4b81f6185f33e16a60624cb76ceb041f46a75a1b0ba961de49957f748c6e8dbc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cc88e0499f75e8dfe25c304eacfd95fe7698f3687ae556e688ac53c07ee17045.mp3', 4257, '2026-09-13 07:00:11.501036', 'e5d1c6492b1aff8ddf89a594dcafc0272e452905ba3eaad31a048eccc24184f9', 'validated', '{"audio_key":"cc88e0499f75e8dfe25c304eacfd95fe7698f3687ae556e688ac53c07ee17045","entity_key":"u_moving_relocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5d1c6492b1aff8ddf89a594dcafc0272e452905ba3eaad31a048eccc24184f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cc88e0499f75e8dfe25c304eacfd95fe7698f3687ae556e688ac53c07ee17045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_01 -> audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e6a9776-d435-58b9-973d-ce9cac195a0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f512d91486c1b7a903ad88eb1665e18870b0aa0c6317b6d26fdc4fe8c8126845'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d368f522-aecc-5af1-af0e-584451c4d8d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e6a9776-d435-58b9-973d-ce9cac195a0d', 1), 'f512d91486c1b7a903ad88eb1665e18870b0aa0c6317b6d26fdc4fe8c8126845',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3', 4675, '2026-09-13 07:00:12.438325', '2b5119409b1a76116aeb4822c9eb15c4b917c17f585ffe9af7f710b84d924b0e', 'validated', '{"audio_key":"cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732","entity_key":"u_invitations_hosting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b5119409b1a76116aeb4822c9eb15c4b917c17f585ffe9af7f710b84d924b0e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_invitations_hosting_01_listen -> audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c658fe5d-2cf8-5774-b129-2e7a0f8c800d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_invitations_hosting_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f512d91486c1b7a903ad88eb1665e18870b0aa0c6317b6d26fdc4fe8c8126845'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('637260cd-4507-5a39-bd3b-d7c3f4a830c9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c658fe5d-2cf8-5774-b129-2e7a0f8c800d', 1), 'f512d91486c1b7a903ad88eb1665e18870b0aa0c6317b6d26fdc4fe8c8126845',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3', 4675, '2026-09-13 07:00:12.438325', '2b5119409b1a76116aeb4822c9eb15c4b917c17f585ffe9af7f710b84d924b0e', 'validated', '{"audio_key":"cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732","entity_key":"ex_invitations_hosting_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b5119409b1a76116aeb4822c9eb15c4b917c17f585ffe9af7f710b84d924b0e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd7558b27ad639ec9538dee8221702731fa5e3d347d595840b714f81e90de732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_repairs_01 -> audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a5089c8-7dd6-5718-83ff-c926752ba7e0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3a04cc88bd8f55e436418b82f6504c54cac5aeb93ac7cd863131af58934954'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64d6a473-b5c5-5be1-83dd-30784239fcb9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a5089c8-7dd6-5718-83ff-c926752ba7e0', 1), '2b3a04cc88bd8f55e436418b82f6504c54cac5aeb93ac7cd863131af58934954',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3', 4832, '2026-09-13 07:00:12.862733', 'ba532a616046e2a068116bdc05ef359576bcd891e42681f534037de18b1372f3', 'validated', '{"audio_key":"ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82","entity_key":"u_home_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba532a616046e2a068116bdc05ef359576bcd891e42681f534037de18b1372f3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_home_repairs_01_listen -> audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('524ea705-b48a-54b8-8c49-a96a3c24856c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_home_repairs_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3a04cc88bd8f55e436418b82f6504c54cac5aeb93ac7cd863131af58934954'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('585c5eca-e481-5d16-943c-daefbf15fc98', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('524ea705-b48a-54b8-8c49-a96a3c24856c', 1), '2b3a04cc88bd8f55e436418b82f6504c54cac5aeb93ac7cd863131af58934954',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3', 4832, '2026-09-13 07:00:12.862733', 'ba532a616046e2a068116bdc05ef359576bcd891e42681f534037de18b1372f3', 'validated', '{"audio_key":"ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82","entity_key":"ex_home_repairs_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba532a616046e2a068116bdc05ef359576bcd891e42681f534037de18b1372f3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce787e90d1322658a091673b3e5f66d510327136b02da99b70bb9d338c473e82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_02 -> audio/generated/de-DE/utterances/d1666fab46b90ed5dd23a0e15a48cdcec6c751b633ea271afd33f5e16ff396d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a495f7bf-2c3c-58b0-865a-f8b38ef3e4cd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '227e58395594fa59e8f4e0c01456373c4c7bff6b3b20391898d3c890fdc0e67a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52089e70-16ff-57fd-8561-43ea7ff4f129', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a495f7bf-2c3c-58b0-865a-f8b38ef3e4cd', 1), '227e58395594fa59e8f4e0c01456373c4c7bff6b3b20391898d3c890fdc0e67a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d1666fab46b90ed5dd23a0e15a48cdcec6c751b633ea271afd33f5e16ff396d9.mp3', 4963, '2026-09-13 07:00:13.889347', 'c93b34540673e015a3ae266cfe196042484b0648d4acf03b2940a86f9678e20e', 'validated', '{"audio_key":"d1666fab46b90ed5dd23a0e15a48cdcec6c751b633ea271afd33f5e16ff396d9","entity_key":"u_online_accounts_privacy_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c93b34540673e015a3ae266cfe196042484b0648d4acf03b2940a86f9678e20e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d1666fab46b90ed5dd23a0e15a48cdcec6c751b633ea271afd33f5e16ff396d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_04 -> audio/generated/de-DE/utterances/d2c4dce39941262b42badea684131c0fd272ed481e3c6947c3e4c6b4ea5251d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c8729614-e503-5a8e-9be2-397cccb8b687', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89eea0cbf59eabf32963e4df82f4706652e0a524053a7abf419cb7c83d890e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6e6cd3f-817e-58c0-8c74-40ec9b59cb3a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c8729614-e503-5a8e-9be2-397cccb8b687', 1), 'a89eea0cbf59eabf32963e4df82f4706652e0a524053a7abf419cb7c83d890e7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d2c4dce39941262b42badea684131c0fd272ed481e3c6947c3e4c6b4ea5251d6.mp3', 4440, '2026-09-13 07:00:14.198913', 'a5e6d7336a410c6a032af49ed2d0c9f3496162859310e17a431d4f32b65dcd85', 'validated', '{"audio_key":"d2c4dce39941262b42badea684131c0fd272ed481e3c6947c3e4c6b4ea5251d6","entity_key":"u_doctor_visit_followup_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5e6d7336a410c6a032af49ed2d0c9f3496162859310e17a431d4f32b65dcd85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d2c4dce39941262b42badea684131c0fd272ed481e3c6947c3e4c6b4ea5251d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_03 -> audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb790221-2a50-535b-911d-c33f452dc220', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '938a65251d179a9a90e2c070c6f3328460d100e38b86b146c0b6b2eb3df8bd3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df2221e1-b8c9-54e5-bdeb-e8d8d8947ed7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb790221-2a50-535b-911d-c33f452dc220', 1), '938a65251d179a9a90e2c070c6f3328460d100e38b86b146c0b6b2eb3df8bd3b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3', 4205, '2026-09-13 07:00:15.205244', 'e24046f377496945aef90c6f6c410223099202d4dcf3240c91ddd445c80e6b1b', 'validated', '{"audio_key":"d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747","entity_key":"u_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e24046f377496945aef90c6f6c410223099202d4dcf3240c91ddd445c80e6b1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_02_listen -> audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('24069bc4-995b-5a0f-bd08-cc992f60e9e9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '938a65251d179a9a90e2c070c6f3328460d100e38b86b146c0b6b2eb3df8bd3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fea7ccd6-485c-59c1-9d37-de1f745aff7c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('24069bc4-995b-5a0f-bd08-cc992f60e9e9', 1), '938a65251d179a9a90e2c070c6f3328460d100e38b86b146c0b6b2eb3df8bd3b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3', 4205, '2026-09-13 07:00:15.205244', 'e24046f377496945aef90c6f6c410223099202d4dcf3240c91ddd445c80e6b1b', 'validated', '{"audio_key":"d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747","entity_key":"ex_contracts_subscriptions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e24046f377496945aef90c6f6c410223099202d4dcf3240c91ddd445c80e6b1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d43dd8c78baa5081d741e641224a1f912c971b622e41df32ff7fbbbf66c5d747.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_doctor_visit_followup_05 -> audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3925a4d8-5f41-538d-b532-d92357423e13', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_doctor_visit_followup_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36550b6c22bb7850b7e7b111b8df3a356494627aacf631817aabbe554c3e276f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03231905-1271-5ea7-83d8-d3f8da92dac5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3925a4d8-5f41-538d-b532-d92357423e13', 1), '36550b6c22bb7850b7e7b111b8df3a356494627aacf631817aabbe554c3e276f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3', 5015, '2026-09-13 07:00:15.576680', 'cbbba5d87d1c85d7c277d985a28a23502d77d581ad56603a92ff039b60929416', 'validated', '{"audio_key":"d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c","entity_key":"u_doctor_visit_followup_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cbbba5d87d1c85d7c277d985a28a23502d77d581ad56603a92ff039b60929416","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_doctor_visit_followup_03_listen -> audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('61d1e995-8b66-597a-a9ab-407eb927ff02', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_doctor_visit_followup_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36550b6c22bb7850b7e7b111b8df3a356494627aacf631817aabbe554c3e276f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0504dbc-faf2-53af-86b4-23d1d5e67b3f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('61d1e995-8b66-597a-a9ab-407eb927ff02', 1), '36550b6c22bb7850b7e7b111b8df3a356494627aacf631817aabbe554c3e276f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3', 5015, '2026-09-13 07:00:15.576680', 'cbbba5d87d1c85d7c277d985a28a23502d77d581ad56603a92ff039b60929416', 'validated', '{"audio_key":"d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c","entity_key":"ex_doctor_visit_followup_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cbbba5d87d1c85d7c277d985a28a23502d77d581ad56603a92ff039b60929416","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d9aa5cb19f327034a37349a4cd2262cbf984792968573291a10997c0c26e201c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_priorities_01 -> audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5261ca54-8d42-573b-9302-5bc481e49623', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddbf627ab228c633685a99090bff7e0a02da2fd5f7f8eeea5b3ecf37cac47819'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e63f19a-99ad-5456-bf60-06be83ccec51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5261ca54-8d42-573b-9302-5bc481e49623', 1), 'ddbf627ab228c633685a99090bff7e0a02da2fd5f7f8eeea5b3ecf37cac47819',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3', 4623, '2026-09-13 07:00:16.579765', '9b1acee781a0cc10652d32c4b51d0536a1a852b06b48a962bf1a471a80027ca8', 'validated', '{"audio_key":"dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7","entity_key":"u_goals_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b1acee781a0cc10652d32c4b51d0536a1a852b06b48a962bf1a471a80027ca8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_goals_priorities_01_listen -> audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07250032-f891-533e-b6ba-5133c1e51891', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_goals_priorities_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddbf627ab228c633685a99090bff7e0a02da2fd5f7f8eeea5b3ecf37cac47819'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('320b50e8-660c-5a37-88e2-ee6dcd5f3f56', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07250032-f891-533e-b6ba-5133c1e51891', 1), 'ddbf627ab228c633685a99090bff7e0a02da2fd5f7f8eeea5b3ecf37cac47819',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3', 4623, '2026-09-13 07:00:16.579765', '9b1acee781a0cc10652d32c4b51d0536a1a852b06b48a962bf1a471a80027ca8', 'validated', '{"audio_key":"dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7","entity_key":"ex_goals_priorities_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b1acee781a0cc10652d32c4b51d0536a1a852b06b48a962bf1a471a80027ca8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dcbccb02c0fa2a2674453c9ce6c4d6acbb5b72316b2ba3bbe42dbe93b399cfc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_06 -> audio/generated/de-DE/utterances/e094b879e60719ea6cf83ce9c5aea469ec85a11c42af9f9d7c4469f7808e537a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dcc03b3c-a167-5f42-a43c-a68138212fc7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '142d3c5c5aad698bd3c77842189230e10a07205caef5778905b1891575ea352c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6954145-05b5-52e9-99a4-168385706fa1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dcc03b3c-a167-5f42-a43c-a68138212fc7', 1), '142d3c5c5aad698bd3c77842189230e10a07205caef5778905b1891575ea352c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e094b879e60719ea6cf83ce9c5aea469ec85a11c42af9f9d7c4469f7808e537a.mp3', 5381, '2026-09-13 07:00:17.008419', '5c978bc530ea068562b4f84d01be6789d169f0c34b4a2ec0fb43a53b199e4eb2', 'validated', '{"audio_key":"e094b879e60719ea6cf83ce9c5aea469ec85a11c42af9f9d7c4469f7808e537a","entity_key":"u_city_services_public_places_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c978bc530ea068562b4f84d01be6789d169f0c34b4a2ec0fb43a53b199e4eb2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e094b879e60719ea6cf83ce9c5aea469ec85a11c42af9f9d7c4469f7808e537a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_05 -> audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea536e08-b007-5687-8966-63daee827525', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd97b81b4714c3339587ff468dcd9009958845fb9ed6538f478d44a1f8830b40c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d85fdde1-c3e6-5e11-8c3c-b1434dcf04d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea536e08-b007-5687-8966-63daee827525', 1), 'd97b81b4714c3339587ff468dcd9009958845fb9ed6538f478d44a1f8830b40c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3', 3578, '2026-09-13 07:00:17.809750', 'a65d90683f3b9925671bd54c324da9995c6e37b80a54cc508f319f35f3950b93', 'validated', '{"audio_key":"e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93","entity_key":"u_invitations_hosting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a65d90683f3b9925671bd54c324da9995c6e37b80a54cc508f319f35f3950b93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_invitations_hosting_03_listen -> audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d7f40613-e2b1-5180-b067-dfa309cab13a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_invitations_hosting_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd97b81b4714c3339587ff468dcd9009958845fb9ed6538f478d44a1f8830b40c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20b9c35a-6d71-5551-bda7-82c234c9895e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d7f40613-e2b1-5180-b067-dfa309cab13a', 1), 'd97b81b4714c3339587ff468dcd9009958845fb9ed6538f478d44a1f8830b40c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3', 3578, '2026-09-13 07:00:17.809750', 'a65d90683f3b9925671bd54c324da9995c6e37b80a54cc508f319f35f3950b93', 'validated', '{"audio_key":"e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93","entity_key":"ex_invitations_hosting_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a65d90683f3b9925671bd54c324da9995c6e37b80a54cc508f319f35f3950b93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e1d589456cf14b37009c445dc67f6cb01b3d2d186aca65d8a37f12140f3a1f93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_exams_learning_stress_03 -> audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3218243e-c7a7-53d8-9446-183e157bdb1e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_exams_learning_stress_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34bb561602e878353a1332a3c84229910d3997d2cedc9500d4c10f16835ad312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f845e23-e762-531e-be06-48c347da331e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3218243e-c7a7-53d8-9446-183e157bdb1e', 1), '34bb561602e878353a1332a3c84229910d3997d2cedc9500d4c10f16835ad312',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3', 4545, '2026-09-13 07:00:18.353003', '587b6f4e304b383853f43ed56abd0b4acf680fc4e073e5983b4e6b2e13a5592c', 'validated', '{"audio_key":"e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead","entity_key":"u_exams_learning_stress_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"587b6f4e304b383853f43ed56abd0b4acf680fc4e073e5983b4e6b2e13a5592c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_exams_learning_stress_02_listen -> audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2542c67c-db82-5fdc-ab53-c8b9e77c1233', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_exams_learning_stress_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34bb561602e878353a1332a3c84229910d3997d2cedc9500d4c10f16835ad312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aa3931d-1aa2-5edd-8188-9e59c6ac0184', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2542c67c-db82-5fdc-ab53-c8b9e77c1233', 1), '34bb561602e878353a1332a3c84229910d3997d2cedc9500d4c10f16835ad312',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3', 4545, '2026-09-13 07:00:18.353003', '587b6f4e304b383853f43ed56abd0b4acf680fc4e073e5983b4e6b2e13a5592c', 'validated', '{"audio_key":"e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead","entity_key":"ex_exams_learning_stress_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"587b6f4e304b383853f43ed56abd0b4acf680fc4e073e5983b4e6b2e13a5592c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e278a506acba1016123a8b081bc300fdabb6f543469653b2a85e8ffcac24dead.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_city_services_public_places_01 -> audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a748aba8-b9ce-5d72-abf7-aab0b001ca73', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_city_services_public_places_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91bc1da8296bbc0888929d2154c3e626ace0d9a7a5fa3931d7fb330bf6e46c6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cc8eb14-2a66-53ba-a85d-611c3769f554', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a748aba8-b9ce-5d72-abf7-aab0b001ca73', 1), '91bc1da8296bbc0888929d2154c3e626ace0d9a7a5fa3931d7fb330bf6e46c6d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3', 5459, '2026-09-13 07:00:19.407943', 'ae8e60557c1a1a98402c95d39b620d76047df0519e728eae894834e184463b91', 'validated', '{"audio_key":"e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf","entity_key":"u_city_services_public_places_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae8e60557c1a1a98402c95d39b620d76047df0519e728eae894834e184463b91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_city_services_public_places_01_listen -> audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('db8b657c-476d-5487-af94-b6c540674719', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_city_services_public_places_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91bc1da8296bbc0888929d2154c3e626ace0d9a7a5fa3931d7fb330bf6e46c6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('050f648c-208f-560b-a8fd-39a27091251f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('db8b657c-476d-5487-af94-b6c540674719', 1), '91bc1da8296bbc0888929d2154c3e626ace0d9a7a5fa3931d7fb330bf6e46c6d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3', 5459, '2026-09-13 07:00:19.407943', 'ae8e60557c1a1a98402c95d39b620d76047df0519e728eae894834e184463b91', 'validated', '{"audio_key":"e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf","entity_key":"ex_city_services_public_places_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae8e60557c1a1a98402c95d39b620d76047df0519e728eae894834e184463b91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e51e4e536929f1d97aba4ecc05a497b7ffec62a0d2798571e1912d16b29b2fbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_04 -> audio/generated/de-DE/utterances/ef2178276243dfd5d0a8026aa08b93a41084103cac6903021a525a223da90922.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('71928707-8ea4-5a64-9eff-cf7afc088036', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12408d8612bde828fcaef6cb24c3352ca148d8dfa2f87a9eba70381db2fffcce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c7ffbb0-8533-58e5-899e-b3f39662521f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('71928707-8ea4-5a64-9eff-cf7afc088036', 1), '12408d8612bde828fcaef6cb24c3352ca148d8dfa2f87a9eba70381db2fffcce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef2178276243dfd5d0a8026aa08b93a41084103cac6903021a525a223da90922.mp3', 4493, '2026-09-13 07:00:19.697532', '808cb08124fb3f18515133c532837c48c93ee0165d4552a6311386be2b4a41c0', 'validated', '{"audio_key":"ef2178276243dfd5d0a8026aa08b93a41084103cac6903021a525a223da90922","entity_key":"u_work_feedback_teamwork_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"808cb08124fb3f18515133c532837c48c93ee0165d4552a6311386be2b4a41c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef2178276243dfd5d0a8026aa08b93a41084103cac6903021a525a223da90922.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_feedback_teamwork_05 -> audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('796bf8dd-66ff-54cc-b8f8-fdb94744955d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_feedback_teamwork_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5839a99b559b22b841dc55361a1ede68544ede7701e7435b625026fa1c1407f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c01e9881-887f-5700-8ada-aada615efdc2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('796bf8dd-66ff-54cc-b8f8-fdb94744955d', 1), '5839a99b559b22b841dc55361a1ede68544ede7701e7435b625026fa1c1407f6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3', 4675, '2026-09-13 07:00:20.911010', '99e837bd36c93855e0283eed681158c98cd5dba204cfae8f77fba345ba145eac', 'validated', '{"audio_key":"f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a","entity_key":"u_work_feedback_teamwork_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99e837bd36c93855e0283eed681158c98cd5dba204cfae8f77fba345ba145eac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_feedback_teamwork_03_listen -> audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('996d5fa1-a30d-56d6-a86a-1b697aadc5be', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_feedback_teamwork_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5839a99b559b22b841dc55361a1ede68544ede7701e7435b625026fa1c1407f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9f97ca1-30c2-54a4-82ff-1f8ee0ca3448', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('996d5fa1-a30d-56d6-a86a-1b697aadc5be', 1), '5839a99b559b22b841dc55361a1ede68544ede7701e7435b625026fa1c1407f6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3', 4675, '2026-09-13 07:00:20.911010', '99e837bd36c93855e0283eed681158c98cd5dba204cfae8f77fba345ba145eac', 'validated', '{"audio_key":"f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a","entity_key":"ex_work_feedback_teamwork_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99e837bd36c93855e0283eed681158c98cd5dba204cfae8f77fba345ba145eac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f64a005e0749e37ca440c4bb7841345e859da9d443bf55e5de6de1bf0f82b93a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_invitations_hosting_04 -> audio/generated/de-DE/utterances/fc0dec636a5e9c1538ee6dd3d6868433e3b08805f1cf27bc8dc76ab8f7e95f77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1864a3e-89bb-5455-91b0-6df7fda97951', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_invitations_hosting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0afd8a1eba7ddab2f6d51b2ec0522de181d0bd7232dd872cf475f539c0ae705'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfb83867-a43b-527e-bf27-1f559e5c3221', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1864a3e-89bb-5455-91b0-6df7fda97951', 1), 'f0afd8a1eba7ddab2f6d51b2ec0522de181d0bd7232dd872cf475f539c0ae705',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fc0dec636a5e9c1538ee6dd3d6868433e3b08805f1cf27bc8dc76ab8f7e95f77.mp3', 4310, '2026-09-13 07:00:21.006918', '12999c6b13864cf8dae7ddf07ded1525e032a7e89800a33be5a43d9bd81bd7b3', 'validated', '{"audio_key":"fc0dec636a5e9c1538ee6dd3d6868433e3b08805f1cf27bc8dc76ab8f7e95f77","entity_key":"u_invitations_hosting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12999c6b13864cf8dae7ddf07ded1525e032a7e89800a33be5a43d9bd81bd7b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fc0dec636a5e9c1538ee6dd3d6868433e3b08805f1cf27bc8dc76ab8f7e95f77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_online_accounts_privacy_03 -> audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ca9a106-0405-5e77-b3e9-6b5a703d7d5e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_online_accounts_privacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d116ae939604e8050765cce1cd463301bd95ded958fdf10c000f2300448ab56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4901ecae-c8b4-50cf-a003-ac9f99f9b92c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ca9a106-0405-5e77-b3e9-6b5a703d7d5e', 1), '5d116ae939604e8050765cce1cd463301bd95ded958fdf10c000f2300448ab56',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3', 4623, '2026-09-13 07:00:22.290800', '1b95dd22bdabe597d84e56b380808fb349def903fa2e3de3ea28b4e9ebecf060', 'validated', '{"audio_key":"fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e","entity_key":"u_online_accounts_privacy_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b95dd22bdabe597d84e56b380808fb349def903fa2e3de3ea28b4e9ebecf060","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_online_accounts_privacy_02_listen -> audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f4fc7434-6617-5a53-b66d-f28937034e56', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_online_accounts_privacy_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d116ae939604e8050765cce1cd463301bd95ded958fdf10c000f2300448ab56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31417a6a-dcac-59a9-bccc-c1b2d1f8c68f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f4fc7434-6617-5a53-b66d-f28937034e56', 1), '5d116ae939604e8050765cce1cd463301bd95ded958fdf10c000f2300448ab56',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3', 4623, '2026-09-13 07:00:22.290800', '1b95dd22bdabe597d84e56b380808fb349def903fa2e3de3ea28b4e9ebecf060', 'validated', '{"audio_key":"fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e","entity_key":"ex_online_accounts_privacy_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b95dd22bdabe597d84e56b380808fb349def903fa2e3de3ea28b4e9ebecf060","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fefe55edd1e5cca834b9d8879b45bd6f9fe5eba0e3f50371ae9ce69f1aa8360e.mp3"}'
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

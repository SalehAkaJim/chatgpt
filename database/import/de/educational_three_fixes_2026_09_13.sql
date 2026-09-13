-- Three Persian-only German educational corrections, 2026-09-13.
-- Apply to existing imported rows; safe to rerun. No audio changes.
-- Canonical sources: Pre-A1 alphabet, A1 articles, B2 argument-evidence.
SET NAMES utf8mb4;
START TRANSACTION;

-- e_articles_02_build
UPDATE exercises SET metadata = JSON_SET(COALESCE(metadata, JSON_OBJECT()),
  '$.feedback', JSON_SET(COALESCE(JSON_EXTRACT(metadata, '$.feedback'), JSON_OBJECT()),
    '$.explanation_fa', CONVERT(X'd8a7db8cd98620d9bed8b1d8b3d8b420daa9d988d8aad8a7d98720d8afd8b1d8a8d8a7d8b1d987d99420d8add8b1d98120d8aad8b9d8b1db8cd9812046656e7374657220d8a7d8b3d8aa20d98820d981d8b9d98420d986d8afd8a7d8b1d8af2e20d8afd8b120d8aad8b1daa9db8cd8a820c2ab6465722c20646965206f64657220646173c2bbd88c20d988d8a7da98d987d994206f64657220d982d8a8d98420d8a7d8b220d8a2d8aed8b1db8cd98620daafd8b2db8cd986d98720d985db8ce2808cd8a2db8cd8af2e' USING utf8mb4),
    '$.retry_tip_fa', CONVERT(X'd8add8b1d981e2808cd987d8a7db8c20d8aad8b9d8b1db8cd98120d8b1d8a720d8afd8b120d982d8a7d984d8a820c2ab6465722c20646965206f64657220646173c2bb20d8a8da86db8cd98620d9882046656e7374657220d8b1d8a720d8afd8b120d9bed8a7db8cd8a7d98620d8a8daafd8b0d8a7d8b12e' USING utf8mb4)))
WHERE id = UUID_TO_BIN('ee07f5dc-e139-5977-85a3-9636adb17538', 1);

-- g_argument_evidence_01: change only the Persian text of the matching example.
UPDATE grammar_explanations ge
JOIN grammar_points gp ON gp.id = ge.grammar_point_id
JOIN languages l ON l.id = ge.explanation_language_id
SET ge.examples = JSON_SET(ge.examples, '$[0].fa', CONVERT(X'd8a7db8cd98620d8b1d8a7d987e2808cd8add98420d8a7d8b1d8b2d8a7d986e2808cd8aad8b120d8a7d8b3d8aad88c20d8a7d985d8a720d8afd8b120d8a8d984d986d8afd985d8afd8aa20daa9d985d8aad8b120d982d8a7d8a8d98420d8a7d8b9d8aad985d8a7d8af20d8a7d8b3d8aa2e' USING utf8mb4))
WHERE gp.slug = 'b2-de-argument-evidence-g1' AND l.code = 'fa'
  AND JSON_UNQUOTE(JSON_EXTRACT(ge.examples, '$[0].de')) = CONVERT(X'446965204cc3b673756e6720697374207a7761722067c3bc6e7374696765722c2061626572206c616e67667269737469672077656e69676572207a757665726cc3a4737369672e' USING utf8mb4);

-- e_alphabet_02_build
UPDATE exercises SET metadata = JSON_SET(COALESCE(metadata, JSON_OBJECT()),
  '$.feedback', JSON_SET(COALESCE(JSON_EXTRACT(metadata, '$.feedback'), JSON_OBJECT()),
    '$.explanation_fa', CONVERT(X'd8a7db8cd98620d8aad985d8b1db8cd98620d8aad8b1d8aadb8cd8a820d8b3d98720d8add8b1d98120d8a7d988d985d984d8a7d988d8aae2808cd8afd8a7d8b120d8b1d8a720d986d8b4d8a7d98620d985db8ce2808cd8afd987d8af3a20c384d88c20d8b3d9bed8b320c39620d98820d8a8d8b9d8af20c39c2e20d8a7db8cd98620d8b9d8a8d8a7d8b1d8aa20d8acd985d984d98720d986db8cd8b3d8aa20d98820d981d8b9d98420d986d8afd8a7d8b1d8af2e' USING utf8mb4),
    '$.retry_tip_fa', CONVERT(X'd8b3d98720d8add8b1d98120d8b1d8a720d8a8d98720d8aad8b1d8aadb8cd8a820d986d985d988d986d98720d8a8da86db8cd9863a20c384d88c20c396d88c20c39c2e' USING utf8mb4)))
WHERE id = UUID_TO_BIN('e5a0f135-46e6-526b-926a-99f68ef8b803', 1);

COMMIT;

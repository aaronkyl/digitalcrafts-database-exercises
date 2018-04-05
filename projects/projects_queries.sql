-- SELECT p.name AS project
-- FROM project p
-- INNER JOIN project_uses_tech put ON put.project_id = p.id
-- INNER JOIN tech t ON t.id = put.tech_id
-- WHERE t.name = 'JavaScript'

-- SELECT t.name AS "Tech"
-- FROM tech t
-- INNER JOIN project_uses_tech put ON put.tech_id = t.id
-- INNER JOIN project p ON p.id = put.project_id
-- WHERE p.name = 'Personal Website'

-- SELECT t.name as "Unused Tech"
-- FROM tech t
-- LEFT OUTER JOIN project_uses_tech put ON put.tech_id = t.id
-- WHERE put.project_id IS NULL

-- SELECT p.name as "Project", COUNT(put.tech_id)
-- FROM project p
-- INNER JOIN project_uses_tech put ON put.project_id = p.id
-- GROUP BY p.name
-- ORDER BY p.name

-- SELECT p.name AS "Projects w/o Tech"
-- FROM project p
-- LEFT OUTER JOIN project_uses_tech put ON put.project_id = p.id
-- WHERE put.tech_id IS NULL

-- SELECT t.name AS "Tech", COUNT(put.project_id)
-- FROM tech t
-- INNER JOIN project_uses_tech put ON put.tech_id = t.id
-- GROUP BY t.id
-- ORDER BY t.name

-- SELECT p.name AS "Project", string_agg(t.name, ', ' ORDER BY t.name) AS "Tech Used"
-- FROM project p
-- INNER JOIN project_uses_tech put ON put.project_id = p.id
-- INNER JOIN tech t ON t.id = put.tech_id
-- GROUP BY p.name
-- ORDER BY p.name

-- SELECT counts.name AS "Tech used by at least one project"
-- FROM (
--       SELECT t.name AS "name", COUNT(put.project_id) AS "count"
--       FROM tech t
--       INNER JOIN project_uses_tech put ON put.tech_id = t.id
--       GROUP BY t.name
--       ) AS counts
-- WHERE counts.count >= 1
-- ORDER BY counts.name

-- SELECT t.name AS "Tech not unsed in any project"
-- FROM tech t
-- LEFT OUTER JOIN project_uses_tech put ON put.tech_id = t.id
-- WHERE put.project_id IS NULL
-- ORDER BY t.name

-- SELECT counts.project_name AS "Projects using at least one tech"
-- FROM (
--       SELECT p.name AS "project_name", COUNT(put.tech_id) AS "tech_count"
--       FROM project p
--       INNER JOIN project_uses_tech put ON put.project_id = p.id
--       GROUP BY p.name
--       ) AS counts
-- WHERE counts.tech_count >= 1
-- ORDER BY counts.project_name

-- SELECT p.name
-- FROM project p
-- LEFT OUTER JOIN project_uses_tech put ON put.project_id = p.id
-- WHERE put.tech_id IS NULL

-- SELECT p.name AS "Project", COUNT(put.tech_id) AS "Techs Used"
-- FROM project p
-- INNER JOIN project_uses_tech put ON put.project_id = p.id
-- GROUP BY p.name
-- ORDER BY COUNT(put.tech_id) DESC, p.name

-- SELECT t.name AS "Tech", COUNT(put.project_id) AS "Projects Using"
-- FROM tech t
-- INNER JOIN project_uses_tech put ON put.tech_id = t.id
-- GROUP BY t.name
-- ORDER BY COUNT(put.project_id) DESC, t.name

-- SELECT CAST(AVG(techs_used) AS DECIMAL(2,1))
-- FROM (
--       SELECT COUNT(tech_id) AS "techs_used"
--       FROM project_uses_tech
--       GROUP BY project_id
--     ) AS techs
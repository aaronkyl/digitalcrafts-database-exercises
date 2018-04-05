-- SELECT name
-- FROM restaurant
-- WHERE stars = 5

-- SELECT favorite_dish
-- FROM restaurant
-- WHERE stars = 5

-- SELECT id
-- FROM restaurant
-- WHERE name = 'Moon Tower'

-- SELECT *
-- FROM restaurant
-- WHERE category = 'BBQ'

-- ALTER TABLE restaurant 
-- 	RENAME COLUMN does_takout TO does_takeout

-- SELECT *
-- FROM restaurant
-- WHERE does_takeout = True

-- SELECT *
-- FROM restaurant
-- WHERE does_takeout = True
--   AND category = 'BBQ'

-- SELECT *
-- FROM restaurant
-- WHERE distance <= 2

-- SELECT *
-- FROM restaurant
-- WHERE last_visit < now() - interval '1 week'

-- SELECT *
-- FROM restaurant
-- WHERE last_visit < now() - interval '1 week'
--   AND stars = 5

-- SELECT *
-- FROM restaurant
-- ORDER BY distance

-- SELECT *
-- FROM restaurant
-- ORDER BY distance
-- LIMIT 2

-- SELECT *
-- FROM restaurant
-- ORDER BY stars DESC
-- LIMIT 2

-- SELECT *
-- FROM restaurant
-- WHERE distance <= 2
-- ORDER BY stars DESC
-- LIMIT 2

-- SELECT count(*) AS "Restaurants in Database" FROM restaurant

-- INSERT INTO restaurant VALUES (DEFAULT, 'That One Place', NULL, NULL, 'mexican', NULL, NULL, NULL);

-- SELECT category, COUNT(category)
-- FROM restaurant
-- GROUP BY category

-- SELECT category, CAST(AVG(stars) AS DECIMAL(3,2))
-- FROM restaurant
-- GROUP BY category

-- SELECT category, MAX(stars)
-- FROM restaurant
-- GROUP BY category
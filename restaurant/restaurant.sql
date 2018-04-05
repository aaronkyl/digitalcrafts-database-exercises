-- CREATE TABLE restaurant (
--       id SERIAL NOT NULL PRIMARY KEY
--     , name VARCHAR NOT NULL
--     , distance NUMERIC CHECK (distance >= 0) 
--     , stars NUMERIC(2, 1) CHECK (stars >= 0)
--     , category VARCHAR NOT NULL
--     , favorite_dish VARCHAR
--     , does_takout BOOLEAN
--     , last_visit DATE
-- );

-- INSERT INTO restaurant VALUES (DEFAULT, 'Toms Chicken', 3.5, 3, 'american', 'Classic Fried Chicken Legs', False, '04/02/2017');
-- INSERT INTO restaurant VALUES (DEFAULT, 'Moon Tower', 10, 5, 'BBQ', 'Moon Pie', True, '04/02/2018');
-- INSERT INTO restaurant VALUES (DEFAULT, 'McDonalds', 2, 2, 'american', 'Quarter Pounder with Cheese', True, '03/30/2018');
-- INSERT INTO restaurant VALUES (DEFAULT, 'Giacommos', 5, 5, 'italian', 'Pucceri Puccini', True, '04/05/2018');
-- INSERT INTO restaurant VALUES (DEFAULT, 'Onion Creek', 3.5, 3, 'american', 'Frito Pie', False, '02/15/2018');
-- INSERT INTO restaurant VALUES (DEFAULT, 'Chipotle', .75, 3, 'mexican', 'Chicken burrito', True, '04/04/2018');

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
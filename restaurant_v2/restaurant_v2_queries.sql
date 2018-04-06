SELECT rev.title AS "Review Title"
    , rev.review AS "Review"
    , rest.name AS "Restaurant"
    , rev.stars AS "Stars"
    , revr.name AS "Reviewer"
FROM review rev
INNER JOIN reviewer revr ON revr.id = rev.reviewer_id
INNER JOIN restaurant rest ON rest.id = rev.restaurant_id
WHERE rest.id = 3

SELECT rev.title AS "Review Title"
    , rev.review AS "Review"
    , rest.name AS "Restaurant"
    , rev.stars AS "Stars"
    , revr.name AS "Reviewer"
FROM review rev
INNER JOIN reviewer revr ON revr.id = rev.reviewer_id
INNER JOIN restaurant rest ON rest.id = rev.restaurant_id
WHERE rest.name = 'Chuck E Cheese'

SELECT rev.title AS "Review Title"
    , rev.review AS "Review"
    , rest.name AS "Restaurant"
    , rev.stars AS "Stars"
    , revr.name AS "Reviewer"
FROM review rev
INNER JOIN reviewer revr ON revr.id = rev.reviewer_id
INNER JOIN restaurant rest ON rest.id = rev.restaurant_id
WHERE revr.name = 'Henry T. Cat'

SELECT rest.name AS "Restaurant Name", CAST(AVG(rev.stars) AS DECIMAL(3,2)) AS "Average Stars"
FROM restaurant rest
INNER JOIN review rev ON rev.restaurant_id = rest.id
GROUP BY rest.id
ORDER BY rest.name
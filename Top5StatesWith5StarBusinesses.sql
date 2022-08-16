WITH cte AS (
SELECT state, COUNT(stars) AS n_5stars
FROM yelp_business
WHERE stars = 5
GROUP BY state
) 

SELECT state, n_5stars
FROM (
    SELECT *,  rank() OVER (ORDER BY n_5stars DESC) AS rnk
    FROM cte
) tmp
WHERE rnk <= 5
ORDER BY n_5stars DESC, state ASC

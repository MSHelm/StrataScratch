WITH cats AS (
    SELECT unnest(string_to_array(categories, ';')) AS category, review_count
    FROM yelp_business
    )
    
SELECT category, SUM(review_count)
FROM cats
GROUP BY category
ORDER BY SUM(review_count) DESC

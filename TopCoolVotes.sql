SELECT business_name, review_text, cool
FROM yelp_reviews
WHERE cool = (
    SELECT MAX(cool)
    FROM yelp_reviews
    )
    

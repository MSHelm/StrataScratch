SELECT city, property_type, AVG(bathrooms) AS avg_bathrooms, AVG(bedrooms) AS avg_bathrooms
FROM airbnb_search_details
GROUP BY city, property_type

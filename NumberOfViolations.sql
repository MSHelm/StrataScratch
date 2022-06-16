SELECT EXTRACT(YEAR from inspection_date) AS year, COUNT(*) AS violation_count
FROM sf_restaurant_health_violations
WHERE violation_id IS NOT NULL
AND business_name = 'Roxanne Cafe'
GROUP BY year
ORDER BY year

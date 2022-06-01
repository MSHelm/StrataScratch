SELECT location, AVG(popularity) AS average_popularity
FROM facebook_employees E
JOIN facebook_hack_survey S ON E.id = S.employee_id
GROUP BY location

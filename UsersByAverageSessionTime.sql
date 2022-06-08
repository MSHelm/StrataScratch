WITH time_start AS (
    SELECT user_id, DATE(timestamp) AS date, MAX(timestamp) AS page_load
    FROM facebook_web_log
    WHERE action = 'page_load'
    GROUP BY user_id, DATE(timestamp)
), time_end AS (
    SELECT user_id, DATE(timestamp) AS date, MIN(timestamp) AS page_exit
    FROM facebook_web_log
    WHERE action = 'page_exit'
    GROUP BY user_id, DATE(timestamp)
)

SELECT ts.user_id, AVG(page_exit - page_load)
FROM time_start ts
JOIN time_end te
ON ts.user_id = te.user_id AND ts.date = te.date
GROUP BY ts.user_id;

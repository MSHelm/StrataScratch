WITH paying_customers AS (
SELECT date, SUM(downloads) AS paid_downloads
FROM ms_user_dimension
JOIN ms_acc_dimension ON ms_user_dimension.acc_id = ms_acc_dimension.acc_id
JOIN ms_download_facts ON ms_user_dimension.user_id = ms_download_facts.user_id
WHERE paying_customer = 'yes'
GROUP BY date
),

free_customers AS (
SELECT date, SUM(downloads) AS free_downloads
FROM ms_user_dimension
JOIN ms_acc_dimension ON ms_user_dimension.acc_id = ms_acc_dimension.acc_id
JOIN ms_download_facts ON ms_user_dimension.user_id = ms_download_facts.user_id
WHERE paying_customer = 'no'
GROUP BY date
)

SELECT paying_customers.date, free_downloads, paid_downloads
FROM paying_customers
JOIN free_customers ON paying_customers.date = free_customers.date
WHERE free_downloads > paid_downloads
ORDER BY paying_customers.date ASC


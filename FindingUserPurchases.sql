SELECT DISTINCT x.user_id
FROM amazon_transactions x
JOIN amazon_transactions y ON x.user_id = y.user_id
AND x.id <> y.id
WHERE x.created_at - y.created_at BETWEEN 0 AND 7
ORDER BY x.user_idSELECT DISTINCT x.user_id
FROM amazon_transactions x
JOIN amazon_transactions y ON x.user_id = y.user_id
AND x.id <> y.id /* important to not compare multiple items within the same purchase with each other */
WHERE x.created_at - y.created_at BETWEEN 0 AND 7
ORDER BY x.user_id

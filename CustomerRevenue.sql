SELECT cust_id, SUM(total_order_cost) AS revenue
FROM orders
WHERE EXTRACT(Month FROM order_date) = 3 AND EXTRACT(Year FROM order_date) = 2019
GROUP BY cust_id
HAVING SUM(total_order_cost) > 0
ORDER BY revenue DESC

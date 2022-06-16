SELECT first_name, order_date, SUM(total_order_cost) as daily_order_cost
FROM customers
JOIN orders 
    ON customers.id = orders.cust_id
WHERE order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY first_name, order_date
ORDER BY daily_order_cost DESC
LIMIT 1

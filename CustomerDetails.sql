SELECT first_name, last_name, city, order_details
FROM customers
FULL JOIN orders ON customers.id = orders.cust_id
ORDER BY first_name, order_details

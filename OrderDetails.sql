SELECT first_name, order_date, order_details, total_order_cost
FROM customers
JOIN orders ON customers.id = orders.cust_id
WHERE first_name IN ('Jill', 'Eva')
ORDER BY customers.id

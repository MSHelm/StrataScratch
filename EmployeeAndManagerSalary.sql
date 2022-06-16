SELECT first_name, last_name, salary
FROM employee
WHERE salary > (
    SELECT salary FROM employee
    WHERE id = manager_id
    )

SELECT department, first_name, salary
FROM employee x
WHERE salary >= ALL (
    SELECT salary 
    FROM employee y
    WHERE x.department = y.department
    )

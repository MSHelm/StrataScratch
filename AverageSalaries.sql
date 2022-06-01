SELECT department, first_name, salary, AVG(salary) OVER(PARTITION BY department) AS department_avg_salary
FROM employee

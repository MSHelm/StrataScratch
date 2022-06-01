SELECT ABS(MAX(E.salary) FILTER (WHERE D.department = 'marketing') - MAX(E.salary) FILTER (WHERE D.department = 'engineering')) AS salary_difference
FROM db_employee E
JOIN db_dept D ON E.department_id = D.id

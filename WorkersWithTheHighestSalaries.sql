SELECT title.worker_title, salary
FROM worker
JOIN title ON worker.worker_id = title.worker_ref_id
WHERE worker.salary = (
    SELECT MAX(salary)
    FROm worker)

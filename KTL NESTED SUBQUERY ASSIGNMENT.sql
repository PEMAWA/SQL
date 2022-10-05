SELECT
    first_name,
    last_name,
    salary,
    ( commission_pct * salary ) + salary "New salary"
FROM
    (
        SELECT
            first_name,
            last_name,
            salary,
            commission_pct
        FROM
            employees
        WHERE
            job_id = 'SA_REP'
            
            OR salary > (Select salary from employees where employee_id =145)
    );
    
    select * from employees;
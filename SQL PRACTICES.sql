DEFINE employee_num = 200;
SET VERIFY ON

SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    employee_id = &employee_num;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary > 12000
ORDER BY
    salary DESC;

SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    employee_id = 176;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary NOT BETWEEN 5000 AND 12000;

SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 50, 20 )
ORDER BY
    last_name ASC;

SELECT
    last_name,
    job_id,
    hire_date
FROM
    employees
WHERE
    last_name IN ( 'Matos', 'Taylor' )
ORDER BY
    hire_date ASC;

SELECT
    last_name employee,
    department_id,
    salary    monthly_salary
FROM
    employees
WHERE
    ( salary BETWEEN 5000 AND 12000 )
    AND department_id IN ( 50, 20 );

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
        hire_date > '01-JAN-04'
    AND hire_date < '01-JAN-05';

SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL;

SELECT
    last_name,
    salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct IS NOT NULL;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= '&SALARY';

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '__a%';

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    AND last_name LIKE '%e%';

SELECT
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
    job_id IN ( 'SA_REP', 'SA_CLERK' )
    AND salary NOT IN ( 2500, 3500, 7000 );

SELECT
    last_name employee,
    salary    monthly_salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct = 0.2;
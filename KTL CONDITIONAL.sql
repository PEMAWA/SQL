SELECT * FROM EMPLOYEES WHERE JOB_ID = 'AD_PRES';
SELECT FIRST_NAME||' ' || LAST_NAME AS FULLNAME FROM EMPLOYEES WHERE DEPARTMENT_ID =90;
SELECT JOB_ID,JOB_TITLE FROM JOBS WHERE MAX_SALARY =5000*2;
SELECT
    first_name,
    last_name,
    salary,
    commission_pct,
    hire_date
FROM
    employees
WHERE
    hire_date > '01-oct-04';
    
SELECT * FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 2500 AND 23000;
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    job_id,
    salary
FROM
    employees
WHERE
    ( job_id = 'ST_CLERK'
      AND salary < 17000 )
    OR ( first_name NOT IN ( 'Stephen', 'Neena', 'Lex' )
         AND commission_pct IS NULL )
    AND hire_date BETWEEN '01-JAN-02' AND '31-DEC-03';
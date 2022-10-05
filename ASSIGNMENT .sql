SELECT
    job_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
WHERE
    salary BETWEEN 3100 AND 8000;
    
    SELECT
    job_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
WHERE
    salary >= 3100 AND SALARY <= 8000;
    
    
SELECT
    job_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
WHERE
    job_id NOT IN ( 'AD_PRES', 'AD_VP' )
    AND hire_date >= '07-MAR-06'
    AND ( commission_pct IS NULL
          AND ( salary BETWEEN 3100 AND 8000 ) )
    AND ( first_name NOT LIKE 'K%'
          AND first_name NOT LIKE 'S%' )
ORDER BY
    job_id,
    last_name;
    
    
    SELECT
    first_name,
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
    ( salary BETWEEN 2400 AND 10000
      AND job_id ='SA_REP' 
      AND first_name LIKE '%e' )
ORDER BY
    salary DESC;
    
    
    
    
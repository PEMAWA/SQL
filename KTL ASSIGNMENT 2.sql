SELECT
    first_name,
    last_name,
    upper(first_name
          || ' '
          || last_name)                        "full name",
    job_id,
    salary + ( commission_pct * salary ) "NEW SALARY",
    department_name
FROM
         employees e
    JOIN departments d ON ( e.department_id = d.department_id )
WHERE
    job_id = 'SA_REP'
ORDER BY
    "NEW SALARY";

    
    
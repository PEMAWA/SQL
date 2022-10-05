
--- Question 1
SELECT WEBSITE_URL ,SUBSTR (WEBSITE_URL,28,11)AS "Name" FROM WEBSITE;

----Question 2

SELECT TO_CHAR(SYSDATE, 'DD-MONTH-YYYY,HH24:MI:SS')"NEW DATE"
    FROM dual;

--question 3
SELECT
    job_id,
    first_name,
    last_name,
    salary,
    commission_pct,
    nvl2(commission_pct, 'has', 'has not')        "NVL2 EXAMPLE",
    salary + salary * nvl(commission_pct, 0)            "NEW SALARY",
    decode(job_id, 'ST_REP', salary * 1.20, 'IT_PROG', salary * 1.30) "UPDATED SALARY"
FROM
    employees
WHERE
    job_id IN ( 'SA_REP', 'IT_PROG' )
ORDER BY
    commission_pct NULLS LAST;
    
    ----Question four
SELECT first_name , last_name ,FLOOR (MONTHS_BETWEEN(SYSDATE,hire_date)/12) "Years" FROM EMPLOYEES;
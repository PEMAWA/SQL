--DECODE functions -- provides if then else in SQL

-- Simpler than CASE

SELECT firsT_name,last_name,salary ,job_id, hire_date,
    DECODE(job_id,'ST_MAN',salary*1.20,
                  'SH_MAN',salary*1.30,
                  'SA_MAN', salary*1.40 ) as "UPDATED SALARY"
FROM employees
 WHERE job_id IN('ST_MAN','SH_MAN','SA_MAN');
                
SELECT DECODE(2 ,1,'ONE',2,'TWO','not found')as result from dual;


SELECT firsT_name,last_name,salary ,job_id, hire_date,
    DECODE(job_id,'ST_CLERK',salary*1.20,
                  'SA_REP',salary*1.30,
                  'IT_PROG', salary*1.40,salary ) as "UPDATED SALARY"
FROM employees;
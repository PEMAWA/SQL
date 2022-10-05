----- Union

SELECT job_id, first_name,last_name,department_id from employees where department_id=10

UNION
SELECT job_id, first_name,last_name,department_id f from employees where department_id=50

UNION

SELECT job_id, first_name,last_name,department_id f from employees where department_id=20;


 ----- Intersect
SELECT  SALARY FROM EMPLOYEES WHERE JOB_ID='PU_CLERK'

INTERSECT

SELECT  SALARY FROM EMPLOYEES WHERE JOB_ID='SH_CLERK';


----- Minus

SELECT  SALARY FROM EMPLOYEES WHERE JOB_ID='SH_CLERK'

minus

SELECT  SALARY FROM EMPLOYEES WHERE JOB_ID='PU_CLERK';

----- Union ALL

SELECT job_id, first_name,last_name,department_id from employees where department_id=10

UNION all
SELECT job_id, first_name,last_name,department_id f from employees where department_id=50

UNION all

SELECT job_id, first_name,last_name,department_id f from employees where department_id=20;






SELECT JOB_ID,SALARY FROM employees;
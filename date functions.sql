SELECT CURRENT_TIMESTAMP ,SYSDATE ,CURRENT_DATE ,SYSTIMESTAMP ,SESSIONTIMEZONE FROM DUAL;

SELECT SYSDATE, SYSDATE+1/(24*60) FROM DUAL;

SELECT employee_id ,hire_date ,sysdate,round((round(sysdate-hire_date) )/365) as worked_in_years
from employees
order by worked_in_years desc;

SELECT sysdate, add_months (sysdate,5) from dual;
SELECT employee_id ,hire_date, sysdate,round( MONTHS_BETWEEN(SYSDATE,hire_date)/12)as months_of_work
from employees
ORDER BY months_of_work desc;
Select employee_id ,hire_date,TRUNC(hire_date,'MONTH')as truncated_result,
ROUND(hire_date,'MONTH') as rounded_result FROM employees;
Select employee_id ,hire_date,TRUNC(hire_date,'YEAR')as truncated_result,
ROUND(hire_date,'YEAR') as rounded_result FROM employees;  
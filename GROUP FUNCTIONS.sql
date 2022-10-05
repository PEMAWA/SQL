--Group functions
--AVG -- avarage value of columns
--COUNT -- count no of rows
--MAX - maximum value in a column
--MIN - minimum value in a column
--SUM -- sum of the expression or column values
-- LISTAGG -transforms and orders data from multiple rows into a sing;e list
--of values separated by specified delimites

--AVG([DISTICT|ALL] expression) - used exclisvely for  numeric data
-- Distinct ,ALL used to handle duplicate values

SELECT AVG(SALARY) ,AVG(ALL SALARY),AVG(DISTINCT SALARY ) FROM EMPLOYEES WHERE JOB_ID ='IT_PROG';

SELECT AVG( commission_pct), AVG(NVL(COMMISSION_PCT ,0))FROM employees;


--MAX(Expression)

SELECT max(salary),  max(hire_date),max(first_name)FROM employees;

--MIN (Expression)
Select min(salary),min(hire_date), min(first_name), min(nvl(commission_pct,0))
from employees;

--SUM([ALL|DISTINCT] Expression) --Only used with numbers

Select Sum(salary), Sum(ALL salary) ,Sum(Distinct salary) from employees;

--LISTAGG(Column name [delimiter]), within group(Oyder by Expression)

SELECT LISTAGG( first_name,',' ) WITHIN GROUP (ORDER BY first_name)from employees where job_id='ST_CLERK';

SELECT * FROM LOCATIONS;
SELECT LISTAGG(city,',') within group (order by city) as cities from locations
where country_id='US';
SELECT LISTAGG(first_name|| ' ' ||last_name ,',') from employees where job_id='IT_PROG';
SELECT * FROM jobs;

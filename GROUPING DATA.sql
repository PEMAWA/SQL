--Grouping data
--GROUP BY Clause -- creates groups pf values using the group functions

-- SElect exp1,exp2.....expn from table WHERE CONDITION GROUP BY EXP1 EXP2 ORDER BY EXP
--The columns in the selct must be similar to those in group by
--

SELECT job_id, AVG(salary) from employees
Group by job_id
ORDER BY avg(salary);

SELECT job_id ,department_id,manager_id,avg(salary), count(*) from employees
GROUP BY department_id,job_id,manager_id
ORDER BY count(*);

SELECT job_id ,department_id,manager_id,avg(salary), count(*) from employees
GROUP BY job_id,department_id,manager_id;

SELECT job_id, MAX(salary),min(salary),avg(salary) from employees
GROUP BY job_id;

SELECT job_id, MAX(salary),min(salary),avg(salary),count(*) from employees
WHERE job_id IN('IT_PROG','ST_MAN','AC_ACCOUNT')
GROUP BY job_id;

--HAVING-- since group fuctions cannot be used with WHERE Clause Having Clause is used 

SELECT job_id,avg(salary) from employees
--WHERE avg(salary)>1000
GROUP by job_id

HAVING avg(salary)>10000;

SELECT job_id,avg(salary) from employees
WHERE hire_date>'28-may-05'
GROUP by job_id

HAVING avg(salary)>10000;

SELECT job_id,manager_id,avg(salary) from employees
WHERE manager_id=101
GROUP by job_id,manager_id

HAVING avg(salary)>10000;


--NESTED Group functions
SELECT max(avg(salary)), min(avg(salary)) from employees
GROUP BY department_id;




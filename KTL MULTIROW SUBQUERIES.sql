SELECT FIRST_NAME,LAST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY IN(SELECT MIN (SALARY)FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

SELECT JOB_ID, AVG (SALARY)
FROM employees
GROUP BY JOB_ID
HAVING AVG(SALARY)> (SELECT AVG(MIN_SALARY) FROM JOBS WHERE JOB_ID='AC_MGR');


--Corelated subqueries
SELECT FIRST_NAME,
LAST_NAME
DEPARTMENT_ID
FROM
EMPLOYEES
WHERE EXIST
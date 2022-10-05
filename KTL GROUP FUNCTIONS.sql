SELECT DEPARTMENT_ID,
ROUND(AVG(SALARY),2) SALARY_AVG

FROM EMPLOYEES
GROUP BY department_id
Having department_id in (110,100);

SELECT D.DEPARTMENT_ID ,
D.DEPARTMENT_NAME,
ROUND(AVG(SALARY),2) "Rounded average",
SUM(SALARY) FROM
EMPLOYEES E , DEPARTMENTS D

WHERE e.department_id = d.department_id
AND E.MANAGER_ID IS NOT NULL
GROUP BY d.department_id,d.department_name
HAVING D.DEPARTMENT_ID IN (50,80,90) AND SUM (SALARY)>100000
ORDER BY d.department_name;


SELECT INITCAP(first_name), lower(last_name)
FROM employeeS WHERE employee_id = 100;

SELect LENGTH ((CONCAT('Learning SQL','is fun'))) from dual;
SELECT website_url from website;

select Substr('http://www.company.com/peter' , -5,8) from dual;

SELECT REPlaCE(REPlaCE('Follow the yellow brick road', 'o' , '0'),'e','3') from dual;
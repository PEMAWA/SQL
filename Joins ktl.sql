SELECT * FROM countries;
SELECT * FROM locations;
SELECT * FROM employees;
SELECT  * FROM departments;
SELECT * FROM REGIONS;
select * from jobs;

select first_name, department_name,department_id 
FROM employees e ,departments d 
WHERE e.department_id = d.department_id;

SELECT  first_name , last_name, department_name FROM employees NATURAL JOIN departments
WHERE employees.manager_id = departments.manager_id;

SELECT e.first_name,e.last_name,d.manager_id,d.department_name FROM employees e 
JOIN
departments d ON (d.department_id= e.department_id);

SELECT FIRST_NAME ,LAST_NAME ,DEPARTMENT_NAME,JOB_TITLE,SALARY,STREET_ADDRESS,COUNTRY_NAME,REGION_NAME
FROM employees e JOIN departments d
ON (e.department_id = d.department_id )

JOIN locations l
ON (l.location_id = d.location_id)

JOIN countries c
ON (l.country_id = c.country_id)

 JOIN regions r
 ON (c.region_id = r.region_id)
 JOIN jobs j
 ON (j.job_id= e.job_id);
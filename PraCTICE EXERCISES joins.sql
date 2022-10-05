SELECT * FROM  COUNTRIES;
 SELECT * FROM LOCATIONS;
 select * from departments;
 SELECT * FROM EMPLOYEES;
 
 SELECT department_name,location_id ,street_address,city,state_province,country_name
from locations natural join countries natural join departments;


SELECT
    first_name,
    last_name,
    NVL(department_id,00),
    NVL(department_name,'CEO')
FROM
         employees 
    left outer join departments  using (department_id);
    
SELECT
    first_name,
    last_name,
    job_id,
    department_name,
    department_id,
    city
FROM
         employees
    inner JOIN departments
    using (department_id)
    inner JOIN locations l
    using(location_id)
    where l.city='Toronto';


SELECT 
e.last_name,
e.employee_id,
--(Select m.last_name from employees m where m.manager_id = e.employee_id),
e.manager_id
 from employees e;
 
 DESC JOB_GRADES;
 
 SELECT e.last_name, e.employee_id,m.last_name ,m.employee_id
 from employees e
 JOIN employees m
 ON (e.manager_id = m.manager_id);
 
 SELECT e.last_name, e.employee_id,m.last_name ,m.employee_id
 from employees e
 JOIN employees m
 ON (e.manager_id = m.manager_id);
 
 
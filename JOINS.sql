--JOINING TABLES 
--Join allows to retrieve data from two or more tables.
SELECT * FROM employees;
SELECT * FROM departments;
-- TYPES OF JOINS
--Natural Join
--Inner Join
--Outer Join-- Left Outer,Right Outer,Full Outer
--EquiJoin
--Non EqioJoin
--SelfJoin
--CrossJoin (Cartesian Product)

--SELECT columns FROM table1 JOIN TYPE table2 ON table1.columnname= table2.columnname;

--NATURAL JOIN--implictly joins two tables based on common columns that have the same name and same datatype
--Rows must have exact match
--Common columns are displayed once

--SELECT * FROM source_table NATURAL JOIN target_table; 
DESCRIBE employees;
DESCRIBE departments;

SELECT * FROM EMPLOYEES NATURAL JOIN departments;
SELECT * FROM departments  NATURAL JOIN EMPLOYEES;


--Join With USING  clause
--Helps in specifying the column to be select as Join
--it is considered to be an equijoin


SELECT * FROM EMPLOYEES  JOIN departments using (department_id,manager_id);
SELECT first_name, last_name, department_name ,department_id from employees JOIN
departments USING(department_id);


-- Handling Ambigous Column name---- Error occurs when you have two columns with 
--the same name in different tables  i.e Manager ID
-- Give the table alliases and use the allaises to specify the column name using( .)
-- Or use the table_name.column_name()

SELECT first_name,last_name,department_name,e.manager_id
FROM EMPLOYEES e  JOIN departments d using (department_id);


-- Inner Join -- Returns all the rows from both participating tables 
--that satisfy the join condition or the expression of the ON/USING clause
--It returns only the matched rows

--SELECT column_name from Table1 [INNER] JOIN table2 ON (join_condition)/USING (column_name)

--ON -- used when the columns have diffrent name but same data

SELECT e.first_name,e.last_name,d.manager_id,d.department_name FROM employees e 
INNER JOIN
departments d ON (e.department_id= d.department_id) and (e.manager_id =d.manager_id);

SELECT e.first_name,e.last_name,manager_id,department_name FROM employees e 
INNER JOIN departments d USING (department_id,manager_id);

--MULTIPLE JOINS
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM locations;
        
        
SELECT first_name,last_name , department_name,city,postal_code,street_address,country_id
FROM employees e JOIN departments d 
ON(d.department_id = e.department_id)
JOIN locations l 
ON (l.location_id = d.location_id)
 JOIN countries
 USING(country_id)
--WHERE e.job_id ='SA_REP'
ORDER BY first_name;

--RESTRICTING Joins  -- Using Where & AND
SELECT first_name,last_name,department_name , city,postal_code,street_address
FROM employees e JOIN departments d 
ON(e.department_id = d.department_id)
 JOIN locations l
 ON (d.location_id = l.location_id)
 WHERE e.job_id= 'IT_PROG'
 AND e.first_name ='David';
 
 
 --SELF JOIN ---Joining a table with itself
 
 SELECT worker.first_name,worker.last_name,worker.employee_id,worker.manager_id, 
 manager.employee_id,manager.first_name,manager.last_name,worker.salary,manager.salary
 FROM employees worker JOIN employees manager
 ON (worker.manager_id = manager.manager_id);
 
 --Non-Equi Joins -- Joining Unequal tables
 -- We use other signs other that (=) ie (<,>,<=,>=,<>,BETWEEN)
 
 SELECT e.employee_id, e.first_name,e.last_name,e.job_id,e.salary,
        j.min_salary,j.max_salary,j.job_id from employees e JOIN jobs j
        ON e.salary>j.max_salary
        AND j.job_id='SA_REP';

SELECT e1.employee_id ,e1.first_name,e1.last_name FROM 
employees e1 JOIN employees e2
ON e1.employee_id <> e2.employee_id
AND e1.first_name = e2.first_name;

SELECT first_name,last_name,job_title,salary,min_salary,max_salary
FROM employees e JOIN jobs j
ON e.salary BETWEEN j.min_salary AND J.MAX_salary;

--OUTER JOINS -- Retrieve all rows from the first table irregradless if the is a match or not
--They return the matched and the unmatched rows
--This examples shows why outer joins are important
-- There are three types..Left Outer Join,Full Outer Join,Right outer join
SELECT * FROM EMPLOYEES;
SELECT * FROM departments;

SELECT first_name,last_name, department_name FROM employees JOIN departments
USING (department_id);

SELECT d.department_id, d.department_name,e.first_name,e.last_name
from departments d JOIN employees e 
ON (d.manager_id= e.employee_id);

--LEFT OUTER jOIN

--All matched rows from the left table are returned and all matched rows of the right table are returned
-- In addidtion the Unmatched rows of the right tables are returned as null

SELECT first_name,last_name,department_id,department_name
FROM employees LEFT OUTER JOIN departments
USING (department_id);
--Using ON
SELECT e.first_name,e.last_name,d.department_id,d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON ( d.department_id = e.department_id);

--Changing the order of the tables
--Changing the order of the tables performs the functionality of the right outer join
--and vice versa
SELECT d.department_id,d.department_name ,e.first_name,e.last_name
FROM departments d  LEFT OUTER JOIN employees e
ON ( d.department_id = e.department_id);

--RIGHT OUTER JOIN
----All matched rows from the right table are returned and all matched rows of the left table are returned
-- In addidtion the Unmatched rows of the left tables are returned as null

SELECT e.first_name,e.last_name,d.department_name,e.department_id,d.department_id
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id);

--More than one right outer join
SELECT e.first_name,e.last_name,d.department_name,e.department_id,d.department_id,location_id
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id)
RIGHT OUTER JOIN locations
USING (location_id);


--Left and Right Outer joins together
SELECT e.first_name,e.last_name,d.department_name,e.department_id,d.department_id,location_id
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id)
LEFT OUTER JOIN locations
USING (location_id);

--Right Outer and inner Join together
SELECT e.first_name,e.last_name,d.department_name,e.department_id,d.department_id,location_id
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id)
INNER JOIN locations
USING (location_id);

--FULL OUTER JOIN //FULL JOIN
--Returns both matched and unmatched rows of both tables
SELECT first_name,last_name, department_name
FROM employees e FULL OUTER JOIN departments d 
on (e.department_id=d.department_id);

-- CROSS JOIN (Cartesian Product and Cross Product)
-- Returns every combination of rows from two tables 
--Return the rows equal to the product of the rows from the two tables
SELECT e.first_name,e.last_name,d.department_id,d.department_name ,job_title
FROM employees e CROSS JOIN departments d
CROSS JOIN jobs;

SELECT c.department_name,c.job_title,count(e.employee_id) as employee_count
FROM (SELECT d.department_name, j.job_title, j.job_id,d.department_id FROM departments
        d CROSS  JOIN jobs j )c LEFT OUTER JOIN employees e
        ON (e.job_id=c.job_id AND e.department_id = c.department_id)
        GROUP BY c.department_name,c.job_title
        ORDER BY c.department_name,c.job_title;
        
        
--Oracle Old Join Syntax (Non Ansi Standard)
SELECT first_name,last_name,department_name 
FROM employees e, departments d
WHERE e.department_id=d.department_id;








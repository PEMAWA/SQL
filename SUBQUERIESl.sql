-- A sub query is a query inside a query.
-- It is SQL SELECT query inside another SELECT query

SELECT salary FROM employees 
where employee_id =145;

SELECT * FROM employees where salary>14000;

SELECT * FROM employees where salary>(SELECT salary FROM employees 
where employee_id =145);

--Inner Query(Sub Query)
--Outer Query (Parent Query)
-- Can be used with SELECT,WHERE,HAVING,FROM
--They of of  three types (Single row,Multiple row,Multiple column)
--How they work -- Inner query is executed first and the outer query is executed  next

-------------------SINGLE ROW subquerries--------------------
-- They only return one row from the inner querry
--Used with single row comparison operators (=,>,<,>=,<=,<>,!=)
SELECT * from employees 
WHERE department_id=
                (SELECT department_id 
                FROM employees 
                WHERE employee_id=145);

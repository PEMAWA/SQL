Select UPPER(first_name) , lower (last_name) , INITCAP (email) FROM employees
where job_id ='SA_REP';

SELECT UPPER (first_name || ' ' || last_name)as Names FROM employees;


SELECT * FROM employees where lower( last_name )= 'king';
SELECT * FROM employees where lower( last_name )= 'king';
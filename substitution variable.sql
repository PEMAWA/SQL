SELECT first_name,last_name,salary, department_id
FROM employees WHERE department_id = &department_no;

SELECT first_name,last_name,salary, department_id
FROM employees WHERE first_name = '&NAME';

SELECT employee_id , first_name ,last_name,&column_name
FROM &table_name
WHERE &condition
ORDER BY &order_by_clause;
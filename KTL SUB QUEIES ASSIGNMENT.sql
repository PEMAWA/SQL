
------Scalar Sub-query using Where Close

SELECT first_name,last_name,
hire_date from employees
where hire_date =(select min(hire_date) from employees);




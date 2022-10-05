ACCEPT emp_id PROMPT 'Please enter a valid employee ID';

SELECT employee_id , first_name,last_name,salary
FROM employees
WHERE employee_id= &emp_id;


ACCEPT min_salary PROMPT 'Please specify the minimum Salary';
ACCEPT max_salary PROMPT 'Please specify the maximum salary';

SELECT  employee_id , first_name, last_name ,salary
FROM employees
WHERE salary BETWEEN &min_salary AND &max_salary;

UNDEFINE min_salary
UNDEFINE max_salary
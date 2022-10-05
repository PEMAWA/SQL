SELECT
    * FROM employees;
    SELECT first_name||' '||last_name as name , salary , salary*12 as "Annual Salary" , hire_date +5 as "Hire-Date" from employees;
    
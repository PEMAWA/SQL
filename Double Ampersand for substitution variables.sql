SELECT employee_id ,first_name, last_name ,salary from 
employees
where salary between &&sal and &sal+1000;

select employee_id , first_name, last_name,&&column_name 
from employees ORDER BY & column_name;

Define emp_num=100;
Define column_name='first_name';
select * from employees where employee_id = &emp_num;
define column_name;
UNDEF column_name;
define;
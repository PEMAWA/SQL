SELECT employee_id from employees
intersect
select employee_id from emails;

select employee_id from employees

minus

select employee_id from emails;

Select department_id from departments

union 

select department_id from employees;


Select department_id from departments

union all 

select department_id from employees;
SELECT 20+5  FROM dual;
Select 56*78 from dual;
select 45-12 from dual;
Select 45/9 from dual;
Select (49+4)/(70-9) from dual;

SELECT  Job_id,job_title,max_salary,min_salary,(max_salary-min_salary) DIFF from jobs;
SELECT DISTINCT JOB_ID from employees;

SELECT 'SELECT FIRST_NAME,LAST NAME FROM EMPLOYEES WHERE DEPARTMENT_ID= ' || DEPARTMENT_ID AS SCRIPT FROM EMPLOYEES;
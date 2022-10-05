--CONDITIONAL EXPRESSIONS

--CASE -- PERFOMES IF .. THEN .ELSE
--SIMPLE CASE EXPRESSIONS -- expression is stated at the begining and posibble results 
--are checked in the condtion parameters

CASE first_name 
WHEN 'Alex' THEN 'Name is Alex'
WHEN 'John' THEN 'Name is John'
 ELSE 'Another'
 END;

--Searched CASED Expression----Expressions are used within each condition 
--without mentioning at the start of the case expression

CASE 
WHEN first_name='Alex' THEN 'Name is Alex'
WHEN first_name='John' THEN 'Name is John'
ELSE 'Another'
END;


SELECT first_name,last_name,job_id,hire_date,salary,
CASE job_id
    when 'ST_CLERK' THEN salary*1.2
    WHEN 'ST_REP' THEN salary *1.3
    when 'IT_PROG' THEN salary*1.4
    ELSE 0
    END AS "UPDATED SALARY"
    FROM employees;
    
    SELECT first_name,last_name,job_id,hire_date,salary,
CASE
    when  job_id = 'AD_PRES' THEN salary*1.2
    WHEN  job_id ='ST_REP' THEN salary *1.3
    when  job_id = 'IT_PROG' THEN salary*1.4
    WHEN last_name = 'King' THEN 2*salary
    ELSE salary
    END AS "UPDATED SALARY"
    FROM employees;
    
    
    SELECT first_name,last_name,job_id,salary
    FROM employees
    where( CASE
    WHEN job_id='IT_PROG' AND Salary>5000 THEN 1
    WHEN job_id ='SA_MAN' AND SALARY>10000 THEN 1
    ELSE 0
    END)=1;
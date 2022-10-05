--TO-CHAR(date|number , [format_model],[nls_parameter])
--it is case sensitive

SELECT FIRST_NAME, LAST_NAME , TO_CHAR(HIRE_DATE ,'DDTHSP-Month-YYYY HH24:MI:SS' )as "formated date" 
FROM EMPLOYEES WHERE TO_CHAR(EMPLOYEE_ID)='100';

--YY ,RR-YY.YEAR,YYYY(Date format models)
--MON,MM,MONTH,
--D ,DY,DAY
--HH(HH12,HH24)
--MI-minutes
--SS-seconds
--TH - 
--SP-Spelling
--SPTH,THSP

SELECT TO_CHAR(SALARY ,'L99,999.99')as formated_salary,SALARY from employees;

SELECT salary, 
to_char(salary * commission_pct *100,'L999,999.00')as new_salary from employees 
where commission_pct is not null;

-- 9 Numeber of digits
--0 - Leading or trailing zeros
--$ Dollar Sign
--L--local currency symbol
-- . The decimal point
-- , Comma as indicator


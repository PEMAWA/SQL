--TO_NUMBER(char[,'format model']) converts text to number

SELECT TO_NUMBER('$6,152.21' ,'$99,999.99') as formated_number 
from dual;

SELECT TO_NUMBER ('$5,233.33' , '$99,999.00') as formatted from dual;

--Text must fit the format model

--TO_DATE(char [, 'format_model']) converts text to date

SELECT FIRST_NAME,LAST_NAME,TO_CHAR(HIRE_DATE,'DDSPTH MONTH YYYY')as "HIRE DATE"
FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('JUN 12 ,2005' , 'Mon DD, yyyy') ORDER BY hire_date;



SELECT FIRST_NAME, UPPER(FIRST_NAME), UPPER (FIRST_NAME || ' ' || LAST_NAME)AS "FULL NAME" FROM EMPLOYEES;

select * from award;

select AWARD_DESC , INITCAP(AWARD_DESC) FROM AWARD;

SELECT * FROM EMPLOYEES WHERE UPPER(FIRST_NAME) = 'DAVID';

SELECT PHONE_NUMBER , LENGTH(PHONE_NUMBER) FROM EMPLOYEES;

DESC EMPLOYEES;

SELECT LAST_NAME ,LPAD(LAST_NAME ,12 , '-')
FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';


SELECT EMAIL_ADDRESS , RTRIM(EMAIL_ADDRESS ,'@nowhare.com') as username FROM EMAILS;

select * from website;

SELECT WEBSITE_URL ,SUBSTR (WEBSITE_URL,12,11)AS "Domain",LENGTH(SUBSTR (WEBSITE_URL,12,11)) AS "length" FROM WEBSITE;
--Instr nested with substr
SELECT EMAIL_ADDRESS, 
SUBSTR(EMAIL_ADDRESS,1,(INSTR(EMAIL_ADDRESS,'@')-1)) Name
FROM EMAILS WHERE EMAIL_ID IN(1,2,3,4);

SELECT WEBSITE_URL , REPLACE (WEBSITE_URL,'test','link') "New Url" FROM WEBSITE;
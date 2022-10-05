---ROWS AND COLUMNS
-- COLUMN -FIELDS
--- USERNAME --- PASSWORD

--ROWS - RECORDS
 -- ZUENAH --11111
 --SIUD -- SELECT
        --INSERT
        --UPDATE
        --DELETE
--SELECT COLUMN FROM TABLE NAME
-- DATE
---TEXT 
--- NUMBER
-- CHAR
--BOOLEAN
---
SELECT * FROM EMPLOYEES WHERE JOB_ID ='FI_ACCOUNT';
DESC EMPLOYEES;

SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID = '&ID';

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES WHERE employee_id =100;

CREATE TABLE REGISTRATION
(Client_id NUMBER(8),
FIRST_NAME VARCHAR2(12),
LAST_NAME VARCHAR2(12),
DOB DATE,
EMAIL VARCHAR2(20),
COUNTRY VARCHAR2(20),
PASS_WORD VARCHAR (20)
);

INSERT INTO registration VALUES (
    1,
    'Zuenah',
    'Macharia',
    '23-SEP-02',
    'zuenah@xyz.com',
    'JAMAICA',
    '123456789'
);

SELECT * FROM REGISTRATION WHERE client_id = 2;

INSERT INTO registration VALUES (
    1,
    'peter',
    'Maina',
    '25-JUL-85',
    'peter@xyz.com',
    'IRAQ',
    'GHDGHDJJIUEIMA625'
);

UPDATE registration SET EMAIL ='' WHERE first_name = 'peter';

DELETE FROM REGISTRATION WHERE client_id =2; 


SELECT
    LOWER(FIRST_NAME), SALARY,DEPARTMENT_NAME
FROM
         employees
    JOIN departments ON employeeS.department_id = departments.department_id;
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;


SELECT * FROM EMPLOYEES WHERE JOB_ID ='IT_PROG' AND   SALARY  <>6000 ORDER BY first_name DESC;

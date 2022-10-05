SELECT * FROM countries;

DESC JOBS;

SELECT * FROM JOBS;
INSERT INTO JOBS(JOB_ID,JOB_TITLE)
 VALUES ('HOSP_MGR','Hospitality Manager');
 
 --You only leave the nullable columns as null
 
 INSERT INTO JOBS 
 VALUES ('SEC','Security Guard', null,null);
 
 SELECT
    job_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
WHERE
    job_id NOT IN ( 'AD_PRES', 'AD_VP' )
    AND hire_date > '07-MAR-06'
    AND ( commission_pct IS NULL
          AND ( salary BETWEEN 3100 AND 8000 ) )
    AND ( first_name NOT LIKE 'K%'
          AND first_name NOT LIKE 'S%' )
ORDER BY
    job_id,
    last_name;
    
    
SELECT * FROM JOBS_COPY;
---Multiple rows 
--INSERT....SELECT STATEMENT
INSERT INTO JOBS_COPY
SELECT * FROM JOBS;

Select * from emails;
SELECT
    *
FROM
    employees
WHERE
    employee_id NOT IN (
        SELECT
            employee_id
        FROM
            Emails
    );
    
INSERT
    WHEN ( employee_id = 168 ) THEN
        INTO emails
        VALUES (
            15,
            'lozer@xyz.com',
            168
        )
        WHEN ( employee_id = 177 ) THEN
            INTO emails
            VALUES (
                16,
                'jlivings@xyz.com',
                177
            )
        WHEN ( employee_id = 188 ) THEN
            INTO emails
            VALUES (
                17,
                'kchung@xyz.com',
                188
            )
SELECT
    *
FROM
    employees;
    
SELECT * FROM  EMAILS;

SELECT * FROM COUNTRIES;

INSERT INTO countries (Country_id,Country_Name,Region_ID)
VALUES ('MD','Madagascar',4);

INSERT INTO COUNTRIES 
VALUES('SS','South Sudan','4');




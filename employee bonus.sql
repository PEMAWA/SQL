------ Table employee_bonus
CREATE TABLE employee_bonus (
    bonus_id      NUMBER(10),
    employee_id   NUMBER(10) NOT NULL,
    salary        NUMBER(8, 2),
    bonus         NUMBER(10, 2),
    creation_date DATE NOT NULL
);

ALTER TABLE employee_bonus MODIFY (
    bonus_id PRIMARY KEY
);

SELECT
    *
FROM
    employee_bonus;
	
-------------------Sequence for the bonus_id
CREATE SEQUENCE bonus_id MINVALUE 1 INCREMENT BY 1;

ALTER SEQUENCE bonus_id MAXVALUE 3500;

---- -----------------PLSQL-----------------------------
DECLARE
    v_salary NUMBER(20);
    v_job_id VARCHAR2(30);
    v_employee_id NUMBER (20);
	
BEGIN
    SELECT
        salary,
        employee_id,
        job_id
    INTO
        v_salary,
        v_employee_id,
        v_job_id
    FROM
        employees
    WHERE
        employee_id = 104;

    IF
        v_salary > 10000
        AND v_job_id = 'SA_REP'
    THEN
        INSERT INTO employee_bonus (
            bonus_id,
            employee_id,
            salary,
            bonus,
            creation_date
        ) VALUES (
            bonus_id.NEXTVAL,
            v_employee_id,
            v_salary,
            2000,
            sysdate
        );

    ELSIF (v_salary BETWEEN 5000 AND 10000) AND v_job_id ='IT_PROG'  THEN
        INSERT INTO employee_bonus (
            bonus_id,
            employee_id,
            salary,
            bonus,
            creation_date
        ) VALUES (
            bonus_id.NEXTVAL,
            v_employee_id,
            v_salary,
            2000,
            sysdate
        );
    ELSE
    INSERT INTO employee_bonus (
            bonus_id,
            employee_id,
            salary,
            bonus,
            creation_date
        ) VALUES (
            bonus_id.NEXTVAL,
            v_employee_id,
            v_salary,
            0,
            sysdate
            );
    

    END IF;

END;
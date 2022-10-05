--Step 1
ALTER TABLE HR.EMPLOYEES ADD (STATUS CHAR(1) DEFAULT 'A');

ALTER TABLE HR.EMPLOYEES ADD (BONUS CHAR(1) DEFAULT 'N');

--Step 2
UPDATE HR.EMPLOYEES
   SET STATUS = 'I'
 WHERE EMPLOYEE_ID IN
          (102,
           105,
           107,
           109,
           111,
           114,
           116,
           118,
           120,
           122,
           124,
           129,
           194,
           198,
           200,
           203,
           205);
		   
		   
COMMIT;

------CREATION OF NE BONUS TABLE

CREATE TABLE new_bonus (
    bonus_id      NUMBER(10) PRIMARY KEY,
    employee_id   NUMBER(30),
    salary        NUMBER(30),
    bonus_amount  NUMBER(30),
    period_yr     NUMBER(30),
    creation_date DATE DEFAULT sysdate,
    CONSTRAINT empid_fk FOREIGN KEY ( employee_id )
        REFERENCES hr.employees ( employee_id )
);


----BONUS SEQUENCE CREATION

CREATE SEQUENCE bonus_seq
INCREMENT BY 1
START WITH 100;



-- CREATION OF TABLE ERRORS
CREATE TABLE hr.bonus_errors (
    error_id  NUMBER(10),
    creattion DATE DEFAULT sysdate,
    code      NUMBER(30),
    message   VARCHAR2(255)
);


-- CREATION OF ERROR SEQUENCE
CREATE SEQUENCE ERR_SEQ
   INCREMENT BY 1
   START WITH 100;
   
   COMMIT;
   
   

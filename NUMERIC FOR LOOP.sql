DECLARE

BEGIN
FOR LOOP_COUNTER IN 1 .. 45

LOOP
UPDATE EMPLOYEES SET COMMISSION_PCT =0.15

WHERE DEPARTMENT_ID = 50;

END LOOP;
END;


SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 50;

ROLLBACK;
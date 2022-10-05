SELECT * FROM employee_bonus;


---------------------------------------------------------------------
--SIMPLE CASE
DECLARE
v_job_id VARCHAR2(20);
V_Salary NUMBER (20);
v_employee_id number (20);

BEGIN

SELECT JOb_id,salary, employee_id INTO v_job_id,v_salary,v_employee_id FROM employees
WHERE employee_id=105;

CASE v_job_id

WHEN 'AD_VP' THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,500,sysdate);

WHEN 'FI_ACCOUNT' THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,200,sysdate);

WHEN 'IT_PROG' THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,100,sysdate);

ELSE
INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,0,sysdate);

END CASE;

END;


---SEARCHED CASE
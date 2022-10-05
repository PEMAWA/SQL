----------------SEARCHED CASE

DECLARE
v_job_id VARCHAR2(20);
V_Salary NUMBER (20);
v_employee_id number (20);

BEGIN

SELECT JOb_id,salary, employee_id INTO v_job_id,v_salary,v_employee_id FROM employees
WHERE employee_id= &&employee_id;

CASE 

WHEN V_salary >10000 THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,500,sysdate);

WHEN v_salary>5000 THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,200,sysdate);

WHEN v_salary>1000 THEN

INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,100,sysdate);

ELSE
INSERT INTO employee_bonus VALUES
(Bonus_id.nextval,v_employee_id,v_salary,0,sysdate);

END CASE;

END;


select * from employee_bonus;


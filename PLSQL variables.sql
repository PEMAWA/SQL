SET SERVEROUTPUT ON

DECLARE 
 emp_name VARCHAR2(25) DEFAULT 'Peter';
 Count_loop BINARY_INTEGER := 0; -- Initialization
 dept_total_sal NUMBER (9,2) :=20000;
 order_date DATE:= sysdate;
 c_tax_rate CONSTANT NUMBER(3,2) :=8.25;
 valid BOOLEAN NOT NULL := TRUE;
 
 new_sal dept_total_sal%TYPE;

BEGIN

new_sal :=dept_total_sal/2;
DBMS_OUTPUT.put_line(new_sal);

DBMS_OUTPUT.PUT_LINE(order_date +5);
DBMS_OUTPUT.PUT_LINE(emp_name);
DBMS_OUTPUT.put_line(dept_total_sal + 10000.258);
DBMS_OUTPUT.PUT_LINE(c_tax_rate *dept_total_sal);
DBMS_OUTPUT.put_line(count_loop + 1.25);
--DBMS_OUTPUT.put_line(valid);


END;







/*
VARIABLE emp_salary NUMBER
BEGIN
SELECT salary INTO :emp_salary
FROM employees WHERE employee_id = 178;
END;
/
PRINT emp_salary
SELECT first_name, last_name FROM employees
WHERE salary=:emp_salary;*/
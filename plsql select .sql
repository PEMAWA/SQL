set SERVEROUTPUT on

DECLARE
    vjobid VARCHAR2(10);
BEGIN
    SELECT
        job_id
    INTO vjobid
    FROM
        employees
    WHERE
        employee_id = 150;

    dbms_output.put_line('The employee 150 holds the job of : ' || vjobid);
END;

set SERVEROUTPUT on

DECLARE
    vjobid    VARCHAR2(10);
    vemail    VARCHAR2(30);
    vhiredate DATE;
BEGIN
    SELECT
        job_id,
        email,
        hire_date
    INTO
        vjobid,
        vemail,
        vhiredate
    FROM
        employees
    WHERE
        employee_id = '&employeeid';

    dbms_output.put_line('The employee 150 holds the job of : ' || vjobid);
       dbms_output.put_line('The email address of employee 150  is: ' || vemail);
          dbms_output.put_line('The employee 150 was hired on : ' || vhiredate);
END;
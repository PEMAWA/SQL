 SET SERVEROUTPUT ON;
BEGIN

v_count NUMBER(10) :=1;
 LOOP 
 
 UPDATE
 DBMS_OUTPUT.PUT_LINE('You dont need this');
 EXIT;
 END LOOP;
 END;
----INSTR

DECLARE
    names          VARCHAR2(60) := 'Ken,Sammy,Grace,Mike,Rebbeca,John,Samson,Peter';
    comma_location NUMBER := 0;
BEGIN
    LOOP
        comma_location := instr(names, ',', comma_location + 1);
        EXIT WHEN comma_location = 0;
        dbms_output.put_line(comma_location);
    END LOOP;
END;

------------SUBSTR
SET SERVEROUTPUT ON ;

DECLARE
    names          VARCHAR2(60) := 'Ken,Sammy,Grace,Mike,Rebbeca,John,Samson,Peter';
    names_adjusted VARCHAR2(61);
    comma_location NUMBER := 0;
    prev_location  NUMBER := 0;
BEGIN
   -- Stick a comma after the final name
    names_adjusted := names || ',';
    LOOP
        comma_location := instr(names_adjusted, ',', comma_location + 1);
        EXIT WHEN comma_location = 0;
        dbms_output.put_line(substr(names_adjusted, prev_location + 1, comma_location - prev_location - 1));

        prev_location := comma_location;
    END LOOP;

END;

----------- REPLACE
SET SERVEROUTPUT ON ;

DECLARE
    names VARCHAR2(60) := 'Ken,Sammy,Grace,Mike,Rebbeca,John,Samson,Peter';
BEGIN
    dbms_output.put_line(replace(names, ',', chr(10)));
END;
 
 ------------PADDING LPAD RPAD

SET SERVEROUTPUT ON ;

DECLARE
    a VARCHAR2(30) := 'jeff';
    b VARCHAR2(30) := 'Eric';
    c VARCHAR2(30) := 'Aaron';
    d VARCHAR2(30) := 'Andrew';
    e VARCHAR2(30) := 'Matt';
    f VARCHAR2(30) := 'Joe';
BEGIN
    dbms_output.put_line(rpad(a, 10, '.')
                         || lpad(b, 10, '.'));

    dbms_output.put_line(rpad(c, 10, '.')
                         || lpad(d, 10, '.'));

    dbms_output.put_line(rpad(e, 10, '.')
                         || lpad(f, 10, '.'));

END;

------TRIMMING LTRIM RTRIM

SET SERVEROUTPUT ON

 DECLARE
  A VARCHAR2(40) := 'This sentences has too many commas ,,,,,,,,,';
  B VARCHAR2(40):='The number 5';
  
  BEGIN
  
DBMS_OUTPUT.PUT_LINE (RTRIM (A ,','));
  DBMS_OUTPUT.PUT_LINE (LTRIM (B ,'ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz'));
  
  END;
  
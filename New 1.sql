DECLARE

MESSAGE VARCHAR2(15);

BEGIN

MESSAGE := 'HELLO WORLD';

DBMS_OUTPUT.PUT_LINE (MESSAGE);

END;
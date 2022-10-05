DECLARE

BIRTH_DATE CONSTANT DATE := '01-JAN-97';
vname VARCHAR2 (20) NOT NULL :='Peter';

-- constant - value cannot be changed
age NUMBER;
CUREENT_DATE DATE;

BEGIN

cureent_date := sysdate;


age :=(cureent_date-birth_date)/365;

DBMS_OUTPUT.PUT_LINE(vname ||' your age is ' || age || ' years old' );


END;
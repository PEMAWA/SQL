SELECT SUBSTR('John Smith',INSTR('John Smith',' ' )+1,LENGth('John Smith')) as output from dual;

SELECT first_name || ' ' ||last_name as full_name , 

UPPER(SUBSTR(first_name || ' ' ||last_name,
INSTR(first_name || ' ' ||last_name ,' ')+1,LENGTH(first_name || ' ' ||last_name))) as second_name
from employees;
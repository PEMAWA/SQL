SELECT LTRIM('       My name is peter      ') as l_trim from dual;
SELECT TRIM(LEADING ' 'FROM '       My name is peter      ') as r_trim from dual;
SELECT TRIM(TRAILING ' 'FROM '       My name is peter      ') as r_trim from dual;
SELECT TRIM(BOTH ' 'FROM '       My name is peter      ') as r_trim from dual;
SELECT TRIM(TRAILING 'r'FROM '       My name is peter') as r_trim from dual;
SELECT RTRIM ('    My name is peter    ') as l_trim from dual;
SELECT RTRIM ('My name is peter','mr') as r_trim from dual;
SELECT LTRIM ('My name is peter','Mr') as l_trim from dual;

SELECT RTRIM( LTRIM ('www.yourwebsitename.com','w.') ,'.com') as web_name from dual;

SELECT first_name , REPLACE(first_name , 'und','-') as replaced_output FROM employees;
SELECT first_name , LPAD(first_name , '10','-') as PAD FROM employees;
SELECT first_name , RPAD(first_name , '10','-') as PAD FROM employees;



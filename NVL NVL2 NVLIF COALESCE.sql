--NVL,NVL2,NULLIF,COALESCE (Null related functions)
--NVL--repalce null with meaningful values
--NVL(expression1,Expression2)
SELECT employee_id ,SALARY , COMMISSION_PCT, SALARY+SALARY*NVL(commission_pct,0) FROM employees;

--NVL2 (Expression1, Expression2,Expression3)
SELECT JOB_ID,FIRST_NAME,LAST_NAME,COMMISSION_PCT, NVL2(COMMISSION_PCT ,'has','has not')as "NVL2 EXAMPLE"
FROM EMPLOYEES WHERE JOB_ID IN('SA_REP','IT_PROG')
ORDER BY COMMISSION_PCT NULLS LAST;

--NULLIF (EXPR1,EXPRE2)
--Returns null if both expreesions are  equal and expression 1 if they are not equal

SELECT FIRST_NAME , LAST_NAME, LENGTH(FIRST_NAME)as len1,LENGTH(LAST_NAME)as len2,
NULLIF(LENGTH(FIRST_NAME),LENGTH(LAST_NAME))as "Result" from employees
WHERE NULLIF(LENGTH(FIRST_NAME),LENGTH(LAST_NAME))IS NULL;

--COALESCE (EXPR1 ,EXPR2,.......,EXPRN) 
-- if exprs are null it returns null
--All exprs must be of the same type

SELECT COALESCE(Null,null,null,1,2,3,null)from dual;
SELECT COALESCE(Null,null,null,null,null)from dual;
SELECT state_province,city, COALESCE(state_province ,city)from locations;


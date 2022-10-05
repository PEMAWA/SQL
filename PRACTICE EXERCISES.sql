SELECT
    last_name,
    job_id,
    salary AS sal
FROM
    employees;

DESC DEPARTMENTS;

SELECT
    *
FROM
    departments;

DESCRIBE EMPLOYEES;
 ----- 01
SELECT
    employee_id,
    last_name,
    job_id,
    hire_date "STARTDATE"
FROM
    employees;

---02
SELECT
    employee_id "Emp #",
    last_name   employee,
    job_id      title,
    hire_date   "STARTDATE"
FROM
    employees;
---03
SELECT
    job_id
FROM
    employees;

-- 05
SELECT
    last_name
    || ','
    || job_id AS "Employee and title"
FROM
    employees;

---06

SELECT * FROM employees;

SELECT employee_id || ',' || || ',' ||
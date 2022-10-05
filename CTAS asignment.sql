CREATE TABLE it_employees
    AS
        SELECT
            employee_id,
            first_name,
            last_name,
            job_id
        FROM
            employees
        WHERE
            job_id = 'IT_PROG';

SELECT
    *
FROM
    it_employees;

--  parent child relationship
CREATE TABLE orders (
    orderid     NUMBER(5) NOT NULL,
    ordernumber NUMBER(5) NOT NULL,
    personid    INT,
    PRIMARY KEY ( orderid ),
    FOREIGN KEY ( personid )
        REFERENCES persons_test ( personid )
);

CREATE TABLE persons_test (
    personid   NUMBER(5) NOT NULL,
    last_name  VARCHAR2(20) NOT NULL,
    first_name VARCHAR2(20) NOT NULL,
    age        NUMBER(3) NOT NULL,
    PRIMARY KEY ( personid )
);

DESC persons_test

DESC ORDERS;

INSERT INTO persons_test VALUES (
    1,
    'John',
    'Doe',
    12
);

INSERT INTO orders VALUES (
    1,
    11,
    1
);

DELETE FROM persons_test;
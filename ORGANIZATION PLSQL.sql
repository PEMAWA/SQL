CREATE TABLE KTL_ORGANIZATION_TEST_PETER
(
org_id NUMBER(5,2),
Organization_name VARCHAR2(50),
town VARCHAR(25),
org_type VARCHAR2(30),
type VARCHAR2(15)

);


CREATE SEQUENCE ORG_ID
  INCREMENT BY 1 MAXVALUE 5000 MINVALUE 100 CYCLE;
  
  ALTER TABLE KTL_ORGANIZATION_TEST_PETER 
  ADD record_id NUMBER(5,2);
  
  
 DECLARE
v_org_id number (5,2);
v_org_name VARCHAR2(50);
V_town VARCHAR2 (25);
V_org_type VARCHAR2(30);
V_type VARCHAR2 (15);

BEGIN
SELECT
    organization_id,
    name,
    town_or_city,
    organization_type,
    type
    
    INTO
    v_org_id,
    v_org_name,
    v_town,
    v_org_type,
    v_type
FROM
    hr_organization_units_v
WHERE
    organization_type IS NOT NULL AND  town_or_city IS NOT NULL;
    
    
    
END;

SELECT
    *
FROM
    KTL_ORGANIZATION_TEST_PETER;
    
    
    SELECT
    organization_id,
    name,
    town_or_city,
    organization_type,
    type
FROM
    hr_organization_units_v
WHERE
    organization_type IS NOT NULL AND  town_or_city IS NOT NULL;
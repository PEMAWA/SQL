SELECT
    first_name,
    last_name,
   UPPER( first_name || ' ' || last_name) "full name",
    department_name,
    job_title,
    salary,
    street_address,
    country_name,
    region_name
FROM
         employees e
    JOIN departments d ON ( e.department_id = d.department_id )
    JOIN locations   l ON ( l.location_id = d.location_id )
    JOIN countries   c ON ( l.country_id = c.country_id )
    JOIN regions     r ON ( c.region_id = r.region_id )
    JOIN jobs        j ON ( j.job_id = e.job_id )
    
    
ORDER BY
    r.region_name;
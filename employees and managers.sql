SELECT
    e.last_name ,
    e.employee_id emp#,
   NVL( (
        SELECT
           m.last_name
        FROM
            employees m
        WHERE
            m.employee_id = e.manager_id
    )manager ,'CEO'),
    e.employee_id man#
FROM
    employees e
    
    ;
--WHERE
   -- e.manager_id IS NOT NULL;
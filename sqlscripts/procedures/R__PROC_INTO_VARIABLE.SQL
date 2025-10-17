CREATE OR REPLACE PROCEDURE proc_into_variable()
RETURNS STRING
LANGUAGE SQL 
AS
DECLARE
  v_dep NUMBER := 0.00;
  v_sal NUMBER := 0.00;
  v_tax NUMBER := 0.00;
BEGIN
   SELECT DEPARTMENT_ID,
          SALARY
     INTO :v_dep,
          :v_sal
     FROM EMPLOYEES
    WHERE employee_id = 1;
RETURN v_dep ||'-'|| v_sal;
END;
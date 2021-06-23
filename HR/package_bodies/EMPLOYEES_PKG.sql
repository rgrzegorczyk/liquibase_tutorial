--liquibase formatted sql
--changeset rgrzegorczyk:EMPLOYEES_PKG_BODY runOnChange:true stripComments:false context:RELEASE_1_0 labels:JIRA-1
--comment Add procedure to automatically give a raise to employee
CREATE OR REPLACE PACKAGE body EMPLOYEES_PKG
AS
procedure p_give_a_raise(
  pi_employee_id in EMPLOYEES.EMPLOYEE_ID%TYPE,
  pi_raise_pct   in PLS_INTEGER)
as
begin

  UPDATE employees
     SET salary = (salary * pi_raise_pct) / 100
   WHERE employee_id =  pi_employee_id;

end p_give_a_raise;

  
END EMPLOYEES_PKG;
/
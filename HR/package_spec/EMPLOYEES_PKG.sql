--liquibase formatted sql
--changeset rgrzegorczyk:EMPLOYEES_PKG_SPEC runOnChange:true stripComments:false context:RELEASE_1_0 labels:JIRA-1
--comment Add procedure to automatically give a raise to employee
create or replace package EMPLOYEES_PKG
as

/** Procedure to give a raise to specified employee by value specified( percentage)
*/
procedure p_give_a_raise(
  pi_employee_id in EMPLOYEES.EMPLOYEE_ID%TYPE,
  pi_raise_pct   in PLS_INTEGER
);

  
end EMPLOYEES_PKG;

/

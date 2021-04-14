--liquibase formatted sql
--changeset rgrzegorczyk:P_SECURE_DML runOnChange:true stripComments:false
--comment Created changeset for P_SECURE_DML
CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."P_SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205, 
		'You may only make changes during normal office hours');
  END IF;
END P_SECURE_DML;

/

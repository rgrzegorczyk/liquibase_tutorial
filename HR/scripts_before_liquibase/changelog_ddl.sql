--liquibase formatted sql
--changeset rgrzegorczyk:EMPLOYEES_table
--comment Create table EMPLOYEES
  CREATE TABLE "EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20 CHAR), 
	"LAST_NAME" VARCHAR2(25 CHAR), 
	"EMAIL" VARCHAR2(25 CHAR), 
	"PHONE_NUMBER" VARCHAR2(20 CHAR), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(10 CHAR), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0)
   ) ;

--changeset rgrzegorczyk:JOBS_table
--comment Create table JOBS   
  CREATE TABLE "JOBS" 
   (	"JOB_ID" VARCHAR2(10 CHAR), 
	"JOB_TITLE" VARCHAR2(35 CHAR), 
	"MIN_SALARY" NUMBER(6,0), 
	"MAX_SALARY" NUMBER(6,0)
   ) ;

--changeset rgrzegorczyk:JOB_history_table
--comment Create job history 
CREATE TABLE job_history
    ( employee_id   NUMBER(6)
	 CONSTRAINT    jhist_employee_nn  NOT NULL
    , start_date    DATE
	CONSTRAINT    jhist_start_date_nn  NOT NULL
    , end_date      DATE
	CONSTRAINT    jhist_end_date_nn  NOT NULL
    , job_id        VARCHAR2(10)
	CONSTRAINT    jhist_job_nn  NOT NULL
    , department_id NUMBER(4)
    , CONSTRAINT    jhist_date_interval
                    CHECK (end_date > start_date)
    ) ;	 


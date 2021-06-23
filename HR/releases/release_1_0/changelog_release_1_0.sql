--liquibase formatted sql
--changeset JKOWALSKI2:Add_shoes_rangeand_model context:RELEASE_1_0 labels:JIRA-2
--comment added new columns
ALTER TABLE SHOES ADD (
  MIN_NUMBER NUMBER,
  MAX_NUMBER NUMBER,
  MODEL VARCHAR2(50)
);
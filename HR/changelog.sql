--liquibase formatted sql
--changeset rgrzegorczyk:TASK_1
--comment Create table SHOES
create table SHOES (
   ID         number generated always as identity not null,
   TYPE       varchar2(50 ),
   BRAND      varchar2(50),
   SHOE_SIZE  number,
   constraint SHOES_PK primary key ( ID ) enable
);
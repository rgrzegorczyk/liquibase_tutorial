--liquibase formatted sql
--changeset rgrzegorczyk:SHOES_PKG_SPEC runOnChange:true stripComments:false
--comment Create shoes_pkg specification
create or replace package SHOES_PKG
as
  function f_get_SHOES(
    pi_ID IN SHOES.ID%TYPE
  ) return SHOES%ROWTYPE;

end SHOES_PKG;

/

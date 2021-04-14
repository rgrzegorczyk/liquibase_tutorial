--liquibase formatted sql
--changeset rgrzegorczyk:SHOES_PKG_BODY runOnChange:true stripComments:false
--comment Create shoes_pkg body
CREATE OR REPLACE PACKAGE body SHOES_PKG
AS
  function f_get_SHOES(
    pi_ID IN SHOES.ID%TYPE
  ) return SHOES%ROWTYPE
  IS
    v_row SHOES%ROWTYPE;
    BEGIN
       SELECT *
         INTO
              v_row
         FROM SHOES
        WHERE 1 = 1
          AND ID = pi_ID;
-- test comment 

      RETURN v_row;
    END;
END SHOES_PKG;
/
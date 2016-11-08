CREATE PROCEDURE "SAP_TM_TRP"."P_CREATE_EXTRAL_ROLE_LFLT"()
AS
BEGIN
DECLARE HOT_REG_FILTER_ID BIGINT;

DECLARE ROLE_GROUP_ID INTEGER;
DECLARE NAME NVARCHAR(50);
DECLARE DESC NVARCHAR(50);
DECLARE ROLE_ID BIGINT;
DECLARE USER_ID BIGINT;
DECLARE RP_USER_NAME NVARCHAR(60) DEFAULT 'TRPPLAN';
DECLARE DM_USER_NAME NVARCHAR(60) DEFAULT 'TRPDEP';


DECLARE NAME VARCHAR(50);
DECLARE DESC VARCHAR(500);
DECLARE VISIBLE_FLAG VARCHAR(3);
DECLARE ITEMS TABLE (ID NVARCHAR(22));
DECLARE LOCATION_TYPE INT;


--create super regional planner role
ROLE_GROUP_ID := 3;
NAME := 'ALL_RP';
DESC := 'Franch Regional Planner';
CALL "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::p_role_create"(:ROLE_GROUP_ID,:NAME,:DESC,:ROLE_ID);
RGS = SELECT LOCID AS ID FROM "SAPTMW"."/SAPAPO/LOC" WHERE LOCNO = 'ADMI';
CALL "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::p_role_region_create" (:ROLE_ID,:RGS);
--assign role FR_RP1 to user TRPPLAN 
ROLES = SELECT DISTINCT ID FROM "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_role"
        WHERE NAME = :NAME;
SELECT ID INTO USER_ID FROM "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user"
        WHERE USERNAME = :RP_USER_NAME;
CALL "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::p_ext_assign_role"(
        :USER_ID,3,:ROLES); 


---create region type SUPER location filter
NAME := 'HOT_REG';
DESC := 'Part Regions Included for Demo';
VISIBLE_FLAG := 'G';
LOCATION_TYPE := 5;
ITEMS = SELECT LOCID AS ID FROM "SAPTMW"."/SAPAPO/LOC" WHERE LOCNO = 'ADMI';
CALL "SAP_TM_TRP"."sap.tm.trp.db.filter::p_ext_location_filter_create"(:NAME, :DESC, :VISIBLE_FLAG, :ITEMS, :LOCATION_TYPE, :HOT_REG_FILTER_ID);



END;
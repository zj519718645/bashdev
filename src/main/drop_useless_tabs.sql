DROP PROCEDURE "SYSTEM"."Z_REMOVE_UNUSED_TABS";
CREATE PROCEDURE "SYSTEM"."Z_REMOVE_UNUSED_TABS"
AS
BEGIN

DECLARE TAB_ARR NVARCHAR(256) ARRAY;
DECLARE ARR_INDEX INT;
DECLARE SQLSTR NVARCHAR(1000);

USED_TAB_LIST =
select DISTINCT BASE_OBJECT_NAME AS TABLE_NAME from OBJECT_DEPENDENCIES 
WHERE BASE_SCHEMA_NAME IN ('SAPTM','SAPX0M') 
AND DEPENDENT_SCHEMA_NAME IN ('SAP_TM_TRP','SAP_TM_ROUTING','_SYS_BIC')
ORDER BY TABLE_NAME;

ALL_TAB_LIST = 
SELECT DISTINCT TABLE_NAME FROM TABLES WHERE SCHEMA_NAME = 'SAPX0M' ORDER BY TABLE_NAME;

---find unsed tables
UNUSED_TAB_LIST =
SELECT TABLE_NAME FROM :ALL_TAB_LIST
MINUS
SELECT TABLE_NAME FROM :USED_TAB_LIST;

---drop unused tables
TAB_ARR := ARRAY_AGG(:UNUSED_TAB_LIST.TABLE_NAME);

FOR ARR_INDEX IN 1 .. CARDINALITY(:TAB_ARR) DO
SQLSTR := 'DROP TABLE' || ' ' || '"' || 'SAPX0M' || '"' || '.' || '"' || :TAB_ARR[:ARR_INDEX] || '"' || ' ' || 'CASCADE';
EXECUTE IMMEDIATE :SQLSTR;

END FOR;

END;


CALL "SYSTEM"."Z_REMOVE_UNUSED_TABS"();
--STEP1: REMOVE design-time objects
DELETE FROM "_SYS_REPO"."RUNTIME_OBJECTS" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."PACKAGE_CATALOG" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_CONTENT_TEXT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_CONTENT_TEXT_CONTENT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT_TEXT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT_TEXT_CONTENT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVE_TAGS" where package_id like 'sap.tm.trp%';
DELETE FROM  "_SYS_REPO"."ACTIVE_OBJECTCROSSREF" where from_package_id like 'sap.tm.trp%';
DELETE FROM  "_SYS_REPO"."ACTIVE_OBJECTCROSSREF" where to_package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."CHANGE_ENTRIES" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."CONTENT_TEXT_HISTORY" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."OBJECT_HISTORY" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."OBJECT_TEXT_HISTORY" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."ACTIVATION_HELPER2" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."INACTIVE_CONTENT_TEXT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."INACTIVE_CONTENT_TEXT_CONTENT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT_TEXT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT_TEXT_CONTENT" where package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."HISTORICAL_OBJECTCROSSREF" where from_package_id like 'sap.tm.trp%';
DELETE FROM "_SYS_REPO"."HISTORICAL_OBJECTCROSSREF" where to_package_id like 'sap.tm.trp%';
DELETE FROM  "_SYS_REPO"."INACTIVE_OBJECTCROSSREF" where from_package_id like 'sap.tm.trp%';
DELETE FROM  "_SYS_REPO"."INACTIVE_OBJECTCROSSREF" where to_package_id like 'sap.tm.trp%';

--STEP2: clear active jobs and object reference in HRF
DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.supplydemand::clean';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.supplydemand::clean';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.supplydemand::clean';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.supplydemand::executor';

--STEP3: DROP SYNONYMS
DROP PROCEDURE "SYSTEM"."P_REMOVE_TRP_SYNONYMS";
CREATE PROCEDURE "SYSTEM"."P_REMOVE_TRP_SYNONYMS"()
AS
BEGIN
	DECLARE POS INTEGER DEFAULT 0;
	DECLARE I INTEGER;
	DECLARE SNNMS_NAME_LIST NVARCHAR ARRAY;
	DECLARE SNNMS_NAME NVARCHAR(200);
	DECLARE LINES INTEGER;
	DECLARE DYSQL NVARCHAR(250);
	SELECT COUNT(*) INTO LINES FROM SYNONYMS WHERE SCHEMA_NAME = 'PUBLIC' AND SYNONYM_NAME LIKE 'sap.tm.trp%';
	V_SNNMS = SELECT SYNONYM_NAME FROM SYNONYMS WHERE SCHEMA_NAME = 'PUBLIC' AND SYNONYM_NAME LIKE 'sap.tm.trp%';
	SNNMS_NAME_LIST := ARRAY_AGG(:V_SNNMS.SYNONYM_NAME);
	FOR I IN 1..:LINES DO
		POS := :POS + 1;
		SNNMS_NAME := :SNNMS_NAME_LIST[:POS];
		DYSQL := 'DROP PUBLIC SYNONYM '  || '"' || :SNNMS_NAME || '"';
		EXECUTE IMMEDIATE DYSQL;
	END FOR;
	EXECUTE IMMEDIATE 'COMMIT';	
END;
CALL "SYSTEM"."P_REMOVE_TRP_SYNONYMS"();

--STEP4: RECREATE SCHEMA SAP_TM_TRP
DROP SCHEMA SAP_TM_TRP CASCADE;
CREATE SCHEMA SAP_TM_TRP; 
GRANT CREATE ANY, SELECT, ALTER, CREATE ANY, EXECUTE, DELETE, UPDATE, INSERT, DROP, INDEX, DEBUG, TRIGGER, REFERENCES ON SCHEMA SAP_TM_TRP TO _SYS_REPO WITH GRANT OPTION;

CREATE COLUMN TABLE "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_in_polygon" ("GEOMETRY" ST_GEOMETRY(0) CS_GEOMETRY,"UUID" VARCHAR(32)) UNLOAD PRIORITY 5 AUTO MERGE;
GRANT SELECT, DELETE, UPDATE, INSERT ON "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_in_polygon" TO _SYS_REPO WITH GRANT OPTION;

CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_extended_generated" ( "KEY",
	 "C1",
	 "C2",
	 "C3",
	 "C4",
	 "C5" ) AS SELECT
	 null AS "KEY" ,
	 null AS C1,
	 null AS C2,
	 null AS C3,
	 null AS C4,
	 null AS C5 
FROM dummy WITH READ ONLY;
GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_extended_generated" TO _SYS_REPO WITH GRANT OPTION;

CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_hrf" ( 
     "TU_ID",
	 "ITE_KEY"
 ) AS SELECT
	 null as "TU_ID" ,
	 null "ITE_KEY" 
FROM dummy WITH READ ONLY;

GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_hrf" TO _SYS_REPO WITH GRANT OPTION;
--STEP1: apply note 1932132 which is for HANA timezone support



--STEP2: clear active jobs and object reference in HRF; You don't need to perform this step, if you never set those job active.
#DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
#DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.supplydemand::clean';
#DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.supplydemand::clean';
#DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
#DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.supplydemand::clean';
#DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.supplydemand::executor';

--clear HRF records


--STEP3: make schema mapping	 
--		 authoring schema: SAPX0M	Phisycal schema: SAP<SID>



--STEP4: delete all repository objects
#DELETE FROM "_SYS_REPO"."RUNTIME_OBJECTS" WHERE  PACKAGE_ID LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."PACKAGE_CATALOG" WHERE  PACKAGE_ID LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_CONTENT_TEXT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_CONTENT_TEXT_CONTENT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT_TEXT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_OBJECT_TEXT_CONTENT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVE_TAGS" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."CHANGE_ENTRIES" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."CONTENT_TEXT_HISTORY" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."OBJECT_HISTORY" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."OBJECT_TEXT_HISTORY" WHERE  PACKAGE_ID LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."ACTIVATION_HELPER2" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."INACTIVE_CONTENT_TEXT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."INACTIVE_CONTENT_TEXT_CONTENT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT_TEXT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."INACTIVE_OBJECT_TEXT_CONTENT" WHERE package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."HISTORICAL_OBJECTCROSSREF" WHERE from_package_id LIKE 'sap.tm.trp%';
#DELETE FROM "_SYS_REPO"."HISTORICAL_OBJECTCROSSREF" WHERE to_package_id LIKE 'sap.tm.trp%';
#DELETE FROM  "_SYS_REPO"."INACTIVE_OBJECTCROSSREF" WHERE from_package_id LIKE 'sap.tm.trp%';
#DELETE FROM  "_SYS_REPO"."INACTIVE_OBJECTCROSSREF" WHERE to_package_id LIKE 'sap.tm.trp%';
#DELETE FROM  "_SYS_REPO"."ACTIVE_OBJECTCROSSREF" WHERE from_package_id LIKE 'sap.tm.trp%';
#DELETE FROM  "_SYS_REPO"."ACTIVE_OBJECTCROSSREF" WHERE to_package_id LIKE 'sap.tm.trp%';





--STEP5: delete all column views, procedures and table types in _SYS_BIC, then remove TRP related synonyms in public schema




--STEP6: create SAPX0M schema to hold TM data (this step only needed for development enviroment build not for X0M and Y0M deployment)
--		 below I only list initial tables import sql, you need to import more tables which already put in share folder \\10.58.184.253\temp
#IMPORT "SAPX0M"."/SAPAPO/LOC" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/LOCT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/RELDSTR" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/RELDSTRT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/RELEHZON" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/RES_HEAD" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/T005S" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/EQUI_CODE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/EQUI_CODET" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/RESTMSHD" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/TOENTITY" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/TOENTITYT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/ZONE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/ZONET" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/ZONE_D" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/ZONE_P" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/ZONE_R" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SHLOC" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SHZON" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TOREXE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TORITE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TORROT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TORSTP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TORSTS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TRQITM" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TRQROT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TRQSTG" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/RES_POS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRC" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRCITY" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRCITYPRT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRCITYT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRCT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRPCDCITY" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."ADRPSTCODE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."BUT000" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD07L" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD07T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T002" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T002T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005B" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005E" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005F" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005G" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005H" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005S" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005U" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005X" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T005ZT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T006" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T006A" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T006D" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."T006T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZD" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZDF" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZDV" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZR" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZZ" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."TTZZT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."USR01" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."USR02" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."USR21" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."USRACL" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SCHDEP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SCHDPL" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SCHLOC" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SCHROT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/RESDOWN" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_TORCC" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."USRSTAMP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/HRP5561" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."BUT100" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_FAGROT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/C_FATYPE" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/TMODCOD" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/TMODCODT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_SHTRK" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_TRKLOG" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_TRKMAP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_TPACT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_TPACTT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_OWNSHP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_OWNSHPT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_STATUS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/TRP/RES_STATUST" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SAPAPO/LOC_EQUI" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMB/C_RESCLS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD03L" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD01L" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD04T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."DD04L" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."AGR_USERS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/TN_CONN" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_SCHDPS" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/TN_CONN" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/C_CAPR" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/C_CAPR_T" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."BUT020" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/D_PLAPRO" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/C_FASETP" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;
#IMPORT "SAPX0M"."/SCMTMS/C_FASETT" FROM '/usr/sap/TRP/HDB41/scripts/SAPX0M' WITH REPLACE THREADS 5;


CREATE SCHEMA SAP_TM_TRP;
GRANT CREATE ANY, SELECT, ALTER, CREATE ANY, EXECUTE, DELETE, UPDATE, INSERT, DROP, INDEX, DEBUG, TRIGGER, REFERENCES ON SCHEMA SAP_TM_TRP TO _SYS_REPO WITH GRANT OPTION;
 
CREATE COLUMN TABLE "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_in_polygon" ("GEOMETRY" ST_GEOMETRY(0) CS_GEOMETRY,"UUID" VARCHAR(32)) UNLOAD PRIORITY 5 AUTO MERGE;
GRANT SELECT, DELETE, UPDATE, INSERT ON "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_in_polygon" TO _SYS_REPO WITH GRANT OPTION;
 
CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_extended_generated" ( "KEY",
       "C1",
       "C2",
       "C3",
       "C4",
       "C5",
       "C6",
       "C7",
       "C8",
       "C9",
       "C10",
       "C11",
       "C12",
       "C13",
       "C14",
       "C15",
       "C16",
       "C17",
       "C18",
       "C19",
       "C20" ) AS SELECT
       null AS "KEY" ,
       null AS C1,
       null AS C2,
       null AS C3,
       null AS C4,
       null AS C5,
       null AS C6,
       null AS C7,
       null AS C8,
       null AS C9,
       null AS C10,
       null AS C11,
       null AS C12,
       null AS C13,
       null AS C14,
       null AS C15,
       null AS C16,
       null AS C17,
       null AS C18,
       null AS C19,
       null AS C20  
FROM dummy WITH READ ONLY;

GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_extended_generated" TO _SYS_REPO WITH GRANT OPTION;
 
CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_hrf" (
     "TU_ID", "ITE_KEY"
) AS SELECT null as "TU_ID", null "ITE_KEY"
FROM dummy WITH READ ONLY;

GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.booking::v_booking_hrf" TO _SYS_REPO WITH GRANT OPTION;

CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.equipment::v_resource_extended_generated" ( "KEY",
       "C1",
       "C2",
       "C3",
       "C4",
       "C5",
       "C6",
       "C7",
       "C8",
       "C9",
       "C10",
       "C11",
       "C12",
       "C13",
       "C14",
       "C15",
       "C16",
       "C17",
       "C18",
       "C19",
       "C20" ) AS SELECT
       null AS "KEY" ,
       null AS C1,
       null AS C2,
       null AS C3,
       null AS C4,
       null AS C5,
       null AS C6,
       null AS C7,
       null AS C8,
       null AS C9,
       null AS C10,
       null AS C11,
       null AS C12,
       null AS C13,
       null AS C14,
       null AS C15,
       null AS C16,
       null AS C17,
       null AS C18,
       null AS C19,
       null AS C20 
FROM dummy;
GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.equipment::v_resource_extended_generated" TO _SYS_REPO WITH GRANT OPTION;


CREATE VIEW "SAP_TM_TRP"."sap.tm.trp.db.equipment::v_equipment_raw" ( "MANDT",
       "RESUID",
       "SIMVERSID",
       "SIMSESSID",
       "BEGTI",
       "NAME",
       "BREAKTIME",
       "BR_TIME",
       "BUFFERTIME",
       "LOCID",
       "LCRESID",
       "CHANGEDATE",
       "OVERLOAD",
       "DIMENSION",
       "BR_QUANT" ) AS SELECT
       MANDT,
       RESUID,
       SIMVERSID,
       SIMSESSID,
       BEGTI,
       NAME,
       BREAKTIME,
       BR_TIME,
       BUFFERTIME,
       LOCID,
       LCRESID,
       CHANGEDATE,
       OVERLOAD,
       DIMENSION,
       BR_QUANT 
FROM "SAPTM"."/SAPAPO/RES_HEAD";

GRANT SELECT ON "SAP_TM_TRP"."sap.tm.trp.db.equipment::v_equipment_raw" TO _SYS_REPO WITH GRANT OPTION;
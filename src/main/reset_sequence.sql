
DROP TABLE "TRPADM"."ZZ_SEQUENCE_NUM";
CREATE COLUMN TABLE "TRPADM"."ZZ_SEQUENCE_NUM" ("ID" INTEGER CS_INT NOT NULL ) UNLOAD PRIORITY 5 AUTO MERGE ;

DROP TABLE "TRPADM"."ZZ_SEQUENCE_DEF";
CREATE COLUMN TABLE "TRPADM"."ZZ_SEQUENCE_DEF" (
   "SCHEMA_NAME" NVARCHAR(256) NOT NULL,
   "SEQUENCE_NAME" NVARCHAR(500) NOT NULL ,
   "DEP_SQL" NVARCHAR(1000),
   "NEXTVALUE" INTEGER CS_INT,
   "MAXVALUE" INTEGER CS_INT,
   PRIMARY KEY ("SCHEMA_NAME","SEQUENCE_NAME")) UNLOAD PRIORITY 5 AUTO MERGE 
;
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.alert.alert_rule_group::s_alert_rule_group"','select IFNULL(MAX(TO_INTEGER(ALERT_RULE_GROUP_ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.alert.alert_rule_group::s_alert_ruletype_map_node"','select IFNULL(MAX(TO_INTEGER(ALERT_RULE_TYPE_ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_ruleType_map_node_metaData"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.archive::s_archive_execution_detail"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.archive::t_archive_execution_detail"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.archive::s_archive_execution_log"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.archive::t_archive_execution_log"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.archive::s_archive_metadata"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.archive::t_archive_metadata"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.archive::s_archive_rule"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.archive::t_archive_rule"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.common.job::s_jobs_metadata"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.common.job::t_jobs_metadata"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.common::s_delivered_fields"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.common::t_delivered_fields"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.common::s_extended_fields"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.common::t_extended_fields"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.costmodel::s_cost_dataset"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_dataset"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.costmodel::s_cost_dataset_history"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_dataset_history"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.costmodel::s_cost_model_history"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_model_history"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.costmodel::s_cost_model_new"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_model_new"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.dashboard::s_tile"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.dashboard::t_tile"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.dashboard::s_tile_item"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.dashboard::t_tile_item"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_attribute_group"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_attribute_group_item_node"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_item_node"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_equipment_filter"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_equipment_filter"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_filter_group"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_filter_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_location_filter"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_location_filter"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_time_filter"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_time_filter_interval"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter_interval"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.filter::s_time_filter_item"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter_item"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.hrf.ruleManage.ruleGroup::s_rule"','select IFNULL(MAX(TO_INTEGER(RULE_ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::t_rule"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.hrf.ruleManage.ruleGroup::s_ruleType_map_node_metaData"','select IFNULL(MAX(TO_INTEGER(RULE_TYPE_ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::t_ruleType_map_node_metaData"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.job::s_job_schedule"','select IFNULL(MAX(ID), 0) + 1 FROM "SAP_TM_TRP"."sap.tm.trp.db.job::t_job_schedule"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.job::s_model_schedule_detail"','select IFNULL(MAX(ID), 0) + 1 FROM "SAP_TM_TRP"."sap.tm.trp.db.job::t_model_schedule_detail"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_condition"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_condition"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_hire_condition"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_hire_condition"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_hire_term"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_hire_term"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_import_errors"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_import_errors"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_per_diem"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_per_diem"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_contract_type"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract_type"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lease_object_change_track"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_object_change_track"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.leasecontract::s_lessor"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lessor"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pickupreturn::s_location_rule"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pickupreturn::t_location_assignment_rule"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pickupreturn::s_location_rule_running_log"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pickupreturn::t_location_rule_running_log"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_entry_point_param"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_entry_point_param"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_pipeline_entry_point"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_pipeline_entry_point"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_pipeline_model"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_pipeline_entry_point"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_pipeline_node"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_pipeline_node"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_plan_execution"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_plan_execution"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_plan_execution_log"','select ifnull(max(ID),0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_execution_log"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.pipeline::s_plan_model"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_plan_model"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_activity"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_activity"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_balancing_list"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_balancing_list"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_network_setting_group"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_network_setting_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_network_setting_group_log"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_network_setting_change_history"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_scenario"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_scenario"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_simulation"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_simulation_plan"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.planningcockpit::s_trq_write_response"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_trq_write_log"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.systemmanagement::s_equip_group"','select ifnull(max(ID),0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_equipment_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.systemmanagement::s_location_group"','select ifnull(max(ID),0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_location_group"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.systemmanagement.user::s_role"','select ifnull(max(ID),0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_role"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_TRP"','"sap.tm.trp.db.systemmanagement.user::s_user"','select IFNULL(MAX(TO_INTEGER(ID)), 0) + 1 from "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.cost::s_cost_model"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.cost::t_cost_model"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.dataset::s_dataset"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.dataset::t_dataset"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.dataset::s_path"','select IFNULL(MAX(ID), 0) + 1 from (select ID from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.dataset::t_path" union select ID from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.dataset::t_connection")',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.dataset::s_trip"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.dataset::t_trip"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.path::s_composite_path"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.path::t_path"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.path::s_network"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.path::t_network_model"',0,0);
INSERT INTO "TRPADM"."ZZ_SEQUENCE_DEF" VALUES ('"SAP_TM_ROUTING"','"sap.tm.trp.routing.db.path::s_route"','select IFNULL(MAX(ID), 0) + 1 from "SAP_TM_ROUTING"."SAP_TM_ROUTING"."sap.tm.trp.routing.db.path::t_route"',0,0);

DROP PROCEDURE "TRPADM"."P_RESET_SEQUENCE";
CREATE PROCEDURE "TRPADM"."P_RESET_SEQUENCE"() 
       LANGUAGE SQLSCRIPT
       AS
BEGIN      
       DECLARE ARR_NEXTVAL INT ARRAY;
       DECLARE I_NEXTVAL INT;              
       DECLARE ARR_MAXVAL INT ARRAY; 
       DECLARE I_MAXVAL INT;
       DECLARE ARR_SEQ NVARCHAR(500) ARRAY;
       DECLARE S_SEQ NVARCHAR(500);
       DECLARE ARR_SQL NVARCHAR(1000) ARRAY;
       DECLARE S_SQL NVARCHAR(1000);
       DECLARE ARR_SCHEMA NVARCHAR(256) ARRAY;
       DECLARE S_SCHEMA NVARCHAR(256);       
       DECLARE IND INT;
       DECLARE LOOPS INT;
       DECLARE LOOPIND INT;
       DECLARE DYN_SQL NVARCHAR(1500);


       SEQ_DEF_BEF = SELECT SCHEMA_NAME, SEQUENCE_NAME, DEP_SQL, NEXTVALUE, MAXVALUE FROM "TRPADM"."ZZ_SEQUENCE_DEF";
       ARR_SEQ := ARRAY_AGG(:SEQ_DEF_BEF.SEQUENCE_NAME);
       ARR_SQL := ARRAY_AGG(:SEQ_DEF_BEF.DEP_SQL); 
       ARR_SCHEMA := ARRAY_AGG(:SEQ_DEF_BEF.SCHEMA_NAME);

       --UPDATE NEXT VALUE AND MAX VALUE IN TABLE  "TRPADM"."ZZ_SEQUENCE_DEF"
       IND := 0;
       FOR IND IN 1 .. CARDINALITY(:ARR_SEQ) DO
        DYN_SQL := 'UPDATE "TRPADM"."ZZ_SEQUENCE_DEF" SET NEXTVALUE = ' || :ARR_SCHEMA[:IND] || '.' || :ARR_SEQ[:IND] || '.NEXTVAL, MAXVALUE = (' ||
          :ARR_SQL[:IND] || ')' || ' WHERE SEQUENCE_NAME = ''' || :ARR_SEQ[:IND] || '''';
        EXECUTE IMMEDIATE :DYN_SQL;

       END FOR;
       DELETE FROM "TRPADM"."ZZ_SEQUENCE_NUM";
       COMMIT;
    
    --GET NEXT VALUE AND MAX VALUE
       SEQ_DEF_AFT = SELECT SCHEMA_NAME, SEQUENCE_NAME, DEP_SQL, NEXTVALUE, MAXVALUE FROM "TRPADM"."ZZ_SEQUENCE_DEF";
       ARR_NEXTVAL := ARRAY_AGG(:SEQ_DEF_AFT.NEXTVALUE); 
       ARR_MAXVAL := ARRAY_AGG(:SEQ_DEF_AFT.MAXVALUE);

       --SET SEQUENCE
       IND := 0;
       FOR IND IN 1 .. CARDINALITY(:ARR_SEQ) DO
        LOOPIND := 0;
        LOOPS = :ARR_MAXVAL[:IND] - :ARR_NEXTVAL[:IND];
        IF :LOOPS <= 0
        THEN 
          CONTINUE;
        END IF;
        FOR LOOPIND IN :ARR_NEXTVAL[:IND] .. :ARR_MAXVAL[:IND] DO
          DYN_SQL := 'INSERT INTO "TRPADM"."ZZ_SEQUENCE_NUM" SELECT ' || :ARR_SCHEMA[:IND] || '.' || :ARR_SEQ[:IND] || '.NEXTVAL FROM DUMMY';
          EXECUTE IMMEDIATE :DYN_SQL;
        END FOR;

       END FOR;   
       COMMIT;
       
       SELECT 'SUCCESS' AS MESSAGE FROM DUMMY; 


END;

CALL "TRPADM"."P_RESET_SEQUENCE"();


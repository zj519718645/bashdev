CREATE PROCEDURE "TRP_DATA_MIGRATION"()
AS
BEGIN

	DECLARE USER_ID BIGINT;
	DECLARE RES_CAT NVARCHAR(50) DEFAULT 'CN';
----------------------updated tables----------------------------------
--sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group    --done
--sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group_category    -done
--sap.tm.trp.db.common::t_delivered_fields    --no action needed
--sap.tm.trp.db.common::t_extended_fields_page_type    --done				
--sap.tm.trp.db.costmodel::t_cost_dataset    -done
--sap.tm.trp.db.costmodel::t_cost_model_new    --done
--sap.tm.trp.db.dashboard::t_tile    --done
--sap.tm.trp.db.dataprovisioning::t_lease_contract_ext_src    --done
--sap.tm.trp.db.filter::t_attribute_group    --done
--sap.tm.trp.db.filter::t_attribute_group_attribute    --done
--sap.tm.trp.db.filter::t_location_filter    --done
--sap.tm.trp.db.hrf.resourceStock.alertView::t_hrf_resourceStockAlertView_outputGlobalTemp				--no action
--sap.tm.trp.db.hrf.resourceStock::t_hrf_resourceStock_inputGlobalTemp				--no action
--sap.tm.trp.db.hrf.resourceStock::t_resource_stock    --done
--sap.tm.trp.db.hrf.ruleManage.ruleGroup::t_rule    --done
--sap.tm.trp.db.leasecontract::t_lease_contract    --done
--sap.tm.trp.db.objectregistration::t_object_type    --no action needed
--sap.tm.trp.db.pickupreturn::t_location_assignment_rule    --done
--sap.tm.trp.db.pipeline::t_pipeline_model    --done
--sap.tm.trp.db.planningcockpit::t_network_setting_group    --done
--sap.tm.trp.db.planningcockpit::t_simulation_plan    --done
--sap.tm.trp.db.stock::t_stock_config    --done
--sap.tm.trp.db.systemmanagement::t_equipment_group    --done
--sap.tm.trp.db.systemmanagement::t_map_provider    --done
--sap.tm.trp.routing.db.dataset::t_trip_sequence_capacity    --done
--sap.tm.trp.routing.db.path::t_route_sequence    --done


--get user id
	SELECT ID INTO USER_ID FROM "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user"
	WHERE USERNAME = CURRENT_USER;

	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.common::t_extended_fields_page_type"
	(
	"ID",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"CODE",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.common::t_extended_fields_page_type";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_dataset"
	(
	"ID",
	"NAME",
	"DESC",
	"COST_TYPE_CODE",
	"CURRENCY_CODE",
	"CONNECTION_TYPE_CODE",
	"DEFAULT_UOM_CODE",
	"PURCHASE_ORG_ID",
	"AGREEMENT_ID",
	"PROFILE_ID",
	"EXPIRED_DURATION",
	"CREATED_BY",
	"CREATED_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"NAME",
	"DESC",
	"COST_TYPE_CODE",
	"CURRENCY_CODE",
	"CONNECTION_TYPE_CODE",
	"DEFAULT_UOM_CODE",
	"PURCHASE_ORG_ID",
	"AGREEMENT_ID",
	"PROFILE_ID",
	"EXPIRED_DURATION",
	"CREATED_BY",
	"CREATED_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.costmodel::t_cost_dataset";
	
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.pickupreturn::t_location_assignment_rule"
	(
	"ID",
	"RULE_NAME",
	"RULE_TYPE",
	"TIME_RANGE",
	"TIME_RANGE_UINT",
	"EQUIP_FILTER_ID",
	"LOCATION_FILTER_ID",
	"SD_PLAN_ID",
	"COST_MODEL_ID",
	"SCHEDULE_TIME_TYPE",
	"EXECUTE_INTERVAL",
	"EXECUTE_TIME_UINT",
	"EXECUTE_DAY",
	"START_DATETIME",
	"END_DATETIME",
	"OP_SETTING_TYPE",
	"LOCATION_DETERMIN_ID",
	"OPTIMIZATION",
	"CREATE_BY",
	"CREATE_ON",
	"MODIFIED_BY",
	"MODIFIED_ON",
	"ALLOWED_USAGE",
	"CODE",
	"STATUS",
	"FILTER_EXECUTION",
	"EXCLUSIVE_RULE_ID",
	"NETWORK_SETTING_GROUP_ID",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"RULE_NAME",
	"RULE_TYPE",
	"TIME_RANGE",
	"TIME_RANGE_UINT",
	"EQUIP_FILTER_ID",
	"LOCATION_FILTER_ID",
	"SD_PLAN_ID",
	"COST_MODEL_ID",
	"SCHEDULE_TIME_TYPE",
	"EXECUTE_INTERVAL",
	"EXECUTE_TIME_UINT",
	"EXECUTE_DAY",
	"START_DATETIME",
	"END_DATETIME",
	"OP_SETTING_TYPE",
	"LOCATION_DETERMIN_ID",
	"OPTIMIZATION",
	"CREATE_BY",
	"CREATE_ON",
	"MODIFIED_BY",
	"MODIFIED_ON",
	"ALLOWED_USAGE",
	"CODE",
	"STATUS",
	"FILTER_EXECUTION",
	"EXCLUSIVE_RULE_ID",
	"NETWORK_SETTING_GROUP_ID",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.pickupreturn::t_location_assignment_rule";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_simulation_plan"
	(
	"ID",
	"CODE",
	"NAME",
	"PLAN_STATUS",
	"SD_PLAN_ID",
	"EXCUTE_ID",
	"COST_MODEL_ID",
	"NETWORK_SETTING_GROUP_ID",
	"CREATED_BY",
	"MODIFIED_BY",
	"CREATED_ON",
	"MODIFIED_ON",
	"STATUS",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"CODE",
	"NAME",
	"PLAN_STATUS",
	"SD_PLAN_ID",
	"EXCUTE_ID",
	"COST_MODEL_ID",
	"NETWORK_SETTING_GROUP_ID",
	"CREATED_BY",
	"MODIFIED_BY",
	"CREATED_ON",
	"MODIFIED_ON",
	"STATUS",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.planningcockpit::t_simulation_plan";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.stock::t_stock_config"
	(
	"LOCATION_ID",
	"LOCATION_TYPE",
	"EQUIP_CODE",
	"EQUIP_CODE_TYPE",
	"MIN_SAFETY",
	"MAX_SAFETY",
	"MAX_CAPACITY",
	"LOCATION_HEAD_FLAG",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"LOCATION_ID",
	"LOCATION_TYPE",
	"EQUIP_CODE",
	"EQUIP_CODE_TYPE",
	"MIN_SAFETY",
	"MAX_SAFETY",
	"MAX_CAPACITY",
	"LOCATION_HEAD_FLAG",
	IFNULL("RESOURCE_CATEGORY",'') AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.stock::t_stock_config";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_equipment_group"
	(
	"ID",
	"DESC",
	"VISIBLE_FLAG",
	"CREATE_BY",
	"CREATE_AT",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_AT",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"DESC",
	"VISIBLE_FLAG",
	"CREATE_BY",
	"CREATE_AT",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_AT",
	"CODE",
	IFNULL("RESOURCE_CATEGORY",'') AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.systemmanagement::t_equipment_group";
	
	INSERT INTO "SAP_TM_ROUTING"."sap.tm.trp.routing.db.dataset::t_trip_sequence_capacity"
	(
	"DATASET_ID",
	"TRIP_ID",
	"SEQUENCE",
	"CAPACITY",
	"CAPACITY_UOM"
	)
	SELECT
	"DATASET_ID",
	"TRIP_ID",
	"SEQUENCE",
	"CAPACITY",
	IFNULL("CAPACITY_UOM",'')
	FROM "SAP_TM_ROUTING_UPGRADE_TEMP"."sap.tm.trp.routing.db.dataset::t_trip_sequence_capacity";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider"
	(
	"ID",
	"NAME",
	"FLAG",
	"CREATE_BY",
	"CREATE_AT",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_AT"
	)
	SELECT
	"ID",
	"NAME",
	"FLAG",
	:USER_ID AS "CREATE_BY",				--TRP Administrator
	CURRENT_UTCTIMESTAMP AS "CREATE_AT",
	:USER_ID AS "LAST_MODIFIED_BY",				--TRP Administrator
	CURRENT_UTCTIMESTAMP AS "LAST_MODIFIED_AT"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.systemmanagement::t_map_provider";
	
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.leasecontract::t_lease_contract" 
	(
	"ID",
	"LEASE_CONTRACT_REFERENCE",
	"LEASE_TYPE",
	"LESSOR_ID",
	"START_TIME",
	"END_TIME",
	"CURRENCY_CODE",
	"UNIT",
	"CREATED_ON",
	"CREATED_BY",
	"MODIFIED_ON",
	"MODIFIED_BY",
	"MAX_HIRE_QUANTITY",
	"MIN_HIRE_QUANTITY",
	"ACTIVE",
	"CODE",
	"LESSOR_CODE",
	"LEASE_TYPE_CODE",
	"RESOURCE_CATEGORY",
	"UNIT_TYPE")
	SELECT
	"ID",
	"LEASE_CONTRACT_REFERENCE",
	"LEASE_TYPE",
	"LESSOR_ID",
	"START_TIME",
	"END_TIME",
	"CURRENCY_CODE",
	"UNIT",
	"CREATED_ON",
	"CREATED_BY",
	"MODIFIED_ON",
	"MODIFIED_BY",
	"MAX_HIRE_QUANTITY",
	"MIN_HIRE_QUANTITY",
	"ACTIVE",
	"CODE",
	"LESSOR_CODE",
	"LEASE_TYPE_CODE",
	:RES_CAT AS "RESOURCE_CATEGORY",  --Resource category
	'TEU' AS "UNIT_TYPE"		  --Resource UoM
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.leasecontract::t_lease_contract";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.dataprovisioning::t_lease_contract_ext_src"
	(
	"CODE",
	"LEASE_CONTRACT_REFERENCE",
	"LEASE_TYPE_CODE",
	"LESSOR_CODE",
	"START_TIME",
	"END_TIME",
	"CURRENCY_CODE",
	"UNIT",
	"CREATED_ON",
	"CREATED_BY",
	"MODIFIED_ON",
	"MODIFIED_BY",
	"MAX_HIRE_QUANTITY",
	"MIN_HIRE_QUANTITY",
	"ACTIVE",
	"RESOURCE_CATEGORY",
	"UNIT_TYPE"
	)
	SELECT
	"CODE",
	"LEASE_CONTRACT_REFERENCE",
	"LEASE_TYPE_CODE",
	"LESSOR_CODE",
	"START_TIME",
	"END_TIME",
	"CURRENCY_CODE",
	"UNIT",
	"CREATED_ON",
	"CREATED_BY",
	"MODIFIED_ON",
	"MODIFIED_BY",
	"MAX_HIRE_QUANTITY",
	"MIN_HIRE_QUANTITY",
	"ACTIVE",
	:RES_CAT AS "RESOURCE_CATEGORY",       	--resource category
	'TEU' AS "UNIT_TYPE"				--resource UoM
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.dataprovisioning::t_lease_contract_ext_src";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.costmodel::t_cost_model_new"
	(
	"ID",
	"NAME",
	"DESC",
	"CURRENCY_CODE",
	"CREATED_BY",
	"CREATED_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"NAME",
	"DESC",
	"CURRENCY_CODE",
	"CREATED_BY",
	"CREATED_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.costmodel::t_cost_model_new";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.dashboard::t_tile"
	(
	"ID",
	"SEQ",
	"TYPE",
	"CREATED_BY",
	"CREATED_TIME",
	"MODIFIED_BY",
	"MODIFIED_TIME",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"SEQ",
	"TYPE",
	"CREATED_BY",
	"CREATED_TIME",
	"MODIFIED_BY",
	"MODIFIED_TIME",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.dashboard::t_tile";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group"
	(
	"ID",
	"CODE",
	"NAME",
	"DESC",
	"VISIBILITY",
	"CREATED_BY",
	"CREATED_TIME",
	"MODIFIED_BY",
	"MODIFIED_TIME",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"CODE",
	"NAME",
	"DESC",
	"VISIBILITY",
	"CREATED_BY",
	"CREATED_TIME",
	"MODIFIED_BY",
	"MODIFIED_TIME",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.filter::t_attribute_group";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute"
	(
	"ID",
	"NAME",
	"CODE",
	"DESC",
	"CATEGORY_ID",
	"VALUE_TYPE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"NAME",
	"CODE",
	"DESC",
	"CATEGORY_ID",
	"VALUE_TYPE",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.filter::t_attribute_group_attribute";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_location_filter"
	(
	"ID",
	"DESC",
	"VISIBLE_FLAG",
	"LOCATION_TYPE",
	"CREATE_BY",
	"CREATE_AT",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_AT",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"DESC",
	"VISIBLE_FLAG",
	"LOCATION_TYPE",
	"CREATE_BY",
	"CREATE_AT",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_AT",
	"CODE",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.filter::t_location_filter";
	
	INSERT INTO "SAP_TM_ROUTING"."sap.tm.trp.routing.db.path::t_route_sequence_capacity"
	(
	"ROUTE_ID",
	"SEQUENCE",
	"CAPACITY",
	"CAPACITY_UOM"	
	)
	SELECT
	"ROUTE_ID",
	"SEQUENCE",
	"CAPACITY",
	"CAPACITY_UOM"
	FROM "SAP_TM_ROUTING_UPGRADE_TEMP"."sap.tm.trp.routing.db.path::t_route_sequence";
	
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.hrf.resourceStock::t_resource_stock"
	(
	"LOCATION_ID",
	"LOCATION_NAME",
	"LOCATION_TYPE",
	"EQUIP_TYPE_ID",
	"EQUIP_TYPE_NAME",
	"EQUIP_TYPE_CATEGORY",
	"DATE",
	"STOCK",
	"MIN_SAFETY_STOCK",
	"MAX_SAFETY_STOCK",
	"MAX_CAPACITY",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"LOCATION_ID",
	"LOCATION_NAME",
	"LOCATION_TYPE",
	"EQUIP_TYPE_ID",
	"EQUIP_TYPE_NAME",
	"EQUIP_TYPE_CATEGORY",
	"DATE",
	"STOCK",
	"MIN_SAFETY_STOCK",
	"MAX_SAFETY_STOCK",
	"MAX_CAPACITY",
	:RES_CAT AS "RESOURCE_CATEGORY"				--resource category
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.hrf.resourceStock::t_resource_stock";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.planningcockpit::t_network_setting_group"
	(
	"ID",
	"NAME",
	"CODE",
	"DESC",
	"MANDATORY_COST_MODEL_ID",
	"OPTIONAL_COST_MODEL_ID",
	"CREATED_BY",
	"CREATED_AT",
	"MODIFIED_BY",
	"MODIFIED_AT",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"NAME",
	"CODE",
	"DESC",
	"MANDATORY_COST_MODEL_ID",
	"OPTIONAL_COST_MODEL_ID",
	"CREATED_BY",
	"CREATED_AT",
	"MODIFIED_BY",
	"MODIFIED_AT",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.planningcockpit::t_network_setting_group";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group"
	(
	"ALERT_RULE_GROUP_ID",
	"NAME",
	"DESC",
	"ALERT_RULE_GROUP_CATEGORY_ID",
	"ALLOWED_USAGE",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ALERT_RULE_GROUP_ID",
	"NAME",
	"DESC",
	"ALERT_RULE_GROUP_CATEGORY_ID",
	"ALLOWED_USAGE",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"CODE",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group_category"
	(
	"ALERT_RULE_GROUP_CATEGORY_ID",
	"ALERT_RULE_GROUP_CATEGORY_NAME",
	"CODE",
	"CONTAINING_OBJECT_TYPE_ID",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ALERT_RULE_GROUP_CATEGORY_ID",
	"ALERT_RULE_GROUP_CATEGORY_NAME",
	"CODE",
	"CONTAINING_OBJECT_TYPE_ID",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.alert.alert_rule_group::t_alert_rule_group_category";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::t_rule"
	(
	"RULE_ID",
	"NAME",
	"DESC",
	"RULE_TYPE_ID",
	"RULE_TYPE_DESC",
	"SP",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"RULE_ID",
	"NAME",
	"DESC",
	"RULE_TYPE_ID",
	"RULE_TYPE_DESC",
	"SP",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"CODE",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::t_rule";
	
	INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.pipeline::t_pipeline_model"
	(
	"ID",
	"NAME",
	"LAYOUT_ID",
	"ENTRY_POINT_ID",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"PIPELINE_MODEL_TYPE_ID",
	"DESC",
	"CODE",
	"RESOURCE_CATEGORY"
	)
	SELECT
	"ID",
	"NAME",
	"LAYOUT_ID",
	"ENTRY_POINT_ID",
	"CREATE_BY",
	"CREATE_ON",
	"LAST_MODIFIED_BY",
	"LAST_MODIFIED_ON",
	"PIPELINE_MODEL_TYPE_ID",
	"DESC",
	"CODE",
	:RES_CAT AS "RESOURCE_CATEGORY"
	FROM "SAP_TM_TRP_UPGRADE_TEMP"."sap.tm.trp.db.pipeline::t_pipeline_model";



------------------------removed tables---------------------------------
--sap.tm.trp.db.pickupreturn::t_location_rule

-----------------------new tables--------------------------------------
--sap.tm.trp.db.costmodel::t_uom_mapping					--no action
--sap.tm.trp.db.planningcockpit.railcarmtr::t_transportation_means_railcar				--no action
--sap.tm.trp.db.planningcockpit::t_load_discharge_activity_detail
--sap.tm.trp.db.semantic.common::t_config
--sap.tm.trp.db.systemmanagement.customization::t_config_t
--sap.tm.trp.db.systemmanagement.customization::t_map_provider_t
--sap.tm.trp.db.systemmanagement.customization::t_repositioning_config_parameters
--sap.tm.trp.db.systemmanagement.customization::t_repositioning_config_parameters_t
--sap.tm.trp.db.systemmanagement.customization::t_repositioning_config_parameters_value
--sap.tm.trp.db.systemmanagement.customization::t_resource_category_extended_columns
--sap.tm.trp.db.systemmanagement.customization::t_resource_category_object_registration
--sap.tm.trp.db.systemmanagement.customization::t_resource_category_settings
--sap.tm.trp.db.systemmanagement.customization::t_resource_category_settings_t
--sap.tm.trp.db.systemmanagement.customization::t_resource_category_type_group_type
--sap.tm.trp.db.systemmanagement.customization::t_resource_group
--sap.tm.trp.db.systemmanagement.user::t_role_resource
--sap.tm.trp.db.systemmanagement::t_config_cust
--sap.tm.trp.db.systemmanagement::t_domain_ext				--no action
--sap.tm.trp.db.systemmanagement::t_resource_category_t
--sap.tm.trp.db.systemmanagement::t_trq_category				--no action
--sap.tm.trp.db.systemmanagement::t_tu_category
--sap.tm.trp.routing.db.path::t_route_sequence_capacity    --done

END;
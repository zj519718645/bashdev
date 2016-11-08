CREATE PROCEDURE "SAP_TM_TRP"."P_CREATE_TRP_SAMPLE_DATA" ()
AS

BEGIN
---global variables definitions
DECLARE HOT_LOC_FILTER_ID BIGINT;
DECLARE CN_LOC_FILTER_ID BIGINT;
DECLARE US_LOC_FILTER_ID BIGINT;
DECLARE FR_LOC_FILTER_ID BIGINT;
DECLARE REG_CN_FILTER_ID BIGINT;
DECLARE REG_US_FILTER_ID BIGINT;
DECLARE REG_FR_FILTER_ID BIGINT;
DECLARE RES_FILTER_ID BIGINT;
DECLARE SCHED_LOC_FILTER_ID BIGINT;
DECLARE TIME_FILTER_ID BIGINT; 
DECLARE COST_MODEL_ID BIGINT;
DECLARE SD_STOCK_ALERT_RULE_ID BIGINT;
DECLARE SD_FCST_ALERT_RULE_ID BIGINT;
DECLARE IDLE_RATE_ALERT_RULE_ID BIGINT;
DECLARE PICKUP_LDR_ID BIGINT;
DECLARE RETURN_LDR_ID BIGINT;
DECLARE RES_STK_ALERT_RULE_ID BIGINT;
DECLARE RES_STK_BUB_ALERT_RULE_ID BIGINT;
DECLARE SD_KPI_BUB_ALERT_RULE_ID BIGINT;
DECLARE AVC_PLAN_ALERT_RULE_ID BIGINT;
DECLARE AVC_LVL_ALERT_RULE_ID BIGINT;
--DECLARE QTT_ALERT_RULE_ID BIGINT;
DECLARE SD_PIPELINE_MODEL_ID BIGINT;
DECLARE KPI_PIPELINE_MODEL_ID BIGINT;
DECLARE SD_ALERT_RULE_GROUP_ID BIGINT;
DECLARE KPI_ALERT_RULE_GROUP_ID BIGINT;


----------------------create default alert rule and location determination rule--------------------
BEGIN

DECLARE RULE_NAME VARCHAR(50);
DECLARE RULE_DESC VARCHAR(200);
DECLARE RULE_TYPE_ID INT;
DECLARE SP VARCHAR(200);
DECLARE FLAG INT;


--create supply demand stock alert SD_STK_AR
RULE_NAME := 'SD_STK_AR';
RULE_DESC := 'Supply Demand Stock Alert Rule';
RULE_TYPE_ID := 1;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.supplyDemand.r_supplyDemand::r_dt_SD_supplyDemand_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :SD_STOCK_ALERT_RULE_ID);

--create supply demand forecast alert SD_FCST_AR
RULE_NAME := 'SD_FCST_AR';
RULE_DESC := 'Supply Demand Forecast Alert Rule';
RULE_TYPE_ID := 5;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.supplyDemand.r_stock::r_dt_SD_stock_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :SD_FCST_ALERT_RULE_ID);

--create idle rate based KPI alert rule IR_KPI_AR
RULE_NAME := 'IR_KPI_AR';
RULE_DESC := 'Idle Rate Based KPI Alert Rule';
RULE_TYPE_ID := 6;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.kpi.r_rate::r_dt_KPI_rate"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :IDLE_RATE_ALERT_RULE_ID);

--create quantity based KPI alert rule
--RULE_NAME := 'QTT_KPI_AR';
--RULE_DESC := 'Quantity Based KPI Alert Rule';
--RULE_TYPE_ID := 7;
--SP := '"SAP_HRF"."sap.tm.trp.db.hrf.kpi.r_quantity::r_dt_KPI_quantity"';
--CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :QTT_ALERT_RULE_ID);

--create location determination rule 
RULE_NAME := 'PICKUP_LDR';
RULE_DESC := 'Pickup Location Determination Rule';
RULE_TYPE_ID := 8;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.pickupReturnScenario.locationDetermination.ERLDR::r_dt_pickup_base_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :PICKUP_LDR_ID);


--create location determination rule 
RULE_NAME := 'RETURN_LDR';
RULE_DESC := 'Return Location Determination Rule';
RULE_TYPE_ID := 9;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.pickupReturnScenario.locationDetermination.ERLDR::r_dt_return_base_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule"(:RULE_NAME, :RULE_DESC, :RULE_TYPE_ID, :SP, :RETURN_LDR_ID);

--create resource stock alert view
RULE_NAME := 'RES_STK_AR';
RULE_DESC := 'Resource Stock Alert Rule';
RULE_TYPE_ID := 10;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.resourceStock.alertView::r_dt_stock_alertView_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule" (:RULE_NAME,:RULE_DESC,:RULE_TYPE_ID,:SP,:RES_STK_ALERT_RULE_ID);
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage::p_assign_rule"('RESOURCE_STOCK_ALERT_VIEW',:RES_STK_ALERT_RULE_ID,:FLAG);

--create resource stock alert in buble view
RULE_NAME := 'RES_STK_BUB_AR';
RULE_DESC := 'Resource Stock Bubble View Alert Rule';
RULE_TYPE_ID := 11;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.resourceStock.bubbleView::r_dt_stock_bubbleView_default"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule" (:RULE_NAME,:RULE_DESC,:RULE_TYPE_ID,:SP,:RES_STK_BUB_ALERT_RULE_ID);
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage::p_assign_rule"('RESOURCE_STOCK_BUBBLE_VIEW',:RES_STK_BUB_ALERT_RULE_ID,:FLAG);

--create sd kpi plan alert in bubble view
RULE_NAME := 'SD_KPI_BUB_AR';
RULE_DESC := 'Supply&Demand KPI Plan Bubble View Alert Rule';
RULE_TYPE_ID := 14;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.planBubble::r_dt_sd_kpi_bubble_cus"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule" (:RULE_NAME,:RULE_DESC,:RULE_TYPE_ID,:SP,:SD_KPI_BUB_ALERT_RULE_ID);
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage::p_assign_rule"('SUPPLY_DEMAND_KPI_PLAN_BUBBLE_VIEW',:SD_KPI_BUB_ALERT_RULE_ID,:FLAG);

--available_check_plan
RULE_NAME := 'AVC_PLAN_AR';
RULE_DESC := 'Available Check Plan Alert Rule';
RULE_TYPE_ID := 16;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.availableCheck::r_dt_availableCheck_plan00"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule" (:RULE_NAME,:RULE_DESC,:RULE_TYPE_ID,:SP,:AVC_PLAN_ALERT_RULE_ID);
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage::p_assign_rule"('AVAILABLE_CHECK_PLAN',:AVC_PLAN_ALERT_RULE_ID,:FLAG);

--available_check_level 
RULE_NAME := 'AVC_LVL_AR';
RULE_DESC := 'Available Check Level Alert Rule';
RULE_TYPE_ID := 17;
SP := '"SAP_HRF"."sap.tm.trp.db.hrf.availableCheck::r_dt_availableCheck_level00"';
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_register_TRPRule_of_new_created_HRFRule" (:RULE_NAME,:RULE_DESC,:RULE_TYPE_ID,:SP,:AVC_LVL_ALERT_RULE_ID);
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage::p_assign_rule"('AVAILABLE_CHECK_LEVEL',:AVC_LVL_ALERT_RULE_ID,:FLAG);





END;



------------------------create alert rule group---------------------
BEGIN

DECLARE ALERT_GROUP_NAME VARCHAR(50);
DECLARE ALERT_GROUP_DESC VARCHAR(200);
DECLARE ALERT_RULE_GROUP_CATEGORY_ID INTEGER;
DECLARE ALLOWED_USAGED_ID VARCHAR(10);
DECLARE SD_ALERT_RULE_GROUP_ID BIGINT;
DECLARE KPI_ALERT_RULE_GROUP_ID BIGINT;
DECLARE RULE_ID_LIST TABLE (RULE_ID BIGINT);
DECLARE RULE_ID_ARR BIGINT ARRAY;
DECLARE SUCCESS_FLAG INT;

--create Supply Demand Rule Group DFT_SD_AR_GRP
ALERT_GROUP_NAME := 'DFT_SD_AR_GRP';
ALERT_GROUP_DESC := 'Default Supply&Demand Alert Rule Group';
ALERT_RULE_GROUP_CATEGORY_ID := 1;
ALLOWED_USAGED_ID := 'G';

CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_create_ruleGroup" (:ALERT_GROUP_NAME,:ALERT_GROUP_DESC,:ALERT_RULE_GROUP_CATEGORY_ID,:ALLOWED_USAGED_ID,:SD_ALERT_RULE_GROUP_ID);
RULE_ID_ARR[1] := :SD_STOCK_ALERT_RULE_ID;
RULE_ID_ARR[2] := :SD_FCST_ALERT_RULE_ID;
RULE_ID_LIST = UNNEST(:RULE_ID_ARR) AS ("RULE_ID");
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_adjust_rule_group_items"(:SD_ALERT_RULE_GROUP_ID,:RULE_ID_LIST,:SUCCESS_FLAG);

--create Supply Demand Rule Group DFT_KPI_AR_GRP
ALERT_GROUP_NAME := 'DFT_KPI_AR_GRP';
ALERT_GROUP_DESC := 'Default KPI Alert Rule Group';
ALERT_RULE_GROUP_CATEGORY_ID := 2;
ALLOWED_USAGED_ID := 'G';

CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_create_ruleGroup" (:ALERT_GROUP_NAME,:ALERT_GROUP_DESC,:ALERT_RULE_GROUP_CATEGORY_ID,:ALLOWED_USAGED_ID,:KPI_ALERT_RULE_GROUP_ID);
RULE_ID_ARR := TRIM_ARRAY(:RULE_ID_ARR,2);
RULE_ID_ARR[1] := :IDLE_RATE_ALERT_RULE_ID;
RULE_ID_LIST = UNNEST(:RULE_ID_ARR) AS ("RULE_ID");
CALL "SAP_TM_TRP"."sap.tm.trp.db.hrf.ruleManage.ruleGroup::p_adjust_rule_group_items"(:KPI_ALERT_RULE_GROUP_ID,:RULE_ID_LIST,:SUCCESS_FLAG);


END;




END;
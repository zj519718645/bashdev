--sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_RETURN_RETURN_OUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_RETURN_RETURN_OUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_BOOKING_BOOKING_OUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_BOOKING_BOOKING_OUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CURRENT_STOCK_STOCK_OUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CURRENT_STOCK_STOCK_OUT__TT" AS TABLE ( "GEO_ID" VARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" VARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" VARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" VARCHAR(3) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_STOCK_SUMMARY_OUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_STOCK_SUMMARY_OUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_PROVISIONAL_STOCK_BALANCE__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_PROVISIONAL_STOCK_BALANCE__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_POSITIVE_STOCK_OUTPUT_2__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_POSITIVE_STOCK_OUTPUT_2__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_NEGTIVE_STOCK_OUTPUT_3__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_NEGTIVE_STOCK_OUTPUT_3__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_SUPPLY_AGGR__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_SUPPLY_AGGR__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_DEMAND_AGGR_2__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_DEMAND_AGGR_2__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_SUPPLY_AND_DEMAND_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_SUPPLY_AND_DEMAND_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX"( OUT CUSTOMER_RETURN_RETURN_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_RETURN_RETURN_OUT__TT",  OUT CUSTOMER_BOOKING_BOOKING_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_BOOKING_BOOKING_OUT__TT",  OUT CURRENT_STOCK_STOCK_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CURRENT_STOCK_STOCK_OUT__TT",  OUT AGGREGATED_STOCK_SUMMARY_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_STOCK_SUMMARY_OUT__TT",  OUT PROVISIONAL_STOCK_BALANCE_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_PROVISIONAL_STOCK_BALANCE__TT",  OUT GET_POSITIVE_STOCK_OUTPUT_2_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_POSITIVE_STOCK_OUTPUT_2__TT",  OUT GET_NEGTIVE_STOCK_OUTPUT_3_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_NEGTIVE_STOCK_OUTPUT_3__TT",  OUT AGGREGATED_SUPPLY_AGGR_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_SUPPLY_AGGR__TT",  OUT AGGREGATED_DEMAND_AGGR_2_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_DEMAND_AGGR_2__TT",  OUT SUPPLY_AND_DEMAND_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_SUPPLY_AND_DEMAND_OUTPUT__TT") 
LANGUAGE SQLSCRIPT
sql security invoker
AS
BEGIN
CUSTOMER_RETURN_RETURN_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_supply_with_filters_workaround";
CUSTOMER_BOOKING_BOOKING_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_demand_with_filters_workaround";
CURRENT_STOCK_STOCK_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.stock/cv_pipeline_stock";
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_aggr_stock_by_category"(:CURRENT_STOCK_STOCK_OUT_TAB , AGGREGATED_STOCK_SUMMARY_OUT_TAB );
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_calc_provisional_stock"(:AGGREGATED_STOCK_SUMMARY_OUT_TAB , :CUSTOMER_BOOKING_BOOKING_OUT_TAB , :CUSTOMER_RETURN_RETURN_OUT_TAB , PROVISIONAL_STOCK_BALANCE_TAB );
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_get_positive_stock"(:PROVISIONAL_STOCK_BALANCE_TAB , GET_POSITIVE_STOCK_OUTPUT_2_TAB );
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_get_negtive_stock"(:PROVISIONAL_STOCK_BALANCE_TAB , GET_NEGTIVE_STOCK_OUTPUT_3_TAB );
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_aggregate_supply"(:GET_POSITIVE_STOCK_OUTPUT_2_TAB , :CUSTOMER_RETURN_RETURN_OUT_TAB , AGGREGATED_SUPPLY_AGGR_TAB );
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_aggregate_demand"(:GET_NEGTIVE_STOCK_OUTPUT_3_TAB , :CUSTOMER_BOOKING_BOOKING_OUT_TAB , AGGREGATED_DEMAND_AGGR_2_TAB );
SUPPLY_AND_DEMAND_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :AGGREGATED_SUPPLY_AGGR_TAB UNION ALL SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :AGGREGATED_DEMAND_AGGR_2_TAB;
END;

--sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_CV_STOCK_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_CV_STOCK_cv_out__TT" AS TABLE ( "GEO_ID" VARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" VARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" VARCHAR(10) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" VARCHAR(3) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_AGGR_STOCK_SUMMARY__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_AGGR_STOCK_SUMMARY__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK"( OUT CV_STOCK_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_CV_STOCK_cv_out__TT",  OUT AGGR_STOCK_SUMMARY_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_AGGR_STOCK_SUMMARY__TT") 
LANGUAGE SQLSCRIPT
    SQL SECURITY INVOKER 
AS
BEGIN
CV_STOCK_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.stock/cv_pipeline_stock";
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_aggr_stock_by_category"(:CV_STOCK_CV_OUT_TAB , AGGR_STOCK_SUMMARY_TAB );
END;


--sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_DEMAND_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_DEMAND_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_RESERVATION_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_RESERVATION_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_REPOSITION_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_REPOSITION_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_SUPPLY_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_SUPPLY_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_HIER_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_HIER_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_MR_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_MR_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_REPOSITION_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_REPOSITION_cv_out__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_3_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_3_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_2_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_2_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_4_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_4_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_5_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_5_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_MERGE_OUTPUT__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_MERGE_OUTPUT__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" INT CS_INT,
	 "UNIT" NVARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN"( OUT CV_ORDER_DEMAND_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_DEMAND_cv_out__TT",  OUT CV_DEMAND_RESERVATION_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_RESERVATION_cv_out__TT",  OUT CV_DEMAND_REPOSITION_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_REPOSITION_cv_out__TT",  OUT CV_ORDER_SUPPLY_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_SUPPLY_cv_out__TT",  OUT CV_SUPPLY_HIER_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_HIER_cv_out__TT",  OUT CV_SUPPLY_MR_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_MR_cv_out__TT",  OUT CV_SUPPLY_REPOSITION_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_REPOSITION_cv_out__TT",  OUT UNION_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_OUTPUT__TT",  OUT UNION_3_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_3_OUTPUT__TT",  OUT UNION_2_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_2_OUTPUT__TT",  OUT UNION_4_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_4_OUTPUT__TT",  OUT UNION_5_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_5_OUTPUT__TT",  OUT MERGE_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_MERGE_OUTPUT__TT") 
LANGUAGE SQLSCRIPT
    SQL SECURITY INVOKER 
AS
BEGIN
CV_ORDER_DEMAND_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_demand_with_filters_workaround";
CV_DEMAND_RESERVATION_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'RESERVATION' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_mr_with_filters_workaround";
CV_DEMAND_REPOSITION_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'OUTBOUND_REPOSITIONING' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_reposition_with_filters_workaround";
CV_ORDER_SUPPLY_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_supply_with_filters_workaround";
CV_SUPPLY_HIER_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_hier_with_filters_workaround";
CV_SUPPLY_MR_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_mr_with_filters_workaround";
CV_SUPPLY_REPOSITION_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'INBOUND_REPOSITIONING' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_reposition_with_filters_workaround";
UNION_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'DEMAND' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :CV_ORDER_DEMAND_CV_OUT_TAB;
UNION_3_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'SUPPLY' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :CV_ORDER_SUPPLY_CV_OUT_TAB;
UNION_2_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'DEMAND' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :UNION_OUTPUT_TAB;

UNION_4_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'SUPPLY' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :UNION_3_OUTPUT_TAB;
UNION_5_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", 'SUPPLY' AS "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :UNION_4_OUTPUT_TAB;
MERGE_OUTPUT_TAB=SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :UNION_2_OUTPUT_TAB UNION ALL SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM :UNION_5_OUTPUT_TAB;

END;

--sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_CV_EQUIP_STORAGE_COST_cv_out__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_CV_EQUIP_STORAGE_COST_cv_out__TT" AS TABLE ( "GEO_ID" VARCHAR(32) CS_STRING,
	 "EQUIP_TYPE" VARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" VARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" DOUBLE CS_DOUBLE,
	 "UNIT" VARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST"( OUT CV_EQUIP_STORAGE_COST_CV_OUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_CV_EQUIP_STORAGE_COST_cv_out__TT") 
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER 
AS
BEGIN
CV_EQUIP_STORAGE_COST_CV_OUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.dashboard/cv_equip_storage_cost_workaround";
END;

--sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_CV_EQUIP_IDLE_RATE_cv_output__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_CV_EQUIP_IDLE_RATE_cv_output__TT" AS TABLE ( "GEO_ID" VARCHAR(22) CS_STRING,
	 "EQUIP_TYPE" VARCHAR(10) CS_STRING,
	 "TIME_INTERVAL_ID" BIGINT,
	 "OUTPUT_KEY" VARCHAR(20) CS_STRING,
	 "OUTPUT_VALUE" DOUBLE CS_DOUBLE,
	 "UNIT" VARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE"( OUT CV_EQUIP_IDLE_RATE_CV_OUTPUT_TAB "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_CV_EQUIP_IDLE_RATE_cv_output__TT") 
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER 
AS
BEGIN
CV_EQUIP_IDLE_RATE_CV_OUTPUT_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.dashboard/cv_equip_idle_rate_workaround";
END;

--"SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS"
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_CUSTOMER_BOOKING_DATA__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_CUSTOMER_BOOKING_DATA__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
     "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
     "TIME_INTERVAL_ID" BIGINT,
     "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
     "OUTPUT_VALUE" INT CS_INT,
     "UNIT" NVARCHAR(10) CS_STRING );

DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_GEN_FORECAST_TEST_FORECAST__TT";
CREATE TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_GEN_FORECAST_TEST_FORECAST__TT" AS TABLE ( "GEO_ID" NVARCHAR(22) CS_STRING,
     "EQUIP_TYPE" NVARCHAR(10) CS_STRING,
     "TIME_INTERVAL_ID" BIGINT,
     "OUTPUT_KEY" NVARCHAR(20) CS_STRING,
     "OUTPUT_VALUE" INT CS_INT,
     "UNIT" NVARCHAR(10) CS_STRING );
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS";
CREATE PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS"( OUT CUSTOMER_BOOKING_DATA_TAB "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_CUSTOMER_BOOKING_DATA__TT",  OUT GEN_FORECAST_TEST_FORECAST_TAB "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_GEN_FORECAST_TEST_FORECAST__TT") 
LANGUAGE SQLSCRIPT
sql security invoker
AS
BEGIN
CUSTOMER_BOOKING_DATA_TAB = SELECT "GEO_ID", "EQUIP_TYPE", "TIME_INTERVAL_ID", "OUTPUT_KEY", "OUTPUT_VALUE", "UNIT" FROM "_SYS_BIC"."sap.tm.trp.db.supplydemand/cv_order_demand_with_filters_workaround";
CALL "SAP_TM_TRP"."sap.tm.trp.db.pipeline::p_gen_forecast_test"(:CUSTOMER_BOOKING_DATA_TAB , GEN_FORECAST_TEST_FORECAST_TAB );
END;

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META";
CREATE ROW TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META"(
"ID" INT CS_INT NOT NULL,
"PARENT_ID" INT CS_INT,
"NODE_NAME" VARCHAR(200) CS_STRING NOT NULL,
"KEY" VARCHAR(200) CS_STRING,
"VALUE" VARCHAR(200) CS_STRING );

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(1,NULL,'KPI_EQUIP_IDEL_RATE','planningModelType','KPI');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(2,NULL,'CV_EQUIP_IDLE_RATE','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(3,2,'CV_EQUIP_IDLE_RATE','x','277');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(4,2,'CV_EQUIP_IDLE_RATE','y','288');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(5,2,'CV_EQUIP_IDLE_RATE','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(6,2,'CV_EQUIP_IDLE_RATE','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META"
values(7,NULL,'CV_EQUIP_IDLE_RATE','nodeType','KPI');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(1,NULL,'KPI_EQUIP_STORAGE_COST','planningModelType','KPI');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(2,NULL,'CV_EQUIP_STORAGE_COST','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(3,2,'CV_EQUIP_STORAGE_COST','x','273');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(4,2,'CV_EQUIP_STORAGE_COST','y','275');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(5,2,'CV_EQUIP_STORAGE_COST','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(6,2,'CV_EQUIP_STORAGE_COST','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META"
values(7,NULL,'CV_EQUIP_STORAGE_COST','nodeType','KPI');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(1,NULL,'PIPELINE_COMPLEX','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(2,NULL,'PIPELINE_COMPLEX','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(3,2,'PIPELINE_COMPLEX','x','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(4,2,'PIPELINE_COMPLEX','y','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(5,2,'PIPELINE_COMPLEX','width','1130');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(6,2,'PIPELINE_COMPLEX','height','541');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(7,NULL,'PIPELINE_COMPLEX','planningModelType','pipeline');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(8,NULL,'CUSTOMER_RETURN','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(9,8,'CUSTOMER_RETURN','x','230');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(10,8,'CUSTOMER_RETURN','y','339');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(11,8,'CUSTOMER_RETURN','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(12,8,'CUSTOMER_RETURN','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(13,8,'CUSTOMER_RETURN','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(14,8,'CUSTOMER_RETURN','outgoingEdge','AGGREGATED_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(15,NULL,'CUSTOMER_BOOKING','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(16,15,'CUSTOMER_BOOKING','x','134');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(17,15,'CUSTOMER_BOOKING','y','202');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(18,15,'CUSTOMER_BOOKING','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(19,15,'CUSTOMER_BOOKING','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(20,15,'CUSTOMER_BOOKING','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(21,15,'CUSTOMER_BOOKING','outgoingEdge','AGGREGATED_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(22,NULL,'CURRENT_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(23,22,'CURRENT_STOCK','x','51');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(24,22,'CURRENT_STOCK','y','14');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(25,22,'CURRENT_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(26,22,'CURRENT_STOCK','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(27,22,'CURRENT_STOCK','outgoingEdge','AGGRREGATED_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(28,NULL,'CURRENT_STOCK','','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(29,NULL,'AGGREGATED_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(30,29,'AGGREGATED_STOCK','x','207');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(31,29,'AGGREGATED_STOCK','y','14');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(32,29,'AGGREGATED_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(33,29,'AGGREGATED_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(34,29,'AGGREGATED_STOCK','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(35,NULL,'AGGREGATED_STOCK','outputKey','STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(36,35,'AGGREGATED_STOCK','breakdown','CURRENT_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(37,NULL,'PROVISIONAL_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(38,37,'PROVISIONAL_STOCK','x','393');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(39,37,'PROVISIONAL_STOCK','y','77');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(40,37,'PROVISIONAL_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(41,37,'PROVISIONAL_STOCK','height','124');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(42,37,'PROVISIONAL_STOCK','outgoingEdge','GET_POSITIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(43,37,'PROVISIONAL_STOCK','outgoingEdge','GET_NEGTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(44,NULL,'GET_POSITIVE_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(45,44,'GET_POSITIVE_STOCK','x','561');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(46,44,'GET_POSITIVE_STOCK','y','30');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(47,44,'GET_POSITIVE_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(48,44,'GET_POSITIVE_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(49,44,'GET_POSITIVE_STOCK','outgoingEdge','AGGREGATED_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(50,NULL,'GET_NEGTIVE_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(51,50,'GET_NEGTIVE_STOCK','x','561');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(52,50,'GET_NEGTIVE_STOCK','y','141');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(53,50,'GET_NEGTIVE_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(54,50,'GET_NEGTIVE_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(55,50,'GET_NEGTIVE_STOCK','outgoingEdge','AGGREGATED_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(56,NULL,'AGGREGATED_SUPPLY','description','Procedure node.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(57,NULL,'AGGREGATED_SUPPLY','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(58,NULL,'AGGREGATED_SUPPLY','displayName','Aggregated Supply');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(59,NULL,'AGGREGATED_SUPPLY','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(60,59,'AGGREGATED_SUPPLY','x','732');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(61,59,'AGGREGATED_SUPPLY','y','141');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(62,59,'AGGREGATED_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(63,59,'AGGREGATED_SUPPLY','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(64,59,'AGGREGATED_SUPPLY','outgoingEdge','SUPPLY_AND_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(65,NULL,'AGGREGATED_SUPPLY','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(66,65,'AGGREGATED_SUPPLY','breakdown','CUSTOMER_RETURN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(67,65,'AGGREGATED_SUPPLY','breakdown','GET_POSTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(68,NULL,'AGGREGATED_DEMAND','description','Procedure node.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(69,NULL,'AGGREGATED_DEMAND','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(70,NULL,'AGGREGATED_DEMAND','displayName','Aggregated Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(71,NULL,'AGGREGATED_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(72,71,'AGGREGATED_DEMAND','x','732');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(73,71,'AGGREGATED_DEMAND','y','310');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(74,71,'AGGREGATED_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(75,71,'AGGREGATED_DEMAND','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(76,71,'AGGREGATED_DEMAND','outgoingEdge','SUPPLY_AND_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(77,NULL,'AGGREGATED_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(78,77,'AGGREGATED_DEMAND','breakdown','GET_NEGTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(79,77,'AGGREGATED_DEMAND','breakdown','CUSTOMER_BOOKING');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(80,NULL,'SUPPLY_AND_DEMAND','description','Create a union of two input sources.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(81,NULL,'SUPPLY_AND_DEMAND','displayName','Supply and Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(82,NULL,'SUPPLY_AND_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(83,82,'SUPPLY_AND_DEMAND','x','872');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(84,82,'SUPPLY_AND_DEMAND','y','236');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(85,82,'SUPPLY_AND_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(86,82,'SUPPLY_AND_DEMAND','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(87,NULL,'SUPPLY_AND_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(88,87,'SUPPLY_AND_DEMAND','breakdown','CUSTOMER_BOOKING');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(89,NULL,'SUPPLY_AND_DEMAND','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(90,89,'SUPPLY_AND_DEMAND','breakdown','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META" values(91,89,'SUPPLY_AND_DEMAND','breakdown','CUSTOMER_RETURN');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(1,NULL,'PIPELINE_COMPLEX_REPO','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(2,NULL,'PIPELINE_COMPLEX_REPO','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(3,2,'PIPELINE_COMPLEX_REPO','x','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(4,2,'PIPELINE_COMPLEX_REPO','y','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(5,2,'PIPELINE_COMPLEX_REPO','width','1130');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(6,2,'PIPELINE_COMPLEX_REPO','height','541');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(7,NULL,'PIPELINE_COMPLEX_REPO','planningModelType','pipeline');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(8,NULL,'CUSTOMER_RETURN','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(9,8,'CUSTOMER_RETURN','x','33');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(10,8,'CUSTOMER_RETURN','y','270');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(11,8,'CUSTOMER_RETURN','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(12,8,'CUSTOMER_RETURN','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(13,8,'CUSTOMER_RETURN','outgoingEdge','ADD_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(14,NULL,'CUSTOMER_BOOKING','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(15,14,'CUSTOMER_BOOKING','x','33');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(16,14,'CUSTOMER_BOOKING','y','92');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(17,14,'CUSTOMER_BOOKING','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(18,14,'CUSTOMER_BOOKING','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(19,14,'CUSTOMER_BOOKING','outgoingEdge','ADD_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(20,NULL,'CURRENT_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(21,20,'CURRENT_STOCK','x','33');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(22,20,'CURRENT_STOCK','y','16');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(23,20,'CURRENT_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(24,20,'CURRENT_STOCK','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(25,20,'CURRENT_STOCK','outgoingEdge','AGGREGATED_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(26,NULL,'CURRENT_STOCK','','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(27,NULL,'REPO_IN','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(28,27,'REPO_IN','x','33');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(29,27,'REPO_IN','y','353');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(30,27,'REPO_IN','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(31,27,'REPO_IN','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(32,27,'REPO_IN','outgoingEdge','ADD_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(33,NULL,'REPO_OUT','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(34,33,'REPO_OUT','x','33');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(35,33,'REPO_OUT','y','183');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(36,33,'REPO_OUT','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(37,33,'REPO_OUT','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(38,33,'REPO_OUT','outgoingEdge','ADD_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(39,NULL,'AGGREGATED_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(40,39,'AGGREGATED_STOCK','x','207');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(41,39,'AGGREGATED_STOCK','y','14');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(42,39,'AGGREGATED_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(43,39,'AGGREGATED_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(44,39,'AGGREGATED_STOCK','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(45,NULL,'AGGREGATED_STOCK','outputKey','STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(46,45,'AGGREGATED_STOCK','breakdown','CURRENT_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(47,NULL,'ADD_SUPPLY','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(48,47,'ADD_SUPPLY','x','213');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(49,47,'ADD_SUPPLY','y','270');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(50,47,'ADD_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(51,47,'ADD_SUPPLY','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(52,47,'ADD_SUPPLY','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(53,47,'ADD_SUPPLY','outgoingEdge','AGGREGATED_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(54,NULL,'ADD_SUPPLY','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(55,54,'ADD_SUPPLY','breakdown','CUSTOMER_RETURN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(56,54,'ADD_SUPPLY','breakdown','REPO_IN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(57,NULL,'ADD_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(58,57,'ADD_DEMAND','x','213');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(59,57,'ADD_DEMAND','y','115');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(60,57,'ADD_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(61,57,'ADD_DEMAND','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(62,57,'ADD_DEMAND','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(63,57,'ADD_DEMAND','outgoingEdge','AGGREGATED_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(64,NULL,'ADD_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(65,64,'ADD_DEMAND','breakdown','CUSTOMER_BOOKING');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(66,64,'ADD_DEMAND','breakdown','REPO_OUT');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(67,NULL,'PROVISIONAL_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(68,67,'PROVISIONAL_STOCK','x','393');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(69,67,'PROVISIONAL_STOCK','y','77');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(70,67,'PROVISIONAL_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(71,67,'PROVISIONAL_STOCK','height','124');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(72,67,'PROVISIONAL_STOCK','outgoingEdge','GET_POSITIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(73,67,'PROVISIONAL_STOCK','outgoingEdge','GET_NEGTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(74,NULL,'GET_POSITIVE_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(75,74,'GET_POSITIVE_STOCK','x','561');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(76,74,'GET_POSITIVE_STOCK','y','30');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(77,74,'GET_POSITIVE_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(78,74,'GET_POSITIVE_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(79,74,'GET_POSITIVE_STOCK','outgoingEdge','AGGREGATED_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(80,NULL,'GET_NEGTIVE_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(81,80,'GET_NEGTIVE_STOCK','x','561');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(82,80,'GET_NEGTIVE_STOCK','y','141');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(83,80,'GET_NEGTIVE_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(84,80,'GET_NEGTIVE_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(85,80,'GET_NEGTIVE_STOCK','outgoingEdge','AGGREGATED_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(86,NULL,'AGGREGATED_SUPPLY','description','Procedure node.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(87,NULL,'AGGREGATED_SUPPLY','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(88,NULL,'AGGREGATED_SUPPLY','displayName','Aggregated Supply');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(89,NULL,'AGGREGATED_SUPPLY','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(90,89,'AGGREGATED_SUPPLY','x','732');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(91,89,'AGGREGATED_SUPPLY','y','141');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(92,89,'AGGREGATED_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(93,89,'AGGREGATED_SUPPLY','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(94,89,'AGGREGATED_SUPPLY','outgoingEdge','SUPPLY_AND_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(95,NULL,'AGGREGATED_SUPPLY','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(96,95,'AGGREGATED_SUPPLY','breakdown','ADD_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(97,95,'AGGREGATED_SUPPLY','breakdown','GET_POSTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(98,NULL,'AGGREGATED_DEMAND','description','Procedure node.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(99,NULL,'AGGREGATED_DEMAND','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(100,NULL,'AGGREGATED_DEMAND','displayName','Aggregated Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(101,NULL,'AGGREGATED_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(102,101,'AGGREGATED_DEMAND','x','732');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(103,101,'AGGREGATED_DEMAND','y','310');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(104,101,'AGGREGATED_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(105,101,'AGGREGATED_DEMAND','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(106,101,'AGGREGATED_DEMAND','outgoingEdge','SUPPLY_AND_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(107,NULL,'AGGREGATED_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(108,107,'AGGREGATED_DEMAND','breakdown','GET_NEGTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(109,107,'AGGREGATED_DEMAND','breakdown','ADD_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(110,NULL,'SUPPLY_AND_DEMAND','description','Create a union of two input sources.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(111,NULL,'SUPPLY_AND_DEMAND','displayName','Supply and Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(112,NULL,'SUPPLY_AND_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(113,112,'SUPPLY_AND_DEMAND','x','872');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(114,112,'SUPPLY_AND_DEMAND','y','236');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(115,112,'SUPPLY_AND_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(116,112,'SUPPLY_AND_DEMAND','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(117,NULL,'SUPPLY_AND_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(118,117,'SUPPLY_AND_DEMAND','breakdown','CUSTOMER_BOOKING');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(119,117,'SUPPLY_AND_DEMAND','breakdown','REPO_OUT');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(120,117,'SUPPLY_AND_DEMAND','breakdown','GET_NEGTIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(121,NULL,'SUPPLY_AND_DEMAND','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(122,121,'SUPPLY_AND_DEMAND','breakdown','GET_POSITIVE_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(123,121,'SUPPLY_AND_DEMAND','breakdown','CUSTOMER_RETURN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META" values(124,121,'SUPPLY_AND_DEMAND','breakdown','REPO_IN');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(1,NULL,'PIPELINE_FORECAST','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(2,NULL,'PIPELINE_FORECAST','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(3,2,'PIPELINE_FORECAST','x','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(4,2,'PIPELINE_FORECAST','y','20');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(5,2,'PIPELINE_FORECAST','width','1130');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(6,2,'PIPELINE_FORECAST','height','541');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(7,NULL,'PIPELINE_FORECAST','planningModelType','pipeline');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(8,NULL,'CUSTOMER_RETURN','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(9,8,'CUSTOMER_RETURN','x','134');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(10,8,'CUSTOMER_RETURN','y','321');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(11,8,'CUSTOMER_RETURN','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(12,8,'CUSTOMER_RETURN','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(13,8,'CUSTOMER_RETURN','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(14,8,'CUSTOMER_RETURN','outgoingEdge','AGGR_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(15,NULL,'CUSTOMER_BOOKING','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(16,15,'CUSTOMER_BOOKING','x','51');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(17,15,'CUSTOMER_BOOKING','y','139');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(18,15,'CUSTOMER_BOOKING','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(19,15,'CUSTOMER_BOOKING','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(20,15,'CUSTOMER_BOOKING','outgoingEdge','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(21,NULL,'CURRENT_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(22,21,'CURRENT_STOCK','x','51');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(23,21,'CURRENT_STOCK','y','14');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(24,21,'CURRENT_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(25,21,'CURRENT_STOCK','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(26,21,'CURRENT_STOCK','outgoingEdge','AGGR_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(27,NULL,'BOOKING_FORECAST','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(28,27,'BOOKING_FORECAST','x','318');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(29,27,'BOOKING_FORECAST','y','339');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(30,27,'BOOKING_FORECAST','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(31,27,'BOOKING_FORECAST','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(32,27,'BOOKING_FORECAST','outgoingEdge','CONVERT');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(33,NULL,'DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(34,33,'DEMAND','x','207');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(35,33,'DEMAND','y','139');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(36,33,'DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(37,33,'DEMAND','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(38,33,'DEMAND','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(39,NULL,'DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(40,39,'DEMAND','breakdown','CUSTOMER_BOOKING');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(41,NULL,'AGGR_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(42,41,'AGGR_STOCK','x','207');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(43,41,'AGGR_STOCK','y','14');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(44,41,'AGGR_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(45,41,'AGGR_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(46,41,'AGGR_STOCK','outgoingEdge','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(47,NULL,'AGGR_STOCK','outputKey','STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(48,47,'AGGR_STOCK','breakdown','CURRENT_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(49,NULL,'CONVERT','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(50,49,'CONVERT','x','464');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(51,49,'CONVERT','y','329');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(52,49,'CONVERT','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(53,49,'CONVERT','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(54,49,'CONVERT','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(55,NULL,'CONVERT','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(56,NULL,'CONVERT','outputKey','DEMAND_LOWERBOUND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(57,NULL,'CONVERT','outputKey','DEMAND_UPPERBOUND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(58,NULL,'PROVISIONAL_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(59,58,'PROVISIONAL_STOCK','x','393');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(60,58,'PROVISIONAL_STOCK','y','77');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(61,58,'PROVISIONAL_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(62,58,'PROVISIONAL_STOCK','height','124');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(63,58,'PROVISIONAL_STOCK','outgoingEdge','AGGR_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(64,NULL,'AGGR_SUPPLY','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(65,64,'AGGR_SUPPLY','x','540');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(66,64,'AGGR_SUPPLY','y','155');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(67,64,'AGGR_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(68,64,'AGGR_SUPPLY','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(69,64,'AGGR_SUPPLY','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(70,NULL,'AGGR_SUPPLY','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(71,70,'AGGR_SUPPLY','breakdown','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(72,70,'AGGR_SUPPLY','breakdown','CUSTOMER_RETURN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(73,NULL,'UNION','description','Create a union of two input sources.');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(74,NULL,'UNION','displayName','Union');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(75,NULL,'UNION','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(76,75,'UNION','x','743');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(77,75,'UNION','y','289');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(78,75,'UNION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(79,75,'UNION','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(80,NULL,'UNION','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(81,80,'UNION','breakdown','PROVISIONAL_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(82,80,'UNION','breakdown','CUSTOMER_RETURN');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(83,NULL,'UNION','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(84,83,'UNION','breakdown','BOOKING_FORECAST');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(85,NULL,'UNION','outputKey','DEMAND_UPPERBOUND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META" values(86,NULL,'UNION','outputKey','DEMAND_LOWERBOUND');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(3,2,'CV_ORDER_DEMAND','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(4,2,'CV_ORDER_DEMAND','y','9');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(5,2,'CV_ORDER_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(6,2,'CV_ORDER_DEMAND','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(7,2,'CV_ORDER_DEMAND','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(10,9,'CV_DEMAND_RESERVATION','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(11,9,'CV_DEMAND_RESERVATION','y','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(12,9,'CV_DEMAND_RESERVATION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(13,9,'CV_DEMAND_RESERVATION','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(14,9,'CV_DEMAND_RESERVATION','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(17,16,'CV_DEMAND_REPOSITION','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(18,16,'CV_DEMAND_REPOSITION','y','203');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(19,16,'CV_DEMAND_REPOSITION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(20,16,'CV_DEMAND_REPOSITION','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(21,16,'CV_DEMAND_REPOSITION','outgoingEdge','UNION_2');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(24,23,'CV_ORDER_SUPPLY','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(25,23,'CV_ORDER_SUPPLY','y','312');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(26,23,'CV_ORDER_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(27,23,'CV_ORDER_SUPPLY','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(28,23,'CV_ORDER_SUPPLY','outgoingEdge','UNION_3');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(31,30,'CV_SUPPLY_HIER','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(32,30,'CV_SUPPLY_HIER','y','393');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(33,30,'CV_SUPPLY_HIER','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(34,30,'CV_SUPPLY_HIER','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(35,30,'CV_SUPPLY_HIER','outgoingEdge','UNION_3');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(38,37,'CV_SUPPLY_MR','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(39,37,'CV_SUPPLY_MR','y','480');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(40,37,'CV_SUPPLY_MR','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(41,37,'CV_SUPPLY_MR','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(42,37,'CV_SUPPLY_MR','outgoingEgde','UNION_4');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(45,44,'CV_SUPPLY_REPOSITION','x','68');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(46,44,'CV_SUPPLY_REPOSITION','y','563');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(47,44,'CV_SUPPLY_REPOSITION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(48,44,'CV_SUPPLY_REPOSITION','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(49,44,'CV_SUPPLY_REPOSITION','outgoingEdge','UNION_5');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(54,53,'UNION','x','204');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(55,53,'UNION','y','24');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(56,53,'UNION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(57,53,'UNION','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(58,53,'UNION','outgoingEdge','UNION_2');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(64,63,'UNION_3','x','204');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(65,63,'UNION_3','y','320');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(66,63,'UNION_3','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(67,63,'UNION_3','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(68,63,'UNION_3','outgoingEdge','UNION_4');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(73,72,'UNION_2','x','365');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(74,72,'UNION_2','y','96');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(75,72,'UNION_2','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(76,72,'UNION_2','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(77,72,'UNION_2','outgoingEdge','MERGE');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(83,82,'UNION_4','x','326');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(84,82,'UNION_4','y','397');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(85,82,'UNION_4','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(86,82,'UNION_4','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(87,82,'UNION_4','outgoingEdge','UNION_5');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(93,92,'UNION_5','x','448');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(94,92,'UNION_5','y','460');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(95,92,'UNION_5','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(96,92,'UNION_5','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(97,92,'UNION_5','outgoingEdge','MERGE');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(103,102,'MERGE','x','633');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(104,102,'MERGE','y','247');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(105,102,'MERGE','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(106,102,'MERGE','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(107,102,'MERGE','caption','Merge Supply and Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(109,108,'MERGE','breakdown','CV_ORDER_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(110,108,'MERGE','breakdown','CV_DEMAND_RESERVATION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(111,108,'MERGE','breakdown','CV_DEMAND_REPOSITION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(112,108,'MERGE','visualization','histogram');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(115,114,'MERGE','breakdown','CV_ORDER_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(116,114,'MERGE','breakdown','CV_SUPPLY_HIER');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(117,114,'MERGE','breakdown','CV_SUPPLY_MR');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(118,114,'MERGE','breakdown','CV_SUPPLY_REPOSITION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(119,114,'MERGE','visualization','histogram');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(121,NULL,'MERGE','outputKey','DEMAND_LOWERBOUND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META" values(122,NULL,'MERGE','outputKey','DEMAND_UPPERBOUND');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(1,NULL,'PIPELINE_SIMPLE_CASE','planningModelType','SD');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(2,NULL,'CV_DEMAND','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(3,2,'CV_DEMAND','x','162');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(4,2,'CV_DEMAND','y','293');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(5,2,'CV_DEMAND','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(6,2,'CV_DEMAND','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(7,2,'CV_DEMAND','outgoingEdge','R_TRANSFORM');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(8,NULL,'CV_DEMAND','nodeType','Bookings export side');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(9,NULL,'CV_DEMAND','caption','Caption: Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(10,NULL,'CV_DEMAND','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(11,NULL,'CV_SUPPLY','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(12,11,'CV_SUPPLY','x','162');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(13,11,'CV_SUPPLY','y','415');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(14,11,'CV_SUPPLY','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(15,11,'CV_SUPPLY','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(16,11,'CV_SUPPLY','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(17,NULL,'CV_SUPPLY','nodeType','Bookings import side');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(18,NULL,'CV_SUPPLY','caption','Caption: Supply');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(19,NULL,'CV_SUPPLY','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(20,NULL,'R_TRANSFORM','userDefined','true');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(21,NULL,'R_TRANSFORM','displayName','Custom R-Script');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(22,NULL,'R_TRANSFORM','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(23,22,'R_TRANSFORM','x','337');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(24,22,'R_TRANSFORM','y','283');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(25,22,'R_TRANSFORM','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(26,22,'R_TRANSFORM','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(27,22,'R_TRANSFORM','outgoingEdge','UNION');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(28,NULL,'R_TRANSFORM','nodeType','R');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(29,NULL,'R_TRANSFORM','caption','caption: R');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(30,NULL,'UNION','displayName','Union');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(31,NULL,'UNION','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(32,31,'UNION','x','524');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(33,31,'UNION','y','327');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(34,31,'UNION','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(35,31,'UNION','height','104');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(36,NULL,'UNION','caption','Union of Supply and Demand');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(37,NULL,'UNION','outputKey','SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(38,37,'UNION','breakdown','CV_SUPPLY');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(39,37,'UNION','visualization','histogram');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(40,NULL,'UNION','outputKey','DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(41,40,'UNION','breakdown','CV_DEMAND');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(42,40,'UNION','visualization','histogram');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META" values(43,NULL,'UNION','nodeType','Merge');

insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(1,NULL,'SIMPLE_STOCK','planningModelType','STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(2,NULL,'CV_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(3,2,'CV_STOCK','x','230');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(4,2,'CV_STOCK','y','265');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(5,2,'CV_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(6,2,'CV_STOCK','height','64');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(7,2,'CV_STOCK','outgoingEdge','AGGR_STOCK');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(8,NULL,'CV_STOCK','nodeType','KPI');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(9,NULL,'AGGR_STOCK','layout','');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(10,9,'AGGR_STOCK','x','389');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(11,9,'AGGR_STOCK','y','265');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(12,9,'AGGR_STOCK','width','100');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(13,9,'AGGR_STOCK','height','84');
insert into "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META" values(14,NULL,'AGGR_STOCK','nodeType','STOCK');
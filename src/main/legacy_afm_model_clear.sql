-- 1. sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_RETURN_RETURN_OUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CUSTOMER_BOOKING_BOOKING_OUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_CURRENT_STOCK_STOCK_OUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_STOCK_SUMMARY_OUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_PROVISIONAL_STOCK_BALANCE__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_POSITIVE_STOCK_OUTPUT_2__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_GET_NEGTIVE_STOCK_OUTPUT_3__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_SUPPLY_AGGR__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_AGGREGATED_DEMAND_AGGR_2__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_SUPPLY_AND_DEMAND_OUTPUT__TT";

-- 2. sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_CV_STOCK_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_AGGR_STOCK_SUMMARY__TT";

-- 3. sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_DEMAND_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_RESERVATION_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_DEMAND_REPOSITION_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_ORDER_SUPPLY_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_HIER_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_MR_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_CV_SUPPLY_REPOSITION_cv_out__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_OUTPUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_3_OUTPUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_2_OUTPUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_4_OUTPUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_UNION_5_OUTPUT__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_MERGE_OUTPUT__TT";

-- 4. sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_CV_EQUIP_STORAGE_COST_cv_out__TT";

-- 5.sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE 
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_CV_EQUIP_IDLE_RATE_cv_output__TT";

-- 6. sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS
DROP PROCEDURE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_CUSTOMER_BOOKING_DATA__TT";
DROP TYPE "SAP_TM_TRP"."sap.tm.trp.db::test_forecast_vis.TEST_FORECAST_VIS_GEN_FORECAST_TEST_FORECAST__TT";

DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_idle_rate.KPI_EQUIP_IDEL_RATE_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::kpi_equip_storage_cost.KPI_EQUIP_STORAGE_COST_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_complex.PIPELINE_COMPLEX_REPO_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_forecast.PIPELINE_FORECAST_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_sd_breakdown.PIPELINE_SD_BREAKDOWN_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_case.PIPELINE_SIMPLE_CASE_META";
DROP TABLE "SAP_TM_TRP"."sap.tm.trp.db.pipeline::pipeline_simple_stock.KPI_SIMPLE_STOCK_META";

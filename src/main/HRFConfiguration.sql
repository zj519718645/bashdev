--ALTER SYSTEM ALTER CONFIGURATION ('indexserver.ini','SYSTEM') SET ('repository','register_jsplugin_sap/hrf/resources/common/runtimePlugin/src/hrfResourceActivation.xsjs') = 'true' WITH RECONFIGURE;
CALL "SAP_HRF"."sap.hrf.resources.common.runtimePlugin.model::RTP_UPGRADE";
ALTER SYSTEM ALTER CONFIGURATION ('indexserver.ini','SYSTEM') SET
('repository','jsplugin_sap/hrf/resources/common/runtimeplugin/src/hrfresourceactivation.xsjs') = 'true' WITH RECONFIGURE;
create role "generated_HrfRuleConsumer";
create role "generated_HrfResourceCreator";
create role "generated_HrfRuleViewer";
UPSERT "SAP_HRF"."sap.hrf.content.model::SETTINGS" VALUES ('1','037') WHERE "id" = '1';
--update "SAP_HRF"."sap.hrf.content.model::SETTINGS" set "time_zone_id" = '061'; 
--restart server
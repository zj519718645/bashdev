DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.supplydemand::executor';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.supplydemand::executor';
DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.pickupreturn::executor';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.pickupreturn::executor';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.pickupreturn::executor';
DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.support::consistencycheck';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.support::consistencycheck';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.support::consistencycheck';
DELETE FROM "_SYS_XS"."JOBS" WHERE name = 'sap.tm.trp.service.common.job::JobSchedule';
DELETE FROM "_SYS_XS"."JOB_LOG" WHERE name = 'sap.tm.trp.service.common.job::JobSchedule';
DELETE FROM "_SYS_XS"."JOB_SCHEDULES" WHERE job_name = 'sap.tm.trp.service.common.job::JobSchedule';
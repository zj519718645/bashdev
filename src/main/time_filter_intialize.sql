-- t_time_dimension_unit
truncate table "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_dimension_unit"
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_dimension_unit" values(1,'Hour','HOUR')
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_dimension_unit" values(2,'Day','DAY')
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_dimension_unit" values(3,'Week','WEEK')
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_dimension_unit" values(4,'Month','MONTH')
;
-- t_time_filter_direction
truncate table "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter_direction"
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter_direction" values('1','History','?')
;
insert into "SAP_TM_TRP"."sap.tm.trp.db.filter::t_time_filter_direction" values('2','Future','?')
;
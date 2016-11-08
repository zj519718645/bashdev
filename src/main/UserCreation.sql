-------------------------------------------part 1 create trp administrator user
create user <username> password <password>;
call "_SYS_REPO"."GRANT_ACTIVATED_ROLE"('sap.tm.trp.config.roles::Administrator',<username>);
call "_SYS_REPO"."GRANT_ACTIVATED_ROLE"('sap.tm.trp.routing.config.roles::Administrator',<username>);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user" values(<userid>,<username>,<firstname>,'Jr.',<lastname>,'','','',TO_TIMESTAMP('20150106042628','YYYYMMDDHH24MISS'),1,4,3,'FA','UTC+1','G','CM','81','91','4G','sap_bluecrystal','800',99,'E',1,1,'');
insert into "SAP_TM_TRP"."sap.tm.trp.db.stock::t_start_time_for_user" values(<username>,-40);


-------------------------------------------part 2 create trp depot manager
create user <username> password <password>;
call "_SYS_REPO"."GRANT_ACTIVATED_ROLE"('sap.tm.trp.config.roles::DepotManager',<username>);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user" values(<userid>,<username>,<firstname>,'Jr.',<lastname>,'','','',TO_TIMESTAMP('20150106042628','YYYYMMDDHH24MISS'),1,4,3,'FA','UTC+1','G','CM','81','91','4G','sap_bluecrystal','800',1,'E',1,1,'');
insert into "SAP_TM_TRP"."sap.tm.trp.db.stock::t_start_time_for_user" values(<username>,-40);


-------------------------------------------part 3 create trp regional planner
create user <username> password <password>;
call "_SYS_REPO"."GRANT_ACTIVATED_ROLE"('sap.tm.trp.config.roles::RegionalPlanner',<username>);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.user::t_user" values(<userid>,<username>,<firstname>,'Jr.',<lastname>,'','','',TO_TIMESTAMP('20150106042628','YYYYMMDDHH24MISS'),1,4,3,'FA','UTC+1','G','CM','81','91','4G','sap_bluecrystal','800',3,'E',1,1,'');
insert into "SAP_TM_TRP"."sap.tm.trp.db.stock::t_start_time_for_user" values(<username>,-40);
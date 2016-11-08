delete from "_SYS_REPO"."INACTIVE_CONTENT_TEXT" where package_id like 'sap.tm.trp.db%';
delete from "_SYS_REPO"."INACTIVE_CONTENT_TEXT_CONTENT" where package_id like 'sap.tm.trp.db%';
delete from "_SYS_REPO"."INACTIVE_OBJECT" where package_id like 'sap.tm.trp.db%';
delete from "_SYS_REPO"."INACTIVE_OBJECT_TEXT" where package_id like 'sap.tm.trp.db%';
delete from "_SYS_REPO"."INACTIVE_OBJECT_TEXT_CONTENT" where package_id like 'sap.tm.trp.db%';
delete from  "_SYS_REPO"."INACTIVE_OBJECTCROSSREF" where from_package_id like 'sap.tm.trp.db%';

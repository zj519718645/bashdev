DELETE FROM "I075181"."/SCMTMS/D_TOREXE";
DELETE FROM "I075181"."/SCMTMS/D_TORITE";
DELETE FROM "I075181"."/SCMTMS/D_TORROT";
DELETE FROM "I075181"."/SCMTMS/D_TORSTP";
DELETE FROM "I075181"."/SCMTMS/D_TORSTS";
DELETE FROM "I075181"."/SCMTMS/D_TRQITM";
DELETE FROM "I075181"."/SCMTMS/D_TRQROT";
DELETE FROM "I075181"."/SCMTMS/D_TRQSTG";

DROP PROCEDURE "I075181"."EXPORT_TORS"; 

CREATE PROCEDURE "I075181"."EXPORT_TORS" (IN CREATED_BY NVARCHAR(12))
AS
BEGIN

--trq
insert into "I075181"."/SCMTMS/D_TRQROT" 
select * from "SAPX0M"."/SCMTMS/D_TRQROT" where mandt = '800' and created_by = :CREATED_BY;

--trq item
insert into "I075181"."/SCMTMS/D_TRQITM" 
select * from "SAPX0M"."/SCMTMS/D_TRQITM" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.parent_key and created_by = :CREATED_BY);

--trq stg
insert into  "I075181"."/SCMTMS/D_TRQSTG"
select * from "SAPX0M"."/SCMTMS/D_TRQSTG" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.parent_key and created_by = :CREATED_BY);

--tor item
insert into "I075181"."/SCMTMS/D_TORITE"
select * from "SAPX0M"."/SCMTMS/D_TORITE" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.ref_root_key and created_by = :CREATED_BY);

--tor
insert into "I075181"."/SCMTMS/D_TORROT"
select * from "SAPX0M"."/SCMTMS/D_TORROT" as o where exists
(select parent_key from 
(select parent_key from "SAPX0M"."/SCMTMS/D_TORITE" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.ref_root_key and created_by = :CREATED_BY))
where parent_key = o.db_key);

--tor stp
insert into "I075181"."/SCMTMS/D_TORSTP"
select * from "SAPX0M"."/SCMTMS/D_TORSTP" as eo where exists
(select db_key from 
(
select db_key from "SAPX0M"."/SCMTMS/D_TORROT" as o where exists
(select parent_key from 
(select parent_key from "SAPX0M"."/SCMTMS/D_TORITE" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.ref_root_key and created_by = :CREATED_BY))
where parent_key = o.db_key)
)
where db_key = eo.parent_key
);

--tor sts
insert into "I075181"."/SCMTMS/D_TORSTS"
select * from "SAPX0M"."/SCMTMS/D_TORSTS" as eo where exists
(select db_key from
(select db_key from "SAPX0M"."/SCMTMS/D_TORROT" as o where exists
(select parent_key from 
(select parent_key from "SAPX0M"."/SCMTMS/D_TORITE" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.ref_root_key and created_by = :CREATED_BY))
where parent_key = o.db_key))
where db_key = eo.root_key
);

--tor exe
insert into "I075181"."/SCMTMS/D_TOREXE"
select * from "SAPX0M"."/SCMTMS/D_TOREXE" as eo where exists
(select db_key from
(select db_key from "SAPX0M"."/SCMTMS/D_TORROT" as o where exists
(select parent_key from 
(select parent_key from "SAPX0M"."/SCMTMS/D_TORITE" as o where exists
(select db_key from "SAPX0M"."/SCMTMS/D_TRQROT" where db_key = o.ref_root_key and created_by = :CREATED_BY))
where parent_key = o.db_key))
where db_key = eo.parent_key
);


END;



call "I075181"."EXPORT_TORS"('I042211');
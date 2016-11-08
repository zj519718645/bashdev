CREATE PROCEDURE "SAP_TM_TRP"."P_QUERY_ALL_ZONE_LOC"(IN ZONE_NAME NVARCHAR(20),OUT LOC_TAB TABLE(LOCNO NVARCHAR(20))) AS
BEGIN

DECLARE ZONE_ID NVARCHAR(22);

SELECT SCUGUID22 INTO ZONE_ID FROM "SAPTMW"."/SCMB/TOENTITY" WHERE ENTITY = :ZONE_NAME AND MANDT = '800';
ZONEID_LV1 = SELECT DISTINCT A.CNODEID AS ZONEID,B.ENTITY AS ZONE_NAME FROM "SAPTMW"."Z_ZONE_HRC" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.CNODEID = B.SCUGUID22
WHERE A.PNODEID = :ZONE_ID AND B.MANDT = '800';
LOC_LV1 = SELECT A.LOCNO AS LOCNO,B.SCUGUID22 AS ID FROM "SAPTMW"."Z_ZONE_D" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.LOCNO = B.ENTITY
WHERE A.ID_ZONE IN (SELECT DISTINCT ZONE_NAME FROM :ZONEID_LV1) AND A.LOCNO IN (SELECT LOCNO FROM "SAPTMW"."Z_BKLOC")
AND B.MANDT = '800';


ZONEID_LV2 = SELECT DISTINCT A.CNODEID AS ZONEID,B.ENTITY AS ZONE_NAME FROM "SAPTMW"."Z_ZONE_HRC" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.CNODEID = B.SCUGUID22
WHERE A.PNODEID IN (SELECT DISTINCT ZONEID FROM :ZONEID_LV1) AND B.MANDT = '800';
LOC_LV2 = SELECT A.LOCNO AS LOCNO,B.SCUGUID22 AS ID FROM "SAPTMW"."Z_ZONE_D" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.LOCNO = B.ENTITY
WHERE A.ID_ZONE IN (SELECT DISTINCT ZONE_NAME FROM :ZONEID_LV2) AND A.LOCNO IN (SELECT LOCNO FROM "SAPTMW"."Z_BKLOC")
AND B.MANDT = '800';



ZONEID_LV3 = SELECT DISTINCT A.CNODEID AS ZONEID,B.ENTITY AS ZONE_NAME FROM "SAPTMW"."Z_ZONE_HRC" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.CNODEID = B.SCUGUID22
WHERE A.PNODEID IN (SELECT DISTINCT ZONEID FROM :ZONEID_LV2) AND B.MANDT = '800';
LOC_LV3 = SELECT A.LOCNO AS LOCNO,B.SCUGUID22 AS ID FROM "SAPTMW"."Z_ZONE_D" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.LOCNO = B.ENTITY
WHERE A.ID_ZONE IN (SELECT DISTINCT ZONE_NAME FROM :ZONEID_LV3) AND A.LOCNO IN (SELECT LOCNO FROM "SAPTMW"."Z_BKLOC")
AND B.MANDT = '800';

ZONEID_LV4 = SELECT DISTINCT A.CNODEID AS ZONEID,B.ENTITY AS ZONE_NAME FROM "SAPTMW"."Z_ZONE_HRC" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.CNODEID = B.SCUGUID22
WHERE A.PNODEID IN (SELECT DISTINCT ZONEID FROM :ZONEID_LV3) AND B.MANDT = '800';
LOC_LV4 = SELECT A.LOCNO AS LOCNO,B.SCUGUID22 AS ID FROM "SAPTMW"."Z_ZONE_D" AS A INNER JOIN "SAPTMW"."/SCMB/TOENTITY" AS B ON A.LOCNO = B.ENTITY
WHERE A.ID_ZONE IN (SELECT DISTINCT ZONE_NAME FROM :ZONEID_LV4) AND A.LOCNO IN (SELECT LOCNO FROM "SAPTMW"."Z_BKLOC")
AND B.MANDT = '800';


LOC_TAB =
SELECT DISTINCT LOCNO FROM (
SELECT LOCNO FROM :LOC_LV1
UNION
SELECT LOCNO FROM :LOC_LV2
UNION
SELECT LOCNO FROM :LOC_LV3
UNION
SELECT LOCNO FROM :LOC_LV4
);


END;
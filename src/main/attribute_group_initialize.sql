TRUNCATE TABLE "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute_operator";
INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute_operator"
(ID,NAME,CODE,DATABASE_OPERATOR)
SELECT 1 AS ID, 'Equals' AS NAME, 'EQ' AS CODE, '=' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 2 AS ID, 'Not Equals' AS NAME, 'NE' AS CODE, '<>' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 3 AS ID, 'Greater Than' AS NAME, 'GT' AS CODE, '>' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 4 AS ID, 'Greater Than or Equals' AS NAME, 'GE' AS CODE, '>=' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 5 AS ID, 'Less Than' AS NAME, 'LT' AS CODE, '<' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 6 AS ID, 'Less Than or Equals' AS NAME, 'LE' AS CODE, '<=' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 7 AS ID, 'Between' AS NAME, 'BT' AS CODE, 'BETWEEN' AS DATABASE_OPERATOR FROM DUMMY UNION
SELECT 8 AS ID, 'Wildcard' AS NAME, 'WILDCARD' AS CODE, 'LIKE' AS DATABASE_OPERATOR FROM DUMMY;
 


TRUNCATE TABLE "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute_category";
INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute_category"
(ID,CODE,NAME,DESC)
SELECT 1 AS ID,'EQUIPMENT' AS CODE, 'Equipment' AS NAME, 'Equipment' AS DESC FROM DUMMY UNION
SELECT 2 AS ID,'SIZE' AS CODE, 'Size-Type' AS NAME, 'Size-Type' AS DESC FROM DUMMY UNION
SELECT 3 AS ID,'WEIGHT' AS CODE, 'Weight' AS NAME, 'Weight' AS DESC FROM DUMMY UNION
SELECT 4 AS ID,'MANUFACTURE' AS CODE, 'Manufacture Info' AS NAME, 'Manufacture Info' AS DESC FROM DUMMY UNION
SELECT 5 AS ID,'STATUS' AS CODE, 'Status' AS NAME, 'Status' AS DESC FROM DUMMY UNION
SELECT 6 AS ID,'DOCUMENTS' AS CODE, 'Documents' AS NAME, 'Documents' AS DESC FROM DUMMY UNION
SELECT 7 AS ID,'LOCATION' AS CODE, 'Location Info' AS NAME, 'Location Info' AS DESC FROM DUMMY UNION
SELECT 8 AS ID,'REEFER' AS CODE, 'Reefer Info' AS NAME, 'Reefer Info' AS DESC FROM DUMMY;


TRUNCATE TABLE "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute";
INSERT INTO "SAP_TM_TRP"."sap.tm.trp.db.filter::t_attribute_group_attribute"
(ID,NAME,CODE,DESC,CATEGORY_ID,VALUE_TYPE)
-- Equipment
SELECT 1 AS ID, 'Equipment ID' AS NAME, 'EQUIPMENT_ID' AS CODE, 'Equipment ID' AS DESC, 1 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
-- Size-Type
SELECT 2 AS ID, 'SizeType' AS NAME, 'SIZE_TYPE' AS CODE, 'SizeType' AS DESC, 2 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 3 AS ID, 'Size Type Description' AS NAME, 'SIZE_TYPE_DESC' AS CODE, 'Size Type Description' AS DESC, 2 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 4 AS ID, 'Number of TEUs' AS NAME, 'TEU_COUNT' AS CODE, 'Number of TEUs' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 5 AS ID, 'Volume(m3)' AS NAME, 'VOLUME' AS CODE, 'Volume(m3)' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 6 AS ID, 'Equipment Height' AS NAME, 'EQUIPMENT_HEIGHT' AS CODE, 'Equipment Height' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 7 AS ID, 'Inside Length' AS NAME, 'INSIDE_LENGTH' AS CODE, 'Inside Length' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 8 AS ID, 'Inside Width' AS NAME, 'INSIDE_WIDTH' AS CODE, 'Inside Width' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 9 AS ID, 'Inside Height' AS NAME, 'INSIDE_HEIGHT' AS CODE, 'Inside Height' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 10 AS ID, 'Door Width' AS NAME, 'DOOR_WIDTH' AS CODE, 'Door Width' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 11 AS ID, 'Door Height' AS NAME, 'DOOR_HEIGHT' AS CODE, 'Door Height' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 12 AS ID, 'Maximum Length' AS NAME, 'MAXIMUM_LENGTH' AS CODE, 'Maximum Length' AS DESC, 2 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
-- Weight
SELECT 13 AS ID, 'Tare Weight' AS NAME, 'TARE_WEIGHT' AS CODE, 'Tare Weight' AS DESC, 3 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 14 AS ID, 'Tare Weight UoM' AS NAME, 'TARE_WEIGHT_UOM' AS CODE, 'Tare Weight UoM' AS DESC, 3 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 15 AS ID, 'Max Gross Weight' AS NAME, 'MAX_GROSS_WEIGHT' AS CODE, 'Max Gross Weight' AS DESC, 3 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 16 AS ID, 'Max Gross Weight UoM' AS NAME, 'MAX_GROSS_WEIGHT_UOM' AS CODE, 'Max Gross Weight UoM' AS DESC, 3 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 17 AS ID, 'Maximum Cargo Weight' AS NAME, 'MAX_CARGO_WEIGHT' AS CODE, 'Maximum Cargo Weight' AS DESC, 3 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
SELECT 18 AS ID, 'Maximum Cargo Weight UoM' AS NAME, 'MAX_CARGO_WEIGHT_UOM' AS CODE, 'Maximum Cargo Weight UoM' AS DESC, 3 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
-- Manufacture Info
SELECT 19 AS ID, 'Date of Built' AS NAME, 'BUILD_DATE' AS CODE, 'Date of Built' AS DESC, 4 AS CATEGORY_ID, 'Date' AS VALUE_TYPE FROM DUMMY UNION
-- Status
SELECT 20 AS ID, 'Blocked Status with Reason Code' AS NAME, 'BLOCK_STATUS_REASON' AS CODE, 'Blocked Status with Reason Code' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 21 AS ID, 'Resource Condition' AS NAME, 'RES_CONDITION' AS CODE, 'Resource Condition' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 22 AS ID, 'Movement Status' AS NAME, 'MOVEMENT_STATUS' AS CODE, 'Movement Status' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 23 AS ID, 'Food Grade' AS NAME, 'FOOD_GRADE' AS CODE, 'Food Grade' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 24 AS ID, 'Loading Status' AS NAME, 'LOADING_STATUS' AS CODE, 'Loading Status' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 25 AS ID, 'Last Cargo' AS NAME, 'LAST_CARGO' AS CODE, 'Last Cargo' AS DESC, 5 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 26 AS ID, 'Idle Days' AS NAME, 'IDLE_DAYS' AS CODE, 'Idle Days' AS DESC, 5 AS CATEGORY_ID, 'Number' AS VALUE_TYPE FROM DUMMY UNION
-- Documents
SELECT 27 AS ID, 'Leasing Contract ID' AS NAME, 'LEASING_ID' AS CODE, 'Leasing Contract ID' AS DESC, 6 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 28 AS ID, 'Off-hire Date' AS NAME, 'OFF_HIRE_DATE' AS CODE, 'Off-hire Date' AS DESC, 6 AS CATEGORY_ID, 'Date' AS VALUE_TYPE FROM DUMMY UNION
SELECT 29 AS ID, 'Off-hire Location' AS NAME, 'OFF_HIRE_LOCATION' AS CODE, 'Off-hire Location' AS DESC, 6 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 30 AS ID, 'On-hire Date' AS NAME, 'ON_HIRE_DATE' AS CODE, 'On-hire Date' AS DESC, 6 AS CATEGORY_ID, 'Date' AS VALUE_TYPE FROM DUMMY UNION
SELECT 31 AS ID, 'On-hire Location' AS NAME, 'ON_HIRE_LOCATION' AS CODE, 'On-hire Location' AS DESC, 6 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 32 AS ID, 'Current Responsible TU' AS NAME, 'CURRENT_RESPONS_TU' AS CODE, 'Current Responsible TU' AS DESC, 6 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 33 AS ID, 'Last Assigned TOR' AS NAME, 'LAST_ASSIGN_TOR' AS CODE, 'Last Assigned TOR' AS DESC, 6 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
-- Location Info
SELECT 34 AS ID, 'Next Stop' AS NAME, 'NEXT_STOP' AS CODE, 'Next Stop' AS DESC, 7 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 35 AS ID, 'Final Destination' AS NAME, 'FINAL_DESTINATION' AS CODE, 'Final Destination' AS DESC, 7 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
--  Reefer Info
SELECT 36 AS ID, 'External Cladding' AS NAME, 'EXTERNAL_CLADDING' AS CODE, 'External Cladding' AS DESC, 8 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 37 AS ID, 'Controlled atmosphere (ATM type)' AS NAME, 'ATM_TYPE' AS CODE, 'Controlled atmosphere (ATM type)' AS DESC, 8 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 38 AS ID, 'Flower Bulb agreement (certification ATO) Y/N' AS NAME, 'CERTIFICATION_ATO' AS CODE, 'Flower Bulb agreement (certification ATO) Y/N' AS DESC, 8 AS CATEGORY_ID, 'Boolean' AS VALUE_TYPE FROM DUMMY UNION
SELECT 39 AS ID, 'Datacorder (Y/N)' AS NAME, 'DATACORDER' AS CODE, 'Datacorder (Y/N)' AS DESC, 8 AS CATEGORY_ID, 'Boolean' AS VALUE_TYPE FROM DUMMY UNION
SELECT 40 AS ID, 'USDA (Y/N)' AS NAME, 'USDA' AS CODE, 'USDA (Y/N)' AS DESC, 8 AS CATEGORY_ID, 'Boolean' AS VALUE_TYPE FROM DUMMY UNION
SELECT 41 AS ID, 'Cooling unit manufacturer' AS NAME, 'COOLING_MANUFACTURE' AS CODE, 'Cooling unit manufacturer' AS DESC, 8 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 42 AS ID, 'Cooling unit model' AS NAME, 'COOLING_MODEL' AS CODE, 'Cooling unit model' AS DESC, 8 AS CATEGORY_ID, 'String' AS VALUE_TYPE FROM DUMMY UNION
SELECT 43 AS ID, 'Deshumidify (Y/N)' AS NAME, 'DESHUMIDIFY' AS CODE, 'Deshumidify (Y/N)' AS DESC, 8 AS CATEGORY_ID, 'Boolean' AS VALUE_TYPE FROM DUMMY





















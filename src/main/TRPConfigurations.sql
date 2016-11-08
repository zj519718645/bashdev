--hierarchy update
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_config" select 1,'RAwBT8cq7kIXqfRbhXS0Qm','800' from DUMMY;
call  "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement.location::p_update_root_for_hierarchy"();

--config map
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider" values(3,'MAPQUEST',0);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider" values(1,'OPENSTREETMAP',0);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider" values(2,'NAVTEQSAT',0);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider" values(4,'GOOGLEMAP',0);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider" values(5,'BINGMAP',1);
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(3,'server1','http://otile1.mqcdn.com/tiles/1.0.0/map/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(4,'server2','http://mt1.google.com/vt/lyrs=m@1550000&hl=de&x={X}&y={Y}&z={LOD}&s=G');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(2,'server1','http://4.maps.nlp.nokia.com/maptile/2.1/maptile/newest/satellite.day/{LOD}/{X}/{Y}/256/png?app_code={app_code}&app_id={app_id}');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(4,'server1','http://mt0.google.com/vt/lyrs=m@1550000&hl=de&x={X}&y={Y}&z={LOD}&s=G');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(5,'server4','http://ecn.t3.tiles.virtualearth.net/tiles/r{QUAD}?g=685&lbl=l1&stl=h&shading=hill&n=z&mkt={language}');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(5,'server1','http://ecn.t0.tiles.virtualearth.net/tiles/r{QUAD}?g=685&lbl=l1&stl=h&shading=hill&n=z&mkt={language}');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(1,'server1','http://a.tile.openstreetmap.org/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(1,'server3','http://c.tile.openstreetmap.org/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(3,'server4','http://otile4.mqcdn.com/tiles/1.0.0/osm/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(3,'server2','http://otile2.mqcdn.com/tiles/1.0.0/map/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(1,'server2','http://b.tile.openstreetmap.org/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(3,'server3','http://otile3.mqcdn.com/tiles/1.0.0/map/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(1,'server4','http://d.tile.openstreetmap.org/{LOD}/{X}/{Y}.png');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(5,'server3','http://ecn.t2.tiles.virtualearth.net/tiles/r{QUAD}?g=685&lbl=l1&stl=h&shading=hill&n=z&mkt={language}');
insert into "SAP_TM_TRP"."sap.tm.trp.db.systemmanagement::t_map_provider_url" values(5,'server2','http://ecn.t1.tiles.virtualearth.net/tiles/r{QUAD}?g=685&lbl=l1&stl=h&shading=hill&n=z&mkt={language}');
#!/bin/sh
#------------------------------------Summary----------------------------------#
#
#   author: Guoliang Zhou (I075181)
#   last changed date: 2016-08-12
#   usage: accorrding to table mapping, insert data from temp schema, handle
#	   priority: column updated table > index updated table > column removed table
#		     > index removed table > column new aded table > index new added table
#		     > removed table > new table
#
#-----------------------------------------------------------------------------#

#---------------constant------------------------------------------------
#---------user customized constants
host="10.58.121.251"
port="30015"
instance="00"
username="TRPADM"
password="Abcd1234"
#---------------------------------
userkey="TRPUPGTST"
source_schema_name="SAP_TM_TRP"
target_schema_name="SAP_TM_TRP_UPGRADE_TEMP"
routing_schema_name="SAP_TM_ROUTING"
routing_schema_name_temp="SAP_TM_ROUTING_UPGRADE_TEMP"
trp_schema_name="SAP_TM_TRP"
trp_schema_name_temp="SAP_TM_TRP_UPGRADE_TEMP"


#--------------create user store----------------------
echo "create user store ..."
hdbuserstore DELETE $userkey
hdbuserstore SET $userkey $host:$port $username $password

#--------------create and execute sql script----------
hdbsql -U $userkey -I data_migrate.sql -o migrate_log

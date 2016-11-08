#!/bin/sh
#------------------------------------Summary----------------------------------#
#
#   author: Guoliang Zhou (I075181)
#   last changed date: 2016-08-12
#   usage: accorrding to table difference, moving tables to new schema
#	   delete data in old tables
#-----------------------------------------------------------------------------#

#---------------constant------------------------------------------------
userkey="TRPUPGTST"
wsname="TRPUPGTST"
host="10.58.121.251"
port="30015"
instance="00"
username="TRPADM"
password="Abcd1234"
source_schema_name="SAP_TM_TRP"
target_schema_name="SAP_TM_TRP_UPGRADE_TEMP"
routing_schema_name="SAP_TM_ROUTING"
routing_schema_name_temp="SAP_TM_ROUTING_UPGRADE_TEMP"
trp_schema_name="SAP_TM_TRP"
trp_schema_name_temp="SAP_TM_TRP_UPGRADE_TEMP"

#----------global variables-----------------
arr_rm_tabs=()
arr_upd_tabs=()
arr_backup_tabs=()

#-----------------functions-------------------
function backup_data() {

	echo "create temp schema ..."
	ddl_sql="create schema ${routing_schema_name_temp}"
	hdbsql -U $userkey $ddl_sql
	if [ $? -ne 0 ]; then
		echo "schema ${routing_schema_name_temp} already exists, please specify another schema name for SAP_TM_ROUTING backup"
		exit 1
	fi
	ddl_sql="create schema ${trp_schema_name_temp}"
	hdbsql -U $userkey $ddl_sql
	if [ $? -ne 0 ]; then
		echo "schema ${trp_schema_name_temp} already exists, please specify another schema name for SAP_TM_TRP backup"
		exit 2 
	fi

	echo "move data to temp schema ..."
	star_symb="*"
	succ_flag=1
	del_flag=1
	for (( i=0; i<${#arr_backup_tabs[@]}; i++ )); do
		tab_name=${arr_backup_tabs[$i]}
		if [ ${tab_name:0:18} == 'sap.tm.trp.routing' ]; then
			source_schema_name=$routing_schema_name
			target_schema_name=$routing_schema_name_temp
		else
			source_schema_name=$trp_schema_name
			target_schema_name=$trp_schema_name_temp
		fi
		
		full_source_tab_name="\"${source_schema_name}\".\"${tab_name}\""
		full_target_tab_name="\"${target_schema_name}\".\"${tab_name}\""
		ddl_sql="create table $full_target_tab_name like $full_source_tab_name"
		echo "--------------------------------------------------------------"
		echo $ddl_sql
		hdbsql -U $userkey $ddl_sql
		if [ $? -ne 0 ]; then
			succ_flag=0
		fi
		echo "hdbsql -U $userkey" "'""insert into $full_target_tab_name select"  "$star_symb"  "from $full_source_tab_name""'" | sh 
		if [ $? -ne 0 ]; then
			succ_flag=0
		fi
		echo "--------------------------------------------------------------"
		echo ""
	done
	
	if [ $succ_flag -eq 1 ]; then

		for (( i=0; i<${#arr_backup_tabs[@]}; i++ )); do
			tab_name=${arr_backup_tabs[$i]}
			if [ ${tab_name:0:18} == 'sap.tm.trp.routing' ]; then
				source_schema_name=$routing_schema_name
			else
				source_schema_name=$trp_schema_name
			fi
			full_source_tab_name="\"${source_schema_name}\".\"${tab_name}\""
			ddl_sql="truncate table $full_source_tab_name"
			echo "--------------------------------------------------------------"
			echo $ddl_sql
			hdbsql -U $userkey $ddl_sql
			if [ $? -ne 0 ]; then
				del_flag=0
				break
			fi
			echo "--------------------------------------------------------------"
			echo ""
		done

		if [ $del_flag -eq 1 ]
			then
			echo "data backup successfully!"
		else
			echo "data backup failed!"
		fi 			
	else
		ddl_sql="drop schema $routing_schema_name_temp cascade"
		hdbsql -U $userkey $ddl_sql
		ddl_sql="drop schema $trp_schema_name_temp cascade"
		hdbsql -U $userkey $ddl_sql
	    echo "data backup failed!"
	fi

}


function recovery_data() {

	echo "recovery data to schema accordingly ..."
	star_symb="*"
	succ_flag=1
	del_flag=1
	for (( i=0; i<${#arr_backup_tabs[@]}; i++ )); do
		tab_name=${arr_backup_tabs[$i]}
		if [ ${tab_name:0:18} == 'sap.tm.trp.routing' ]; then
			source_schema_name=$routing_schema_name_temp
			target_schema_name=$routing_schema_name
		else
			source_schema_name=$trp_schema_name_temp
			target_schema_name=$trp_schema_name
		fi
		
		full_source_tab_name="\"${source_schema_name}\".\"${tab_name}\""
		full_target_tab_name="\"${target_schema_name}\".\"${tab_name}\""
		echo "hdbsql -U $userkey" "'""insert into $full_target_tab_name select"  "$star_symb"  "from $full_source_tab_name""'" | sh 
		if [ $? -ne 0 ]; then
			succ_flag=0
		fi
		echo "--------------------------------------------------------------"
		echo ""
	done
	
	if [ $succ_flag -eq 1 ]; then
		ddl_sql="drop schema $routing_schema_name_temp cascade"
		hdbsql -U $userkey $ddl_sql
		ddl_sql="drop schema $trp_schema_name_temp cascade"
		hdbsql -U $userkey $ddl_sql
		echo "recovery data successfully!"
	else
		echo "recovery data failed!"
	fi

}

# resourceStock,user, semantic, customization
function additional_actions() {

# activate some objects--------------------------------------
	if [ -d "${wsname}" ]; then
		rm -r ${wsname}
	fi
	sleep 10s
	regi create ws -f ${wsname} ${userkey}
	cd ${wsname}
	#echo "delete inactived objects ..."
	#hdbsql -U ${userkey} -I ../Initialize.sql
	echo "delete xsodata ..."
	regi checkout package sap/tm/trp/service
	rm sap/tm/trp/service/odata.xsodata
	regi commit package sap/tm/trp/service
	regi activate package sap/tm/trp/service
	
	echo ""
	echo "update hrf rules ..."
	regi checkout package sap/tm/trp/db/hrf/resourceStock
	rm sap/tm/trp/db/hrf/resourceStock/alertView/r_dt_stock_alertView_default.hprrule
	rm sap/tm/trp/db/hrf/resourceStock/bubbleView/r_dt_stock_bubbleView_default.hprrule
	rm sap/tm/trp/db/hrf/resourceStock/voc_resource_stock.hprvocabulary
	regi commit package sap/tm/trp/db/hrf/resourceStock
	regi activate package sap/tm/trp/db/hrf/resourceStock
	# activate hdbtable t_resource_stock.hdbtable
	cp ../resourceStock/t_resource_stock.hdbtable sap/tm/trp/db/hrf/resourceStock/
	regi commit package sap/tm/trp/db/hrf/resourceStock
	regi activate package sap/tm/trp/db/hrf/resourceStock
	
	# activate new hrf objects r_dt_stock_alertView_default.hprrule r_dt_stock_bubbleView_default.hprrule
	cp ../resourceStock/alertView/r_dt_stock_alertView_default.hprrule sap/tm/trp/db/hrf/resourceStock/alertView/
	cp ../resourceStock/bubbleView/r_dt_stock_bubbleView_default.hprrule sap/tm/trp/db/hrf/resourceStock/bubbleView/
	cp ../resourceStock/voc_resource_stock.hprvocabulary sap/tm/trp/db/hrf/resourceStock/voc_resource_stock.hprvocabulary
	regi commit package sap/tm/trp/db/hrf/resourceStock
	regi activate package sap/tm/trp/db/hrf/resourceStock
	echo ""
	echo "activate tm connector ..."
	# activate package sap tm connector
	hdbsql -U ${userkey} -I ../drop_column_upd_tabs.sql
	regi checkout package sap/tm/trp/db
	if [ -d sap/tm/trp/db/semantic ]; then
		rm -rf sap/tm/trp/db/semantic
	fi
	cp -r ../semantic sap/tm/trp/db/
	echo " " >>../user/t_date_format.hdbtable
	echo " " >>../user/t_date_format_t.hdbtable
	echo " " >>../user/t_decimal_notation.hdbtable
	echo " " >>../user/t_decimal_notation_t.hdbtable
	cp ../user/t_date_format.hdbtable sap/tm/trp/db/systemmanagement/user/
	cp ../user/t_date_format_t.hdbtable sap/tm/trp/db/systemmanagement/user/
	cp ../user/t_decimal_notation.hdbtable sap/tm/trp/db/systemmanagement/user/
	cp ../user/t_decimal_notation_t.hdbtable sap/tm/trp/db/systemmanagement/user/
	if [ -d 'sap/tm/trp/db/systemmanagement/customization/' ]; then
		cp ../customization/t_resource_category_settings.hdbtable sap/tm/trp/db/systemmanagement/customization/
	else
		mkdir sap/tm/trp/db/systemmanagement/customization
		cp ../customization/t_resource_category_settings.hdbtable sap/tm/trp/db/systemmanagement/customization/
	fi
	regi commit package sap/tm/trp/db
	regi activate package sap/tm/trp/db
	cd ..
} 


#---------------retrive table names------------------
echo "collect table names which will be backup/recovery"

cat ./rm_tabs.txt | tr ' ' '\n' | awk -F. '{print $1}' | sed 's/^\///g' | rev | sed 's/\//::/' |
rev | sed 's/\//\./g' >> trp_backup_tabs.txt
cat ./upd_tabs.txt | tr ' ' '\n' | awk -F. '{print $1}' | sed 's/^\///g' | rev | sed 's/\//::/' |
rev | sed 's/\//\./g' >> trp_backup_tabs.txt
arr_backup_tabs=($(cat ./trp_backup_tabs.txt | tr '\n' ' '))
rm ./trp_backup_tabs.txt

#--------------create user store----------------------
echo "create user store ..."
hdbuserstore DELETE $userkey
hdbuserstore SET $userkey $host:$port $username $password

#-------------backup tables accordingly------------------
#echo ${arr_backup_tabs[@]} | tr ' ' '\n'
if [ "$1" == '-R' ]; then
	recovery_data
	exit 0
else
	if [ "$#" -gt 0 ]; then
		echo "command error"
		exit 3
	else
		backup_data
		additional_actions
	fi
fi



#!/bin/sh

#---------------------------constants---------------------------
userkey="KEY81"
hostname="10.58.121.81"
port="30015"
username="SYSTEM"
password="Abcd1234"
wsname="trp200_81"

#------------------------global variables------------------------
csv_tabs=()
user_tabs=()
all_tabs=()
object_list=()

#----------------------create workspace and check code-----------
# create user key
echo "checkout source code ..."
echo "create hdb key ..."
hdbuserstore SET ${userkey} ${hostname}:${port} ${username} ${password}

if [ -d "$wsname" ]; then
	rm -r $wsname
fi
echo "create work space ..."

regi create ws ${wsname} ${userkey} 
cd ${wsname}
# checkout trp package
echo "checkout package sap/tm/trp ..."
regi checkout package sap/tm/trp
cd ..


##----------------------truncate all tables -----------------------
#echo "truncate all tables ..."
##csv_tabs=($(find ./${wsname}/sap -name *.hdbti | xargs grep -io '"sap\.tm\.trp\.[\.a-z_]*::[0-9a-z_]*"' | awk -F: '{print $2":"$3":"$4}' | sort))
## set excepted tables
#user_tabs=('"sap.tm.trp.db.stock::t_start_time_for_user"' '"sap.tm.trp.db.systemmanagement.user::t_user"')
#exp_tabs_len=${#exp_tabs[@]}
##get all tables in schema SAP_TM_TRP and SAP_TM_ROUTING
#hdbsql -U ${userkey} "SELECT SCHEMA_NAME,TABLE_NAME FROM M_CS_TABLES WHERE SCHEMA_NAME IN ('SAP_TM_TRP','SAP_TM_ROUTING')" >cs_tabs
#table_list=($(cat cs_tabs | sed '1d' | sed '$d' | sed '$d' | tr '\n' ' ' | sort))
#schema_list=($(echo ${table_list[@]} | tr ' ' '\n' | awk -F, '{print $1}'))
#all_tabs=($(echo ${table_list[@]} | tr ' ' '\n' | awk -F, '{print $2}'))
#rm cs_tabs
#
##get list length
#all_tabs_len=${#all_tabs[@]}
#exist_flag=0
#for ((i=0;i<${all_tabs_len};i++))
#do
#	exist_flag=0
#	for ((k=0;k<2;k++))
#	do
#		if [ ${all_tabs[$i]} == ${user_tabs[$k]} ]; then
#			exist_flag=1
#			break
#		fi
#	done
#	if [ ${exist_flag} -eq 0 ]; then
#		trct_sts="TRUNCATE TABLE ${schema_list[$i]}.${all_tabs[$i]};" 
#		echo $trct_sts >>truncate_tables.sql
#	fi
#	
#done
#
#echo "excute SQL ..."
#hdbsql -U ${userkey} -I clear_jobs.sql
#hdbsql -U ${userkey} -I truncate_tables.sql
#rm truncate_tables.sql

#----------------------regenerate csv tables data------------------------
echo "regenerate csv table data ..."
object_list=$(find ./${wsname}/sap -name *.calculationview)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hdbprocedure)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hdbstructure)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hdbtable)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hdbview)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hdbvocabulary)
for line in ${object_list}
do
	echo " " >>${line}
done
object_list=$(find ./${wsname}/sap -name *.hprrule)
for line in ${object_list}
do
	echo " " >>${line}
done
echo "activate trp package ..."
cd ${wsname}
regi commit package sap/tm/trp
regi activate package sap/tm/trp
cd ..

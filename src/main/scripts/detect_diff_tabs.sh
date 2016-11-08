#!/bin/sh
#=============================================================================
#-----This script is to detect all the different tables of TRP 110 and TRP 200
#-----Author: Guoliang Zhou
#-----Last Modified Date: 2016-08-09
#=============================================================================


#------------------------------------------ define constants
TRP110FOLDER="trp110"
TRP200FOLDER="trp200"
HOST="10.58.121.238"
PORT="31215"
USERNAME="SYSTEM"
PASSWORD="Abcd1234"
WSNAME="trp200"
USERKEY="trp200"

#------------------------------------------global variables
rm_tabs=()			#removed tables
new_tabs=()			#new tables
sh_tabs=()			#shared tables
upd_tabs=()			#updated tables
no_chage_tabs=()
#arr_trp110=()		#trp 110 table list
#arr_trp200=()		#trp 200 table list

#------------------------------------------functions
function arrs_minus(){

	declare skip=0	
	declare from_ind=0
	declare len1=${#arr_trp110[@]}	
	declare len2=${#arr_trp200[@]}
		
	for ((i=0;i<$len1;i++))
	do
		skip=0
		for ((j=$from_ind;j<$len2;j++))
		do
			if [ ${arr_trp110[$i]} == ${arr_trp200[$j]} ]	
			then
				skip=1
				sh_tabs+=("${arr_trp200[$j]}")
				from_ind=$j
				break
			fi
		done
		if [ $skip -eq 0 ]; then
			rm_tabs+=("${arr_trp110[$i]}")
		fi
	done

	from_ind=0;
	for ((i=0;i<$len2;i++))
	do
		skip=0
		for ((j=$from_ind;j<$len1;j++))
		do
			if [ ${arr_trp200[$i]} == ${arr_trp110[$j]} ]	
			then
				skip=1
				from_ind=$j
				break
			fi
		done
		if [ $skip -eq 0 ]; then
			new_tabs+=("${arr_trp200[$i]}")
		fi
	done
	
	echo ""
	echo ""
	echo "==========================new tables========================="
	echo ${new_tabs[*]} | tr ' ' '\n'
	echo "============================================================="
	echo ""
	echo ""
	echo "========================removed tables======================="
	echo ${rm_tabs[*]} | tr ' ' '\n'
	echo "============================================================="
	echo ""
	echo ""



}

function retrieve_upd_tabs() {

	declare len_sh=${#sh_tabs[@]}

	echo "======================updated tables========================="
	
	for ((k=0;k<$len_sh;k++))
	do
		#txt1=$(sed s/[[:space:]]//g "./${TRP110FOLDER}${sh_tabs[$k]}" | tr '\n' ' ')
		#txt2=$(sed s/[[:space:]]//g "./${TRP200FOLDER}${sh_tabs[$k]}" | tr '\n' ' ')
   		diff -iw "./${TRP110FOLDER}${sh_tabs[$k]}" "./${TRP200FOLDER}${sh_tabs[$k]}" 
		if [ $? -ne 0 ]; then
			echo "${sh_tabs[$k]}"
			upd_tabs+=("${sh_tabs[$k]}")
			echo "-----------------------------------------------------------------"
		else
			no_chg_tabs+=("${sh_tabs[$k]}")
		
		fi
   	
	done
	echo "============================================================="

}

function output_tabs() {
	
	echo ${arr_trp110[*]} | tr ' ' '\n' | awk -F. '{print $1}' | cut -c 2- | rev | sed 's/\//::/' | rev | sed 's/\//\./g' | awk '{print $1}'>all_tabs.txt
	echo ${new_tabs[*]} | tr ' ' '\n' | awk -F. '{print $1}' | cut -c 2- | rev | sed 's/\//::/' | rev | sed 's/\//\./g' | awk '{print $1}'>new_tabs.txt
	echo ${rm_tabs[*]} | tr ' ' '\n' | awk -F. '{print $1}' | cut -c 2- | rev | sed 's/\//::/' | rev | sed 's/\//\./g' | awk '{print $1}'>rm_tabs.txt 
	echo ${upd_tabs[*]} | tr ' ' '\n' | awk -F. '{print $1}' | cut -c 2- | rev | sed 's/\//::/' | rev | sed 's/\//\./g' | awk '{print $1}'>upd_tabs.txt
	echo ${no_chg_tabs[*]} | tr ' ' '\n' | awk -F. '{print $1}' | cut -c 2- | rev | sed 's/\//::/' | rev | sed 's/\//\./g' | awk '{print	$1}'>no_chg_tabs.txt
	
}



function fetch_latest() {

	# create user key and work space trp200
	hdbuserstore DELETE ${USERKEY}
	hdbuserstore SET ${USERKEY} ${HOST}:${PORT} ${USERNAME} ${PASSWORD}
	if [ -d $WSNAME ]; then
		rm -rf $WSNAME
	fi
	regi create ws -f ${WSNAME} ${USERKEY} 
	cd ${WSNAME}
	regi checkout package sap/tm/trp
	cd ..

}

#fetch_latest
# find all the hdbtable of TRP 110 ...
cd $TRP110FOLDER
arr_trp110=($(find ./sap -name *.hdbtable | awk -F. '{print $2"."$3}' | sort | tr '\n' ' '))
cd ..

# find all the hdbtables of TRP 200 ...
cd $TRP200FOLDER
arr_trp200=($(find ./sap -name *.hdbtable | awk -F. '{print $2"."$3}' | sort | tr '\n' ' '))
cd ..


# fetch latest source code of TRP 200
#fetch_latest

# find out all the removed tables, new tables and shared tables 
arrs_minus

# detect changed tables from share tables
retrieve_upd_tabs

# output changed tables
output_tabs


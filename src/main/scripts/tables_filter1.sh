#!/bin/sh

no_chg_tabs=($(cat ./no_chg_tabs.txt | tr '\n' ' '))
upd_tabs=($(cat ./upd_tabs.txt | tr '\n' ' '))
new_tabs=($(cat ./new_tabs.txt | tr '\n' ' '))


csv_tabs=($(cat ./csv_imported_tables.txt | tr '\n' ' '))

flag=0
no_chg_tabs_len=${#no_chg_tabs[@]}
upd_tabs_len=${#upd_tabs[@]}
new_tabs_len=${#new_tabs[@]}

csv_tabs_len=${#csv_tabs[@]}

for ((i=0; i<${no_chg_tabs_len}; i++ )); do
	flag=0
	for ((j=0; j<${csv_tabs_len}; j++ )); do 
		if [ ${csv_tabs[$j]} == ${no_chg_tabs[$i]} ]; then
			flag=1
		fi
	done
	
	if [ $flag -eq 0 ]; then
		no_changed_tables+=("${no_chg_tabs[$i]}")
	fi
done

for ((i=0; i<${upd_tabs_len}; i++ )); do
	flag=0
	for ((j=0; j<${csv_tabs_len}; j++ )); do 
		if [ ${csv_tabs[$j]} == ${upd_tabs[$i]} ]; then
			flag=1
		fi
	done
	
	if [ $flag -eq 0 ]; then
		updating_tables+=("${upd_tabs[$i]}")
	fi
done

for ((i=0; i<${new_tabs_len}; i++ )); do
	flag=0
	for ((j=0; j<${csv_tabs_len}; j++ )); do 
		if [ ${csv_tabs[$j]} == ${new_tabs[$i]} ]; then
			flag=1
		fi
	done
	
	if [ $flag -eq 0 ]; then
		new_tables+=("${new_tabs[$i]}")
	fi
done

echo ${updating_tables[@]} | tr ' ' '\n'>updating_tables.txt
echo ${no_changed_tables[@]} | tr ' ' '\n'>no_changed_tables.txt
echo ${new_tables[@]} | tr ' ' '\n'>new_tables.txt


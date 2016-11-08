#!/bin/sh
echo "init workspace ========================================================"

edition=$1
modules=$2

#workspaceWorkingDirectory=target
workspaceWorkingDirectory=$3
echo "workspaceWorkingDirectory=$workspaceWorkingDirectory"

#workspaceParentFolderName=hanaxs
workspaceParentFolderName=$4
echo "workspaceParentFolderName=$workspaceParentFolderName"

workspaceFolderName=$edition

#packageName=sap.tm.trp
packageName=$5

#packageFolder=sap/tm/trp
packageFolder=$6

hdbuserstoreKey=$7

#workspaceDistFolderName=dist
workspaceDistFolderName=$8

scriptSourceDirectory=$9

copy_module_files() {
	for arg
	do
		module=$arg
		echo module=$module
		# copy dist/trp-backend/sap/tm/trp to hanaxs/trp-tm-connector/sap/tm/trp
		cp -r $workspaceDistFolderName/$module/. $workspaceParentFolderName/$edition/
	done
}

# clean up
echo "clear inactive objects ..."
hdbsql -U $hdbuserstoreKey -I $scriptSourceDirectory/Initialize.sql

# create workspace
echo "create workspace ..."
cd $workspaceWorkingDirectory

mkdir $workspaceParentFolderName
cd $workspaceParentFolderName
regi create workspace -f $workspaceFolderName $hdbuserstoreKey

# go to workspace folder
cd $workspaceFolderName

echo "checkout package ..."
regi track $packageName
regi checkout --lineEnd=UNIX

echo "overwrite old code ..."
rm -rf $packageFolder

# copy dist to hanaxs workspace
# go to target folder
cd $workspaceWorkingDirectory

IFS=':'
copy_module_files $modules

if [ "$?" != "0" ]; then
	echo "ERROR: can not found TRP package"
	exit 4
fi

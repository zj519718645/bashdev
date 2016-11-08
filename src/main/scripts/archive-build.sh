#!/bin/sh
#==========================================================================
#	This bash will export copy TRP Du to specific location
#==========================================================================
echo archive build ========================================================

edition=$1

#workspaceWorkingDirectory=target
workspaceWorkingDirectory=$2

#workspaceParentFolderName=hanaxs
workspaceParentFolderName=$3

workspaceFolderName=$edition

archiveRepo=$4

#deliveryUnit=HCO_TM_TRP
deliveryUnit=$5
deliveryUnitFile=$deliveryUnit.tgz

cd $workspaceWorkingDirectory
cd $workspaceParentFolderName
cd $workspaceFolderName

echo "upload delivery unit to repository ..."
archiveFolder=`date '+%Y-%m-%d_%H-%M-%S'`
mkdir $archiveRepo/$archiveFolder

cp -r sap $archiveRepo/$archiveFolder
cp $deliveryUnitFile $archiveRepo/$archiveFolder

rm $archiveRepo/LATEST_DU/$deliveryUnitFile
cp $deliveryUnitFile $archiveRepo/LATEST_DU/
rm -r $archiveRepo/LATEST_DU/sap
cp -r sap $archiveRepo/LATEST_DU/

cd $workspaceWorkingDirectory

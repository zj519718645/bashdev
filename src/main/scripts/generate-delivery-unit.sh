#!/bin/sh
echo generate dilivery unit ========================================================

edition=$1

#workspaceWorkingDirectory=target
workspaceWorkingDirectory=$2

#workspaceParentFolderName=hanaxs
workspaceParentFolderName=$3

workspaceFolderName=$edition

cd $workspaceWorkingDirectory
cd $workspaceParentFolderName
cd $workspaceFolderName

#packageName=sap.tm.trp
packageName=$4

#deliveryUnit=HCO_TM_TRP
deliveryUnit=$5
deliveryUnitFile=$deliveryUnit.tgz

echo "generate delivery unit $deliveryUnitFile"
regi export $deliveryUnit $deliveryUnitFile

cd $workspaceWorkingDirectory

#!/bin/sh
echo commit package ========================================================

edition=$1

#workspaceWorkingDirectory=target
workspaceWorkingDirectory=$2
echo "workspaceWorkingDirectory=$workspaceWorkingDirectory"

#workspaceParentFolderName=hanaxs
workspaceParentFolderName=$3
echo "workspaceParentFolderName=$workspaceParentFolderName"

workspaceFolderName=$edition

cd $workspaceWorkingDirectory
cd $workspaceParentFolderName
cd $workspaceFolderName

regi status
regi commit

echo "start activation ..."
regi activate

if [ "$?" != "0" ]; then
    echo "ERROR: activate failed"
    exit 5
fi
echo "activation finished"

cd $workspaceWorkingDirectory

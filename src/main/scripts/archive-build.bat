@echo off
echo archive build ========================================================

set edition=%1
echo edition=%1

::workspaceWorkingDirectory=target
set workspaceWorkingDirectory=%2
echo workspaceWorkingDirectory=%2

::workspaceParentFolderName=hanaxs
set workspaceParentFolderName=%3
echo workspaceParentFolderName=%3

set workspaceFolderName=%edition%

set archiveRepositoryDirectory=%4

::deliveryUnit=HCO_TM_TRP
set deliveryUnit=%5
set deliveryUnitFile=%deliveryUnit%.tgz

cd %workspaceWorkingDirectory%
cd %workspaceParentFolderName%
cd %workspaceFolderName%

echo archive repository: %archiveRepositoryDirectory%

cd %workspaceWorkingDirectory%

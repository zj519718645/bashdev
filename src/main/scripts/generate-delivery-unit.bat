@echo off
echo generate delivery unit ===================================================

set edition=%1
echo edition=%1

::workspaceWorkingDirectory=target
set workspaceWorkingDirectory=%2
echo workspaceWorkingDirectory=%2

::workspaceParentFolderName=hanaxs
set workspaceParentFolderName=%3
echo workspaceParentFolderName=%3

set workspaceFolderName=%edition%

::packageName=sap.tm.trp
set packageName=%4
echo packageName=%4

::deliveryUnit=HCO_TM_TRP
set deliveryUnit=%5
set deliveryUnitFile=%deliveryUnit%.tgz

set deliveryUnitVersion=%6
set deliveryUnitVersionSP=%7
set deliveryUnitVersionPatch=%8

cd %workspaceWorkingDirectory%
cd %workspaceParentFolderName%
cd %workspaceFolderName%

echo create DU %deliveryUnit% for package %packageName%
echo Version: %deliveryUnitVersion%.%deliveryUnitVersionSP%.%deliveryUnitVersionPatch%
regi export %deliveryUnit% %deliveryUnitFile%

cd %workspaceWorkingDirectory%

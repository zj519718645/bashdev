@echo off
echo Code Scan ============================================================

echo scriptSourceDirectory=%1

set edition=%2
echo edition=%2

::workspaceWorkingDirectory=target
set workspaceWorkingDirectory=%3
echo workspaceWorkingDirectory=%3

::workspaceParentFolderName=hanaxs
set workspaceParentFolderName=%4
echo workspaceParentFolderName=%4

set workspaceFolderName=%edition%

set workspaceFolder=%workspaceWorkingDirectory%/%workspaceParentFolderName%/%workspaceFolderName%
echo workspaceFolder=%workspaceFolder%

::packageFolder=sap/tm/trp
set packageFolder=%5
echo packageFolder=%5

echo code scan on %workspaceFolder%/%packageFolder%

cd %workspaceWorkingDirectory%

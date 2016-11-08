@echo off
echo commit package ========================================================

set edition=%1
echo edition=%1

::workspaceWorkingDirectory=target
set workspaceWorkingDirectory=%2
echo workspaceWorkingDirectory=%2

::workspaceParentFolderName=hanaxs
set workspaceParentFolderName=%3
echo workspaceParentFolderName=%3

set workspaceFolderName=%edition%

cd %workspaceWorkingDirectory%
cd %workspaceParentFolderName%
cd %workspaceFolderName%

regi status
::regi commit --fast
::regi activate

cd %workspaceWorkingDirectory%

@echo off
echo init workspace ========================================================

set edition=%1
echo edition=%1
set modules=%2
echo modules=%modules%

::workspaceWorkingDirectory=target
set workspaceWorkingDirectory=%3
echo workspaceWorkingDirectory=%3

::workspaceParentFolderName=hanaxs
set workspaceParentFolderName=%4
echo workspaceParentFolderName=%4

set workspaceFolderName=%edition%

::packageName=sap.tm.trp
set packageName=%5
echo packageName=%5

::packageFolder=sap/tm/trp
set packageFolder=%6
echo packageFolder=%6

set hdbuserstoreKey=%7
echo hdbuserstoreKey=%7

::workspaceDistFolderName=dist
set workspaceDistFolderName=%8

set scriptSourceDirectory=%9

::Create workspace
echo create workspace ...
cd %workspaceWorkingDirectory%

mkdir %workspaceParentFolderName%
cd %workspaceParentFolderName%
regi create workspace %workspaceFolderName% --key=%hdbuserstoreKey% --force

::Track and checkout package
cd %workspaceFolderName%
regi track %packageName%
regi checkout --lineEnd=UNIX

::Remove old content
RMDIR /S /Q "%packageFolder%"

::Copy dist to workspace
cd %workspaceWorkingDirectory%
call :split "%modules%"
goto :end

:split
set moduleList=%1
for /F "tokens=1* delims=:" %%A in (%moduleList%) do (
	echo module=%%A
	XCOPY /E /V /I /Q %workspaceDistFolderName%\%%A %workspaceParentFolderName%\%edition%

	if not "%%B" == "" (call :split "%%B")
)
:end

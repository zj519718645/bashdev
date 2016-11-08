#!/bin/sh
#==========================================================================
#             TRP backend code scan
#==========================================================================
echo Code Scan ============================================================

scriptSourceDirectory=$1

edition=$2

#workspaceWorkingDirectory=target
workspaceWorkingDirectory=$3
echo "workspaceWorkingDirectory=$workspaceWorkingDirectory"

#workspaceParentFolderName=hanaxs
workspaceParentFolderName=$4
echo "workspaceParentFolderName=$workspaceParentFolderName"

workspaceFolderName=$edition

workspaceFolder=$workspaceWorkingDirectory/$workspaceParentFolderName/$workspaceFolderName
echo "workspaceFolder=$workspaceFolder"

#packageFolder=sap/tm/trp
packageFolder=$5

echo "find out the inconsistency dependencies in hdbview ..."
python $scriptSourceDirectory/find_hdbview_depends.py $workspaceFolder $packageFolder
if [ $? -ne 0 ]; then
	echo "inconsistency references in hdbview found, code scan failed!"
	exit 1
fi

echo "find inexist references ..."
python $scriptSourceDirectory/find_error_references.py $workspaceFolder $packageFolder
if [ $? -ne 0 ]; then
	echo "some references do not found, code scan failed!"
	exit 2
fi

echo "find incorrect prefix..."
python $scriptSourceDirectory/check_prefix.py $workspaceFolder $packageFolder
if [ $? -ne 0 ]; then
	echo "SAPX0M and _SYS_BIC should not specified, code scan failed!"
	exit 3
fi

echo "find out all files with CRLF line ending style ..."
python $scriptSourceDirectory/detect_incorrect_line_ending_files.py $workspaceFolder $packageFolder
if [ $? -ne 0 ]; then
	echo "CRLF line ending not allowed, code scan failed!"
	exit 4
fi

cd $workspaceWorkingDirectory

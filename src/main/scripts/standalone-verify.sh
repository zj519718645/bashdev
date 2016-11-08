#!/bin/sh
echo "create workspace ..."
regi create workspace -f TRPDEPLOY TRP200TSV
cd TRPDEPLOY
echo "checkout package ..."
regi checkout package sap.tm.trp.db
rm -rf ./sap/tm/trp/db
echo "overwrite source code ..."
cp -r ../trp-standalone/TM_CONNECTOR/sap/tm/trp/db/ ./sap/tm/trp/

regi status
regi commit
echo "activation is in progress..."
regi activate

if [ "$?" != "0" ]; then
    echo "ERROR: activate failed"
    exit 5
fi
echo "activation finished"

cd ..

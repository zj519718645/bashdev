#!/bin/bash
host=
user=
password=

while getopts k:n:u:p: option 
do
    case "${option}"
    in
       k) key=${OPTARG};;
	   n) host=${OPTARG};;
       u) user=${OPTARG};;
       p) password=${OPTARG};;
    esac
done

hdbuserstore SET $key $host $user $password
hdbuserstore SET TRPSOURCEKEY 10.58.185.121:30015 HONGGANG Abcd1234
echo Delete old code
rm -rf Deployment

echo Checkout TRP Code
regi create workspace Deployment TRPSOURCEKEY
cd Deployment
regi track sap.tm.trp
regi checkout
rm -rf ._SYS_REGI_settings
rm -rf sap/tm/trp/db/test/*
cd ..

echo Connect to Deployment Target Machine
echo Clear the Deployment Target Machine Environment
hdbsql -U $key -I TRPInitialize.sql
regi create workspace -f Deployment $key
python objectsactivation.py

echo Create activate order
cd Deployment

echo push TRP to TES
regi track sap.tm.trp
regi commit
#sh ActivatePackage.sh

regi activate sap/tm/trp/db/
regi activate sap/tm/trp/service/
regi activate sap/tm/trp/ui/

regi activate sap/tm/trp/.project
regi activate sap/tm/trp/.xsaccess

regi activate sap/tm/trp/config/
echo Activate finished

# perform post activities

echo Assign Packages
regi assign sap.tm.trp.db HCO_TRP_DB --vendor=sap.com
regi assign sap.tm.trp.config HCO_TRP_CONFIG --vendor=sap.com
regi assign sap.tm.trp.service sap.tm.trp.ui HCO_TRP_XS_UI --vendor=sap.com
regi assign sap.tm.trp HCO_TRP_XS_UI --norec --vendor=sap.com

echo Export DU
regi export HCO_TRP_DB TRP_DB.tgz
regi export HCO_TRP_XS_UI TRP_XS_UI.tgz
regi export HCO_TRP_CONFIG TRP_CONFIG.tgz

echo Zip files
zip TRPDU.zip TRP_DB.tgz TRP_XS_UI.tgz TRP_CONFIG.tgz
zip -r TRPCODE.zip sap ActivatePackage.sh


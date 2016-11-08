#!/bin/sh

#constants
USERKEY="H23DEPLOY"
HOST="10.58.184.222:32315"
USERNAME="SYSTEM"
PASSWORD="Abcd1234"

echo "code review ... ..."
find trp-backend/sap/tm/trp/db/ -name "*.calculationview" -print | xargs grep -il '&quot;_SYS_BIC&quot;'
if [ $? -eq 0 ]
    then
    echo "WARING"
    echo "above calculation views refer to runtime objects, don't do that!"¶
fi
find trp-backend/sap/tm/trp/db/ -name "*.hdbprocedure" -print | xargs grep -il '"_SYS_BIC"'
if [ $? -eq 0 ]
    then
    echo "WARNING"
    echo "above hdb procedures refer to runtime objects, don't do that!"
fi
find trp-backend/sap/tm/trp/db/ -name "*.procedure" -print | xargs grep -il '"_SYS_BIC"'
if [ $? -eq 0 ]
    then
    echo "WARNING"
    echo "above procedures refer to runtime objects, don't do that!"
fi

find trp-backend/sap/tm/trp/db/ -name "*.calculationview" -print | xargs grep -il '&quot;SAP_TM_TRP&quot;'
if [ $? -eq 0 ]
    then
    echo "WARING"
    echo "above calculation views refer to runtime objects, don't do that!"¶
fi
find trp-backend/sap/tm/trp/db/ -name "*.hdbprocedure" -exec grep -H -iE '(UPDATE|CALL|INTO|FROM|,|JOIN)\s+"?SAP_TM_TRP"?' {} \;
if [ $? -eq 0 ]
    then
    echo "WARNING"
    echo "above hdb procedures refer to runtime objects, don't do that!"
fi
find trp-backend/sap/tm/trp/db/ -name "*.procedure" -print | xargs grep -il '"SAP_TM_TRP"'
if [ $? -eq 0 ]
    then
    echo "WARNING"
    echo "above procedures refer to runtime objects, don't do that!"
fi
#echo "clear objects in HANA"#hdbsql -U $USERKEY -I Initialize.sql
hdbsql -U $USERKEY -I Initialize.sql
echo "create hdb user store"
hdbuserstore DELETE $USERKEY
hdbuserstore SET $USERKEY $HOST $USERNAME $PASSWORD

echo "create workspace and connect to HANA"
if [ -d "Deployment" ]
    then
    rm -rf Deployment
fi
regi create workspace -f Deployment $USERKEY
echo "check dependencies"
echo "push TRP1.0 into HANA"
cd Deployment
echo checkout packages
regi checkout package sap.tm.trp
rm -rf sap
sleep 5s
echo copy new code to overwrite old code
cp -r ../target/.regi/sap ./
cd ..
#python objectsactivation.py
python find_depends.py
cd Deployment
#echo "db package activation ... ..."
#regi commit package sap.tm.trp.db
#regi activate package sap.tm.trp.db
##sh ActivatePackage.sh
#echo db package activate finished
#echo "service package activation ... ..."
#regi commit package sap.tm.trp.service
#regi activate package sap.tm.trp.service
#echo service package activate finished
#echo "config package activation ... ..."
#regi commit package sap.tm.trp.config
#regi activate package sap.tm.trp.config
#echo "config package activated finished"
#echo "ui package activation ... ..."
#regi commit package sap.tm.trp.ui
#regi activate package sap.tm.trp.ui
#echo "ui package activated finished"

echo "start trp package activation ... ..."
regi track sap.tm.trp
regi commit package sap.tm.trp
regi activate package sap.tm.trp
echo "activation finished"
#echo "create dellivery unit HCO_TRP"
#regi assign sap.tm.trp HCO_TRP --vendor=sap.com
#echo "export delivery unit HCO_TRP"
#regi export HCO_TRP HCO_TRP.tgz
#FILENAME=`date '+%Y-%m-%d_%H-%M-%S'`
#mkdir /home/build/TRPDailyBuild/$FILENAME
#cp -r sap /home/build/TRPDailyBuild/$FILENAME/
#cp HCO_TRP.tgz /home/build/TRPDailyBuild/$FILENAME
cd ..
#rm -rf Deployment

#!/bin/sh

#constants
USERKEY="H24DEPLOY"
HOST="10.58.184.94:32415"
USERNAME="SYSTEM"
PASSWORD="Abcd1234"


#echo "clear objects in HANA"#hdbsql -U $USERKEY -I Initialize.sql
echo "create hdb user store"
hdbuserstore DELETE $USERKEY
hdbuserstore SET $USERKEY $HOST $USERNAME $PASSWORD
hdbsql -U $USERKEY -I Initialize.sql
echo "create workspace and connect to HANA"
if [ -d "Deployment" ]
    then
    rm -rf Deployment
fi
echo 'Create packages ... ...'
mkdir -p Deployment/master
mkdir -p Deployment/ui-dev
echo 'Clone source code from remote git repository'
git clone -b master ssh://i075181@git.wdf.sap.corp:29418/hana_trp.git ./Deployment/master/
git clone -b ui-dev ssh://i075181@git.wdf.sap.corp:29418/hana_trp.git ./Deployment/ui-dev/
regi create workspace -f Deployment $USERKEY
#echo "check dependencies"
#python find_depends.py
echo "push TRP1.0 into HANA"
cd Deployment
echo checkout packages
regi checkout package sap.tm.trp
regi track package sap.tm.trp
echo copy new code to overwrite old code
cd ..
rm -rf ./Deployment/sap
sleep 10s
mkdir -p Deployment/sap/tm/trp/db
mkdir -p Deployment/sap/tm/trp/config
mkdir -p Deployment/sap/tm/trp/service
mkdir -p Deployment/sap/tm/trp/ui
cp -r ./Deployment/master/trp-backend/sap/tm/trp/db/* ./Deployment/sap/tm/trp/db/
cp ./Deployment/master/trp-backend/sap/tm/trp/db/.xs* ./Deployment/sap/tm/trp/db/
cp -r ./Deployment/master/trp-backend/sap/tm/trp/service/* ./Deployment/sap/tm/trp/service/
cp ./Deployment/master/trp-backend/sap/tm/trp/service/.xs* ./Deployment/sap/tm/trp/service/
cp -r ./Deployment/master/trp-backend/sap/tm/trp/config/* ./Deployment/sap/tm/trp/config/
cp ./Deployment/master/trp-backend/sap/tm/trp/config/.xs* ./Deployment/sap/tm/trp/config/
cp -r ./Deployment/ui-dev/trp-frontend/src/main/webapp/* ./Deployment/sap/tm/trp/ui/
cp ./Deployment/ui-dev/trp-frontend/src/main/webapp/.xs* ./Deployment/sap/tm/trp/ui/

rm -r ./Deployment/sap/tm/trp/db/map

echo "code review ... ..."
find ./Deployment/sap/tm/trp/db/ -name "*.calculationview" -print | xargs grep -il '&quot;_SYS_BIC&quot;'
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above calculation views, you use runtime object from _SYS_BIC. don not do that!"
fi
find ./Deployment/sap/tm/trp/db/ -name "*.hdbprocedure" -print | xargs grep -il '"_SYS_BIC"'
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above hdb procedures, you use runtime object from _SYS_BIC. do not do that!"
fi
find ./Deployment/sap/tm/trp/db/ -name "*.procedure" -print | xargs grep -il '"_SYS_BIC"'
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above procedures, you use runtime object from _SYS_BIC. do not do that!"
fi
find ./Deployment/sap/tm/trp/db/ -name "*.calculationview" -print | xargs grep -il '&quot;SAP_TM_TRP&quot;'
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above calculation views, you use runtime object from SAP_TM_TRP. don not do that!"
fi
#find ./Deployment/sap/tm/trp/db/ -name "*.hdbprocedure" -print | xargs grep -il '"SAP_TM_TRP"'
find ./Deployment/sap/tm/trp/db/ -name "*.hdbprocedure" -exec grep -H -iE '(UPDATE|CALL|INTO|FROM|,|JOIN)\s+"?SAP_TM_TRP"?' {} \;
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above procedures, you use runtime object from SAP_TM_TRP. do not do that!"
fi
find ./Deployment/sap/tm/trp/db/ -name "*.procedure" -print | xargs grep -il '"SAP_TM_TRP"'
if [ $? -eq 0 ]
        then
        echo "WARNING"
        echo "in above hdb procedures, you use runtime object from SAP_TM_TRP. do not do that!"
fi
echo "check dependencies"
python find_depends.py
#python objectsactivation.py
cd Deployment
echo "wait 10 seconds"

echo "trp package activation ... ..."
regi track package sap.tm.trp
regi commit package sap.tm.trp
regi activate package sap.tm.trp

#echo "db package activation ... ..."
##regi track package sap.tm.trp.db
#regi commit package sap.tm.trp.db
#regi activate package sap.tm.trp.db
##sh ActivatePackage.sh
#echo db package activate finished
#echo "service package activation ... ..."
##regi track package sap.tm.trp.service
#regi commit package sap.tm.trp.service
#regi activate package sap.tm.trp.service
#echo service package activate finished
#echo "config package activation ... ..."
##regi track package sap.tm.trp.config
#regi commit package sap.tm.trp.config
#regi activate package sap.tm.trp.config
#echo "config package activated finished"
#echo "ui package activation ... ..."
##regi track package sap.tm.trp.ui
#regi commit package sap.tm.trp.ui
#regi activate package sap.tm.trp.ui
#echo "ui package activated finished"


#echo "create dellivery unit HCO_TM_TRP"
#regi assign sap.tm.trp HCO_TM_TRP --vendor=sap.com
#echo "export delivery unit HCO_TM_TRP"
#regi export HCO_TM_TRP HCO_TM_TRP.tgz
#FILENAME=`date '+%Y-%m-%d_%H-%M-%S'`
#mkdir /home/build/TRPDailyBuild/$FILENAME
#cp -r sap /home/build/TRPDailyBuild/$FILENAME/
#cp HCO_TM_TRP.tgz /home/build/TRPDailyBuild/$FILENAME
#cd ..
#rm -rf Deployment

import os
import sys
import re
from toposort import *

comment_re = re.compile(
    r'(^)?[^\S\n]*/(?:\*(.*?)\*/[^\S\n]*|/[^\n]*)($)?',
    re.DOTALL | re.MULTILINE
)

def comment_replacer(match):
    start,mid,end = match.group(1,2,3)
    if mid is None:
        # single line comment
        return ''
    elif start is not None or end is not None:
        # multi line comment at start or end of a line
        return ''
    elif '\n' in mid:
        # multi line comment with line break
        return '\n'
    else:
        # multi line comment without line break
        return ' '

def remove_comments(text):
    res=comment_re.sub(comment_replacer, text)
    res=re.sub(r'--.*?\n','', res)
    return res

def build_db_package_files_dictionary(path):
    dictResult={}
    for root, dirs, files in os.walk( path ):        
        for fn in files:
            tobefind = os.path.sep + "sap" + os.path.sep
            prefix = root[root.find(tobefind) + 1:]
            str2=fn.split('.')
            name,ext = os.path.splitext(fn)
            if len(ext) > 0 :
                objectname=""
                if ext == ".csv":
                    objectname=prefix.replace(os.path.sep, ".") + ":" + fn
                else:
                    objectname=prefix.replace(os.path.sep, ".") + "::" + name  
            else:#.project .xsapp ...
                objectname=prefix.replace(os.path.sep, ".") + "::" + fn
            regicmd="regi activate " + prefix.replace(os.path.sep, "/") + "/" + fn
            dictResult[objectname] = regicmd    

    dictResult['sap.tm.trp.db.user_new::t_state_geometry']=''
    dictResult['sap.tm.trp.db.systemmanagement::t_country_geometry']=''
    dictResult['sap.tm.trp.db.systemmanagement::t_in_polygon']=''
    #print dictResult
    return dictResult

def build_db_objects_dependence(path):
    res=[]
    for root, dirs, files in os.walk( path ):        
        for fn in files:
            tobefind = os.path.sep + "sap" + os.path.sep
            prefix = root[root.find(tobefind) + 1:]
            name,ext = os.path.splitext(fn)

            currentObject=prefix.replace(os.path.sep, ".") + "::" + name

            ifile = open(root+ '/' + fn)
            strings =remove_comments(ifile.read())
            ifile.close()

            create_view_depends(res, strings, currentObject)
            create_calc_view_depends(res, strings, currentObject)
            create_sys_bic_view_depends(res, strings, currentObject)
            create_sys_bic_proc_depends(res, strings, currentObject)
            create_csv_file_depends(res, strings, currentObject)
            create_sys_bic_select_depends(res, strings, currentObject)
    return res

def create_view_depends(depends_list, sqlscript, currentObject):
    tempset=set()
    viewstrings=re.findall(r'sap\.tm\.trp.*::.*"', sqlscript)
    if len(viewstrings) > 0:
        for name in viewstrings:
            str2=name.split('"')
            str3=str2[0].split('\\')
            dependObject=str3[0]
            if dependObject not in tempset:
                tempset.add(dependObject)
                strname = str(dependObject).replace("\\\"", "")
                depends_list.append((currentObject, strname))    
    pass

def create_calc_view_depends(depends_list, sqlscript, currentObject):
    tempset=set()
    calcviewstrings=re.findall(r'sap\.tm\.trp.*::.*&', sqlscript)
    if len(calcviewstrings) > 0:
        for name in calcviewstrings:
            str2=name.split('&')
            dependObject=str2[0]
            if dependObject not in tempset:
                tempset.add(dependObject)
                strname = str(dependObject).replace("\\\"", "")
                depends_list.append((currentObject, strname))    
    pass

def create_sys_bic_view_depends(depends_list, sqlscript, currentObject):
    tempset=set()
    sysbic=re.findall(r'_SYS_BIC.*sap\.tm\.trp.*\"', sqlscript)
    for item in sysbic:
        item=str(item).replace("\\","")
        str2=item.split('/')
        if len(str2)>=2:
            dependObject=str2[0][11:]+"::"+str2[1]
            str3=dependObject.split('"')
            if len(str3)>0:
                strname=str3[0]
                if strname not in tempset and len(strname)>0:
                    tempset.add(strname)
                    depends_list.append((currentObject, strname))
    pass

def create_sys_bic_proc_depends(depends_list, sqlscript, currentObject):
    tempset = set()
    sysbicproc=re.findall(r'sap\.tm\.trp.*\/proc', sqlscript)
    for item in sysbicproc:
        item=str(item).replace("\\","")
        str2=item.split('/')
        if len(str2)>=2:
            dependObject=str2[0]+"::"+str2[1]
            str3=dependObject.split('"')
            if len(str3)>0:
                strname=str3[0]
                if strname not in tempset and len(strname)>0:
                    tempset.add(strname)
                    depends_list.append((currentObject, strname))
    pass
	
def create_sys_bic_select_depends(depends_list, sqlscript, currentObject):
    tempset = set()
    sysbicproc=re.findall(r'sap\.tm\.trp.*\&', sqlscript)
    if len(sysbicproc) > 0:
        for name in sysbicproc:
            str2=name.split('&')
            str3=str2[0]
            str4=str3.split('/')
            if len(str4)>=2:
                dependObject = str4[0]+"::"+str4[1]
                if dependObject not in tempset:
                    depends_list.append((currentObject, dependObject))  
                pass
        pass
    pass
	
def create_csv_file_depends(depends_list, sqlscript, currentObject):
    tempset = set()
    csvfile=re.findall(r'sap\.tm\.trp.*\.csv', sqlscript)
    for item in csvfile:
        if item not in tempset:
            tempset.add(item)
            depends_list.append((currentObject, item))
    pass
	
def find_missing_depends_on_stuff(path):
    res=[]
    printtileflag=True
    for root, dirs, files in os.walk( path ):        
        for fn in files:
            tobefind = os.path.sep + "sap" + os.path.sep
            prefix = root[root.find(tobefind) + 1:]
            name,ext = os.path.splitext(fn)
            if ext == ".hdbview":
                currentObject=prefix.replace(os.path.sep, ".") + "::" + name
    
                ifile = open(root+ '/' + fn)
                strings =remove_comments(ifile.read())
                ifile.close()
                deps=[]
                find_depends_stuff(deps, strings, currentObject)
                if len(deps)>0:
                    if printtileflag:
                        print "\n****************************************************\n"\
                              "There are some views missing depends_on_*!\n"\
                              "Please check your code and add depends_on_* error\n"\
                              "****************************************************\n"
                        pass
                    printtileflag = False
                    print currentObject
                    print deps
                    print "\n"
    return res

def find_depends_stuff(depends_on_list, sqlscript, currentObject):
    tempset = set()
    dependsstuff=re.findall(r'\[.*\]',sqlscript)
    for item in dependsstuff:
        item=item.replace('[','')
        item=item.replace(']','')
        tmpstr=item.split(',')
        for item2 in tmpstr:
            item2 = item2.replace('"','')
            item2 = item2.strip()
            tempset.add(item2)

    viewstrings=re.findall(r'sap\.tm\.trp.*::.*"', sqlscript)
    if len(viewstrings) > 0:
        for name in viewstrings:
            str2=name.split('"')
            str3=str2[0].split('\\')
            dependObject=str3[0]
            strname = str(dependObject).replace("\\\"", "")
            if strname not in tempset:
                depends_on_list.append(strname)
				
def db_objects_activation_order(v,e):
    res=[]
    vObject=list(v.keys())
    missingObj=inexistence_objects(vObject,e)
    loops=[]
    cycles=[]
    if len(missingObj)>0:
        print "\n****************************************************\n"\
              "There are some views related to inexistence objects!\n"\
              "Please check your code and depends_on_* error\n"\
              "****************************************************\n"
        for x in missingObj:
            print x
    #else:
    edges=[]
    for edge in e:
        if edge[0]!=edge[1]: # Move all self dependence objects. Example ('a','a')
            edges.append(edge)
    ordering = toposort(edges, vObject,
                        non_loop_cycles_are_errors=False,
                        loop_report=loops,
                        cycle_report=cycles)
    if len(cycles) > 0:
        print "\n***********************\n"\
              "There are some cycles!\n"\
              "***********************\n"
        print cycles
    inexistence=[]
    for item in ordering[::-1]:
        if item in v:
            res.append(v[item])
        else:
            inexistence.append(item)

    if len(inexistence) > 0:
        print("\n**************************************\n"\
              "The inexistence objects, check the error\n"\
              "***************************************\n")
        for x in inexistence:
            print x
    return res

def inexistence_objects(v,e):
    res=[]
    for i in e:
        if i[1] not in v:
            res.append(i)
    return res

def build_regi_activate_command(path, hanaInstance, username, password):
 
    fileContent=[]
    fileContent.append("hdbuserstore SET myKey "+hanaInstance+" " +username+" " + password + "\n")
    fileContent.append("cd .. \n")
    str2=path.split('\\')
    n=len(str2)
    wsname=str2[n-1]

    fileContent.append("regi create workspace "+ wsname+" myKey \n")
    fileContent.append("cd " + wsname +" \n")
    fileContent.append("regi track sap.tm.trp \n")
    fileContent.append("regi commit \n")

    dbPackagePath=os.path.normpath(path+'/sap/tm/trp/db/')
    v=build_db_package_files_dictionary(dbPackagePath)
    e=build_db_objects_dependence(dbPackagePath)
    res=db_objects_activation_order(v,e)

    filepath=path + '/ActivatePackage.sh'
    file_object=open(filepath,'w')
    
    for it in res:
        fileContent.append(str(it)+"\n")

    fileContent.append("regi activate sap/tm/trp/service/\n")
    fileContent.append("regi activate sap/tm/trp/ui/\n")
    fileContent.append("regi activate sap/tm/trp/config/\n")

    file_object.writelines(fileContent)
    file_object.close()

def build_regi_activate_DB_command(path):
 
    fileContent=[]
    dbPackagePath=os.path.normpath(path+'/sap/tm/trp/db/')
    v=build_db_package_files_dictionary(dbPackagePath)
    e=build_db_objects_dependence(dbPackagePath)
    res=db_objects_activation_order(v,e)

    filepath=path + '/ActivatePackage.sh'
    file_object=open(filepath,'w')
    
    for it in res:
        fileContent.append(str(it)+"\n")
    file_object.writelines(fileContent)
    file_object.close()

def execute_initialize_sql(path, hanaInstance, username, password):
    #copy sqlscript to the worksapce
    #os.system ("""xcopy /Y "%s" "%s" """ % ('Initialize.sql', path))
    
    #create hdbsql connection
    hanasplit=hanaInstance.split(':')
    hananame=''
    instance=''
    if len(hanasplit)>1:
        hananame=hanasplit[0]
        instance=hanasplit[1]
        instance=instance[1:-2]
    filepath=path + '/PreparePrerequired.sh'
    file_object=open(filepath,'w')
    sqlcommand="hdbsql -n "+hananame+" -i "+instance+" -u "+username+" -p "+password+" -I Initialize.sql"
    file_object.writelines(sqlcommand) # prepare ws track commit
    file_object.close()
    pass

def activate_command(path):
    filepath=path + '/Activate.sh'
    file_object=open(filepath,'w')
    cmds="sh PreparePrerequired.sh\n"
    cmds+="sh ActivatePackage.sh\n"
    file_object.writelines(cmds);
    file_object.close();


if __name__ == '__main__':
    workspacepath=os.getcwd()+'/Deployment/'
    hanainstance="10.58.185.15:31415"
    username="SYSTEM"
    password="manager"

    arg =sys.argv
    if len(arg)<5:
        #print "Wrong Commands Paramters"
        #sys.exit(2)
        pass
    else:
        workspacepath=arg[1]
        hanainstance=arg[2]
        username=arg[3]
        password=arg[4]
        
    workspacepath=os.path.normpath(workspacepath)
    build_regi_activate_DB_command(workspacepath)
    find_missing_depends_on_stuff(workspacepath)
    #execute_initialize_sql(workspacepath, hanainstance, username, password) #hdbsql create pre-required tables
    #build_regi_activate_command(workspacepath, hanainstance, username, password) # regi activate objects one by one
    #activate_command(workspacepath)# combine batch commands into one file

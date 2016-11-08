import os
import os.path
import pdb
import re
import sys

homedir = sys.argv[1]
rootdir = homedir + '/' + sys.argv[2]
#rootdir = "/home/build/.jenkins/jobs/trp-dailybuild/workspace/target/hanaxs/trp-tm-connector/sap/tm/trp"

suffix_str = 'hdbview'
pexc_1 = re.compile(r'/\*[\s\S.]+?\*/')
pexc_2 = re.compile(r'//.+\n')
pexc_3 = re.compile(r'--.+\n')

p1 = re.compile(r'depends_on[\s\S]*')
p2 = re.compile(r'sap\.tm\.trp\.[\w\.\n]+[:]{2}[\w]+')

fl_lst = []
err_fl_lst = []
def_lst = []
dep_lst = []
union_lst = []
exc_lst = ['v_region_item.hdbview','v_check_location_full_authorization.hdbview']

fl_sp_lst = []

for parent,dirnames,filenames in os.walk(rootdir):
	for filename in filenames:
		if filename in exc_lst:
			continue
		fl_sp_lst = filename.split('.')
		if len(fl_sp_lst) != 2:
			continue
		if fl_sp_lst[1] == suffix_str:

			filename = os.path.join(parent,filename)
			#pdb.set_trace()
			filename = filename.replace('\\','/')
			fl_lst.append(filename)

#pdb.set_trace()

for el in fl_lst:
	fo = open(el,'r')
	all_txt = fo.read()
	fo.close()
	exc_lst_1 = pexc_1.findall(all_txt)
	exc_lst_2 = pexc_2.findall(all_txt)
	exc_lst_3 = pexc_3.findall(all_txt)
	# remove comments
	for x1 in exc_lst_1:
		all_txt = all_txt.replace(x1,'')
	for x2 in exc_lst_2:
		all_txt = all_txt.replace(x2,'')
	for x3 in exc_lst_3:
		all_txt = all_txt.replace(x3,'')
	a = p1.findall(all_txt)
	# if no depends
	if len(a) == 0:
		b = p2.findall(all_txt)
		if len(b) != 0:
			err_fl_lst.append(el)
			continue
		else:
			continue
	else:

		all_txt = all_txt.replace(a[0],'')
		def_lst = list(set(p2.findall(all_txt)))
		dep_lst = list(set(p2.findall(a[0])))
		union_lst = list(set(def_lst).union(set(dep_lst)))
	#pdb.set_trace()
	if len(def_lst) == len(dep_lst) and len(def_lst) == len(union_lst):
		pass
	else:
		#pdb.set_trace()
		err_fl_lst.append(el)

for err_fl in err_fl_lst:
	print 'ERROR: ' + err_fl + ' contains inconsistent depends'

if err_fl_lst:
	sys.exit(1)

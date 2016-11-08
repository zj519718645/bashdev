import os
import os.path
import pdb
import re
import sys

homedir = sys.argv[1]
rootdir = homedir + '/' + sys.argv[2]
#rootdir = "/home/build/.jenkins/jobs/trp-dailybuild/workspace/target/hanaxs/trp-tm-connector/sap/tm/trp"

filePathSplitter = sys.argv[1] + '/'
#filePathSplitter = "/home/build/.jenkins/jobs/trp-dailybuild/workspace/target/hanaxs/trp-tm-connector/"

suffix_str_lst = ['hdbview','hdbprocedure','hdbsequence','hdbstructure','hdbsynonym','hdbtable','calculationview','attributeview']
exc_obj_ref_lst = ['sap.tm.trp.db.systemmanagement.t_in_polygon','sap.tm.trp.db.booking.v_booking_extended_generated','sap.tm.trp.db.booking.v_booking_hrf',
					'sap.tm.trp.db.systemmanagement.t_geo_type','sap.tm.trp.db.systemmanagement.location.v_region_item','sap.tm.trp.db.equipment.v_equipment_raw',
                    'sap.tm.trp.db.equipment.v_resource_extended_generated']
exc_pkg_ref_lst = ['sap.tm.trp.service']
p1 = re.compile(r'depends_on[\s\S]*')
pexc_1 = re.compile(r'/\*[\s\S.]+?\*/')
pexc_2 = re.compile(r'//.+\n')
pexc_3 = re.compile(r'--.+\n')
p2 = re.compile(r'sap\.tm\.trp\.[\w\.\n]+[:]{2}[\w]+')

fl_lst = []
obj_ref_lst = []
err_fl_lst = []
def_lst = []
dep_lst = []
union_lst = []
exc_lst = ['v_region_item.hdbview']
fl_sp_lst = []

for parent,dirnames,filenames in os.walk(rootdir):
	for filename in filenames:
		if filename in exc_lst:
			continue
		fl_sp_lst = filename.split('.')
		if len(fl_sp_lst) != 2:
			continue
		if fl_sp_lst[1] in suffix_str_lst:
			filename = os.path.join(parent,filename)
			filename = filename.replace('\\','/')
			fl_lst.append(filename)
			obj_ref = filename.split(filePathSplitter)[1].split('.')[0].replace('/','.')
			#pdb.set_trace()
			obj_ref_lst.append(obj_ref)

#pdb.set_trace()

for el in fl_lst:
	fo = open(el,'r')
	all_txt = fo.read()
	fo.close()
	#pdb.set_trace()
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

	raw_obj = p2.findall(all_txt)
	if len(raw_obj) != 0:

		for bel in raw_obj:
			obj_ref = bel.replace('::','.')
			#check if object referred in exclusive package
			con_flag = 0
			for ex in exc_pkg_ref_lst:
				#pdb.set_trace()
				if obj_ref.find(ex) != -1:
					con_flag = 1
			# if obj ref contained in exclusive package
			if con_flag == 1:
				continue
			#check if object referred in exclusive list
			if obj_ref in obj_ref_lst:
				continue
			elif obj_ref in exc_obj_ref_lst:
				continue
			else:
				print 'ERROR: Object ' + obj_ref + ' Not found in ' + el
				sys.exit(1)

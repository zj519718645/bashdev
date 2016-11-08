import os
import os.path
import pdb
import re
import sys

homedir = sys.argv[1]
rootdir = homedir + '/' + sys.argv[2]
#rootdir = "/home/build/.jenkins/jobs/trp-dailybuild/workspace/target/hanaxs/trp-tm-connector/sap/tm/trp"

suffix_str_lst = ['hdbview','hdbprocedure','hdbsequence','hdbstructure','hdbsynonym','calculationview','xsodata']
excl_lst = ['cv_timezone_dst_variable.calculationview','cv_timezone_dst_fixed.calculationview','cv_timezone.calculationview']
pexc_1 = re.compile(r'/\*[\s\S.]+?\*/')
pexc_2 = re.compile(r'//.+\n')
pexc_3 = re.compile(r'--.+\n')
p1 = re.compile(r'SAPX0M')
p2 = re.compile(r'_SYS_BIC.+::')
fl_lst = []

for parent,dirnames,filenames in os.walk(rootdir):
	for filename in filenames:
		if filename in excl_lst:
			continue
		fl_sp_lst = filename.split('.')
		if len(fl_sp_lst) != 2:
			continue
		if fl_sp_lst[1] in suffix_str_lst:
			filename = os.path.join(parent,filename)
			filename = filename.replace('\\','/')
			fl_lst.append(filename)

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

	rs1 = p1.findall(all_txt)
	if len(rs1) != 0:
		print "ERROR: " + el + " use SAPX0M prefix"
	rs2 = p2.findall(all_txt)
	if len(rs2) != 0:
		print "ERROR: " + el + " use _SYS_BIC prefix wrongly"

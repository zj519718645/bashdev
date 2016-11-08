import os
import os.path
import pdb
import re
import sys

homedir = sys.argv[1]
rootdir = homedir + '/' + sys.argv[2]

### set RegEx patern and declare lists to hold all file path and CRLF ending style files
dos_line_ending_pattern = re.compile(r'\r\n')
fl_lst = []
crlf_fl_lst = []

exc_pkg = "sap/tm/trp/ui/img"

### fill out the file list whoes element stands for each file path and name
for parent,dirnames,filenames in os.walk(rootdir):
	if parent.find(exc_pkg):
		continue
	for filename in filenames:
		filename = os.path.join(parent,filename)
		filename = filename.replace('\\','/')		
		fl_lst.append(filename)

### scan file names and read content of each file to match \r\n
### if \r\n matched, then the file hold CRLF line ending style
for el in fl_lst:
	fo = open(el,'r')
	all_txt = fo.read()
	fo.close()
	if dos_line_ending_pattern.search(all_txt) is not None:
		crlf_fl_lst.append(el)

### the file count with CRLF style
file_count = len(crlf_fl_lst)

if file_count > 0:
	print "[ERROR] You should use Unix line endings (LF) in these " + str(file_count) + " files:"
### output incorrect file list
for fln in crlf_fl_lst:
	print fln

if file_count > 0:
	sys.exit(4)
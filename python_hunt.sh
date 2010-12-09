#!/bin/bash
egrep --color \
	-e "pickle" \
	-e "cPickle" \
	-e "os.system" \
	-e "shell=False" \
	-e "shell" \
	-e "subprocess" \
	-e "popen" \
	-e " input" \
	-e "os.popen" \
	-e "os.exec" \
	-e "os.spawn" \
	-e "Cookie" \
	-e "SmartCookie" \
	-e "SerialCookie" \
	-e "pipes" \
	-e "shelve" \
	-e " ast" \
	-e "multiprocessing" \
	-e "tarfile" \
	-e " parser" \
	-e " compiler" \
	-e "zipfile" \
	-e "rexec" \
	-e " bastion" \
	-e "exec " \
	* -R


#SmartCookie  uses pickle
#SerialCookie uses pickle
#shelve uses pickle
#multiprocessing some methods use pickle

#tarfile file creation outside of path, via extractall and extract
#zipfile file creation outside of path, via extractall

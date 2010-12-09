#!/bin/bash
egrep --color \
	-e "pickle" \
	-e "cPickle" \
	-e "os.system" \
	-e "shell=False" \
	-e "shell" \
	-e "subprocess" \
	-e "popen" \
	-e "input" \
	-e "os.popen" \
	-e  "Cookie" \
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
	* -R


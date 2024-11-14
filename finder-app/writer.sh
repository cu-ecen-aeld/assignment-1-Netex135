#!/bin/bash

if [[ $# -ne 2 ]]
then
	echo "incorrect number of args usage:./writer.sh file data"
	exit 1
fi

install -D /dev/null $1

echo "$2" > $1

if [[ -e $1 ]]
then	
	#yes this is a bad pattern that would upset most intro cs profs
	if [ $(cat $1) = $2 ]
	then
		#echo "here 2"
		exit 0
	fi
fi
echo "failed to make file"
exit 1

#!/bin/bash

#
# Compile and run program
#
# $1 - name of *.c script
#

file="$1"			#get file name
if [ -f "$file.c" ] 
then				#exist file?

	if gcc -o $1 $1.c; 	#compilation success
	then
		echo "Compilation was successful. Starting program $file:"
		./$file		#run program
	else
		echo "Compilation was not successful. Program $file cannot be started"
	fi

else				#file not exists
	echo "File $file.c not found. Program can't be compiled."
fi

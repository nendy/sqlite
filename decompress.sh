#!/bin/bash
for i in "$@"
do
	if [ -f "$i" ]
	then
		echo "uncompressing $i ..."
		# processing zip file
		if [[ "$i" == *".zip" ]]
		then
			unzip $i
			echo "OK"
		fi
		# processing rar file
		if [[ "$i" == *".rar"* ]]
		then
			unrar  $i
			echo "OK"
		fi

		# processing tar supported file
		if [[ "$i" == *".tar" ]] || [[ "$i" == *".xz" ]] || [[ "$i" == *".gz" ]] || [[ "$i" == *".bz2" ]]
		then
			tar -xf $i
			echo "OK"
		fi

	else
		echo "file $i not found"
	fi
done

#https://www.interviewzen.com/question/3T8pNvK
#!/bin/bash

if [ $# != 1 ] ; then
	echo "command:" $0 [village_number]
	exit 1
fi

mkdir -p sample/$1

touch sample/$1/day1-beforegame.html
for i in $( seq 1 10 ) ; do
	touch sample/$1/day${i}.html
	touch sample/$1/day${i}-night.html
done
touch sample/$1/dayX-aftergame.html

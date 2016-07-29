#!/bin/bash

for i in `seq 1 100`;  do
	rem=$(( $i % 2 ))
	if [ $rem != 0 ];
	then
		echo "$i"
	fi
done

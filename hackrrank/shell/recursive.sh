#!/bin/bash
#read input
num_rows=63
num_columns=100
center=$(( $num_columns / 2 ))
for row in $(seq 1 $num_rows); do
	for column in $(seq 1 $num_columns); do
		if [ $row >= 47 ] && [ $column != $center ]; then
			printf "_";
		else
			printf "1";
		fi
	done
printf "\n";
done

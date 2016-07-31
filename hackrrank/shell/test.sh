#!/bin/bash

get_start_row () {
	local range=$(( $1-1 ))
	local sum=0
	while [ $range -ge 0 ]; do
		power=$(echo "2^$range" | bc -l) 
		sum=$(( $sum + $power * 2 ))
		range=$(( $range-1 ))
	done
	echo $sum
}

read m

start=$(get_start_row $m)
echo $start


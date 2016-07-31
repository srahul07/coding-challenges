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

print_tree () {
	local rows=$1
	local columns=$2
	local center=$(( $2 / 2 ))
	while [ $rows -ge 1 ]; do
		for column in $(seq 1 $columns); do
			if [ $rows -le $3 ] && [ $rows -ge 47 ] && [ $column -eq $center ]; then
				printf "1";
			else
				printf "_";
			fi
		done
		rows=$(( $rows-1 ))
	printf "\n";
	done
}

read input 
start=$(get_start_row $input)
echo $start
num_rows=63
num_columns=100
print_tree $num_rows $num_columns $start

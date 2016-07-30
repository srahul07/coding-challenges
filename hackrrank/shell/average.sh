#!/bin/bash
read input
total=0
for i in $(seq 1 $input); do
	read next
	total=$(( $total + $next ));
done
printf "%.3f\n" $(echo "$total / $input" | bc -l)  

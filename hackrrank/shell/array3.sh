#!/bin/bash
while read line
do
  country=("${country[@]}" $line)
done
declare -a patter=( ${country[@]/*[aA]*/} )
echo ${patter[@]}

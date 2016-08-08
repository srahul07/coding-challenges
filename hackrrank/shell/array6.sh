#!/bin/bash
while read line
do
  country=("${country[@]}" $line)
done
echo ${#country[@]}

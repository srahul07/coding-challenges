#!/bin/bash
read input
read line
IFS=" " read -ra arr <<<"$line"
unique=$(echo "${arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' ')

for i in ${unique[@]};
do
  count=0
  for j in ${arr[@]};
  do
    if [ $i -eq $j ];
    then
      count=$((count+1));
    fi
  done
  if [ $count -eq "1" ];
  then
    echo $i
  fi
done

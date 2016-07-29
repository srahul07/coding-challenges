#!/bin/bash

read x
read y
read z

if [ $x != $y -a $x != $z -a $y != $z ]; then
	echo "SCALENE"
elif [ $x = $y -a $y = $z ]; then
	echo "EQUILATERAL"
else
	echo "ISOSCELES"
fi

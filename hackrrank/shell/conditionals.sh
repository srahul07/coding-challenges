#!/bin/bash

read char

if [ "$char" = "Y" -o "$char" = "y" ]; 
then
	echo "YES"
elif [ $char = "N" -o $char = "n" ]; 
then
	echo "NO"
fi

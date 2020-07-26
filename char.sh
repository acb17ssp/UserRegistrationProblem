#!/bin/bash -x
read -p "Enter: " x
p="1"

if [[ $x=~$p ]]
then
	echo "Valid"
else
	echo "Not valid"
fi

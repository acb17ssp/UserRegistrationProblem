#!/bin/bash -x

read -p "Enter first name: " firstName
pattern1="^[A-Z]{1}[a-z]{2}$"

if [[ $firstName =~ $pattern1 ]]
then
	echo "First Name is valid"
else
	echo "First Name is not valid"
fi

#!/bin/bash -x

####### First Name Validation

read -p "Enter first name: " firstName
pattern1="^[A-Z]{1}[a-z]{2}$"

if [[ $firstName =~ $pattern1 ]]
then
	echo "First Name is valid"
else
	echo "First Name is not valid"
fi

####### Last Name Validation

read -p "Enter last name: " lastName
pattern2="^[A-Z]{1}[a-z]{2}$"

if [[ $lastName =~ $pattern2 ]]
then
	echo "Last Name is valid"
else
	echo "Last Name is not valid"
fi



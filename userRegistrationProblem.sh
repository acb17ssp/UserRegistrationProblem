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

######## Email Validation

read -p "Enter email id: " email
pattern3="[a-z]{3}[.][a-z]{3}[@][a-z]{2}[.][a-z]{2}[.][a-z]{2}"
if [[ $email =~ $pattern3 ]]
then
   echo "Email is valid"
else
   echo "Email is not valid"
fi

####### Phone Number Validation

read -p "Enter phone number: " phoneNum
pattern4="[1-9]{2} [1-9]{1}[0-9]{9}"
if [[ $phoneNum =~ $pattern4 ]]
then
   echo "Phone Number is valid"
else
   echo "Phone Num is not valid"
fi

####### Password Validation

read -p "Enter password: " password

digit="[0-9]+"
upperCase="[A-Z]{1,}"

if [[ ${#password} -ge 8 ]] && [[ "$password"==[[:lower:]]+ ]] && [[ $password=~$upperCase ]]
then
	echo "Password is valid"
else
	echo "Password is not valid"
fi

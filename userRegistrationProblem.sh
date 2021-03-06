#!/bin/bash -x

####### First Name Validation

read -p "Enter first name: " firstName
pattern1="^[A-Z]{1}[a-z]{2}"

if [[ $firstName =~ $pattern1 ]]
then
	echo "First Name is valid"
else
	echo "First Name is not valid"
fi

####### Last Name Validation

read -p "Enter last name: " lastName
pattern2="^[A-Z]{1}[a-z]{2}"

if [[ $lastName =~ $pattern2 ]]
then
	echo "Last Name is valid"
else
	echo "Last Name is not valid"
fi

######## Email Validation

read -p "Enter email id: " email
pattern3="^[A-Za-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}\.[A-Za-z]{2,4}([.][a-zA-Z]{2,3}){0,1}$"
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
specialChar="[@#%^-*+/]{1}"

if [[ ${#password} -ge 8 ]] && [[ "$password"==[[:lower:]]+ ]] && [[ $password=~$upperCase ]] && [[ $password =~ $digit ]] && [[ $password=~$specialChar ]]
then
	echo "Password is valid"
else
	echo "Password is not valid"
fi

## Exactly 1 special character - not working in Git bash but password accepts multiple special characters

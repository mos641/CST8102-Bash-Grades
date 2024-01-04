#!/bin/bash

# CST8102
# The purpose of the script is to calculate a students final numeric and letter grade based on user input

#clear the screen
clear

#prompt for input and store in variables
read -p "Enter Assignment mark (0 - 40) : " assignment1

read -p "Enter Test 1 mark (0 - 15) : " test1

read -p "Enter Test 2 mark (0 - 15) : " test2

read -p "Enter Final exam mark (0 - 30) : " final

#print new line
echo

#calculate the final grade
((grade=assignment1+test1+test2+final))

#set letter grades to different numeric grades with a series of if else statements
if [[ grade -ge 90 ]]
then
	letterGrade="A+"
elif [[ grade -lt 90 ]] && [[ grade -ge 85 ]]
then
	letterGrade="A"
elif [[ grade -lt 85 ]] && [[ grade -ge 80 ]]
then
	letterGrade="A-"
elif [[ grade -lt 80 ]] && [[ grade -ge 77 ]]
then
	letterGrade="B+"
elif [[ grade -lt 77 ]] && [[ grade -ge 73 ]]
then
	letterGrade="B"
elif [[ grade -lt 73 ]] && [[ grade -ge 70 ]]
then
	letterGrade="B-"
elif [[ grade -lt 70 ]] && [[ grade -ge 67 ]]
then
	letterGrade="C+"
elif [[ grade -lt 67 ]] && [[ grade -ge 63 ]]
then
	letterGrade="C"
elif [[ grade -lt 63 ]] && [[ grade -ge 60 ]]
then
	letterGrade="C-"
elif [[ grade -lt 60 ]] && [[ grade -ge 57 ]]
then
	letterGrade="D+"
elif [[ grade -lt 57 ]] && [[ grade -ge 53 ]]
then
	letterGrade="D"
elif [[ grade -lt 53 ]] && [[ grade -ge 50 ]]
then
	letterGrade="D-"
else
	letterGrade="F"
fi

# print the numeric and letter grade
echo Your final numeric grade is $grade, and your final letter grade is $letterGrade


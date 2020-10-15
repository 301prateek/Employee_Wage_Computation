#!/bin/bash -x
#Author: Prateek
#This is a program to check Employee attendance

#Welcome Message
echo "Welcome to Employee Wage Computation Program"

#Using Random function to generate values 0 and 1
empAttendance=$((RANDOM%2))
empPresent=1
empAbsent=0

#To calculate Daily employee wage that is per hour is rupees 20 and for 8 hours

fullDayHr=8

#If contion to check if Employee is  present or absent

if [ $empAttendance -eq $empPresent ]
then
   echo "Employee is Present"
   wagePerHr=20
else
   echo "Employee is Absent"
   wagePerHr=0
fi

#Calculating daily salary

salary=$(( $wagePerHr * $fullDayHr ))
echo "Todays Salary = $salary"


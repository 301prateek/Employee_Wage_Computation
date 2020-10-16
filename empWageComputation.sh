#!/bin/bash -x
#Author: Prateek
#This is a program to Calculate Employee Salary for Full time, Half time and absent.

#Welcome Message
echo "Welcome to Employee Wage Computation Program"

#Using Random function to generate values 0, 1, 2.
empAttendance=$((RANDOM%3))
empPresent=1
empPartTime=2
empAbsent=0

#To calculate Daily employee wage that is per hour is rupees 20 and for 8 hours and part time that is 4 hours.

wagePerHr=20

#If contion to check if Employee is  present or absent, and assigning working hours.

if [ $empAttendance -eq $empPresent ]
then
   echo "Employee is Present"
   workingHrs=8
elif [ $empAttendance -eq $empPartTime ]
then
   echo "Part time Employee"
   workingHrs=4
else
   echo "Employee is Absent"
   workingHrs=0
fi

#Calculating daily salary

salary=$(( $wagePerHr * $workingHrs ))
echo "Todays Salary = $salary"


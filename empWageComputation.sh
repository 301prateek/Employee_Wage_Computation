#!/bin/bash -x
#Author: Prateek
#This is a program to Calculate Employee Salary for Full time, Half time and absent Using switch case statement.

#Welcome Message
echo "Welcome to Employee Wage Computation Program"

#Using Random function to generate values 0, 1, 2.
empAttendance=$((RANDOM%3))
empPresent=1
empPartTime=2
empAbsent=0

#To calculate Daily employee wage that is per hour is rupees 20 and for 8 hours and part time that is 4 hours.

wagePerHr=20

#Using Switch Case Statement to check if Employee is  present or absent, and assigning working hours.

case $empAttendance in
	0)
		echo "Employee is Absent"
		workingHrs=0
		;;
	1)
		echo "Employee is Present"
		workingHrs=8
		;;
	2)
		echo "Part time Employee"
		workingHrs=4
		;;
	*)
		echo "No more actions"
esac

#Calculating daily salary

salary=$(( $wagePerHr * $workingHrs ))
echo "Todays Salary = $salary"


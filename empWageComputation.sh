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

#Defined a function to Calculate wage untill total days or total working hours is reached
noOfDays=20
workingHrs=100

function workingHours(){

	totalHrs=0

	for(( i=1; i<=$1; i++ ))
	do
		empCheck=$((RANDOM%3))

		if [ $empCheck -eq 1 -a $totalHrs -le 100 ]
		then
			totalHrs=$(($totalHrs+8))
		elif [ $empCheck -eq 2 -a $totalHrs -le 100 ]
		then
			totalHrs=$(($totalHrs+4))
		elif [ $empCheck -eq 3 -a $totalHrs -le 100 ]
		then
			totalHrs=$(($totalHrs+0))
		fi
done
echo $totalHrs
}

#Storing the value from the function in a variable => var
var="$(workingHours 20)"
echo "Total Working Hours: $var"

#Calculating total salary for the month 
totalSalary=$(( $noOfDays * $var ))
echo "This Months Salary is: $totalSalary"

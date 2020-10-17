#!/bin/bash -x
#Author: Prateek
#This is a program to Calculate Employee Salary for Full time, Half time and absent Using switch case statement.
#Storing the Day along with Daily wage and Total wage in arrays.

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

#Storing Day along with Daily wage and Total wage using arrays.
noOfDays=20
workingHrs=100
totalHrs=0

#Arrays
wage=()
wagetotal=()
day=()

for(( i=0; i<$noOfDays; i++ ))
do
	empCheck=$((RANDOM%3))

	if [ $empCheck -eq 1 -a $totalHrs -le 100 ]
	then
		totalHrs=$(($totalHrs+8))
		wage[$i]=$((8*$wagePerHr))

	elif [ $empCheck -eq 2 -a $totalHrs -le 100 ]
	then
		totalHrs=$(($totalHrs+4))
		wage[$i]=$((4*$wagePerHr))

	elif [ $empCheck -eq 3 -a $totalHrs -le 100 ]
	then
		totalHrs=$(($totalHrs+0))
		wage[$i]=$((0))

	fi
done


#for loop to calculate totalwage and adding the value to the array wagetotal.
totalwage=0

for((i=0; i<20; i++ ))
do
	totalwage=$(($totalwage + $((${wage[$i]}))))
	wagetotal[$i]=$totalwage
	day[$i]=$(($i+1))
done

#for loop to print a table of Day, Daily wage and Total wage.

for(( i=0; i<20; i++))
do
	echo "Day   |   Daily wage   | Total wage"
	echo "-----------------------------------"
	echo "${day[$i]}           ${wage[$i]}             ${wagetotal[$i]}"
done




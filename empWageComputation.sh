#!bin/bash 

isFullTime=1;
isPartTime=2;
empRatePerHrs=20;
checkEmp=$((RANDOM%3))

if [ $isFullTime -eq $checkEmp ];
then
	empHrs=8;
elif [ $isPartTime -eq $checkEmp ];
then
	empHrs=4;
else
	empHrs=0;
fi
salary=$(( $empHrs * $empRatePerHrs));
echo $salary

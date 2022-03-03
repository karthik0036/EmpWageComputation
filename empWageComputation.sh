#!bin/bash 

isPresent=1;
checkEmp=$((RANDOM%2))

if [ $isPresent -eq $checkEmp ];
then
	empHrs=8;
	rate_per_hr=20;
	salary=$(($empHrs*$rate_per_hr));
	echo $salary
else 
	salary=0;
	echo $salary;
fi

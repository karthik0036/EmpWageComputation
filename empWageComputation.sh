#!/bin/bash -x

#CONSTANTS
IS_FULLTIME=1;
IS_PARTTIME=2;
EMP_RATE_PER_HR=20;
MAX_WORK_HRS=100;
MAX_WORK_DAYS=20;

#Variables
totalEmpHrs=0;
totalWorkingDays=0;

declare -A dailyWage

function  getWorkingHrs () {
case $1 in
      $IS_FULLTIME)
         empHrs=8
         ;;
      $IS_PARTTIME)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac
echo $empHrs
}

function getEmpWageForADay(){
	echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_WORK_HRS && $totalWorkingDays -lt $MAX_WORK_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs=$( getWorkingHrs $empCheck )
	totalEmpHrs=$(($totalEmpHrs+$empHrs));
	dailyWage["Day "$totalWorkingDays]=$( getEmpWageForADay $empHrs )

done
totalSalary=$(($totalEmpHrs*$empRatePerHrs));
echo $totalSalary
echo ${!dailyWage[@]}
echo ${dailyWage[@]}
echo "last day salary " ${dailyWage["Day "20]}

#!bin/bash 

isPresent=1;
checkEmp=$((RANDOM%2))

if [ $isPresent -eq $checkEmp ];
then
	echo "Emp is Present";
else 
	echo "Emp is Absent";
fi

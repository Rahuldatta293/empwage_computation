#!/bin/bash -x

totalsalary=0
ispresent=1
rate=20
max_hours=20
thours=0
while [ $((thours)) -lt $((max_hours)) ]
do
	randomcheck=$(( RANDOM%3 ))
	if [ $randomcheck -eq $ispresent ]
	then
		workhour=8
	else
		echo "Employee is absent"
	fi
done



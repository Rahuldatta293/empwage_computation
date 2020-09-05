#!/bin/bash -x

toatalsalary=0
ispresent=1
isparttime=2
rate=20
max_hours=20
max_days=20
thours=0
tdays=0
while [ $((thours)) -lt $((max_hours)) ] && [ $((tdays)) -lt $((max_days)) ]
do
	random=$(( RANDOM%3 ))
	if [ $random -eq $ispresent ]
	then
	workhour=8
	elif [ $random -eq $isparttime ]
	then
	workhour=4
	else
	echo "The person is absent"
	fi
	((tdays++))
	thours=$((thours+workhour))
	salary=$((rate*workhour))
	totalsalary=$((totalsalary+salary))
	echo "salary is $salary"
	dailywage[$tdays]=$((rate*workhour))
done
totalworkingsalary=$((totalsalary*tdays))
echo "Total Working hours is $thours and Total working days are $tdays"
echo "Total salary for working days are $totalworkingsalary"
echo "Total daily wage is ${dailywage[@]}"

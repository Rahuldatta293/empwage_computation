#!/bin/bash -x

isfullTime=1
ispartTime=2

randomcheck=$(( RANDOM%2 ))
if [ $isfullTime -eq $randomcheck ]
then
	echo "Employee is full time"
elif [ $ispartTime -eq $randomcheck ]
then
	echo "Employee is part time"
else
	echo "Employee is absent"
fi



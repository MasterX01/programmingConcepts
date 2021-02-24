#!/bin/bash -x

#Q1. Write a program that reads 5 random 3 digit numbers and prints min and max>

echo Q1

maxRandNum=5;
min=999;
max=0;

for (( i=0 ; i<$maxRandNum ; i++ ))
do
       randNum=`shuf -i 100-999 -n 1`
       echo "Random Number for iteration $i is: "$randNum
       randNumArr[$i]=$randNum;

       if (( max<randNum ))
       then
               max=$randNum
       fi
       if (( min>randNum ))
       then
               min=$randNum
       fi
done
echo "Array of Numbers is: "${randNumArr[@]}
echo "Maximum Number is: "$max
echo "Minimum Number is: "$min
echo

#Q2. Write a program that takes day and month from the command lineand prints t>

echo Q2

read -p "Enter Date: " date
read -p "Enter Month: " month

if (( ($month <= 6 && $date <= 20) ))
then
       echo $month $date "True"
elif (( ($month >= 3 && $month < 6) && ($date<31) ))
then
       echo $month $date "True"
else
       echo "False"
fi
echo

#Q3 Write a program that takes an year as the input and outputs if the year is >

echo Q3

read -p "Enter the Year(YYYY): " y
if (( (( y%4 ))==0 && (( y%100 ))!=0 || (( y%400 ))==0 ))
then
	echo "$y is leap year"
else
	echo "$y is not a leap year"
fi
echo

#Q4. Write a program to simulate a coin flip and print out "Heads" or "Tails" a>

echo Q4

heads=1
tails=0
if (( $((RANDOM%2))==$heads ))
then
       echo "Heads"
else
       echo "Tails"
fi

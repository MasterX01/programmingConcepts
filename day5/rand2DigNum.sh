#!/bin/bash -x

maxRandomNum=5;
sum=0;
for (( i=0 ; i<maxRandomNum ; i++ ))
do
        (( sum+=`shuf -i 10-99 -n 1` ))
done
#(( avg=sum/maxRandomNum ))
echo "The sum of $maxRandomNum random 2 digit numbers is $sum"
echo -n "Average of $maxRandomNum random numbers is - "
awk "BEGIN{ print $sum/$maxRandomNum }"


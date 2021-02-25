#!/bin/bash -x


#Q2. Find the Magic Number

echo Q2
high=100
mid=0

mid=$(( (low+high)/2 ))
notMagicNum=1
while [ $notMagicNum -eq 1 ]
do
       if (( $low -eq $mid ))
       then
               notMagicNum=0
               echo "The Magic Number is $low"
       else
               read -p "Is your number less than $mid (yes/y/Y): " choice
       fi
       if (( (( "$choice" -eq "yes" )) || (( "$choice" -eq "y" )) || (( "$choi>
       then
               high=$mid
       else
               low=$mid
       fi
       mid=$(( (low+high)/2 ))
done


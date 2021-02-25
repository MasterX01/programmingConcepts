#!/bin/bash -x
#Q2. Write a program that takes input n and prints the nth Harmonic number

echo Q2

read -p "Enter the value of N: " num

for (( i=1 ; i<=num ; i++ ))
do
       if (( $i -eq $num ))
       then
               echo "1/$i"
       else
               echo "1/$i + "
       fi
done



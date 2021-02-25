#!/bin/bash -x


#Q3. Write a program that takes input and determines if number is prime

echo Q3
read -p "Enter the number to check for prime: " pnum

for (( i=2 ; i<=pnum/2 ; i++ ))
do
       if (( $((pnum%i)) -eq 0 ))
       then
               echo "$pnum is not a prime number"
               exit
       fi
done
echo "$num is a prime number"


#!/bin/bash -x


#Q5. Write a program that computes a factorial of a given number

echo Q5
read -p "Enter the number you want factorial of: " facNum

fact=1

for (( i=2 ; i<=facNum ; i++ ))
do
       fact=$(( fact*i ))
done
echo $fact



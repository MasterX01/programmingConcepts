#!/bin/bash -x

#Q6. Write a program to compute factors of a number using prime factorisation m>

echo Q6

read -p "Enter Number: " pFacNum
for (( i=2 ; i<=pFacNum ; i++ ))
do
       while[ $(( pFacNum%i )) -eq 0 ]
       do
               echo $i
               pFacNum=$(( pFacNum/$i ))
       done
done

#!/bin/bash -x

#Q1. Write a program  that takes input and prints a table of power of 2

echo Q1
read -p "Enter the nth number: " n
i=1
result=0
while[ (( $i -le $n )) && (( $result -lt 256 )) ]
do
       result=$(( 2**i ))
       echo $result
       (( i++ ))
done



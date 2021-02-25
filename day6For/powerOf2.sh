#!/bin/bash -x

#Q1. Write a program that takes a command line argument n and prints a table of>

echo Q1

read -p "Enter the value of N: " n

for (( i=1 ; i<=n ; i++ ))
do
       echo $(( 2**i ))
done


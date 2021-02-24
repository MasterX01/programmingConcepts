#!/bin/bash -x

#Q1. Read a single digit number and write the number in word using case.

echo Q1
read -p "Enter a single digit number(0-9): " num
case $num in
       0)
               echo "Zero"
       ;;
       1)
               echo "One"
       ;;
       2)
               echo "Two"
       ;;
       3)
               echo "Three"
       ;;
       4)
               echo "Four"
       ;;
       5)
               echo "Five"
       ;;
       6)
               echo "Six"
       ;;
       7)
               echo "Seven"
       ;;
       8)
               echo "Eight"
       ;;
       9)
               echo "Nine"
       ;;
       *)
               echo "Please check the number you have entered"
       ;;
esac


#Q2. Read a Number and display the week day

echo Q2
read -p "Enter a number for day of the week(1-7): " day
case $day in
       1)
               echo "Sunday"
       ;;
       2)
               echo "Monday"
       ;;
       3)
               echo "Tuesday"
       ;;
       4)
               echo "Wednesday"
       ;;
       5)
               echo "Thursday"
       ;;
       6)
               echo "Friday"
       ;;
       7)
               echo "Saturday"
       ;;
       *)
               echo "Please check the number you have entered"
       ;;
esac

#Q3. Read a number 1,10,100... and display unit,ten,hundred...

echo Q3
read -p "Enter a plave value number: " value
case $value in
       1)
               echo "Unit"
       ;;
       10)
               echo "Ten"
       ;;
       100)
               echo "Hundred"
       ;;
       1000)
               echo "Thousand"
       ;;
       10000)
               echo "Ten Thousand"
       ;;
       *)
               echo "Please check the number you have entered"
       ;;
esac


#Q4. Write a program that takes user inputs and does unit conversion of differe>

echo Q4
read -p "Enter the value to convert: " value
echo "To convert from Feet to inch press 1"
echo "To convert from feet to meter press 2"
echo "To convert from inch to feet press 3"
echo "To convert from meter to feet press 4"
read -p "Please select your option: " choice
case $choice in
       1)
               echo $(( $value*12 ))
       ;;
       2)
               awk "BEGIN { print $value*0.3048 }"
       ;;
       3)
               awk "BEGIN { print $value*0.0833 }"
       ;;
       4)
               awk "BEGIN { print $value*3.28 }"
       ;;
       *)
               echo "Please check the value you have entered"
       ;;
esac

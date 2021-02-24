#!/bin/bash -x

#Q1. Read a single digit number and write the number in word.

echo Q1
read -p "Enter the single digit number" digit

if (( $digit -eq 0 ))
then
       echo "Zero"
elif (( $digit -eq 1 ))
then
       echo "One"
elif (( $digit -eq 2 ))
then
       echo "Two"
elif (( $digit -eq 3 ))
then
       echo"Three"
elif (( $digit -eq 4 ))
then
       echo "Four"
elif (( $digit -eq 5 ))
then
       echo "Five
elif (( $digit -eq 6 ))
then
       echo "Six"
elif (( $digit -eq 7 ))
then
       echo "Seven"
elif (( $digit -eq 8 ))
then
       echo "Eight"
elif (( $digit -eq 9 ))
then
       echo "Nine"
else
       echo "Please check the number you have entered"
fi


#Q2. Read a number and display the week day

echo Q2

read -p "Enter a number between 1-7:" num
if (( $num -eq 1 ))
then
       echo "Sunday"
elif (( $num -eq 2 ))
then
       echo "Monday"
elif (( $num -eq 3 ))
then
       echo "Tuesday"
elif (( $num -eq 4 ))
then
       echo "Wednesday"
elif (( $num -eq 5 ))
then
       echo "Thursday"
elif (( $num -eq 6 ))
then
       echo "Friday"
elif (( $num -eq 7 ))
then
       echo "Saturday"
else
       echo "Please check the number you have entered"
fi

#Q3. Read a number 1,10,100... and display unit,ten,hendred...

echo Q3
read -p "Enter a number with place value: " value
if (( $value -eq 1 ))
then
       echo "Unit"
elif (( $value -eq 10 ))
then
       echo "Ten"
elif (( $valuee -eq 100 ))
then
       echo "Hundred"
elif (( $value -eq 1000 ))
then
       echo "Thousand"
elif (( $value -eq 10000 ))
then
       echo "Ten Thousand"
else
       echo "Place check the place value number you have entered"
fi


#Q4. Enter 3 numbers and do arithematic operations on them and find the max and>

echo Q4
read -p "Please enter the first number(a): " a
read -p "Please enter the second number(b): " b
read -p "Please enter the third number(c): " c

one=$(( a+b*c ))
two=$(( a%b+c ))
three=$(( c+a/b ))
four=$(( a*b+c ))

#For Maximum
if (( ( $one>$two ) && ( $one>$three ) && ( $one>$four ) ))
then
       echo "Maximum Number is $one"
elif (( ( $two>$one ) && ( $two>$three ) && ( $two>$four ) ))
then
       echo "Maximum Number is $two"
elif (( ( $three>$one ) && ( $three>$two ) && ( $three>$four ) ))
then
       echo "Maximum Number is $three"
elif (( ( $four>$one ) && ( $four>$two ) && ( $four>$three ) ))
then
       echo "Maximum Number is $four"
fi

#For Minimum
if (( ( $one<$two ) && ( $one<$three ) && ( $one<$four ) ))
then
       echo "Minimum Number is $one"
elif (( ( $two<$one ) && ( $two<$three ) && ( $two<$four ) ))
then
       echo "Minimum Number is $two"
elif (( ( $three<$one ) && ( $three<$two ) && ( $three<$four ) ))
then
       echo "Minimum Number is $three"
elif (( ( $four<$one ) && ( $four<$two ) && ( $four<$three ) ))
then
       echo "Minimum Number is $four"
fi

#!/bin/bash -x

#Q2. Write a function to check if the 2 numbers are palindrome

echo Q2
function isPalindrome() {

read -p "Enter the Number: " n
num=$n
reverse=0
while[ $n -gt 0 ]
do
       a=`expr $n%10`
       n=`expr $n/10`
       reverse=`expr $reverse \* 10 + $a`
done
echo "$reverse"
if (( $number -eq $reverse ))
then
       echo "Number is Palindrome"
else
       echo "Number is not a Palindrome"
fi
}

isPalindrome


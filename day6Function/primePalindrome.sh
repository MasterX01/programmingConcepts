#! /bin/bash

function isPalindrome() {
temp=$1
reverseNum=0
while [ $temp -ne 0 ]
do
	reverseNum=$(( temp%10+ reverseNum*10 ))
	temp=$((temp/10))
done
echo $reverseNum

}

function isPrime() {

checkNumber=$1
count=0
for ((counter=1 ; counter<=checkNumber ; counter++))
do
	if (($checkNumber%counter==0))
	then
		count=$((count+1))
	fi
done

if (($count==2))
then
	echo "The $checkNumber is prime number"
else
	echo "The $checkNumber is not an prime number"
fi

}

read -p "Please select choice 1)Prime check 2)Check Palindrome 3) check Palindrom is prime :" choice

case $choice in
	1) 
		read -p "Enter the number to check prime: " primeCheckNum
		isPrime $primeCheckNum
	;;
	2)
		read -p "Enter the number to check Palindrome : " pallinCheckNum
		if [ $pallinCheckNum -eq $(isPalindrome $pallinCheckNum) ]
		then
			echo "$pallinCheckNum is Palindrome number"
		else
			echo "$pallinCheckNum is not Palindrome number"
		fi
	;;
	3)
		read -p "Check Palindrome and prime:" pallinPrimeNum
		isPrime $(isPalindrome $pallinPrimeNum)
	;;
	*)
		echo "Invalid choice"
	;;
esac

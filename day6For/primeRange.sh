#!/bin/bash -x


#Q4. Extend a program to take a range of number as input and print the prime nu>

echo Q4

prime=0
read -p "Enter the start number of the range: " a
read -p "Enter the end number of the range: " b

for (( i=a ; i<=b ; i++ ))
do
       for (( j=i ; j>=2 ; j-- ))
       do
               if (( $(( i%j )) -ne 0 ))
               then
                       prime=1
               else
                       prime=0
               fi
       done
       if (( $prime -eq 1 ))
       then
               echo $i
       fi
done

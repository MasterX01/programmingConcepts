#!/bin/bash -x


#Q3. Extend the Flip Coin problem till either heads or tails wins 11 times

echo Q3
echo "Coin Flip Simulator"
head=0
tail=0

while[ (( $head != 11 )) && (( $tail != 11 )) ]
do
       if[ $((RANDOM%2)) -eq 1 ]
       then
               (( head++ ))
       else
               (( tail++ ))
       fi
done

if(( $head -eq 11 ))
then
       echo "Head wins 11 times"
else
       echo "Tails wins 11 times"
fi


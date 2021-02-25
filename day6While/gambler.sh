#!/bin/bash -x


#Q4 Gambler Betting Program

echo Q4
gambler_money=100
bet=1

betTimes=0
betWin=0
betLoss=0

while [ (( $gambler_money -gt 0 )) && (( $gambler_money -le 200 )) && (( $bet -eq 1 )) ]
do
       coinFlip=$((RANDOM%2))
       if(( 4coinFlip -eq 0 ))
       then
               (( betWin++ ))
       else
               (( gambler_money-- ))
               (( betLoss++ ))
       fi
       (( betTimes++ ))
done

echo "Wins: $betWin, Money: $gambler_money, Bet Times: $betTimes, Loss: $betLoss"

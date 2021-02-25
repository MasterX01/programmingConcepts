#!/bin/bash -x

#Q1. Tamprature conversion based on the selection.

echo Q1

function conversion (){
echo "Select the conversion you want"
echo "1-> degF to degC"
echo "2-> degC to degF"
read choice

case $choice in
       1)
               echo "Farenheit to Celsius"
               read -p "Enter temprature in Celsius: " degC
               degF=$(( ( degC*9/5 )+32 ))
               echo "$degC C in Farenheit is : $degF"
       ;;
       2)
               echo "Celsius to Farenheit"
               read -p "Enter the temprature in Farenheit: " degF
               degC=$(( ( degC-32 )*5/9 ))
               echo "$degF F in calsius is: $degC"
       ;;
       *)
               echo "Please check the input you are giving(1/2)."
esac
}

conversion

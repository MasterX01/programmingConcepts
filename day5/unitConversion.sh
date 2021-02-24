#!/bin/bash -x

#Q5 Unit Conversion

#a.) 1ft = 12in then 42in = ?ft

#echo -n "Enter the inches to convert to ft: "
#read inches
#echo -n "$inches inches in ft are: "
#awk "BEGIN{ print $inches/12 }"
#echo

#b.) Rectangular Plot of 60ft x 40feet in meters

echo -n "Enter the length of rectangle in feet: "
read length
echo
echo -n "Enter the breadth of the rectangle in feet: "
read breadth
echo -n "Length in meter is: "
length=`awk "BEGIN { print $length*0.3048 }"`
echo $length
echo -n "Breadth in meter is: "
breadth=`awk "BEGIN { print $breadth*0.3048 }"`
echo $breadth
echo

#c.) Calculate area of 25 such plots in acres

echo -n "Area of 25 such plots in acres would be: "
awk "BEGIN{ print ($length*$breadth)*0.000247105 }"



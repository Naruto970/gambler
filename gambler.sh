#!/bin/bash -x 

echo "welcome to the Gambling Simulator: "

STAKE=100
PERCENTAGEVALUE=50
percentage=$((($STAKE * $PERCENTAGEVALUE) / 100))
winLimitPercentage=$(($STAKE + $percentage))
lossLimitPercentage=$(($STAKE - $percentage))
valid=true
aim=$STAKE

while [ $aim -gt $lossLimitPercentage ] && [ $aim -lt $winLimitPercentage ]
do
value=$((RANDOM%2))
if [ $value -eq 1 ]
then
     aim=$(( $aim + 1 ))
else
     aim=$(( $aim - 1 ))
fi
done


#!/bin/bash -x


read -p "no. of days you want to play: " days
read -p "no. of games that you want to play: " games

bets=0
stake=0
wins=0
loss=0

for (( i=0 ; i<$days ; i++ ))
{
      stake=$(( $stake +100 ))
   for (( j=0 ; j<$games ; j++ ))
	{    
              value=$((RANDOM%2))
             ((bets++))
   	if [ $stake -eq 0]
        then
                  break
        elif [ $value -eq 0  ] 
        then      
                 ((wins++))             
                 ((stake++))
        else
                 ((loss++)) 
                 ((stake--))
        fi
    }
}

echo "the bets you made are: " $bets
echo "the total no. of stake is: " $stake 
echo "the no. of wins are: " $wins
echo "the no. of losses are: " $loss

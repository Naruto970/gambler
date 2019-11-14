#!/bin/bash -x


read -p "no. of days you want to play: " days
read -p "no. of games that you want to play: " games

bets=0
stake=0

for (( i=0 ; i<$days ; i++ ))
{
      stake=$(( $stake +100 ))
   for (( j=0 ; j<$games ; j++ ))
	{    
           ((bets++))
   	if [ $stake -eq 0]
        then
                  break            
                 ((stake++))
        else
                 ((stake--))
        fi
    }
}

echo "the bets you made are: " $bets
echo "the total no. of stake is: " $stake 

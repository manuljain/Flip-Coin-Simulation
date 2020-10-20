#! /bin/bash

# Welcome message
echo "Welcome to Flip Coin Simulation Program."

#will count the number of heads and tails
counth=0
countt=0

while true
do
    # Flipping a coin
    coin=$((RANDOM%2))

    if [ $coin -eq 1 ]
    then
        counth=$(($counth+1))
    else
        countt=$(($countt+1))
    fi
    if [[ $counth -eq 21 ]]
    then
	    echo "Head counts : $counth   Tail count : $countt"
        count=$(($counth-$countt))
        echo "Head won by $count"
        break
    elif [[ $countt -eq 21 ]]
    then
	    echo "Head counts : $counth   Tail count : $countt"
        count=$(($countt-$counth))
        echo "Tail won by $count"
        break
    else 
        continue
    fi
done


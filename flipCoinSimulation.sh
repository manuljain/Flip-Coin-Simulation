#! /bin/bash

# Welcome message
echo "Welcome to Flip Coin Simulation Program."

#will count the number of heads and tails
counth=0
countt=0

for (( i=0; i<21; i++ ))
do
    # Flipping a coin
    coin=$((RANDOM%2))

    if [ $coin -eq 1 ]
    then
        counth=$(($counth+1))
    else
        countt=$(($countt+1))
    fi
done

# display win count
echo "Head won $counth times"
echo "Tail won $countt times"
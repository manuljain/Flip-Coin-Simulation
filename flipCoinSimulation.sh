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
    # condition for checking head count and tail count
    if [ $counth -eq $countt ] || [ $countt -eq $counth ] 
    then
        echo "Head count : $counth   Tail count : $countt"
        echo "head count and tail counts are equal .. it means it's a tie"
        echo "============================================================="
        break
    else 
        continue
    fi
done
# loop while difference of head count and tail count is 2
while true
do
    coin=$((RANDOM%2))
    
    if [ $coin -eq 1 ]
    then
        counth=$(($counth+1))
    else
        countt=$(($countt+1))
    fi
    if [ $(($counth-$countt)) -eq 2 ]
    then
        echo "Head count : $counth   Tail count : $countt"
        echo "difference between head count and tail count is 2"
        echo "head won"
        break
    elif [ $(($countt-$counth)) -eq 2 ]
    then
        echo "Head count : $counth   Tail count : $countt"
        echo "difference between tail count and head count is 2"
        echo "tail won"
        break
    else
        continue
    fi
done
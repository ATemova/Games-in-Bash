#!/bin/bash

echo "Coin Toss Game!"
echo "Enter your guess (heads/tails):"
read guess

outcome=$( [ $((RANDOM % 2)) -eq 0 ] && echo "heads" || echo "tails" )

echo "The coin landed on: $outcome"

if [ "$guess" == "$outcome" ]; then
    echo "You win!"
else
    echo "You lose!"
fi

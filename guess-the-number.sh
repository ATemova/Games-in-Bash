#!/bin/bash

# Generate a random number between 1 and 100
target=$((RANDOM % 100 + 1))
guess=0

echo "Guess the number (between 1 and 100):"

while [ "$guess" -ne "$target" ]; do
    read -p "Enter your guess: " guess
    if [ "$guess" -lt "$target" ]; then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$target" ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the number."
    fi
done

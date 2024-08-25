#!/bin/bash

echo "Welcome to the Number Guessing Game!"
echo "Guess the number between 1 and 10:"

target=$((RANDOM % 10 + 1))
guess=0

while [ "$guess" -ne "$target" ]; do
    read -p "Your guess: " guess
    if [ "$guess" -lt "$target" ]; then
        echo "Too low!"
    elif [ "$guess" -gt "$target" ]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed the number."
    fi
done

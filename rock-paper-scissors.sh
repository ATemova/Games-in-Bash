#!/bin/bash

choices=("rock" "paper" "scissors")
computer_choice=${choices[$((RANDOM % 3))]}
player_choice=""

echo "Rock, Paper, Scissors Game!"
echo "Enter your choice (rock, paper, scissors):"
read player_choice

if [[ ! " ${choices[@]} " =~ " ${player_choice} " ]]; then
    echo "Invalid choice. Choose rock, paper, or scissors."
    exit 1
fi

echo "Computer chose: $computer_choice"

if [ "$player_choice" == "$computer_choice" ]; then
    echo "It's a draw!"
elif [ "$player_choice" == "rock" ] && [ "$computer_choice" == "scissors" ] ||
     [ "$player_choice" == "paper" ] && [ "$computer_choice" == "rock" ] ||
     [ "$player_choice" == "scissors" ] && [ "$computer_choice" == "paper" ]; then
    echo "You win!"
else
    echo "You lose!"
fi

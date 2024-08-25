#!/bin/bash

score=0

echo "Welcome to the Simple Quiz!"

questions=(
    "What is 2 + 2? (Enter a number)"
    "What is the capital of France? (Enter text)"
)
answers=("4" "Paris")

for i in ${!questions[@]}; do
    echo "${questions[i]}"
    read response
    if [ "${response,,}" == "${answers[i],,}" ]; then
        echo "Correct!"
        ((score++))
    else
        echo "Incorrect. The correct answer was ${answers[i]}."
    fi
done

echo "Your score: $score out of ${#questions[@]}"

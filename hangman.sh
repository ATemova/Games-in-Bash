#!/bin/bash

word="bashscript"
wordlen=${#word}
guessed=""
max_attempts=6
attempts=0

echo "Welcome to Hangman! Guess the word."

while [ $attempts -lt $max_attempts ]; do
    clear
    echo "Word: $(for (( i=0; i<wordlen; i++ )); do
        letter=${word:$i:1}
        if [[ "$guessed" == *"$letter"* ]]; then
            echo -n "$letter "
        else
            echo -n "_ "
        fi
    done)"
    
    read -p "Guess a letter: " guess

    if [[ "$word" == *"$guess"* ]]; then
        guessed+="$guess"
    else
        ((attempts++))
        echo "Incorrect guess. Attempts left: $((max_attempts - attempts))"
    fi

    if [[ "$guessed" == *"$word"* ]]; then
        echo "Congratulations! You've guessed the word: $word"
        break
    fi
done

if [ $attempts -eq $max_attempts ]; then
    echo "Game over! The word was: $word"
fi

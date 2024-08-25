#!/bin/bash

quotes=(
    "The best way to predict the future is to invent it. - Alan Kay"
    "Life is what happens when you're busy making other plans. - John Lennon"
    "You only live once, but if you do it right, once is enough. - Mae West"
    "In the end, we will remember not the words of our enemies, but the silence of our friends. - Martin Luther King Jr."
    "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment. - Ralph Waldo Emerson"
)

random_index=$((RANDOM % ${#quotes[@]}))
echo "${quotes[$random_index]}"

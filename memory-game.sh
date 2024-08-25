#!/bin/bash

# Initialize the board
cards=("A" "A" "B" "B" "C" "C" "D" "D")
board=(${cards[@]} ${cards[@]})
randomize() {
    for i in "${!board[@]}"; do
        j=$((RANDOM % ${#board[@]}))
        temp=${board[i]}
        board[i]=${board[j]}
        board[j]=$temp
    done
}
randomize

# Display board
display_board() {
    for i in {0..7}; do
        if [ "${revealed[i]}" == "1" ]; then
            echo -n "${board[i]} "
        else
            echo -n "X "
        fi
        if (( (i + 1) % 4 == 0 )); then
            echo
        fi
    done
}

revealed=(0 0 0 0 0 0 0 0)
matches=0

while [ $matches -lt 4 ]; do
    display_board
    echo "Enter the position of the first card (1-8):"
    read pos1
    echo "Enter the position of the second card (1-8):"
    read pos2

    if [ "${revealed[pos1-1]}" -eq 0 ] && [ "${revealed[pos2-1]}" -eq 0 ]; then
        revealed[pos1-1]=1
        revealed[pos2-1]=1

        if [ "${board[pos1-1]}" == "${board[pos2-1]}" ]; then
            echo "Match found!"
            ((matches++))
        else
            echo "No match!"
            revealed[pos1-1]=0
            revealed[pos2-1]=0
        fi
    else
        echo "Position already revealed. Choose different positions."
    fi
done

echo "Congratulations! You found all matches."

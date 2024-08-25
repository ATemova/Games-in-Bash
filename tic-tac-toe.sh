#!/bin/bash

# Initialize the board
board=(1 2 3 4 5 6 7 8 9)
player='X'

print_board() {
    echo "${board[0]} | ${board[1]} | ${board[2]}"
    echo "--|---|--"
    echo "${board[3]} | ${board[4]} | ${board[5]}"
    echo "--|---|--"
    echo "${board[6]} | ${board[7]} | ${board[8]}"
}

check_win() {
    # Check rows, columns, and diagonals
    for i in 0 3 6; do
        if [ "${board[i]}" == "$player" ] && [ "${board[i+1]}" == "$player" ] && [ "${board[i+2]}" == "$player" ]; then
            return 0
        fi
    done
    for i in 0 1 2; do
        if [ "${board[i]}" == "$player" ] && [ "${board[i+3]}" == "$player" ] && [ "${board[i+6]}" == "$player" ]; then
            return 0
        fi
    done
    if [ "${board[0]}" == "$player" ] && [ "${board[4]}" == "$player" ] && [ "${board[8]}" == "$player" ]; then
        return 0
    fi
    if [ "${board[2]}" == "$player" ] && [ "${board[4]}" == "$player" ] && [ "${board[6]}" == "$player" ]; then
        return 0
    fi
    return 1
}

while :; do
    print_board
    read -p "Player $player, choose a position (1-9): " position
    if [ "${board[position-1]}" == "$player" ] || [ "${board[position-1]}" == "O" ]; then
        echo "Position already taken. Try again."
        continue
    fi
    board[position-1]=$player
    if check_win; then
        print_board
        echo "Player $player wins!"
        break
    fi
    if ! [[ "${board[@]}" =~ [1-9] ]]; then
        print_board
        echo "It's a draw!"
        break
    fi
    player=$( [ "$player" == 'X' ] && echo 'O' || echo 'X' )
done

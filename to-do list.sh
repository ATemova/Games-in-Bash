#!/bin/bash

file="todo_list.txt"

if [[ ! -f $file ]]; then
    touch $file
fi

while true; do
    echo "1. View To-Do List"
    echo "2. Add Item to To-Do List"
    echo "3. Remove Item from To-Do List"
    echo "4. Exit"
    read -r choice

    case $choice in
        1)
            echo "To-Do List:"
            cat $file
            ;;
        2)
            echo "Enter item to add:"
            read -r item
            echo "$item" >> $file
            echo "Item added."
            ;;
        3)
            echo "Enter the line number of the item to remove:"
            read -r line_number
            sed -i "${line_number}d" $file
            echo "Item removed."
            ;;
        4)
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, 3, or 4."
            ;;
    esac
done

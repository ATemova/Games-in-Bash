#!/bin/bash

echo "Enter countdown time in seconds:"
read -r time

while [[ $time -gt 0 ]]; do
    echo -ne "Time left: $time\033[0K\r"
    sleep 1
    ((time--))
done

echo "Time's up!"

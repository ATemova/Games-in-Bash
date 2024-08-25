#!/bin/bash

echo "How many numbers do you want to sum?"
read -r count

sum=0
for ((i=1; i<=count; i++)); do
    echo "Enter number $i:"
    read -r num
    sum=$((sum + num))
done

echo "The total sum is: $sum"

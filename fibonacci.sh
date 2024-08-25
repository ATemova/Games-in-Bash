#!/bin/bash

echo "Enter the number of terms:"
read -r terms

a=0
b=1
echo "Fibonacci sequence:"
for ((i=0; i<terms; i++)); do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo

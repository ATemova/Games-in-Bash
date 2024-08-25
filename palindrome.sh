#!/bin/bash

echo "Enter a string:"
read -r str

rev=$(echo "$str" | rev)

if [[ "$str" == "$rev" ]]; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi

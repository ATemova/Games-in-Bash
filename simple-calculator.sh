#!/bin/bash

echo "Welcome to Simple Calculator!"
echo "Enter first number:"
read num1
echo "Enter an operator (+, -, *, /):"
read op
echo "Enter second number:"
read num2

case $op in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    \*) result=$(echo "$num1 * $num2" | bc) ;;
    /) result=$(echo "$num1 / $num2" | bc) ;;
    *) echo "Invalid operator" ;;
esac

echo "Result: $result"

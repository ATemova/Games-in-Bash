#!/bin/bash

echo "You are in a forest. There are two paths ahead of you."
echo "1. Take the left path"
echo "2. Take the right path"
echo "Enter your choice (1 or 2):"
read -r choice

case $choice in
    1) echo "You encounter a friendly deer and enjoy a pleasant walk." ;;
    2) echo "You find a hidden treasure chest! Congratulations!" ;;
    *) echo "Invalid choice. You decide to stay put." ;;
esac

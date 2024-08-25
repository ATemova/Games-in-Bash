#!/bin/bash

length=12
if [[ ! -z $1 ]]; then
    length=$1
fi

# Generate password with letters, digits, and special characters
password=$(head /dev/urandom | tr -dc 'A-Za-z0-9!@#$%^&*()_+[]{}|;:,.<>?' | head -c $length)

echo "Generated Password: $password"
